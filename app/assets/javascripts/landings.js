$(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
		$('.slider').slider({
			full_width: false,
			height: 550,
			interval: 4000,
			indicators: false

		});
  });
