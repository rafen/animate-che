$ ->
    # image = 'https://raw.githubusercontent.com/rafen/animate-che/master/app/images/armadillo.gif'
    image = 'images/armadillo.gif'

    $armadillo = $('<img/>',
        src: image,
        id: 'armadillo'
    )

    $armadillo.css
        position: 'fixed'
        left: '100%'
        bottom: 0
        'z-index': 9999

    $armadillo.prependTo 'body'

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
        moonWalk $armadillo

    $armadillo.click ->
        $armadillo.toggleClass('reverted')
        if $armadillo.hasClass('reverted')
            $armadillo.stop()
        else
            moonWalk $armadillo, $armadillo.css("left")