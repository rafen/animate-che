$ ->

    # $armadillo = $('<img src="images/armadillo.gif"/>')
    $armadillo = $('<img src="http://www.quesper.com/Projects_Student/Mammals_Project/armadillo.gif"/>')
    $armadillo.css
        position: 'fixed'
        left: '100%'
        bottom: 0
        'z-index': 9999

    $armadillo.prependTo 'body'

    # Do the moon walk
    moonWalk = ($obj)->
        $obj.css 'left', '100%'
        $obj.animate
            left: "-320px"
        ,
            duration: 7000
            #complete: moonWalk
    moonWalk $armadillo
