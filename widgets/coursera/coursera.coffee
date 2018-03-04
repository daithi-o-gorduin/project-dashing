class Dashing.Coursera extends Dashing.Widget

  @accessor 'course', Dashing.AnimatedValue

  constructor: ->
     super

  onData: (data) ->
   @observe 'course', (course) ->
        $(@node).find(".coursera").val(course).trigger('change')
   course = data.course
   certificate = data.certificate
   if(certificate == 1 && course == 100)
            $(@node).css('background-color',"#1E9EF5")
            courseraNode = $(@node).find(".coursera-img")
            backgroundClass = "coursera-img1"
            lastClass = @get "lastClass"
            courseraNode.toggleClass "#{lastClass} #{backgroundClass}"
            scalaNode = $(@node).find(".scala-img")
            backgroundClass = "scala-img1"
            lastClass = @get "lastClass"
            scalaNode.toggleClass "#{lastClass} #{backgroundClass}"
            courseracertNode = $(@node).find(".courseracert-img")
            backgroundClass = "courseracert-img1"
            lastClass = @get "lastClass"
            courseracertNode.toggleClass "#{lastClass} #{backgroundClass}"


  ready: ->
    coursera = $(@node).find(".coursera")
    coursera.attr("data-fgcolor", coursera.css("color"))
    coursera.attr("data-bgcolor", "#00b300")
    coursera.knob()


