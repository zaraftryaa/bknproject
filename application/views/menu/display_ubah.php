<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


    <div class="row">
        <div class="col-lg-8">

            <?= form_open_multipart('menu/ubah_display'); ?>
            <input type="hidden" name="id" value="<?= $data['id']; ?>">
            <div class="form-group row">
                <label for="quotes" class="col-sm-2 col-form-label">Quotes</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="quotes" name="quotes" value="<?= $data['quotes']; ?>">
                </div>
            </div>
            <div class="form-group row">
                <label for="video" class="col-sm-2 col-form-label">Video</label>
                <div class="col-sm-7">
                    <div class="row">
                        <div class="col-sm-0">
                            <!-- <img src="<?= base_url('assets/img/profile/') . $user['image']; ?>" class="img-thumbnail"> -->
                        </div>
                        <div class="col-sm-9">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="video" name="video">
                                <label class="custom-file-label" for="video">Choose file</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group row justify-content-end">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </div>


            </form>


        </div>
    </div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->