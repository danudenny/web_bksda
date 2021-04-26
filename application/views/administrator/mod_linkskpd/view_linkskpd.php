<div class="card">
    <div class="card-header">
        <h3 class="card-title">Link SKPD</h3>
        <div class="card-tools">
        <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url().$this->uri->segment(1); ?>/tambah_linkskpd'>Tambahkan Data</a>
        </div>
    </div><!-- /.card-header -->
<div class="card-body">
<div class="table-responsive">
    <table id="example1" class="table table-sm table-striped">
    <thead>
        <tr>
        <th style='width:40px'>No</th>
        <th>Nama Instansi</th>
        <th>Gambar</th>
        <th>Link / URL</th>
        <th>Aktif</th>
        <th style='width:70px'>Action</th>
        </tr>
    </thead>
    <tbody>
    <?php 
    $no = 1;
    foreach ($record as $row){
    echo "<tr><td>$no</td>
                <td>$row[nama]</td>
                <td><img src='".base_url().'asset/link_skpd/'.$row['gambar']."' width='50px'></td>
                <td>$row[url]</td>
                <td>$row[aktif]</td>
                <td><center>
                <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url().$this->uri->segment(1)."/edit_linkskpd/$row[id]'><span class='nav-icon fas fa-edit'></span></a>
                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_linkskpd/$row[id]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='nav-icon fas fa-trash-alt'></span></a>
                </center></td>
            </tr>";
        $no++;
    }
    ?>
    </tbody>
</table>
</div></div></div>