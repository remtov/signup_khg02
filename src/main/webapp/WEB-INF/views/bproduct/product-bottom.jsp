<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
function valicheck(){
	var vcs = document.querySelectorAll('*[data-vc]');
	
	
	for(vc of vcs){
		var sp = vc.getAttribute('data-vc');
		var min = sp.split(',')[0];
		var max = sp.split(',')[1];
		
		if(vc.value.trim().length<min){
			alert(vc+'는'+min+'글자 이상 넣어주십시오');
			vc.focus();
			return false;
		}
		if(vc.value.trim().length>max){
			alert(max+'글자 이하로 넣어주십시오');
			vc.focus();
			return false;
		}
	}
	return true;
}		


</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="/resources/bootstrap/dist/js/bootstrap.min.js"></script>

	<script src="/resources/bootstrap/docs/assets/js/vendor/holder.min.js"></script>

	<script
		src="/resources/bootstrap/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>