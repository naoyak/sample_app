updateCountdown = ->
  remaining = 140 - jQuery("#micropost_content").val().length
  jQuery(".counter").text remaining
  if remaining < 0
  	jQuery(".counter").css 'color', '#9d261d'
  else
  	jQuery(".counter").css 'color', '#049cdb'

jQuery ->
  updateCountdown()
  $("#micropost_content").change updateCountdown
  $("#micropost_content").keyup updateCountdown