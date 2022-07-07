<!DOCTYPE html>

<head>
    <meta chartset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .line-title {
            border: 1px solid black;
            border-style: inset;
            border-top: 1px solid #000;
        }
        .table1, th, td {
        border: 1px solid black;
        }
    </style>

</head>
    <body>
<img src="assets/img/logo/logo-kanreg.png"style= " position: absolute; width: 40px; height: auto;">

<table style="width: 100%;">
    <tr>
        <td align="center">
            <span style="line-height: 1.6; font-weight: bold;"> 
                PEMERINTAH KOTA PEKANBARU
                <br>Badan Kepegawaian Negara

            </span>
        </td>
    </tr>
</table>
<hr class="line-title">


<table class="table1">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">NIP</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Instansi</th>
                        <th scope="col">Layanan</th>
                        <th scope="col">Satker</th>
                        <th scope="col">Kepentingan</th>
                        <th scope="col">Counter</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($data as $sm) : ?>
                        <tr>
                            <th scope="row"><?= $i; ?></th>
                            <td><?= $sm['nip']; ?></td>
                            <td><?= $sm['nama']; ?></td>
                            <td><?= $sm['instansi']; ?></td>
                            <td><?= $sm['layanan']; ?></td>
                            <td><?= $sm['satker']; ?></td>
                            <td><?= $sm['kepentingan']; ?></td>
                            <td><?= $sm['counter']; ?></td>
                        </tr>
                        <?php $i++; ?>
                    <?php endforeach; ?>
                </tbody>
            </table>
    </body>

</html>