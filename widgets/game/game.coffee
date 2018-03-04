class Dashing.Game extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
      if(data.value == 1) then $(@node).css('background-color',"#98F5FF")
      if(data.value == 1) then @set('csharp',"/csharpcolor.png")
      if(data.value == 1) then @set('edgechronicles',"/edgechroniclescolor.jpg")
      if(data.value == 1) then @set('unity',"/unitycolor.jpg")