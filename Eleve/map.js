$(document).ready(function () {
    var b = true;
    var tabCOORD = [
        [48.84197804895268, 2.267719848410252],
        [48.84174503359729, 2.267988069311741],
        [48.841540261632446, 2.2689000203768046],
        [48.8419427436655, 2.2693291738191874],
        [48.84254999113797, 2.2687820031801493],
        [48.84197804895268, 2.267719848410252],
    ];

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

    for (let i = 0; i < arrondissements.features.length; i++) {
        var x = L.geoJson(arrondissements.features[i])
            .bindPopup(function (layer) {
                return layer.feature.properties.l_ar;
            })
            .addTo(map);

        console.log(arrondissements.features[i]);
    }

    //marker

    var littleton = L.marker([48.841503, 2.247047])
        .bindPopup("This is Littleton, CO.")
        .addTo(map)
        .on("click", clickZoom),
        denver = L.marker([48.829978, 2.280436])
            .bindPopup("This is Denver, CO.")
            .addTo(map)
            .on("click", clickZoom),
        aurora = L.marker([48.881425, 2.277603])
            .bindPopup("This is Aurora, CO.")
            .addTo(map)
            .on("click", clickZoom),
        golden = L.marker([48.892938, 2.411499])
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

    //recup une colonnes des profs php
    /*
    $.ajax({
        type: "POST",
        url: "recupProf.php",
        success: function (res) {
            console.log(res);
        },
        error: function (err) {
            console.error(err);
        },
    });*/
});
