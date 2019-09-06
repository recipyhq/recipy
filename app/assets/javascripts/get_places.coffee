@getPlaces = ->
  failure = ->
    alert 'Problem getting the location'
    $('.get_location').each (index) ->
      $(this).on 'click', (event) ->
        if navigator.geolocalisation
          navigator.geolocation.getCurrentPosition ((position) ->
            $.ajax
            type: 'PUT'
            url: 'beta/point_of_sales/get_location' + '?latitue=' + position.coords.latitude + '&longitutde=' + position.coords.longitude
          ), failure,
            enableHighAccuracy :true
            timetout : 5000
            event.preventDefault()
$(document).on('turbolinks:load', @getPlaces)
