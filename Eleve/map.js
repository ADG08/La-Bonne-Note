$(document).ready(function () {
  var favoriIcon = L.icon({
    iconUrl:
      "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-gold.png",
    shadowUrl:
      "https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png",
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
    shadowSize: [41, 41],
  });

  var defaultIcon = L.icon({
    iconUrl:
      "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-green.png",
    shadowUrl:
      "https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png",
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
    shadowSize: [41, 41],
  });
  L.mar;

  var map = L.map("maDiv").setView([48.856614, 2.3522219], 12);

  L.tileLayer(
    "https://{s}.tile.thunderforest.com/neighbourhood/{z}/{x}/{y}.png?apikey={apikey}",
    {
      attribution:
        '&copy; <a href="http://www.thunderforest.com/">Thunderforest</a>, &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
      apikey: "33252f8dc3c04591be177e3af63865d0",
      maxZoom: 22,
    }
  ).addTo(map);

  //
  var x = [];
  var index = [];

  for (let i = 0; i < arrondissements.features.length; i++) {
    var v = L.geoJson(arrondissements.features[i]).addTo(map)

  

    index.push(arrondissements.features[i].properties.c_ar);

    for (let y = 0; y < index.length; y++) {
      if (index[y] == arrondissements.features[i].properties.c_ar) {
        $(v).click({ param: y }, focus);
      }
    }
    x.push(v);
  }
  for (let y = 0; y < arrondissements.features.length; y++) {
    x[y].setStyle({
      fillColor: "#68D89B",
      weight: 1,
      color: "#2C6E49",
      opacity: 1,
    });
  }

  var prof = [];

  function focus(event) {
    for (let y = 0; y < arrondissements.features.length; y++) {
      x[y].setStyle({
        fillColor: "#68D89B",
        weight: 1,
        color: "#2C6E49",
        opacity: 1,
      });

      x[y].setStyle({ opacity: 0.4 });

      if (y != event.data.param) {
        x[event.data.param].setStyle({ opacity: 1 });
      }
    }
    x[event.data.param].setStyle({
      fillColor: "#BCFFDB",
      weight: 2,
      color: "#2C6E49",
      opacity: 1,
    });


    var iconeP = "<img class="+"iconeProf"+ "src="+ "./chalkboard.svg"+">"+ "</img>"

    $.ajax({
      type: "POST",
      url: "recupProf.php",
      data: {
        arr: index[event.data.param],
      },
      success: function (res) {
        prof.forEach((element) => {
          map.removeLayer(element);
        });

        var result = JSON.parse(res);
        result.forEach((element) => {
          var x = L.marker([element.Latitude, element.Longitude])
            .bindPopup('<h3>' + element.Nom + " " + element.Prénom +'</h3>'+ "<br>"+ iconeP +"<p>Description du prof</p>"+"<br>"+"<button class=" + "suivie" + ">" + "Demande" + "</button> " +"<br>"+ "<button class=" + "like" + ">" + "like" + "</button> ")

            .addTo(map)
            .on("click", clickZoom);

          prof.push(x);

          $(".like").click({ param1: false, param2: element.Email }, liker);
        });
      },
      error: function (err) {
        console.error(err);
      },
    });
  }

  $.ajax({
    type: "POST",
    url: "recupProfFav.php",
    success: function (res) {
      JSON.parse(res).forEach((element) => {
        var x = L.marker([element.Latitude, element.Longitude], {
          icon: favoriIcon,
        })
          .bindPopup(
           '<h3>' + element.Nom + " " + element.Prénom +'</h3>'+ "<br>"+ iconeP +"<p>Description du prof</p>"+"<br>"+"<button class=" + "suivie" + ">" + "Demande" + "</button> " +"<br>"+ "<button class=" + "like" + ">" + "like" + "</button> "
          )
          .addTo(map)
          .on("click", clickZoom);

          $(".like").click({ param1: true, param2: element.Email }, liker);
      });
    },
    error: function (err) {
      console.error(err);
    },
  });


  function liker(event){
    $.ajax({
        type: "POST",
        url: "likeProf.php",
        data: {
            like: event.data.param1,
            email: event.data.param2
          },
        success: function (res) {
          JSON.parse(res)
        },
        error: function (err) {
          console.error(err);
        },
      });
  }







  //marker

  var littleton = L.marker([48.841503, 2.247047], { icon: favoriIcon })
      .bindPopup("This is Littleton, CO.")
      .addTo(map)
      .on("click", clickZoom),
    denver = L.marker([48.829978, 2.280436], { icon: defaultIcon })
      .bindPopup("This is Denver, CO.")
      .addTo(map)
      .on("click", clickZoom),
    aurora = L.marker([48.881425, 2.277603], { icon: defaultIcon })
      .bindPopup("This is Aurora, CO.")
      .addTo(map)
      .on("click", clickZoom),
    golden = L.marker([48.892938, 2.411499], { icon: favoriIcon })
      .bindPopup("This is Golden, CO.")
      .addTo(map)
      .on("click", clickZoom);

  //layers

  var overlayMaps = {};

  var math = L.layerGroup([littleton]).addTo(map);

  var layerControl = L.control.layers(overlayMaps).addTo(map);

  layerControl.addBaseLayer(math, "Math");

  //smooth click
  function clickZoom(e) {
    map.panTo(this.getLatLng());
  }
});
