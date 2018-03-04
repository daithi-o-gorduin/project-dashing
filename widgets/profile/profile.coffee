class Dashing.Profile extends Dashing.Widget

  @accessor 'value', Dashing.AnimatedValue

  constructor: ->
    super

  onData: (data) ->
    node = $(@node)
    value = data.value
    if(value == 1) then $(@node).css('background-color',"#66CBFF")
    backgroundClass = "profile#{value}"
    lastClass = @get "lastClass"
    node.toggleClass "#{lastClass} #{backgroundClass}"
    @set "lastClass", backgroundClass
