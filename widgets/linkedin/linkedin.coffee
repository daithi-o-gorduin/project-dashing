class Dashing.Linkedin extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    if(data.value[0] ==1) then @set('linkedinpic',"/linkedincolor.png")
    if(data.value[1] ==1) then @set('cvpic',"/cvcolor.png")
    if(data.value[2] ==1) then @set('stackoverflowpic',"/stackoverflowcolor.png")
    if(0 not in data.value) then $(@node).css('background-color',"#00CC99")
