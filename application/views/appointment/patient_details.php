<div class="col-sm-12" align="center">  
    <h1><?php echo display('appointment_information') ?></h1>
<br>
</div>

<div class="col-sm-3" align="center"> 
    <img alt="Picture" src="<?php echo (!empty($appointment->picture)?base_url($appointment->picture):base_url("assets/images/no-img.png")) ?>" class="img-thumbnail img-responsive">
    <h3><?php echo "$appointment->pfirstname $appointment->plastname " ?></h3>
</div>

<div class="col-sm-9"> 
    <dl class="dl-horizontal">
        <dt><?php echo display('appointment_id') ?></dt>
        <dd><?php echo print_value($appointment, 'appointment_id'); ?></dd>
        <dt><?php echo display('full_name') ?></dt>
        <dd><?php echo "$appointment->pfirstname $appointment->plastname " ?></dd>
        <dt><?php echo display('patient_id') ?></dt>
        <dd><?php echo print_value($appointment, 'patient_id'); ?></dd> 
        <dt><?php echo display('date_of_birth') ?></dt>
        <dd><?php echo print_date($appointment, 'date_of_birth'); ?></dd> 
        <dt><?php echo display('age') ?></dt>
        <dd><?php echo date_diff(date_create($appointment->date_of_birth), date_create('now'))->y; ?> Years</dd> 
        <dt><?php echo display('sex') ?></dt>
        <dd><?php echo print_value($appointment, 'sex'); ?></dd> 
        <dt><?php echo display('mobile') ?></dt>
        <dd><?php echo print_value($appointment, 'mobile'); ?></dd> 
        <dt><?php echo display('problem') ?></dt>
        <dd><?php echo print_value($appointment, 'problem'); ?></dd> 
    </dl> 
</div>