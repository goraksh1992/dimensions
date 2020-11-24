<div class="row">

    <div class="col-sm-12" id="PrintMe">
        <div  class="panel panel-default thumbnail">
 
            <div class="panel-heading no-print">
                <div class="btn-group"> 
                    <?php
                    if($this->permission->method('renewals','read')->access() || $this->permission->method('renewals','update')->access() || $this->permission->method('renewals','delete')->access()){
                    ?>
                    <a class="btn btn-primary" href="<?php echo base_url("packages/renewals") ?>"> <i class="fa fa-list"></i>  <?php echo display('renewals') ?> </a>  
                    <?php } ?>

                    <?php
                    if($this->permission->method('renewals','read')->access()){
                    ?>
                    <button type="button" onclick="printContent('PrintMe')" class="btn btn-danger" ><i class="fa fa-print"></i></button> 
                    <?php } ?>
                    
                </div>
            </div> 




             <?php
             if($this->permission->method('package_order_list','read')->access()){
             ?>     
            <div class="panel-body"> 
                <!-- Nav tabs --> 
                <ul class="col-xs-12 nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"> 
                        <a href="#home" aria-controls="home" role="tab" data-toggle="tab"> <i class="fa fa-list"></i> <?php echo display('renewals') ?></a>
                    </li>
                </ul>  

                <!-- Tab panes --> 
                <div class="col-xs-12 tab-content">
                    <br>
                    <!-- INFORMATION -->
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <div class="row">
                            <div class="col-md-12"> 
                                <table class="datatable table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th><?php echo display('serial') ?></th>
                                            <th><?php echo display('patient_name') ?></th> 
                                            <th><?php echo display('mobile') ?></th>
                                            <th><?php echo display('package_title') ?></th>
                                            <th><?php echo display('package_price') ?></th>
                                            <th><?php echo display('order_total') ?></th>
                                            <th><?php echo display('order_date') ?></th>
                                            <th><?php echo display('renewals_status') ?></th>
                                            <th><?php echo display('renewals_flag') ?></th>
                                            <th><?php echo display('renewals_date') ?></th>
                                            <?php
                                            if($this->permission->method('package_order_list','update')->access() || $this->permission->method('package_order_list','delete')->access()){
                                            ?>
                                            <th><?php echo display('action') ?></th>
                                            <?php } ?>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if (!empty($renewals) && count($renewals)) { ?>
                                            <?php $sl = 1; ?>
                                            <?php foreach ($renewals as $package) { ?>
                                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                                    <td><?php echo $sl; ?></td>
                                                    <td><?php echo $package->firstname.' '.$package->lastname; ?></td>
                                                    <td><?php echo $package->mobile; ?></td>
                                                    <td><?php echo $package->package_title; ?></td>
                                                    <td><?php echo $package->package_special_price; ?></td>
                                                    <td><?php echo $package->total_price; ?></td>
                                                    <td><?php echo $package->created_date; ?></td>
                                                    <td><?php echo $package->renewal_status; ?></td>
                                                    <td><?php echo $package->renewal_email_flag; ?></td>
                                                    <td><?php echo $package->renewal_date; ?></td>
                                                     
                                                    <?php
                                                     if($this->permission->method('renewals','update')->access() || $this->permission->method('renewals','delete')->access()){
                                                     ?>
                                                    <td class="center">
                                                    <?php
                                                     if($this->permission->method('renewals','read')->access()){
                                                     ?>
                                                        <a href="<?php echo base_url("orders/view/$package->order_id") ?>" class="btn btn-xs  btn-success"><i class="fa fa-eye"></i></a> 
                                                    <?php } ?>

                                                     <?php
                                                     if($this->permission->method('renewals','delete')->access()){
                                                     ?>
                                                        <a href="<?php echo base_url("renewals/delete/$package->order_id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-xs  btn-danger"><i class="fa fa-trash"></i></a> 
                                                     <?php } ?>

                                                    </td>
                                                    <?php } ?>

                                                </tr>
                                                <?php $sl++; ?>
                                            <?php } ?> 
                                        <?php } ?> 
                                    </tbody>
                                </table>  <!-- /.table-responsive -->
                            </div>
                        </div>
                    </div> 
 
                </div>  
            </div> 
        <?php 
        }
         else{
         ?>
            <div class="col-sm-12">
               <div class="panel panel-bd lobidrag">
                <div class="panel-heading">
                  <div class="panel-title">
                    <h4><?php echo display('you_do_not_have_permission_to_access_please_contact_with_administrator');?>.</h4>
                   </div>
                   </div>
                 </div>
                </div>
         <?php
         }
         ?>



        </div>
    </div>
  
