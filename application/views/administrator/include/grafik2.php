<script type="text/javascript" src="<?php echo base_url(); ?>asset/admin/plugins/jQuery/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('#container2').highcharts({
            data: {
                table: 'datatable2'
            },
            chart: {
                type: 'column'
            },
            title: {
                text: ''
            },
            yAxis: {
                allowDecimals: false,
                title: {
                    text: ''
                }
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        'Ada ' + this.point.y + ' Laporan';
                }
            }
        });
    });
</script>

<div class="card-header">
    <h3 class="card-title">Grafik Laporan Masyarakat</h3>
</div>

<div class="card-body chat" id="chat-card">
    <div id="container2" style="min-width: 310px; height: 205px; margin: 0 auto"></div>
    <table id="datatable2" style='display:none'>
        <thead>
        <tr>
            <th></th>
            <th>Jumlah Laporan</th>
        </tr>
        </thead>
        <tbody>
        <?php
        $grafik = $this->model_app->grafik_laporan();
        foreach ($grafik->result_array() as $row) {
            echo "<tr>
                    <th>" . tgl_grafik($row['tanggal']) . "</th>
                    <td>$row[jumlah]</td>
                    </tr>";
        }
        ?>
        </tbody>
    </table>

    <div class="card-header">
        <h3 class="card-title">Laporan Berdasarkan Kategori</h3>
    </div>
    <ul>
        <?php
        $teratas = $this->db->query("SELECT count(*) as jumlah, kategori FROM hubungi GROUP BY kategori LIMIT 10");
        foreach ($teratas->result_array() as $row) {
            echo "<li>$row[kategori]<i style='color:red'>($row[jumlah])</i></li>";
        }
        ?>
    </ul>
    <div class="card-footer">
        <a class="btn btn-success" type="button" href="<?php echo base_url().$this->uri->segment(1); ?>/pesanmasuk"> Lihat Semua Laporan </a>
    </div>
</div><!-- /.card (chat card) -->

