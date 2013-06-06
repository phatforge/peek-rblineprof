$(document).on 'click', '.js-lineprof-file', (e) ->
  $(this).parents('.peek-rblineprof-file').next('div').toggle()
  e.preventDefault()
  false

$(document).on 'click', '[data-addparam-lineprofiler]', (e) ->
  val = $(e.target).attr('data-addparam-lineprofiler')
  window.parent.postMessage({addParams: {'lineprofiler': val}}, "*")
  e.preventDefault()
  false

$(document).on 'peek:render', (event, request_id, data) ->
  $('#line-profile').html(data.context.rblineprof.profile)
