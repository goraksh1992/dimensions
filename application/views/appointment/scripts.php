<script type="text/javascript">
$(document).ready(function() {
    //main_department_id
    $("#id").change(function(){
        var output = $('.doctor_error'); 
        var department_list = $('#department_id');
        //var available_day = $('#available_day');

        $.ajax({
            url  : '<?= base_url('website/appointment/sub_department/') ?>',
            type : 'post',
            dataType : 'JSON',
            data : {
                '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                main_department_id : $(this).val()
            },
            success : function(data) 
            {
                if (data.status == true) 
                {
                    department_list.html(data.message);
                    // available_day.html(data.available_days);
                    output.html('');
                } 
                else if (data.status == false) 
                {
                    department_list.html('');
                    output.html(data.message).addClass('text-danger').removeClass('text-success');
                } 
                else 
                {
                    department_list.html('');
                    output.html(data.message).addClass('text-danger').removeClass('text-success');
                }
            }, 
            error : function(xhr, status, error)
            {
                var err = eval("(" + xhr.responseText + ")");
                console.log(err);
                alert(err.Message);
                //alert('failed');
            }
        });
    }); 
    //department_id
    $("#department_id").change(function(){
        var output = $('.doctor_error'); 
        var doctor_list = $('#doctor_id');
        var available_day = $('#available_day');

        $.ajax({
            url  : '<?= base_url('website/appointment/doctor_by_department/') ?>',
            type : 'post',
            dataType : 'JSON',
            data : {
                '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                department_id : $(this).val()
            },
            success : function(data) 
            {
                //console.log(data)
                $('#price').val(data.price);
                $('#price_code').val(data.price_code);
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
            error : function(xhr, status, error)
            {
                var err = eval("(" + xhr.responseText + ")");
                console.log(err);
                alert(err.Message);
            }
        });
    }); 
    //doctor_id
    $("#doctor_id").change(function(){
        var doctor_id = $('#doctor_id'); 
        var output = $('#available_days');
        //console.log($('#appointment_type_id').val());
        <?php if(isset($appointment_type)) : ?>
        var schedule_type = $('input[name="appointment_type_id"]:checked').val();
        <?php else: ?>
        var schedule_type = $('#appointment_type_id').val();
        <?php endif; ?>
        console.log("Schedule type:"+schedule_type);

        $.ajax({
            url  : '<?= base_url('website/appointment/schedule_day_by_doctor/') ?>',
            type : 'post',
            dataType : 'JSON',
            data : {
                '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                doctor_id : $(this).val(),
                schedule_type : schedule_type
            },
            success : function(data) 
            {
                //console.log(data);
                if (data.status == true) {
                    output.html(data.message).addClass('text-success').removeClass('text-danger');
                } else if (data.status == false) {
                    output.html(data.message).addClass('text-danger').removeClass('text-success');
                } else {
                    output.html(data.message).addClass('text-danger').removeClass('text-success');
                }
            }, 
            error : function(xhr, status, error)
            {
                console.log(error);
                alert('failed');
                // var err = eval("(" + xhr.responseText + ")");
                // console.log(err);
                //alert(err.Message);
            }
        });
    });
    
    $(".appointment_type_id").change(function(){
        //console.log("appointment_type:"+this.value);
        $("#id").val('selected');        
        $("#price").attr('value','');
        $("#price_code").attr('value','');
        $("#date").attr('value','');
        $("#department_id").attr('value','selected');
        $("#doctor_id").attr('value','selected');
    });
    $(".payment_type_id").change(function(){
        //console.log( "ID:" + $(".appointment_type_id").val());
        console.log("payment_type_id:"+this.value);
        if (this.value == 'Cash') 
        {
            $("#receipt_id").attr('readonly',false);
        }
        else
        {
            $("#receipt_id").attr('readonly',true);
        }
    });
    $('#serial_preview' ).on( 'click', 'div.serial_no', function () { 
        console.log("asdas:"+$(this).attr('data-schedule'));
        $("#schedule_id").val($(this).attr('data-schedule'));
        $("#serial_no").val($(this).attr('data-item'));
    });
    
    //date
    $("#date").change(function(){
        var date            = $('#date'); 
        var serial_preview  = $('#serial_preview'); 
        var doctor_id       = $('#doctor_id'); 
        var schedule_id     = $("#schedule_id"); 
        var patient_id      = $("#patient_id"); 
        <?php if(isset($appointment_type)) : ?>
        var schedule_type = $('input[name="appointment_type_id"]:checked').val();
        <?php else: ?>
        var schedule_type = $('#appointment_type_id').val();
        <?php endif; ?>
        console.log("Schedule type:"+schedule_type);

        $.ajax({
            url  : '<?= base_url('website/appointment/serial_by_date/') ?>',
            type : 'post',
            dataType : 'JSON',
            data : {
                '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                doctor_id  : doctor_id.val(),
                patient_id : patient_id.val(), 
                date : $(this).val(),
                schedule_type : schedule_type
            },
            success : function(data) 
            { 
                console.log(data);
                if (data.status == true) {
                    //set schedule id
                    console.log(data.message);
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
            error : function(xhr, status, error)
            {
                var err = eval("(" + xhr.responseText + ")");
                console.log(err);
                alert('failed');
            }
        });
    });
    var nowDate = new Date();
    var today = new Date(nowDate.getFullYear(), nowDate.getMonth(), nowDate.getDate(), 0, 0, 0, 0);
    $(".datepicker1").datepicker({
        minDate: 0,
        dateFormat: "yy-mm-dd",
        changeMonth: true,
        changeYear: true,
        showButtonPanel: false,        
        todayHighlight: true,
        startDate: today, 
        //beforeShowDay: DisableDays 
     });
});
</script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script type="text/javascript">
    jQuery(document).on('click', '.book-appointment', function (e) 
    {
        var payment_type = $('input[class="payment_type_id"]:checked').val();
        var form = jQuery('#appointmentForm')[0];
        form.checkValidity()
        console.log("payment type:"+payment_type);
        //$("#appointmentForm").valid();
        if(payment_type == 'Online' && form.checkValidity())
        {
            var total = (jQuery('form#appointmentForm').find('input#price').val() * 100);
            console.log('Total:'+total);
            var merchant_order_id = '<?php echo get_order_id();?>';
            var merchant_surl_id = '<?php echo $success_url;?>';
            var merchant_furl_id = '<?php echo $failed_url;?>';
            //var card_holder_name_id = jQuery('form#appointmentForm').find('input#billing-name').val();
            var merchant_total = total;
            var merchant_amount = total;
            var currency_code_id = 'INR';
            var key_id = "<?php echo RAZOR_KEY_ID; ?>";
            var store_name = 'Dimensions';
            var store_description = 'Evidence based scientific method in treating children with communication needs.';
            var store_logo = 'https://images.squarespace-cdn.com/content/5d79d3841f6ecd2d550dabbc/1574355058382-ONWDW5HC9R8AMSNL1FR0/DCCD_Logo_Final.png?format=1500w&content-type=image%2Fpng';
            //var email = jQuery('form#appointmentForm').find('input#billing-email').val();
            //var phone = jQuery('form#appointmentForm').find('input#billing-phone').val();
            var razorpay_options = {
                key: key_id,
                amount: merchant_total,
                name: store_name,
                description: store_description,
                image: store_logo,
                netbanking: true,
                currency: currency_code_id,
                notes: {
                    soolegal_order_id: merchant_order_id,
                },
                handler: function (transaction) {
                    console.log('Payment_id:'+transaction.razorpay_payment_id);
                    jQuery('form#appointmentForm').find('input#payment_id').val(transaction.razorpay_payment_id);
                    jQuery('form#appointmentForm').find('input#receipt_id').val(transaction.razorpay_payment_id);
                    $( "#appointmentForm" ).submit();
                    // jQuery.ajax({
                    //     url:'callback.php',
                    //     type: 'post',
                    //     data: {razorpay_payment_id: transaction.razorpay_payment_id, merchant_order_id: merchant_order_id, merchant_surl_id: merchant_surl_id, merchant_furl_id: merchant_furl_id, card_holder_name_id: card_holder_name_id, merchant_total: merchant_total, merchant_amount: merchant_amount, currency_code_id: currency_code_id}, 
                    //     dataType: 'json',
                    //     success: function (res) {
                    //     console.log(res);
                    //         if(res.msg){
                    //             alert(res.msg);
                    //             return false;
                    //         } 
                    //         //window.location = res.redirectURL;
                    //     }
                    // });
                },
                "modal": {
                    "ondismiss": function () {
                        // code here
                    }
                }
            };
            var objrzpv1 = new Razorpay(razorpay_options);
            objrzpv1.open();
            e.preventDefault();
        }
        
    });
</script> 