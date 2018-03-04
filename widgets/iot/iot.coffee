class Dashing.Iot extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    mirror = data.value[0]
    lights = data.value[1]
    if (0 not in data.value) then $(@node).css('background-color',"#FFEC8B")
    if(mirror == 1) then @set('imageone',"/mirrorcolor.png")
    if(lights == 1) then @set('imagetwo',"/lightbulbcolor.png")
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.