</div>

<!-- add patient modal -->
<div class="modal fade" id="addAppiontment" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Book Online Slot</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <?php echo form_open('orders/appointment','class="form-inner"') ?> 
      <div class="modal-body">
            <div class="form-group row">
                <input type="hidden" name="patient_id" id="patient_id" value="<?php echo print_value($order, 'patient_code', true);?>"/>
                <input type="hidden" name="order_id" id="order_id" value="<?php echo print_value($order, 'order_id', true);?>"/>
                <label for="department_id" class="col-xs-3 col-form-label"><?php echo display('department_name') ?> <i class="text-danger">*</i></label>
                <div class="col-xs-9">
                    <?php echo form_dropdown('department_id',$department_list,'','class="form-control" id="department_id"') ?>
                    <span class="doctor_error"></span>
                </div>
            </div>
            <div class="form-group row">
                <label for="doctor_id" class="col-xs-3 col-form-label"><?php echo display('doctor_name') ?> <i class="text-danger">*</i></label>
                <div class="col-xs-9">
                    <?php echo form_dropdown('doctor_id','','','class="form-control" id="doctor_id"') ?>
                    <div id="available_days"></div>
                </div>
            </div> 

            <div class="form-group row">
                <label for="date" class="col-xs-3 col-form-label"><?php echo display('appointment_date') ?> <i class="text-danger">*</i></label>
                <div class="col-xs-9"> 
                    <input name="date" type="text" class="datepicker-avaiable-days form-control" id="date" placeholder="<?php echo display('appointment_date') ?>" >
                </div>
            </div>
            <div class="form-group row">
                <label for="serial_no" class="col-xs-3 col-form-label"><?php echo display('serial_no') ?> <i class="text-danger">*</i></label>
                <div class="col-xs-9">
                    <div id="serial_preview">
                        <div type="button" class="btn btn-success disabled btn-sm"> 01</div>
                        <div type="button" class="btn btn-success disabled btn-sm"> 02</div>
                        <div type="button" class="btn btn-success disabled btn-sm"> 03</div>...
                        <div type="button" class="slbtn btn btn-success disabled btn-sm"> N</div>

                    </div>
                    <input type="hidden" name="schedule_id" id="schedule_id"/>
                    <input type="hidden" name="serial_no" id="serial_no"/>
                </div>
            </div> 

            <div class="form-group row">
                <label for="problem" class="col-xs-3 col-form-label"><?php echo display('problem') ?></label>
                <div class="col-xs-9">
                    <textarea name="problem" class="form-control" placeholder="<?php echo display('problem') ?>" maxlength="140" rows="7"></textarea>
                </div>
            </div>  

            <div class="form-group row">
                <label class="col-sm-3"><?php echo display('status') ?></label>
                <div class="col-xs-9">
                    <div class="form-check">
                        <label class="radio-inline">
                        <input type="radio" name="status" value="1" <?php echo  set_radio('status', '1', TRUE); ?> ><?php echo display('active') ?>
                        </label>
                        <label class="radio-inline">
                        <input type="radio" name="status" value="0" <?php echo  set_radio('status', '0'); ?> ><?php echo display('inactive') ?>
                        </label>
                    </div>
                </div>
            </div>
      </div>
      <div class="modal-footer">
        <div class="form-group row">
                <div class="col-sm-offset-3 col-sm-6">
                    <div class="ui buttons">
                        <button type="reset" class="ui button"><?php echo display('reset') ?></button>
                        <div class="or"></div>
                        <button class="ui positive button"><?php echo display('save') ?></button>
                    </div>
                </div>
            </div>
      </div>
      <?php echo form_close() ?>
    </div>
  </div>
