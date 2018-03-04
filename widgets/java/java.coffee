class Dashing.Java extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    if(data.value ==1) then @set('oraclecert',"/oraclecolor.png")
    if(data.value ==1) then $(@node).css('background-color',"#ffd2e8")