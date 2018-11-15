<script>
    // Absensi manajemen
    var absman_search = $('#absmanajemen_search'); 
    var absman_refresh = $('#absmanajemen_refresh'); 
    var absman_tgl_awal = $('#absmanajemen_tgl_awal'); 
    var absman_tgl_akhir = $('#absmanajemen_tgl_akhir'); 
    var absman_id_divisi = $('#absmanajemen_id_divisi'); 
    var absman_url = "{{ url('/hrd/absensi/absensi-manajemen') }}";

    var tbl_absman = $('#tbl_absmanajemen').DataTable( {
        ajax: absman_url,
        columns: [
            
            { data: "apm_tanggal" },
            { data: "apm_nama" },
            { data: "apm_jam_kerja" },
            { data: "apm_jam_masuk" },
            { data: "apm_jam_pulang" },
            { data: "apm_scan_masuk" },
            { data: "apm_scan_pulang" },
            { data: "apm_terlambat" },
            { data: "apm_jml_jamkerja" }
            
        ]
    } );

    var find_absman = function() {
        var tgl_awal = absman_tgl_awal.val();
        var tgl_akhir = absman_tgl_akhir.val();
        var id_divisi = absman_id_divisi.val();
    } 

    absman_refresh.click(function(){
        // Merefresh tabel manajemen
        absman_tgl_awal.val('');
        absman_tgl_akhir.val('');
        tbl_absman.ajax.url(absman_url).load();
    });

    absman_search.click(function(){
        var date_param = '';
        var div_param = '';
        var tgl_awal = absman_tgl_awal.val() != '' ? absman_tgl_awal.val() : '' ;
        var tgl_akhir = absman_tgl_akhir.val() != '' ? absman_tgl_akhir.val() : '' ;
        var id_divisi = absman_id_divisi.val() != '' ? absman_id_divisi.val() : '' ;

        if(id_divisi != '') {
            div_param = 'id_divisi=' + id_divisi;
        }

        if(tgl_awal != '' && tgl_akhir != '') {
            date_param = '&tgl_awal=' + tgl_awal + '&tgl_akhir=' + tgl_akhir;
        }

        var tmp_url = absman_url + '?' + div_param + date_param;
        tbl_absman.ajax.url(tmp_url).load();
    });


    // ======================================================

    // Absensi produksi
    var abspro_search = $('#absproduksi_search'); 
    var abspro_refresh = $('#absproduksi_refresh'); 
    var abspro_tgl_awal = $('#absproduksi_tgl_awal'); 
    var abspro_tgl_akhir = $('#absproduksi_tgl_akhir'); 
    var abspro_id_divisi = $('#absproduksi_id_divisi'); 
    var abspro_url = "{{ url('/hrd/absensi/absensi-produksi') }}";

	var tbl_abspro = $('#tbl_absproduksi').DataTable( {
        ajax: abspro_url,
        columns: [
            
            { data: "apm_tanggal" },
            { data: "apm_nama" },
            { data: "apm_jam_kerja" },
            { data: "apm_jam_masuk" },
            { data: "apm_jam_pulang" },
            { data: "apm_scan_masuk" },
            { data: "apm_scan_pulang" },
            { data: "apm_terlambat" },
            { data: "apm_jml_jamkerja" }
            
        ]
    } );

    var find_abspro = function() {
        var tgl_awal = abspro_tgl_awal.val();
        var tgl_akhir = abspro_tgl_akhir.val();
        var id_divisi = abspro_id_divisi.val();
    } 

    abspro_refresh.click(function(){
        // Merefresh tabel manajemen
        abspro_tgl_awal.val('');
        abspro_tgl_akhir.val('');
        tbl_abspro.ajax.url(abspro_url).load();
    });

    abspro_search.click(function(){
        var date_param = '';
        var div_param = '';
        var tgl_awal = abspro_tgl_awal.val() != '' ? abspro_tgl_awal.val() : '' ;
        var tgl_akhir = abspro_tgl_akhir.val() != '' ? abspro_tgl_akhir.val() : '' ;
        var id_divisi = abspro_id_divisi.val() != '' ? abspro_id_divisi.val() : '' ;

        if(id_divisi != '') {
            div_param = 'id_divisi=' + id_divisi;
        }

        if(tgl_awal != '' && tgl_akhir != '') {
            date_param = '&tgl_awal=' + tgl_awal + '&tgl_akhir=' + tgl_akhir;
        }

        var tmp_url = abspro_url + '?' + div_param + date_param;
        tbl_abspro.ajax.url(tmp_url).load();
    });


    // ======================================================
</script>