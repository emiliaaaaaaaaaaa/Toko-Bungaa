<?php
session_start();
if (isset($_SESSION['token'])) {
    if ($_SESSION['token'] == true) {

        ?>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Sign up</title>
            <link rel="stylesheet" href="style.css?v=<?php echo time(); ?>">
        </head>

        <div class="signup_wrapper">

            <body id="the_body">
                <form action="proses_tambah_admin.php" method="post">
                    <div class="signup_table">
                        <table cellspacing="10px">
                            <tr>
                                <td colspan="2">
                                    <p>Create an Admin Account</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    Nama:
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="text" name="nama_pelanggan" value="">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">Alamat:</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="text" name="alamat">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Tanggal Lahir:
                                </td>
                                <td>
                                    Jenis Kelamin:
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="date" name="tanggal_lahir" value="">
                                </td>
                                <td>
                                    <select name="gender">
                                        <option value="L">Laki-laki</option>
                                        <option value="P">Perempuan</option>
                                    </select>
                                </td>


                            <tr>
                                <td>
                                    Username:
                                </td>
                                <td>
                                    Password:
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" name="username">
                                </td>
                                <td>
                                    <input type="password" name="pass">
                                </td>
                            </tr>
                            <tr>

                            </tr>
                            <tr>

                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="submit" name="simpan" value="Daftar">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </div>
                </form>
            </body>
        </div>

        </html>
        <?php
    } else {
        header('location:index.php');
    }

} else {

    header('location:index.php');
}
?>