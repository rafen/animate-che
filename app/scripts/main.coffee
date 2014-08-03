$ ->
    # image = 'https://raw.githubusercontent.com/rafen/animate-che/master/app/images/armadillo.gif'
    image = 'images/armadillo.gif'

    $armadillo = $('<img/>',
        src: image,
        id: 'armadillo'
    )
    $armadilloShadow = $('<span></span>',
        id: 'armadillo_shadow'
    )
    $armadilloContainer = $('<div></div>',
        id: 'armadillo_container'
    )

    $armadilloContainer.append($armadillo)
    $armadilloContainer.append($armadilloShadow)

    $armadilloContainer.prependTo 'body'

    # Do the moon walk
    moonWalk = ($obj, $orig)->
        speed = 80 # dist / secs
        $orig = if $orig then $orig else '100%'
        $obj.css 'left', $orig
        $obj.animate
            left: "-420px"
        ,
            duration: ($(window).width() / speed) * 1000
            easing: 'linear'
            #complete: moonWalk

    if location.search.match /\bmoonwalk\b/
        moonWalk $armadilloContainer

    $armadillo.click ->
        $armadillo.toggleClass('reverted')
        if $armadillo.hasClass('reverted')
            $armadilloContainer.stop()
        else
            moonWalk $armadilloContainer, $armadilloContainer.css("left")
