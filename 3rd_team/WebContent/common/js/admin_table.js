/* Documentation for this tablesorter FORK can be found at
  * http://mottie.github.io/tablesorter/docs/
  */
$(function() {

	// call the tablesorter plugin
	$("table").tablesorter({
		theme : 'blue',

		sortList : [ [ 1, 0 ], [ 2, 0 ], [ 3, 0 ] ],

		// header layout template; {icon} needed for some themes
		headerTemplate : '{content}{icon}',

		// initialize zebra striping and column styling of the table
		widgets : [ "zebra", "columns" ],

		widgetOptions : {
			// change the default column class names
			// primary is the first column sorted, secondary is the second, etc
			columns : [ "primary", "secondary", "tertiary" ],
			// include thead when adding class names
			columns_thead : true,
			// include tfoot when adding class names
			columns_tfoot : true
		}
	});

});