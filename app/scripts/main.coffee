$ ->
    # image = 'https://raw.githubusercontent.com/rafen/animate-che/master/app/images/armadillo.gif'
    image = 'images/armadillo.gif'

    $armadillo = $('<img/>',
        src: image
    )
    $armadillo.css
        position: 'fixed'
        left: '100%'
        bottom: 0
        'z-index': 9999

    $armadillo.prependTo 'body'

    # Do the moon walk
    moonWalk = ($obj)->
        speed = 80 # dist / secs
        $obj.css 'left', '100%'
        $obj.animate
            left: "-420px"
        ,
            duration: ($(window).width() / speed) * 1000
            easing: 'linear'
            #complete: moonWalk

    if location.search.match /\bmoonwalk\b/
        moonWalk $armadillo
