// // This isn't necessarily specific to toggle buttons
// $(function() {

//   // Change the link's icon while the request is performing
//   $('a[data-remote]').on('click', function(event, b, c) {
//     var icon = $(this).find('i');
//     icon.data('old-class', icon.attr('class'));
//     icon.attr('class', 'icon-refresh');
//   });

//   // Change the link's icon back after it's finished.
//   $(document).ajaxComplete(function(e, request, options) {
//     var url = options.url;
//     url = url.split('?')[0]; // dataType="script" adds a timestamp to the URL

//     // find the link that generated the ajax call.
//     // This could be cleaner if more information was passed
//     // from jquery_ujs to the ajax callbacks.
//     $('a[href="' + url + '"]').each(function() {
//       var icon = $(this).find('i');
//       if (icon.data('old-class')) {
//         icon.attr('class', icon.data('old-class'));
//         icon.data('old-class', null);
//       }
//     })
//   });

//   // Don't fail silently
//   $(document).ajaxError(function( event, jqxhr, settings, exception ) {
//     if (jqxhr.status) {
//       alert("We're sorry, but something went wrong (" + jqxhr.status + ')');
//     }
//   });

// })