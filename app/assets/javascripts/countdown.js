$(".user.show").ready(function() {
    var showDate = $('#date').val();
    var clock = document.getElementById("countdown-holder"),
        targetDate = new Date(showDate);

    if (clock != null) {
    	clock.innerHTML = countdown(targetDate).toString();
    setInterval(function() {
        clock.innerHTML = countdown(targetDate).toString();
    }, 1000);}
});