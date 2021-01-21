(function($) {
	$( document ).ready(function() {
		console.log( "This is js/oc-theme.js" );
	});
}(jQuery));

function google_maps_callback() {
	console.log( "This is google_maps_callback()" );
	var mapDiv = $('#map');
	var zoom = mapDiv.attr('data-zoom') * 1;
	var latitude = mapDiv.attr('data-latitude');
	var longitude = mapDiv.attr('data-longitude');
	var addrLatLong = new google.maps.LatLng(latitude, longitude);

	var mapOptions = {
		zoom: zoom,
		center: addrLatLong,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		streetViewControl: false,
		zoomControl: true,
		mapTypeControl: false,
		panControl: false,
		scrollwheel: false,
	};

	var mapCanvas = document.getElementById('map');
	map = new google.maps.Map(mapCanvas, mapOptions);

	var markerpin = new google.maps.Marker({
		map: map,
		position: addrLatLong,
		animation: google.maps.Animation.DROP
	});
}
