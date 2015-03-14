// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require turbolinks
//= require_tree .

$(function() {
    $('.follow').on('click', function(event) {
        $.ajax({
            url: $(this).attr("id"),
            dataType: 'json',
            type: 'PUT',
            success: function(data) {
                console.log(data)
                // $following = $('#comedian-' + data.id )
                // $follow = $follow.siblings('.follow');
                $follow.toggleClass('.unfollow')
            }
        });
    });

    $('.unfollow').on('click'), function(event) {
    	$.ajax({
    		url: $(this).attr("id"),
    		dataType: 'json',
    		type: 'PUT',
    		success: function(data) {
                console.log(data)
                // $following = $('#comedian-' + data.id )
                // $unfollow = $follow.siblings('.follow');
                $unfollow.toggleClass('.follow')
            }
    	})

    }
});


// toggle class to .unfollow  & send delete request