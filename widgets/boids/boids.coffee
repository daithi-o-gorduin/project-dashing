class Dashing.Boids extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    haskell = data.value[0]
    unity = data.value[1]
    if (0 not in data.value) then $(@node).css('background-color',"#DDA0DD")
    if(haskell == 1) then @set('imageone',"/boidhaskellcolor.png")
    if(unity == 1) then @set('imagetwo',"/boidunitycolor.png")
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.
