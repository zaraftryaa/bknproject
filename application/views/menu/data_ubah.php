<div class="container">

    <div class="row mt-3">
        <div class="col-md-6">

            <div class="card">
                <div class="card-header">
                    Data Pelayanan
                </div>
                <div class="card-body">
                    <form action="" method="post">
                        <input type="hidden" name="id" value="<?= $data['id']; ?>">

                        <div class="form-group">
                            <label for="nip">NIP</label>
                            <input type="text" name="nip" class="form-control" id="nip" value="<?= $data['nip']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" name="nama" class="form-control" id="nama" value="<?= $data['nama']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="satker">Satuan Kerja</label>
                            <input type="text" name="satker" class="form-control" id="satker" value="<?= $data['satker']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="instansi">Instansi</label>
                            <input type="text" name="instansi" class="form-control" id="instansi" value="<?= $data['instansi']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="kepentingan">Kepentingan</label>
                            <input type="text" name="kepentingan" class="form-control" id="kepentingan" value="<?= $data['kepentingan']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="layanan">Layanan</label>
                            <input type="text" name="layanan" class="form-control" id="layanan" value="<?= $data['layanan']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="counter">Counter</label>
                            <input type="text" name="counter" class="form-control" id="counter" value="<?= $data['counter']; ?>">
                        </div>
                        <button type="submit" name="ubah" class="btn btn-primary float-right">Ubah Data</button>
                        <!-- <button type="submit" class="btn btn-primary">Simpan</button> -->
                        <!-- <a href="<?= base_url(); ?>menu/data" class="btn btn-success btn-sm float-center">Simpan</a> -->


                    </form>
                </div>
            </div>
        </div>
    </div>
</div>