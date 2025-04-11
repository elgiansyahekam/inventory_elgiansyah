<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <title>Web isis</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
            data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarnav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="../jenis/index.php">jenis</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="">barang</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
    <h1><i class="fa-solid fa-skull-crossbones"></i>Tambah data barang</h1>
    <a class="btn btn-primary" href="view_tambah.php"><i class="fa-solid fa-shuttle-space"></i>tambah barang</a>
    <br><br>
    <table class="table table-bordered table-striprd">
        <thead class="table-dark">
        <tr>
            <th>no</th>
            <th>id_barang</th>
            <th>nama_barang</th>
            <th>id_jenis</th>
            <th>harga</th>
            <th>stok</th>
            <th>Aksi</th>
        </tr>
        </thead>
       
        <?php
        include "../../config/koneksi.php";
        $query = mysqli_query($conn, "SELECT * FROM barang");
        $no = 1;
        if(mysqli_num_rows($query)){
            echo "Data barang";
            while($result = mysqli_fetch_assoc($query)){
        ?>
        <tr>
            <td><?php echo $no ?></td>
            <td><?php echo $result['id_barang'] ?></td>
            <td><?php echo $result['nama_barang'] ?></td>
            <td><?php echo $result['id_jenis'] ?></td>
            <td><?php echo $result['harga'] ?></td>
            <td><?php echo $result['stok'] ?></td>
            <td>
            <a href="view_edit.php?id=<?php echo $result['id_barang'] ?>" class="btn btn-warning">
            <i class="fa-solid fa-cart-plus"></i> Edit</a>

                <a href= "proses_hapus.php?id=<?php echo $result['id_barang']; ?>"
                onclick="return confirm ('AMBA=RENO')" class="btn btn-danger btn-sm"><i 
                class="fa-regular fa-trash-can"></i>Hapus</a> 
            </td>
        </tr>
        <?php
            $no++;
            }
        } else {
            echo "Data barang tidak ditemukan";
        }
        ?>
    </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>