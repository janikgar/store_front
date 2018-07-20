$(document).on('turbolinks:load', function(){
	var currentPage = document.location.pathname
	var menuLinks = $('#topnav li a');
	console.log(menuLinks);
	menuLinks.each(function(){
		console.log([currentPage, $(this)[0].pathname])
		if ($(this)[0].pathname == currentPage) {
			$(this).parent().addClass('active');
		}
	});
});