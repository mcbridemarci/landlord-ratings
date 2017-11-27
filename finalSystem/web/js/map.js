function initMap() {
  /* initialize the map */
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: new google.maps.LatLng(34.066239,-106.905656),
    mapTypeId:'roadmap'
  });

  setMarkers(map);
}
/* Get locations that have reviews */
$.getJSON('js/locations.json', function (json) {
    var array = [];
    for (var key in json) {
        if (json.hasOwnProperty(key)) {
            var item = json[key];
            array.push({ addr: item.address1, lat: item.latitude, long: item.longitude, zindex: 4});            
        }
    }
    console.log(array);
});

/* expected jason file format 
{
    "key":{
        "address1":"1234 Main Street",
        "address2":"1",
        "lat":34.067599,
        "long":-106.902407
    },
*/
var reviewLocations = [
  ['1234 Main Street', 34.067599, -106.902407, 4]
]; 

/* create and ddd markers to the map */
function setMarkers(map) {
  var infowindow = new google.maps.InfoWindow();
  /* Now iterate and add them to the map */
  for (var i = 0; i < reviewLocations.length; i++) {
    var review = reviewLocations[i];
    /* add markers to the map */
    var marker = new google.maps.Marker({
      position: {lat: review[1], lng: review[2]},
      map: map,
      draggable: false,
      /*label: "R",*/
      title: review[0],
      zIndex: review[3]
    });
    /* create place details */
    google.maps.event.addListener(marker, 'click', (function (marker, i) {
          return function () {
              infowindow.setContent('<h5>'+reviewLocations[i][0]+'</h5><h6><a href="review_preview.jsp">Click here to see the reviews for this home</a></h6>');
              infowindow.open(map, marker);
          }
      })(marker, i)); 
  }
}