<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Tambah Link SKPD</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal');
              echo form_open_multipart($this->uri->segment(1).'/tambah_linkskpd',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr>
                      <th scope='row' width='120px'>Nama Instansi</th>
                      <td><input type='text' class='form-control' name='a' required></td>
                    </tr>
                    <tr>
                      <th width='120px' scope='row'>Gambar</th>
                      <td><input type='file' class='form-control' name='b'>
                      <span style='color: red'><i>* Ukuran gambar ideal <b>(lebar 500px dan tinggi 50px)</b>. Unduh Sample gambar : <a target='_BLANK' href='".base_url()."asset/link_skpd/sample.png'>sample.png</a> </i></span>
                      </td>
                      
                    </tr>
                    <tr>
                      <th scope='row' width='120px'>Url / Link</th>
                      <td><input type='text' class='form-control' name='c' required></td>
                    </tr>
                    <tr>
                      <th scope='row'>Aktif </th>
                      <td><input type='radio' name='d' value='Y' checked> Ya &nbsp; <input type='radio' name='c' value='N'> Tidak</td>
                    </tr>
                  </tbody>
                  </table>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='".base_url().$this->uri->segment(1)."/linkskpd'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();
