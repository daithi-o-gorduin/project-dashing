class Dashing.Lightbend extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    scalaOne = data.value[0][0]
    scalaTwo = data.value[0][1]
    playOne = data.value[1][0]
    playTwo = data.value[1][1]
    akkaOne = data.value[2][0]
    akkaTwo = data.value[2][1]
    lightbend = [scalaOne,scalaTwo,playOne,playTwo,akkaOne,akkaTwo]
    if(scalaOne == 1) then @set('scalaone',"/scalacolorone.png")
    if(scalaTwo == 1) then @set('scalatwo',"/scalacolortwo.png")
    if(playOne == 1) then @set('playone',"/playcolorone.png")
    if(playTwo == 1) then @set('playtwo',"/playcolortwo.png")
    if(akkaOne == 1) then @set('akkaone',"/akkacolorone.png")
    if(akkaTwo == 1) then @set('akkatwo',"/akkacolortwo.png")
    if(0 not in lightbend) then $(@node).css('background-color',"#0E3A51")
    if(0 not in lightbend) then @set('lightbend',"/lightbendcolor.png")
