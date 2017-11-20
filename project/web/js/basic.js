var placeSearch, autocomplete;
var componentForm = {
  street_number: 'long_name',
  route: 'long_name',
  locality: 'long_name',
  administrative_area_level_1: 'short_name',
  country: 'long_name',
  postal_code: 'short_name'
};

function initAutocomplete() {
  // Create the autocomplete object, restricting the search to geographical
  // location types.
  autocomplete = new google.maps.places.Autocomplete(
      /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
      {types: ['geocode']});

  // When the user selects an address from the dropdown, populate the address
  // fields in the form.
  autocomplete.addListener('place_changed', fillInAddress);
}

function fillInAddress() {
  var place = autocomplete.getPlace();
  var everything;
  everything = "";
  for (var component in componentForm) {
    document.getElementById(component).value = '';
    document.getElementById(component).disabled = false;
  }

  for (var i = 0; i < place.address_components.length; i++) {
    var addressType = place.address_components[i].types[0];
    if (componentForm[addressType]) {
      var val = place.address_components[i][componentForm[addressType]];
      everything = everything.concat(val, " ");
      if ( i == 0 ){
          var valZero = val;
      }
      else if (i == 1) {
          var tot = valZero.concat(" ",val);
          document.getElementById(addressType).value = tot;
      }
      else {
        document.getElementById(addressType).value = val;
    }
    }
  }
  document.getElementById('completeAddr').value = everything;
  codeAddress();
}

// Bias the autocomplete object to the user's geographical location,
// as supplied by the browser's 'navigator.geolocation' object.
function geolocate() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var geolocation = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };
      var circle = new google.maps.Circle({
        center: geolocation,
        radius: position.coords.accuracy
      });
      autocomplete.setBounds(circle.getBounds());
    });
  }
}
  function codeAddress() {  
    var geocoder;
    var address = document.getElementById('completeAddr').value;
    geocoder = new google.maps.Geocoder();
    geocoder.geocode({'address': address}, function(results, status) {
      if (status == 'OK') {
          coordinate = results[0].geometry.location;
          document.getElementById('coordinate').value = coordinate;
          alert('sucessful! the address: '+ address + ' The geocode: '+ coordinate);
      } else {
        alert('Geocode was not successful for the following reason: ' + status);
      }
    });
  }
