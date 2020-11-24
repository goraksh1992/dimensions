<div id="appointment-form" class="appointment-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-6 demo-left">
                <div class="appointment-text">
                    <h1><?= (!empty($instruction->title)?$instruction->title:null)?></h1>
                    <h3><?= (!empty($instruction->short_instruction)?$instruction->short_instruction:null)?></h3>
                    <div class="row">
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <div class="media contact-service">
                                <i class="flaticon-world mr-3"></i>
                                <div class="media-body">
                                    <h4 class="mt-0"><?= display('address')?></h4>
                                    <div><?= (!empty($setting->address)?$setting->address:null)?></div>
                                </div>
                            </div>
                            <div class="media contact-service">
                                <i class="flaticon-24-hours mr-3"></i>
                                <div class="media-body">
                                    <h4><?= display('working_hours')?></h4>
                                    <div>
                                       <?= (!empty($setting->open_day)?$setting->open_day:null)?> <br>
                                        <?= $setting->closed_day;?>: <?= display('closed')?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <div class="media contact-service">
                                <i class="flaticon-email mr-3"></i>
                                <div class="media-body">
                                    <h4><?= display('write_us')?></h4>
                                    <div>
                                        <?php
                                           $email = (!empty($basics->email)?$basics->email:null);
                                           $arr = explode(",",$email);
                                           echo implode("<br>", $arr);
                                        ?>
                                    </div>
                                </div>
                            </div>
                            <div class="media contact-service">
                                <i class="flaticon-phone-call  mr-3"></i>
                                <div class="media-body">
                                    <h4><?= display('call_us')?></h4>
                                    <div> 
                                        <?php
                                           $phone = (!empty($setting->phone)?$setting->phone:null);
                                           $arr = explode(",",$phone);
                                           echo implode("<br>", $arr);
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div> 
                    <p class="color-grey">
                        <strong><?= display('notes_submitted_to_the_attendance_office_must_include_following')?>:</strong>
                    </p>
                    <ul class="list-checkmark list-unstyled">
                        <?php
                            $arr = explode("\n", $instruction->instruction);
                            $size=sizeof($arr);
                            for($i=1; $i<=$size; $i++)
                            {
                                echo '<li>'.$arr[$i-1].'</li>';
                                echo "\r\n";
                            } 
                        ?>
                    </ul>
                    <?php
                      if(!empty($instruction->note)){
                    ?>
                    <aside class="alert alert-success">
                        <strong><?= display('notes')?> — </strong>
                        <span><?= $instruction->note; ?></span>
                    </aside>
                   <?php }?>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-5 offset-lg-1">
                <div class="form-container">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true"><?= display('new_patient')?></a>
                            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false"><?= display('old_patient')?></a>
                        </div>
                    </nav>
                    <!-- Message & exception -->
                    <div class="col-sm-12">
                        <?php if ($this->session->flashdata('success') != null) {  ?>
                        <div class="alert alert-success"> 
                            <?php echo $this->session->flashdata('success'); ?> 
                        </div> 
                        <?php } ?>
                        
                        <?php if ($this->session->flashdata('exception') != null) {  ?>
                        <div class="alert alert-danger">
                        <?php echo $this->session->flashdata('exception'); ?>
                        </div>
                        <?php } ?> 
                    </div>
                    
                    <div class="tab-content" id="nav-tabContent">
                       
                        <div class="tab-pane fade show active register-form" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                            <h2 class="semibold"><span><?= display('1')?></span><?= display('provide_your_primary_information_about_the_following_details')?></h2> 
                           <!-- <?= form_open_multipart('','id="appointmentForm"') ?>  -->
                           <div class="msg"></div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label><?= display('first_name')?>*</label>
                                    <input type="text" class="form-control" name="firstname" id="firstname" placeholder="<?= display('first_name')?>" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label><?= display('last_name')?>*</label>
                                    <input type="text" class="form-control" name="lastname" id="lastname" placeholder="<?= display('last_name')?>" required>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label><?= display('email')?>*</label>
                                    <input type="email" class="form-control" name="email" id="email" placeholder="<?= display('email')?>" required>
                                    <label><?= display('please_provide_a_valid_email')?></label>
                                </div>
                                <div class="form-group col-md-6">
                                    <label><?= display('phone')?></label>
                                    <input type="text" class="form-control" name="mobile" id="phone1" placeholder="<?= display('phone')?>" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label><?= display('password')?>*</label>
                                    <input type="password" class="form-control" name="password" id="password" placeholder="<?= display('password')?>" required>
                                </div>
                            </div>
                            <button type="submit" id="submit" class="btn btn-block btn-primary"><?= display('sign_up')?></button>
                           <!-- <?= form_close() ?> -->
                        </div>
                        
                        <!-- for old patient -->
                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                            <h2 class="semibold"><span><?= display('1')?></span> <?= display('provide_your_primary_information_about_the_following_details')?></h2>  
                             <?= form_open('website/appointment/create','id="appointmentForm"') ?> 
                             <div class="form-group">
                                <label><?= display('patient_id')?> *</label>
                                <input type="text" class="form-control patient" name="patient_id" id="patient_id" placeholder="<?= display('patient_id')?>" value="<?php echo $appointment->patient_id ?>" required>
                                <span></span>
                                <!-- <label><?= display('please_provide_a_valid_id')?></label> -->
                            </div>

                            <div class="form-group">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck2">
                                    <label class="custom-control-label" for="customCheck2"><?= display('if_forgot_patient_id_please_selected_the_checkbox')?></label>
                                </div>
                            </div>

                            <div class="form-group">
                                 <div id="txtSearch">
                                   <input type="text" class="form-control" name="textSearch" id="textSearch" placeholder="<?= display('full_name').'/'. display('mobile')?>">
                               </div>
                               <div id="valid_patient"></div>
                            </div>

                            <?php @$this->load->view('appointment/form');?>
                            <button type="submit" class="btn btn-block btn-primary book-appointment"><?= display('book_appointment')?></button>
                            <?= form_close() ?>
                        </div>
                        <!--  -->
                    </div>
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
            url  : '<?= base_url('website/appointment/check_patient/') ?>',
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
 
    

    //======for new patient appointment======//
    //department_id
    $("#departmentId").change(function(){
        var output = $('.doctorError'); 
        var doctor_list = $('#doctorId');
        var available_day = $('#availableDay');
        
        $.ajax({
            url  : '<?= base_url('website/appointment/doctor_by_department/') ?>',
            type : 'post',
            dataType : 'JSON',
            data : {
                '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                department_id : $(this).val(),
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
    $("#doctorId").change(function(){
        var doctor_id = $('#doctorId'); 
        var output = $('#availableDays'); 
        
        $.ajax({
            url  : '<?= base_url('website/appointment/schedule_day_by_doctor/') ?>',
            type : 'post',
            dataType : 'JSON',
            data : {
                '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                doctor_id : $(this).val(),
                
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
    $("#date1").change(function(){
        var date        = $('#date1'); 
        var serial_preview   = $('#serialPreview'); 
        var doctor_id   = $('#doctorId'); 
        var schedule_id = $("#scheduleId"); 
 
        $.ajax({
            url  : '<?= base_url('website/appointment/new_patient_serial_by_date/') ?>',
            type : 'post',
            dataType : 'JSON',
            data : {
                '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                doctor_id  : doctor_id.val(),
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
        $("#serialNo").val(serial_no);
        $('.serial_no').removeClass('btn-danger').addClass('btn-primary').not(".disabled");
        $(this).removeClass('btn-primary').addClass('btn-danger').not(".disabled");
    });

    

    // for search input field show hide
    if(document.getElementById('customCheck2').checked) {
    $("#txtSearch").show();
    } else {
        $("#txtSearch").hide();
    }

    $('#customCheck2').click(function() {
      $("#txtSearch").toggle(this.checked);
    });

    //search patient by full name or mobile number
    $('#textSearch').keyup(function(){
        var search = $(this).val();
        //alert(search);
        $.ajax({
            url  : '<?= base_url('website/appointment/search_patient/') ?>',
            type : 'post',
            data : {
                '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                query : search
            },
            success : function(data) 
            {
                //alert(data);
                $('#valid_patient').html(data);
            }, 
        });
    });

});

// patient id throw in patient field
function patientInfo(id){
     $(".patient").val(id);
}
</script>
<?php @$this->load->view('appointment/scripts');?>
<script type="text/javascript">
    $(document).ready(function() {

        var source = $('#submit');
        var target = $('.msg');
        $('#loading-image').show();
        source.on('click', function() {
            var firstname    = $('#firstname').val();
            var lastname     = $('#lastname').val();
            var email        = $('#email').val();
            var password     = $('#password').val();
            var phone        = $('#phone1').val();
            
            $.ajax({
                url      : '<?= base_url('dashboard/save_registration') ?>',
                type     : 'post',
                dataType : 'json',
                data     : {
                    '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                    firstname, 
                    lastname,
                    email,
                    password,
                    phone
                },
                beforeSend : function(xhr, opts){
                    $('#submit').html("Loading");
                },
                success : function(data) { 
                    $('#loading-image').hide();
                    $('#submit').html("Sign Up");
                    if (data.message) {
                        target.removeClass('alert alert-danger');
                        target.addClass('alert alert-info');
                        target.html(data.message);
                    } else {
                        target.removeClass('alert alert-info');
                        target.addClass('alert alert-danger');
                        target.html(data.exception);
                    } 

                    setTimeout(function(){ 
                        if(data.message){
                            window.location="<?= base_url('parent_login')?>";
                        }
                        
                    }, 1500);

                },
                error   : function(xhr, status, error)
                {
                    $('#loading-image').hide();
                    $('#submit').html("Sign Up");
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err);
                    alert('failed');
                }
            });
        

        }); 
    });
</script>
