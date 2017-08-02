<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	</head>
<body>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Marker Clustering</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script>
    var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map-component'), {
          zoom: 17,
          center: {lat: 37.497, lng: 127.0254}
        });


        
       var locations = [{lat: 37.497, lng: 127.0254}];

 
        // Add some markers to the map.
        // Note: The code uses the JavaScript Array.prototype.map() method to
        // create an array of markers based on a given "locations" array.
        // The map() method here has nothing to do with the Google Maps API.
        var markers = locations.map(function(location, i) {
          return new google.maps.Marker({
            position: location,
            label: labels[i % labels.length]
          });
        });

        // Add a marker clusterer to manage the markers.
        var markerCluster = new MarkerClusterer(map, markers,
            {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});
      }
      var locations;
      $(function(){
   	   $("#btn").click(function(){
   		   $.ajax({
					url:"map_cluster.jsp",
					type:"get",
					dataType:"json",
					error:function(xhr){
						alert(xhr.status+" / "+ xhr.statusText);
					},//실패
					success:function(json_arr){
						locations=json_arr;
						test();
					}//성공
				});//ajax
   		   
   	   });
      });
      
      
      function test(){
    	  var map = new google.maps.Map(document.getElementById('map-component'), {
              zoom: 17,
              center: {lat: 37.497, lng: 127.0254}
            });
    	 alert( locations.length )
   	   var markers = locations.map(function(location, i) {
   	          return new google.maps.Marker({
   	            position: location,
   	            label: labels[i % labels.length]
   	          });
   	        });
   	        // Add a marker clusterer to manage the markers.
   	        var markerCluster = new MarkerClusterer(map, markers,
   	            {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});
      }
      
    </script>
    <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdDL53okfssfGHZbWuR1WN2ATA9n8ZbbE&callback=initMap">
    </script>
</body>
</html>

