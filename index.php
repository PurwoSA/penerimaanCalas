<?php
include "koneksi.php";
include "head.php";
date_default_timezone_set("Asia/Jakarta");
// tanggal Indonesia
function tanggal_indo($tanggal, $cetak_hari = false)
{
    $hari = array(1 => 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu');
    $bulan = array(1 => 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember');
    $split = explode('-', $tanggal);
    $tgl_indo = $split[2] . ' ' . $bulan[(int)$split[1]] . ' ' . $split[0];

    if ($cetak_hari) {
        $num = date('N', strtotime($tanggal));
        return $hari[$num] . ', ' . $tgl_indo;
    }
    return $tgl_indo;
}

// proses input
if (isset($_POST['simpan'])) {
    $t = time();
    $nim = $_POST['nim'];
    $nama_depan = $_POST['nama_depan'];
    $nama_belakang = $_POST['nama_belakang'];
    $kode_fakultas = null;
    $id_prodi = null;
    $telephone = $_POST['telephone'];
    $alamat_email = $_POST['alamat_email'];
    $angkatan = date("Y", $t);
    $waktu_pendaftaran = date("Y-m-d H:i:s", $t);
    if (substr("$nim", 0, 2) == 17) {
        $gelombang = "1";
    } else {
        $gelombang = "3";
    }
//    Pilih jurusan
    $jurusan = substr($nim, 2, 2);
    if ($jurusan == 13) {
        $kode_fakultas = "FTI";
        $id_prodi = "15";
    } elseif ($jurusan == 51) {
        $kode_fakultas = "FT";
        $id_prodi = "11";
    } elseif ($jurusan == 52) {
        $kode_fakultas = "FT";
        $id_prodi = "12";
    } elseif ($jurusan == 32) {
        $kode_fakultas = "FE";
        $id_prodi = 4;
    } elseif ($jurusan == 42) {
        $kode_fakultas = "FISIP";
        $id_prodi = "9";
    } elseif ($jurusan == 11) {
        $kode_fakultas = "FTI";
        $id_prodi = "13";
    } elseif ($jurusan == 12) {
        $kode_fakultas = "FTI";
        $id_prodi = "14";
    } elseif ($jurusan == 31) {
        $kode_fakultas = "FE";
        $id_prodi = "19";
    } elseif ($jurusan == 71) {
        $kode_fakultas = "FIKOM";
        $id_prodi = "18";
    } elseif ($jurusan == 43) {
        $kode_fakultas = "FISIP";
        $id_prodi = "10";
    }
    // insert ke tabel
    $query = "INSERT INTO calas VALUES('$nim','$nama_depan','$nama_belakang','$kode_fakultas','$id_prodi','$telephone','$alamat_email','$angkatan','$gelombang','$waktu_pendaftaran')";
    if ($conn->query($query) === TRUE) {
        ?>
        <script type="text/javascript">
            alert("Data berhasil ditambahkan!");
            document.location = "index.php";
        </script>
        <?php
    } else {
        ?>
        <script type="text/javascript">
            alert("Data gagal ditambahkan!");
            document.location = "index.php";
        </script>
        <?php
    }
}
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-7">
            <form class="form-horizontal" action="" method="post">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Data Diri</h3>
                    </div>
                    <div class="panel-body">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="container-fluid">
                                        <div class="form-group label-floating">
                                            <label class="control-label" for="nim">Nomor Induk Mahasiswa</label>
                                            <input type="text" class="form-control" id="nim" name="nim" required=""
                                                   maxlength="10"
                                                   onkeypress="return event.charCode >= 48 && event.charCode <= 57">
                                            <p class="help-block">Masukkan NIM Anda (maksimal 10 karakter)</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="container-fluid">
                                        <div class="form-group label-floating">
                                            <label class="control-label" for="nama_depan">Nama Depan</label>
                                            <input type="text" class=form-control name="nama_depan" id="nama_depan"
                                                   required="" maxlength="35"
                                                   onkeypress="return (event.charCode >= 65 && event.charCode <= 90) || (event.charCode >= 96 && event.charCode <= 122) || (event.charCode >= 32 && event.charCode <= 32)">
                                            <p class="help-block">Masukkan nama depan Anda (maksimal 35 karakter)</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="container-fluid">
                                        <div class="form-group label-floating">
                                            <label class="control-label label-floating" for="nama_belakang">Nama
                                                Belakang</label>
                                            <input type="text" class=form-control name="nama_belakang"
                                                   id="nama_belakang" required="" maxlength="35"
                                                   onkeypress="return (event.charCode >= 65 && event.charCode <= 90) || (event.charCode >= 96 && event.charCode <= 122) || (event.charCode >= 32 && event.charCode <= 32)">
                                            <p class="help-block">Masukkan nama belakang Anda (maksimal 35 karakter)</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="container-fluid">
                                        <div class="form-group label-floating">
                                            <label class="control-label" for="telephone">Nomor Telepon</label>
                                            <input type="text" class="form-control" id="telephone" name="telephone"
                                                   required="" maxlength="17"
                                                   onkeypress="return event.charCode >= 48 && event.charCode <= 57">
                                            <p class="help-block">Masukkan nomor telepon Anda (maksimal 17 karakter)</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="container-fluid">
                                        <div class="form-group label-floating">
                                            <label class="control-label" for="alamat_email">E-mail</label>
                                            <input type="email" class="form-control" id="alamat_email"
                                                   name="alamat_email" required="" maxlength="100">
                                            <p class="help-block">Masukkan alamat email Anda (maksimal 100 karakter)</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer text-right" style="background-color:#fffeff;">
                        <input class="btn btn-default" type="reset" name="reset">
                        <input class="btn btn-primary" type="submit" name="simpan" onclick="loadDoc">
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-5">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Pendaftar Terkini (<?php echo tanggal_indo('2016-03-20', true); ?>)</h3>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>NIM</th>
                            <th>Nama</th>
                            <th>Program Studi</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        //ambil data
                        $sekarang_gan = date('Y-m-d');
                        $sql = "SELECT calas.nim, calas.nama_depan, calas.nama_belakang, program_studi.program_studi FROM calas, program_studi WHERE calas.id_prodi=program_studi.id_prodi ORDER BY waktu_pendaftaran DESC LIMIT 11";
                        $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo "<tr><td>" . $row["nim"] . "</td><td>" . $row["nama_depan"] . " " . $row["nama_belakang"] . "</td><td>" . $row["program_studi"] . "</td></tr>";
                            }
                        } else {
                            echo "<tr><td>0</td><td>Belum Ada Data</td><td></td></tr>";
                        }
                        ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="./jquery-3.1.0.min.js"></script>
<script src="./bootstrap/js/bootstrap.js"></script>
<script src="bootstrap-material-design/dist/js/material.min.js"></script>
<script src="bootstrap-material-design/dist/js/ripples.min.js"></script>
<script src="./dropdown.js/jquery.dropdown.js"></script>
<script type="text/javascript">
    $.material.init();
    $(".select").dropdown({"autoinit": ".select"});
</script>
</body>
</html>
