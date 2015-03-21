$(document).ready(function() {
    $(function() {
        $(".thumbnail").hover(function() {
            $(this).children("video")[0].play();
        }, function() {
            var el = $(this).children("video")[0];
            el.pause();
            el.currentTime = 0;
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