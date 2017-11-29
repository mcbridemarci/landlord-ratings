var reviewLocations=[];

function initMap() {
  /* initialize the map */
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: new google.maps.LatLng(34.066239,-106.905656),
    mapTypeId:'roadmap'
  });

  fetch("/apollo.4/finalSystem/Mapper")
    .then(result => result.json())
    .then((json) => {
      for (var key in json) {
          if (json.hasOwnProperty(key)) {
              var item = json[key];
              reviewLocations.push([item.address1, item.latitude, item.longitude, 4]);
          }
      }
      setMarkers(map);
    }).catch(err => { console.log(err); });



}

/* create and ddd markers to the map */
function setMarkers(map) {
  console.log("setMarks");
  console.log("1revLoc Length:" + reviewLocations.length);
  var infowindow = new google.maps.InfoWindow();
  var len = reviewLocations.length;
  /* Now iterate and add them to the map */
  for (var i = 0; i < len; i++) {
    var review = reviewLocations[i];
    /* add markers to the map */
    var marker = new google.maps.Marker({
      position: {lat: review[1], lng: review[2]},
      map: map,
      draggable: false,
      /*label: "R",*/
      title: review[0],
      zIndex: review[3],
    });


    marker.set('id',reviewLocations[i][1]+','+reviewLocations[i][2]);
    /* create place details */
    google.maps.event.addListener(marker, 'click', (function (marker, i) {
          return function () {
              infowindow.setContent("<div><h5>"
                + reviewLocations[i][0]
                + `</h5>`
                + `<form action="/apollo.4/finalSystem/Populator" method="post">`
                + `<input type="hidden" name="lon" value="` + reviewLocations[i][1] + `" />`
                + `<input type="hidden" name="lat" value="` + reviewLocations[i][2] + `" />`
                + `<button type="submit">Click here to see the reviews for this location</button>`
                + `</form></div>`
              );
              infowindow.open(map, marker);
          }
      })(marker, i));
  }
  console.log("2revLoc Length:" + reviewLocations.length);
}
/*
function setup(){
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open("POST", "https://takyon.cs.nmt.edu/apollo.4/finalSystem/MapServlet", true);
  xmlhttp.send();
}*/
