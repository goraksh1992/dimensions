<div class="row">

    <div class="col-sm-12" id="PrintMe">
        <div  class="panel panel-default thumbnail">
 
            <div class="panel-heading no-print">
                <div class="btn-group"> 
                    <?php
                    if($this->permission->method('package_order_list','read')->access() || $this->permission->method('package_order_list','update')->access() || $this->permission->method('package_order_list','delete')->access()){
                    ?>
                    <a class="btn btn-primary" href="<?php echo base_url("orders") ?>"> <i class="fa fa-list"></i>  <?php echo display('package_order') ?> </a>  
                    <?php } ?>

                    <?php
                    if($this->permission->method('package_order_list','read')->access()){
                    ?>
                    <button type="button" onclick="printContent('PrintMe')" class="btn btn-danger" ><i class="fa fa-print"></i></button> 
                    <?php } ?>
                   
                </div>
                <?php if(isset($back_url) && $back_url != '') : ?>
                    <a class="btn btn-primary floatR" href="<?php echo $back_url; ?>"> Back </a> 
                <?php endif; ?>
                <?php if(isset($order->order_status) && $order->order_status == 'Ordered' && $appointments_booked == 0) : ?>
                    <!-- <a class="btn btn-primary btn-danger marginR10 floatR" style="margin-right: 10px" href="<?php echo $back_url; ?>"> Cancell </a>  -->
                    <a href="<?php echo base_url("orders/cancel/$order->order_id") ?>" onclick="return confirm('<?php echo display('are_you_sure') ?>')" class="btn btn-primary btn-danger marginR10 floatR" style="margin-right: 10px"><i class="fa fa-times-circle"></i> cancel </a> 
                <?php endif; ?>
            </div> 




             <?php
             if($this->permission->method('package_order_list','read')->access()){
             ?>     
            <div class="panel-body"> 
                <!-- Nav tabs --> 
                <ul class="col-xs-12 nav nav-tabs" role="tablist">
                    <li role="presentation" class="active">
                        <a href="#home" aria-controls="home" role="tab" data-toggle="tab"><?php echo display('order_information') ?></a>
                    </li>
                </ul>  

                <!-- Tab panes --> 
                <div class="col-xs-12 tab-content">
                    <br>
                    <!-- INFORMATION -->
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <div class="row">
                            <div class="col-sm-6"> 
                                <dl class="dl-horizontal">
                                    <dt><?php echo display('order_id') ?></dt><dd><?php echo print_value($order, 'order_id'); ?></dd> 
                                    <dt><?php echo display('package_price') ?></dt><dd><?php echo print_value($order, 'package_price'); ?></dd> 
                                    <dt><?php echo display('package_slots') ?></dt><dd><?php echo print_value($order, 'package_slots'); ?></dd> 
                                    <dt><?php echo display('discount_price') ?></dt><dd><?php echo print_value($order, 'discount_price'); ?></dd> 
                                    <dt><?php echo display('other_charges') ?></dt><dd><?php echo print_value($order, 'other'); ?></dd> 
                                    <dt><?php echo display('order_total') ?></dt><dd><?php echo print_value($order, 'total_price'); ?></dd> 
                                    <dt><?php echo "Order Status" ?></dt><dd><?php echo print_value($order, 'order_status'); ?></dd> 
                                    <dt><?php echo display('order_date') ?></dt><dd><?php echo print_date($order, 'created_date'); ?></dd> 
                                </dl> 
                            </div>
                            <div class="col-sm-6"> 
                                <dl class="dl-horizontal">
                                    <dt><?php echo display('patient_id') ?></dt><dd><?php echo print_value($order, 'patient_id'); ?></dd> 
                                    <dt><?php echo display('patient_code') ?></dt><dd><?php echo print_value($order, 'patient_code'); ?></dd> 
                                    <dt><?php echo display('patient_name') ?></dt><dd><?php echo print_value($order, 'firstname')." ".print_value($order, 'lastname'); ?></dd>
                                    <dt><?php echo display('email') ?></dt><dd><?php echo print_value($order, 'email'); ?></dd> 
                                    <dt><?php echo display('mobile') ?></dt><dd><?php echo print_value($order, 'mobile'); ?></dd> 
                                </dl> 
                            </div>
                        </div>
                    </div> 
                </div>  
            </div> 
            <div class="panel-body"> 
                <!-- Nav tabs --> 
                <ul class="col-xs-12 nav nav-tabs" role="tablist">
                    <li role="presentation" class="active">
                        <a href="#documents" aria-controls="documents" role="tab" data-toggle="tab"><?php echo display('package_slots') ?></a>
                    </li>
                    <li role="presentation">
                        <a href="#package" aria-controls="package" role="tab" data-toggle="tab"><?php echo display('package_description') ?></a>
                    </li>
                    
                </ul>  

                <!-- Tab panes --> 
                <div class="col-xs-12 tab-content">
                    <br>
                    <!-- INFORMATION -->
                    <div role="tabpanel" class="tab-pane" id="package">
                        <div class="row">
                            <div class="col-sm-6"> 
                                <dl class="dl-horizontal">
                                    <dt><?php echo display('package_id') ?></dt><dd><?php echo print_value($package, 'package_id'); ?></dd> 
                                    <dt><?php echo display('package_title') ?></dt><dd><?php echo print_value($package, 'package_title'); ?></dd> 
                                    <dt><?php echo display('package_code') ?></dt><dd><?php echo print_value($package, 'package_code'); ?></dd> 
                                    <dt><?php echo display('package_price') ?></dt><dd><?php echo print_value($package, 'package_price'); ?></dd> 
                                    <dt><?php echo display('package_special_price') ?></dt><dd><?php echo print_value($package, 'package_special_price'); ?></dd> 
                                    <dt><?php echo display('package_slots') ?></dt><dd><?php echo print_value($package, 'package_slots'); ?></dd> 
                                   
                                </dl> 
                            </div>
                            <div class="col-sm-6">

                                <dl class="dl-horizontal">
                                    <dt><?php echo display('package_short_description') ?></dt><dd><?php echo print_value($package, 'package_short_description'); ?></dd> 
                                </dl> 
                            </div>
                        </div>
                    </div> 
                    <div role="tabpanel" class="tab-pane active" id="documents">
                        <div class="row">
                            <div class="col-sm-12" style="margin:10px 0px;">
                                <div class="row">
                                    <div class="col-sm-3"> 
                                        <dl class="dl-horizontal">
                                            <dt><?php echo "Total Slots"; ?></dt><dd><?php echo print_value($package, 'package_slots'); ?></dd> 
                                        </dl> 
                                    </div>
                                    <div class="col-sm-3">
                                        <dl class="dl-horizontal">
                                            <dt><?php echo "Booked Slots"; ?></dt><dd><?php echo isset($appointments_booked) ? $appointments_booked : 0; ?></dd> 
                                        </dl> 
                                    </div>
                                    <div class="col-sm-3">
                                        <dl class="dl-horizontal">
                                            <dt><?php echo "Open Slots"; ?></dt><dd><?php echo isset($appointments_available) ? $appointments_available : 0;  ?> 
                                        </dl>
                                    </div>
                                    <?php if($order->order_status == 'Ordered' && $appointments_available ) : ?>
                                    <div class="col-sm-3" style="text-align:right;">
                                        <a class="ui positive button" data-toggle="modal" data-target="#addAppiontment"><?php echo 'Book Slot'; ?></a> 
                                    </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <table width="100%" class="datatable table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th><?php echo display('serial') ?></th>
                                            <th><?php echo display('appointment_id') ?></th>
                                            <th><?php echo display('patient_id') ?></th>
                                            <th><?php echo display('department') ?></th>
                                            <th><?php echo display('doctor_name') ?></th>
                                            <th><?php echo display('start_time').' - '.display('end_time') ?></th>
                                            <th><?php echo display('schedule_type') ?></th>
                                            <!-- <th><?php echo display('problem') ?></th> -->
                                            <th><?php echo display('appointment_date') ?></th>
                                            <th><?php echo display('status') ?></th>
                                            <th><?php echo display('action') ?></th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if (!empty($appointments) && count($appointments)) { ?>
                                            <?php $sl = 1; ?>
                                            <?php foreach ($appointments as $appointment) { ?>
                                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                                    <td><?php echo $sl; ?></td>
                                                    <td>
                                                    <a href="<?php echo base_url("appointment/view/$appointment->appointment_id") ?>" class=""><?php echo $appointment->appointment_id; ?></i></a> 
                                                    
                                                    </td>
                                                    <td><?php echo $appointment->patient_id; ?></td>
                                                    <td><?php echo $appointment->name; ?></td>
                                                    <td><?php echo $appointment->firstname.' '.$appointment->lastname; ?></td>
                                                    <td><?php echo date("h:i a", strtotime($appointment->start_time))." - ".date("h:i a", strtotime($appointment->end_time)); ?></td>
                                                    <td><?php echo ($appointment->schedule_type == 1) ? 'Inperson' : 'Online'; ?></td>
                                                    <!-- <td><?php echo $appointment->problem; ?></td> -->
                                                    <td><?php echo print_date($appointment, 'date'); ?></td>
                                                    <td><?php echo get_appointment_status($appointment->status); ?></td>

                                                <?php
                                                    if($this->permission->method('appointment_list','read')->access() || $this->permission->method('appointment_list','delete')->access()){
                                                ?>
                                                    <td class="center">
                                                        <?php
                                                        if($this->permission->method('appointment_list','read')->access()){
                                                        ?>
                                                        <a href="<?php echo base_url("appointment/view/$appointment->appointment_id") ?>" class="btn btn-xs btn-success" target="_blank"><i class="fa fa-eye"></i></a> 
                                                        <?php } ?>
                                                        <!-- <?php
                                                        if($this->permission->method('appointment_list','update')->access()){
                                                        ?>
                                                        <a class="ui positive button edit_appoinment" id="<?php echo $appointment->appointment_id; ?>"><i class="fa fa-eye"></i></a> 
                                                        
                                                        <?php } ?> -->
                            
                                                        <!-- <?php
                                                        if($this->permission->method('appointment_list','delete')->access()){
                                                        ?>
                                                        <a href="<?php echo base_url("appointment/delete/$appointment->appointment_id") ?>" onclick="return confirm('<?php echo display('are_you_sure') ?>')" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i></a> 
                                                        <?php } ?> -->

                                                    
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
            <div class="panel-footer">
                <div class="text-center">
                    <strong><?php echo $this->session->userdata('title') ?></strong>
                    <p class="text-center"><?php echo $this->session->userdata('address') ?></p>
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
      <?php echo form_open('orders/appointment','class="form-inner" id="appointmentForm"') ?> 
      <div class="modal-body">
            <input type="hidden" name="patient_id" id="patient_id" value="<?php echo print_value($order, 'patient_code', true);?>"/>
            <input type="hidden" name="order_id" id="order_id" value="<?php echo print_value($order, 'order_id', true);?>"/>
            <?php @$this->load->view('appointment/form_row');?>
            <input type="hidden" name="status" id="status" class="status" value="1" />
            <!-- <div class="form-group row">
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
            </div> -->
      </div>
      <div class="modal-footer">
        <div class="form-group row">
            <div class="col-sm-offset-3 col-sm-6">
                <div class="ui buttons">
                    <button type="reset" class="ui button"><?php echo display('reset') ?></button>
                    <div class="or"></div>
                    <button class="ui positive button book-appointment"><?php echo display('save') ?></button>
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
<?php @$this->load->view('appointment/scripts');?>