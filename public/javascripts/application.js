function loadMap() {
  if (GBrowserIsCompatible()) {
    var markerString = "Patricia Van Reenen<br>1096 The Parkway<br>London, Ontario N6A 2X1";
    var myPoint = new GLatLng(43.004629, -81.267193);
    var map = new GMap2(document.getElementById("map"));
    map.setCenter(myPoint, 13);
    map.addControl(new GSmallMapControl());
    map.openInfoWindowHtml(myPoint, markerString );       

    var marker = new GMarker(myPoint);
    map.addOverlay(marker);         

    GEvent.addListener(marker, "click", function() {
      map.openInfoWindowHtml(myPoint, markerString);
    });
  }
}

function newWindow(url) {
  newwindow = window.open(url,'name');
  if (window.focus) { newwindow.focus() }
  return false;
}
