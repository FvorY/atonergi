<script>
	$(document).ready(function(){
		// Input payroll
		$('#submit_tambahmanajemen').click(function(){
			var form = $('#form_tambahmanajemen');
			var data = form.serialize();
			$.ajax({
		        url  : '{{ url("/hrd/payroll-simpan-gaji-man") }}',
		        type : 'POST',
		        data : req,
		        success : function(raw_resp) {
		           // Mereset form
		           if(raw_resp.state == 1) {
			           alert(raw_resp.message);  	
			           location.reload();
		           } 	
		        }
		    });
		});
	});
</script>