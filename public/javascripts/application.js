function initializeApp(pathInfo) {
  if (pathInfo == "/location") {
    loadMap();  
  }
  
  $("a.new-window").unbind("click").click(function() {
    newWindow = window.open($(this).attr('href'), 'name');
    if (window.focus) { 
      newWindow.focus(); 
    }
    return false;
  });
}

function loadMap() {
  var markerString = "Patricia Van Reenen<br>1096 The Parkway<br>London, Ontario N6A 2X1";
  var latLng = new google.maps.LatLng(43.004629, -81.267193);
  var options = {
    zoom: 12,
    center: new google.maps.LatLng(43.010629, -81.267193),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("map"), options);
  
  var marker = new google.maps.Marker({
      position: latLng, 
      map: map, 
      title: markerString
  });
  
  var infoWindow = new google.maps.InfoWindow({
    content: markerString
  });
  
  google.maps.event.addListener(marker, 'click', function() {
    infoWindow.open(map, marker);
  });
  
  infoWindow.open(map, marker);
}
