$(document).ready(function() {

    console.log('inside the function');
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();

    $(function() {
        $('.follow').unbind('click').bind('click', function(event) {
            var pathName = window.location.pathname
            var comedianId = this.id.split('-')[1]
            var $comedian_el = $(this);
            values = {
                comedian_id: comedianId
            }
            $.ajax({
                url: pathName.split('edit')[0],
                dataType: 'json',
                type: 'PUT',
                data: values,
                success: function(data) {
                    console.log($comedian_el)
                    console.log(data)
                    $comedian_el.toggleClass('following')
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