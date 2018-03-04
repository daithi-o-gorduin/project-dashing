class Dashing.Books extends Dashing.Widget

  @accessor 'value', Dashing.AnimatedValue

  constructor: ->
    super

  onData: (data) ->
    codeNode = $(@node).find(".code-img")
    value = data.value[0]
    backgroundClass = "code-img#{value}"
    lastClass = @get "lastClass"
    codeNode.toggleClass "#{lastClass} #{backgroundClass}"

    kotlinNode = $(@node).find(".kotlin-img")
    value = data.value[1]
    backgroundClass = "kotlin-img#{value}"
    lastClass = @get "lastClass"
    kotlinNode.toggleClass "#{lastClass} #{backgroundClass}"


    haskellNode = $(@node).find(".haskell-img")
    value = data.value[2]
    backgroundClass = "haskell-img#{value}"
    lastClass = @get "lastClass"
    haskellNode.toggleClass "#{lastClass} #{backgroundClass}"


    if (0 not in data.value) then $(@node).css('background-color',"#ff6666")


