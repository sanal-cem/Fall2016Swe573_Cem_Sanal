function setItems(dropDown) {
	var currentPage = $(dropDown).find(":selected").val() - 1;
	var numPerPage = 5;
	var $table = $('table.paginated');
	$table.bind('repaginate', function() {
		$table.find('tbody tr').hide().slice(currentPage * numPerPage, (currentPage + 1) * numPerPage).show();
	});
	
	$table.trigger('repaginate');
}