$('table.paginated').each(function() {
	var currentPage = 0;
	var numPerPage = 5;
	var $table = $(this);
	$table.bind('repaginate', function() {
		$table.find('tbody tr').hide().slice(currentPage * numPerPage, (currentPage + 1) * numPerPage).show();
	});
	
	$table.trigger('repaginate');
	var numRows = $table.find('tbody tr').length;
	var numPages = Math.ceil(numRows / numPerPage);
	var maxShow = numPages;
	
	var $pager = $('<div class="pager"></div>');

	// Create the left arrow.
	$('<span class="clickable left-arrow"></span>').text('<<').bind('click', {
			newPage: page
		}, function() {
			currentPage = currentPage - 1;
			if(currentPage < 0) {
				currentPage = 0;
			}
			$table.trigger('repaginate');
			$(this).addClass('active').siblings().removeClass('active');
			})
	// Append to pager.
	.appendTo($pager).addClass('clickable');
	if(numPages < 10) {
		maxShow = numPages;
	}
	else {
		maxShow = 10;
	}
	for (var page = 0; page < maxShow; page++) {
		$('<span class="page-number"></span>').text(page + 1).bind('click', {
			newPage: page
		}, function(event) {
			currentPage = event.data['newPage'];
			$table.trigger('repaginate');
			$(this).addClass('active').siblings().removeClass('active');
		})
		// Append to pager.
		.appendTo($pager).addClass('clickable');
	}
	// Create the right arrow.
	$('<span class="clickable right-arrow"></span>').text('>>').bind('click', {
			newPage: page
		}, function(){
			currentPage = currentPage + 1;
			if(currentPage >= numPages) {
				currentPage = numPages - 1;
			}
			$table.trigger('repaginate');
			$(this).addClass('active').siblings().removeClass('active');
			})
	// Append to pager.
	.appendTo($pager).addClass('clickable');
  
	$pager.insertBefore($table).find('span.page-number:first').addClass('active');
});