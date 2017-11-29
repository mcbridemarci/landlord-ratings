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
    }).catch(err => { throw err });



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
              infowindow.setContent("<h5>"
                + reviewLocations[i][0]
                + "</h5><h6><a href=\"/apollo.4/finalSystem/review_preview.jsp?lat="
                + reviewLocations[i][1]
                + "&"
                + "lon="
                + reviewLocations[i][2]
                + "\">Click here to see the reviews for this home</a></h6>"
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
