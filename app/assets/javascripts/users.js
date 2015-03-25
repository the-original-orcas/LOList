$(document).ready(function() {
    $(function() {
        // ON Hover video functionality - on pause it resets timer to 0 -- also testing display to none
        // $(".thumbnail").hover(function() {
        //     $(this).children("video")[0].play();
        //     el.style.display = 'center';
        // }, function() {
        //     var el = $(this).children("video")[0];
        //     el.pause();
        //     el.currentTime = 0;
        //     el.style.display = 'none';
        // });
        $('.dropdown-button').dropdown({
            inDuration: 300,
            outDuration: 225,
            constrain_width: false, // Does not change width of dropdown to that of the activator
            hover: false, // Activate on click
            alignment: 'left', // Aligns dropdown to left or right edge (works with constrain_width)
            gutter: 0, // Spacing from edge
            belowOrigin: true // Displays dropdown below the button
        });
        $('.follow').unbind('click').bind('click', function(event) {
            var pathName = window.location.pathname
            var comedianId = this.id.split('-')[1]
            var $comedian_el = $(this);
            var $starSpan = $comedian_el.children()
            values = {
                comedian_id: comedianId
            }
            $.ajax({
                url: pathName.split('edit')[0],
                dataType: 'json',
                type: 'PUT',
                data: values,
                success: function(data) {
                    console.log(data)
                    $comedian_el.toggleClass('following');
                    $($starSpan.children()[1]).toggleClass('following');
                }
            });
        });
        $('.index-follow').unbind('click').bind('click', function(event) {
            var pathName = window.location.pathname
            var comedianId = this.id.split('-')[1]
            var $comedian_el = $(this);
            var userIdDiv = $('#find-me').next()
            values = {
                comedian_id: comedianId
            }
            $.ajax({
                url: '/user/' + userIdDiv.attr('id').split('-')[1] || pathName,
                dataType: 'json',
                type: 'PUT',
                data: values,
                success: function(data) {
                    console.log($comedian_el)
                    console.log(data)
                    $comedian_el.toggleClass('index-following')
                    location.reload();
                }
            });
        });
    });
});