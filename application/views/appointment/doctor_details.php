<div class="col-sm-6 col-md-7 pT10">
    <dl class="dl-horizontal">
        <dt><?php echo display('doctor') ?></dt> 
        <dd><?php echo "$appointment->firstname $appointment->lastname"?></dd>
        <dt><?php echo display('branch_name') ?></dt> 
        <dd><?php echo print_value($appointment, 'branch_name'); ?></dd>
        <dt><?php echo display('department') ?></dt> 
        <dd><?php echo print_value($appointment, 'department'); ?></dd>
        <!-- <dt><?php echo display('education_degree') ?></dt> <dd><?php echo trim($appointment->degree); ?></dd> -->
        <dt><?php echo display('department_price') ?></dt> 
        <dd><?php echo print_value($appointment, 'price'); ?></dd>
        <dt><?php echo display('payment_type') ?></dt> 
        <dd><?php echo print_value($appointment, 'payment_mode'); ?></dd>
        <dt><?php echo display('receipt_id') ?></dt> 
        <dd><?php echo print_value($appointment, 'payment_id'); ?></dd>
        <!-- <dt><?php echo display('available_days') ?></dt> 
        <dd><?php echo print_value($appointment, 'available_days'); ?></dd> -->
        <dt><?php echo display('schedule_type') ?></dt> 
        <dd><?php echo print_schedule_type($appointment->schedule_type); ?></dd>
        <!-- <dt><?php echo display('schedule_time') ?></dt> 
        <dd><?php echo "$appointment->start_time - $appointment->end_time" ?></dd> -->
    </dl>
</div>
<div class="col-sm-6 col-md-5 pT10">
    <dl class="dl-horizontal">
        <dt><?php echo display('serial_no') ?></dt> <dd>#<?php echo ($appointment->serial_no<=9)?"0$appointment->serial_no":$appointment->serial_no ?></dd>
        <dt><?php echo display('date') ?></dt> <dd><?php echo print_date($appointment, 'date'); ?></dd>
        <dt><?php echo display('available_days') ?></dt> <dd><?php echo print_value($appointment, 'available_days'); ?></dd>
        <dt><?php echo display('schedule_time') ?></dt> 
        <dd><?php echo date("h:i a", strtotime($appointment->start_time))." - ".date("h:i a", strtotime($appointment->end_time)); ?></dd>
        <dt><?php echo display('status') ?></dt> <dd><?php echo get_appointment_status($appointment->status); ?></dd>
    </dl>
</div>