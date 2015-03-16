$(function() {
    $('.follow').on('click', function(event) {
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

    // $('.following').on('click'), function(event) {
    // 	$.ajax({
    // 		url: $(this).attr("comedian_id"),
    // 		dataType: 'json',
    // 		type: 'DELETE',
    // 	})

    // }
});