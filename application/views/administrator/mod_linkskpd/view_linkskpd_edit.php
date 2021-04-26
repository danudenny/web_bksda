<?php
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Edit Link SKPD</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/edit_linkskpd',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id]'>
                    <tr>
                      <th width='120px' scope='row'>Nama Instansi</th>
                      <td><input type='text' class='form-control' name='a' value='$rows[nama]' required></td>
                    </tr>
                    <tr>
                      <th width='120px' scope='row'>Gambar</th>
                      <td><input type='file' class='form-control' name='b'>";
                      if ($rows['gambar'] != ''){ echo "Lihat Gambar : <a target='_BLANK' href='".base_url()."asset/link_skpd/$rows[gambar]'>$rows[gambar]</a>"; } echo "<br>
                      <span style='color: red'><i>* Ukuran gambar ideal <b>(lebar 500px dan tinggi 50px)</b>. Unduh Sample gambar : <a target='_BLANK' href='".base_url()."asset/link_skpd/sample.png'>sample.png</a> </i></span>
                      </td>
                    </tr>
                    <tr>
                      <th scope='row'>Url / Link</th>
                      <td><input type='text' class='form-control' name='c' value='$rows[url]'></td>
                    </tr>
                    <tr>
                      <th scope='row'>Aktif</th>
                      <td>"; if ($rows['aktif']=='Y'){ echo "<input type='radio' name='d' value='Y' checked> Ya &nbsp; <input type='radio' name='d' value='N'> Tidak"; }else{ echo "<input type='radio' name='d' value='Y'> Ya &nbsp; <input type='radio' name='d' value='N' checked> Tidak"; } echo "</td></tr>

                  </tbody>
                  </table>

              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='".base_url().$this->uri->segment(1)."/linkskpd'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>

                  </div>
            </div></div>";
            echo form_close();