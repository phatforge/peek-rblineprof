$(document).on 'click', '.js-lineprof-file', (e) ->
  $(this).parents('.peek-rblineprof-file').next('div').toggle()
  e.preventDefault()
  false

$(document).on 'peek:render', (event, request_id, data) ->
  $('#line-profile').html(data.context.rblineprof.profile)
