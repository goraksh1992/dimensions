<div class="row">
    <!--  form area -->
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
 
            <div class="panel-heading no-print">
                <div class="btn-group"> 
                    <a class="btn btn-primary" href="<?php echo base_url("dashboard_patient/appointment/appointment/") ?>"> <i class="fa fa-list"></i>  <?php echo display('appointment_list') ?> </a>  
                </div>
            </div> 
 
            <div class="panel-body panel-form">
                <div class="row">
                    <div class="col-md-9 col-sm-12">
                        <?php echo form_open('dashboard_patient/appointment/appointment/create','class="form-inner" id="appointmentForm"') ?> 
                        
                            <!-- patient id -->
                            <input name="patient_id" type="hidden" id="patient_id" value="<?= $this->session->userdata('patient_id');?>">

                            <?php @$this->load->view('appointment/form_row');?>
                            <input type="hidden" name="status" id="status" class="status" value="1" />
                           
                            <div class="form-group row">
                                <div class="col-sm-offset-3 col-sm-6">
                                    <div class="ui buttons">
                                        <button type="reset" class="ui button"><?php echo display('reset') ?></button>
                                        <div class="or"></div>
                                        <button class="ui positive button book-appointment"><?php echo display('save') ?></button>
                                    </div>
                                </div>
                            </div>

                        <?php echo form_close() ?>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>
        </div>
    </div>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {

    //check patient id
    $('#patient_id').keyup(function(){
        var pid = $(this);

        $.ajax({
            url  : '<?= base_url('dashboard_patient/appointment/appointment/check_patient/') ?>',
            type : 'post',
            dataType : 'JSON',
            data : {
                '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                patient_id : pid.val()
            },
            success : function(data) 
            {
                if (data.status == true) {
                    pid.next().text(data.message).addClass('text-success').removeClass('text-danger');
                } else if (data.status == false) {
                    pid.next().text(data.message).addClass('text-danger').removeClass('text-success');
                } else {
                    pid.next().text(data.message).addClass('text-danger').removeClass('text-success');
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
