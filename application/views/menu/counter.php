  <div id="content-wrapper">
    <div class="container-fluid">

      <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

      <table class="table">
        <thead>
          <tr>
            <th scope="col">No</th>
            <th scope="col">Counter</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Counter A</td>
            <td>
              <a href="<?= base_url(); ?>menu/counter_a" class="btn btn-warning btn-sm float-center"><i class="fas fa-calendar"></i>Monitor A</a>
            </td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Counter B</td>
            <td><a href="<?= base_url(); ?>menu/counter_b" class="btn btn-warning btn-sm float-center"><i class="fas fa-calendar"></i>Monitor B</a></td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Counter C</td>
            <td><a href="<?= base_url(); ?>menu/counter_c" class="btn btn-warning btn-sm float-center"><i class="fas fa-calendar"></i>Monitor C</a></td>
          </tr>
          <tr>
            <th scope="row">4</th>
            <td>Counter D</td>
            <td><a href="<?= base_url(); ?>menu/counter_d" class="btn btn-warning btn-sm float-center"><i class="fas fa-calendar"></i> Monitor D</a></td>
          </tr>
        </tbody>
      </table>
    </div>