/* global describe, it */

(function () {
    'use strict';

    describe('Easter Egg', function () {
        describe('Armadillo easter egg', function () {
            it('Armadillo not visible when not moonwalk parameter', function () {

                // if the parameter moonwalk is not in the URL
                // do not show the armadillo
                if( location.search.match(/\bmoonwalk\b/) ){
                    assert.equal(0, $('#armadillo').length);
                }

            });
        });
    });
})();
