@extends('main')
@section('content')

{{-- @include('hrd/payroll/tambah_payroll_manajemen')
@include('hrd/payroll/edit_payroll_manajemen')
@include('hrd/payroll/tambah_payroll_tunjangan')
@include('hrd/payroll/edit_payroll_tunjangan') --}}
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">HRD</li>
					<li class="breadcrumb-item active" aria-current="page">Payroll</li>
				</ol>
			</nav>
		</div>

		<div class="col-lg-12 ">
			<ul class="nav nav-tabs tab-solid tab-solid-primary mb-0" role="tablist">
		        <li class="nav-item">
		          <a class="nav-link active" id="tab-6-1" data-toggle="tab" href="#pmanagerial" role="tab" aria-controls="pmanagerial" aria-selected="true"><i class="mdi mdi-folder-account"></i>Managerial</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link " id="tab-6-2" data-toggle="tab" href="#pstaff" role="tab" aria-controls="pstaff" aria-selected="true"><i class="mdi mdi-coin"></i>Staff</a>
		        </li>
		    </ul>

			<div class="tab-content tab-content-solid col-lg-12">

				@include('hrd.payroll.tab_managerial')

				@include('hrd.payroll.tab_staff')


			</div>
		</div>
	</div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

{{-- @include('hrd/payroll/js/commander')
@include('hrd/payroll/js/form_commander') --}}
<script type="text/javascript">

var table;
$(document).ready(function(){
   table = $('#gaji1').DataTable({
          processing: true,
          responsive:true,
          serverSide: true,
          ajax: {
              url: '{{route('datatable_payroll')}}',
          },
          "columns": [
          { "data": "nm_gaji" },
          { "data": "sma" },
          { "data": "d3" },
					{ "data": "s1" },
					{ "data": "pangkat" },
          { "data": "aksi" },
          ]
    });

});

function simpanm(){
	$.ajax({
		type: 'get',
		data: $('#data_tambahm').serialize(),
		dataType: 'json',
		url: '{{route('simpan_payroll')}}',
		success: function (response){
			if (response.status == 'berhasil') {
				iziToast.success({
			    title: 'OK',
			    message: 'Successfully!',
				});
				table.ajax.reload();
			} else {
				iziToast.warning({
			    title: 'info',
			    message: 'Failed!',
			});
			}
		}
	});
}

	function hapus(id){
	// function hapus(parm){
    // var par   = $(parm).parents('tr');
    // var id    = $(par).find('.d_id').text();

    	iziToast.show({
            overlay: true,
            close: false,
            timeout: 20000,
            color: 'dark',
            icon: 'fas fa-question-circle',
            title: 'Important!',
            message: 'Apakah Anda Yakin ?',
            position: 'center',
            progressBarColor: 'rgb(240, 0, 0)',
            buttons: [
              [
                '<button style="background: rgb(190, 0, 0); color: white;" onclick="success()">Delete</button>',
                function (instance, toast) {

                  $.ajax({
                     type: "get",
                     url: '{{route('hapus_payroll')}}',
                     data: {id},
                     success: function(data){
						if (data.status == 'berhasil') {
							iziToast.success({
							    title: 'OK',
							    message: 'Successfully deleted record!',
							});
							table.ajax.reload();
						}
						else {
							iziToast.warning({
							    title: 'Info',
							    message: 'Failed deleted record!',
							});
						}
                     },
                     error: function(){
	                     iziToast.warning({
	                        icon: 'fa fa-times',
	                        message: 'Terjadi Kesalahan!',
	                     });
                     },
                     async: false
                   });

                }
              ],
              [
                '<button class="btn btn-info">Cancel</button>',
                function (instance, toast) {
                  instance.hide({
                    transitionOut: 'fadeOutUp'
                  }, toast);
                }
              ]
            ]
          });


  	}

	function edit(id){
		$.ajax({
			type: 'get',
			data: {id:id},
			dataType: 'json',
			url: '{{route('edit_payroll')}}',
			success : function(response){
				$('#nm_gaji').val(response[0].nm_gaji);
				$('#c_jabatanedit').val(response[0].c_jabatan);
				$('#c_jabatanedit').find('option[value="'+response[0].c_jabatan+'"]').attr('selected','selected');
	      var text = $('#c_jabatanedit').find('option[value="'+response[0].c_jabatan+'"]').text();
				$('#select2-c_jabatanedit-container').text(text);
				$('#c_sd').val(accounting.formatMoney(response[0].c_sd,"",2,'.',','));
				$('#c_smp').val(accounting.formatMoney(response[0].c_smp,"",2,'.',','));
				$('#c_sma').val(accounting.formatMoney(response[0].c_sma,"",2,'.',','));
				$('#c_smk').val(accounting.formatMoney(response[0].c_smk,"",2,'.',','));
				$('#c_d1').val(accounting.formatMoney(response[0].c_d1,"",2,'.',','));
				$('#c_d2').val(accounting.formatMoney(response[0].c_d2,"",2,'.',','));
				$('#c_d3').val(accounting.formatMoney(response[0].c_d3,"",2,'.',','));
				$('#c_s1').val(accounting.formatMoney(response[0].c_s1,"",2,'.',','));

				$('#updatem').attr('onclick', 'updatem('+id+')');

				$('#editmanagement').modal('show');
			}
		});
	}

	function updatem(id){
		$.ajax({
			type: 'get',
			data: $('#data_editm').serialize()+'&id='+id,
			dataType: 'json',
			url: '{{route('update_payroll')}}',
			success : function(response){
				if (response.status == 'berhasil') {
					iziToast.success({
						title: 'OK',
						message: 'Successfully deleted record!',
				});
				table.ajax.reload();
			} else {
				iziToast.warning({
					title: 'Info',
					message: 'Failed deleted record!',
			});
			}
			}
		});
	}

  // function success(){
	//
  // 	iziToast.success({
	//     title: 'OK',
	//     message: 'Successfully deleted record!',
	// });
	//
  // }

</script>

<script type="text/javascript">

	function samakan() {
	  var jum = $('#jumlah').val();
	  $('#sd').val(jum);
	  $('#smp').val(jum);
	  $('#sma').val(jum);
	  $('#smk').val(jum);
	  $('#d1').val(jum);
	  $('#d2').val(jum);
	  $('#d3').val(jum);
	  $('#s1').val(jum);
	}


</script>

<script type="text/javascript">

  $(function() {
    $('.currency').maskMoney(
    	{
    		prefix:'RP. ',
    		allowZero: true,
    		allowNegative: true,
    		thousands:'.',
    		decimal:',',
    		affixesStay: false
    	}
    );
  })

</script>

@endsection
