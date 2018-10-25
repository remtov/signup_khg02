<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="/resources/js/AjaxUtil.js"></script>
<script> 
window.addEventListener('load',function(){
		var au = new AjaxUtil( {
			url : '/BProductInfo',
			success : function(res){
				res = JSON.parse(res);
				var html = '';
				
			
					for(var product of res) {
						html += '<tr onclick="goPage('+product.productNumber+')">';
						html += '<td>'+ product.productNumber+'</td>';
						html += '<td>'+ product.productName + '</td>';
						html += '<td>'+ product.productCategory + '</td>';
						html += '<td>'+ product.productLowestPrice + '</td>';
						html += '<td>'+ product.productHopefulPrice + '</td>';
						html += '<td>'+ product.productBrand + '</td>';
						html += '<td>'+ product.productCondition + '</td>';
						html += '</tr>';
					}
					document.querySelector('#ATProductBody').insertAdjacentHTML('beforeend',html);
			}
		});
		au.send();
	});

</script>

<body>
	<%@ include file="/WEB-INF/views/bproduct/product-head.jsp"%>




	<table class="table table-striped">
		<thead>
			<tr>
				<th>제품 번호</th>
				<th>제품 명</th>
				<th>제품 분류</th>
				<th>제품 최저가</th>
				<th>제품 희망가</th>
				<th>제품 브랜드</th>
				<th>제품 상태</th>
			</tr>
		</thead>
		<tbody id="ATProductBody">

		</tbody>
	</table>


	<%@ include file="/WEB-INF/views/bproduct/product-bottom.jsp"%>
	<script>
	function goPage(num){
		location.href='/BProductInfo/'+num;
	}
	</script>
</body>