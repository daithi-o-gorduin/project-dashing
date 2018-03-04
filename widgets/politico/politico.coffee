class Dashing.Politico extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    node = data.value[0]
    kotlin = data.value[1]
    if (0 not in data.value) then $(@node).css('background-color',"#FFDAB9")
    if(node == 1) then @set('imageone',"/nodecolor.png")
    if(kotlin == 1) then @set('imagetwo',"/kotlincolor.png")
