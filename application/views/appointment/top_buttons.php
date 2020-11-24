<?php //echo date('Y-m-d h:i:s');
$back_url = '';
if(isset($_SERVER['HTTP_REFERER']))
{
   $back_url = $_SERVER['HTTP_REFERER'];
}
?>

<?php if(isset($back_url) && $back_url != '') : ?>
    <div class="col-md-2 floatR">
        <a href="<?php echo $back_url; ?>" class="btn btn-block btn-primary">Back</a>
    </div>
<?php endif; ?>
<!-- <?php if(isset($appointment->schedule_type) && $appointment->schedule_type == 2 && isset($appointment->date) && $appointment->date == date('Y-m-d') && isset($appointment->start_time) && $appointment->start_time <= date('h:i:s') && isset($appointment->end_time) && $appointment->end_time >= date('h:i:s')) : ?> -->
    <div class="col-md-3 floatR">
        <a href="<?php echo (isset($appointment->meeting_url)) ? $appointment->meeting_url : ''; ?>" class="btn btn-block btn-primary" target="_blank">Start Meeting</a>
    </div>
<!-- <?php endif; ?> -->
<?php if(isset($appointment->schedule_type) && $appointment->schedule_type == 2 && $appointment->status == 1) : ?>
<div class="col-md-3 floatR">
    <a href="<?php echo (isset($appointment->meeting_url)) ? $appointment->meeting_url : ''; ?>" class="btn btn-block btn-primary" target="_blank">Start Meeting</a>
</div>
<?php endif; ?>
<?php
    if($appointment->status == 3 && $this->permission->method('appointment','delete')->access()){
?>
<div class="col-md-2 floatR">
    <a href="<?php echo base_url("appointment/delete/$appointment->appointment_id") ?>" onclick="return confirm('<?php echo 'Are you sure you want to delete this appointment?' ?>')" class="btn btn-block btn-primary btn-danger"><i class="fa fa-trash"></i> Delete </a> 
</div>
<?php } ?>
<?php
    if($appointment->status == 2 || $appointment->status == 1){
?>
<div class="col-md-2 floatR">
    <a href="<?php echo base_url("appointment/cancell/$appointment->appointment_id") ?>" onclick="return confirm('<?php echo 'Are you sure you want to cancel this appointment?'; ?>')" class="btn btn-block btn-primary btn-danger"><i class="fa fa-times-circle"></i> Cancel </a> 
</div>
<?php } ?>
<?php
    if($appointment->status == 2 ){
?>
<div class="col-md-2 floatR">
    <a href="<?php echo base_url("appointment/confirm/$appointment->appointment_id") ?>" onclick="return confirm('<?php echo 'Are you sure you want to confirm this appointment?' ?>')" class="btn btn-block btn-primary btn-success"><i class="fa fa fa-check-circle"></i> Confirm </a> 
</div>
<?php } ?>
<?php
    if($appointment->status == 1 && ($this->session->userdata('user_role') == 2) ){
?>
<div class="col-md-2 floatR">
    <a href="<?php echo base_url("appointment/complete/$appointment->appointment_id") ?>" onclick="return confirm('<?php echo 'Are you sure you want to mark this appointment as Done?' ?>')" class="btn btn-block btn-primary btn-success"><i class="fa fa fa-check-circle"></i> Done </a> 
</div>
<?php } ?>