</div>
<!-- add patient modal -->
<div class="modal fade" id="editAppiontment" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Appointment View</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
           <div class="row" id="appointment_data"></div>
      </div>
    </div>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
         //department_id
        $(".edit_appoinment").click(function(){
            var id = $(this).attr('id');
            alert(id); 
            $.ajax({
                url  : '<?= base_url('orders/get_appointment/') ?>',
                type : 'post',
                dataType : 'JSON',
                data : {
                    '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                    appointment_id : id
                },
                success : function(data) 
                {
                    $("#appointment_data").html();
                    $("#appointment_data").html(data);
                    $("#editAppiontment").modal('show');
                }, 
                error : function(xhr, status, error)
                {
                    //alert('failed');
                    alert(xhr.responseText);
                    var err = eval("(" + xhr.responseText + ")");
                    //alert(err.Message);
                }
            });
        });
        $("#department_id").change(function(){
            var output = $('.doctor_error'); 
            var doctor_list = $('#doctor_id');
            var available_day = $('#available_day');

            $.ajax({
                url  : '<?= base_url('appointment/doctor_by_department/') ?>',
                type : 'post',
                dataType : 'JSON',
                data : {
                    '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                    department_id : $(this).val()
                },
                success : function(data) 
                {
                    if (data.status == true) {
                        doctor_list.html(data.message);
                        available_day.html(data.available_days);
                        output.html('');
                    } else if (data.status == false) {
                        doctor_list.html('');
                        output.html(data.message).addClass('text-danger').removeClass('text-success');
                    } else {
                        doctor_list.html('');
                        output.html(data.message).addClass('text-danger').removeClass('text-success');
                    }
                }, 
                error : function()
                {
                    alert('failed');
                }
            });
        }); 


        //doctor_id
        $("#doctor_id").change(function(){
            var doctor_id = $('#doctor_id'); 
            var output = $('#available_days'); 

            $.ajax({
                url  : '<?= base_url('appointment/schedule_day_by_doctor/') ?>',
                type : 'post',
                dataType : 'JSON',
                data : {
                    '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                    doctor_id : $(this).val(),
                    slot_type : "<?php echo isset($slot_type) ? $slot_type: 1 ; ?>"
                },
                success : function(data) 
                {
                    if (data.status == true) {
                        output.html(data.message).addClass('text-success').removeClass('text-danger');
                    } else if (data.status == false) {
                        output.html(data.message).addClass('text-danger').removeClass('text-success');
                    } else {
                        output.html(data.message).addClass('text-danger').removeClass('text-success');
                    }
                }, 
                error : function()
                {
                    alert('failed');
                }
            });
        });

        //date
        $("#date").change(function(){
            var date        = $('#date'); 
            var serial_preview   = $('#serial_preview'); 
            var doctor_id   = $('#doctor_id'); 
            var schedule_id = $("#schedule_id"); 
            var patient_id  = $("#patient_id"); 
    
            $.ajax({
                url  : '<?= base_url('appointment/serial_by_date/') ?>',
                type : 'post',
                dataType : 'JSON',
                data : {
                    '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                    doctor_id  : doctor_id.val(),
                    patient_id : patient_id.val(), 
                    date : $(this).val()
                },
                success : function(data) 
                { 
                    if (data.status == true) {
                        //set schedule id
                        schedule_id.val(data.schedule_id); 
                        serial_preview.html(data.message);
                    } else if (data.status == false) {
                        schedule_id.val('');
                        serial_preview.html(data.message).addClass('text-danger').removeClass('text-success');
                    } else {
                        schedule_id.val('');
                        serial_preview.html(data.message).addClass('text-danger').removeClass('text-success');
                    }
                }, 
                error : function()
                {
                    alert('failed');
                }
            });
        });

        //serial_no 
        $("body").on('click','.serial_no',function(){
            var serial_no = $(this).attr('data-item');
            $("#serial_no").val(serial_no);
            $('.serial_no').removeClass('btn-danger').addClass('btn-success').not(".disabled");
            $(this).removeClass('btn-success').addClass('btn-danger').not(".disabled");
        });

        // show dropdown month name and previous years
        $( ".dropdown-month-years" ).datepicker({
            dateFormat: "dd-mm-yy",
            changeMonth: true,
            changeYear: true,
            yearRange: "-50:+0"
        });
        
        $( ".datepicker-avaiable-days" ).datepicker({
            dateFormat: "yy-mm-dd",
            changeMonth: true,
            changeYear: true,
            showButtonPanel: false,
            minDate: 0,  
            // beforeShowDay: DisableDays 
        });
    });
</script>