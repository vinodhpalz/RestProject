<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script
	src="//https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">

$(document).ready( function() {
	
	$.ajax({
		url: '${pageContext.request.contextPath}/products',
		method: 'get',
		datatype: 'json',
		success: function (data){
			$('#myTable').DataTable({
				data: data,
				columns: [
					{'data': 'pName'},
					{'data': 'address'},
				]
			});
		}
	});
});

</script>
<title>List of Products</title>
</head>
<body>


<table id="myTable" class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Product Name</th>
			<th>Product Address</th>
		</tr>	
	</thead>
</table>

</body>
</html>