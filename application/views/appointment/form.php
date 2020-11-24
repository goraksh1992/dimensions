<input type="hidden" name="payment_id" id="payment_id" class="payment_id" value="" />
<?php if(isset($appointment_type)) : ?>
<div class="form-group">
    <label><?php echo display('appointment_type') ?><i class="text-danger">*</i></label>
    <div class="form-check">
        <label class="radio-inline">
        <input type="radio" name="appointment_type_id" required class="appointment_type_id" value="1" <?php echo  set_radio('appointment_type_id', '1', TRUE); ?> ><?php echo ' Inperson' ?>
        </label>
        <label class="radio-inline">
        <input type="radio" name="appointment_type_id" required class="appointment_type_id" value="2" <?php echo  set_radio('appointment_type_id', '2'); ?> ><?php echo " Online" ?>
        </label>
    </div>
</div>
<?php else: ?>
    <input type="hidden" name="appointment_type_id" id="appointment_type_id" class="appointment_type_id" value="2" />
<?php endif; ?>
<div class="form-group">
    <label> <?= display('branch_name')?> <i class="text-danger">*</i></label>
        <?php echo form_dropdown('id',$main_department_list,$appointment->id,'class="form-control basic-single" required id="id"') ?>
    <span class="main_department_error"></span>
</div>
<div class="form-group">
    <label> <?= display('department_name')?> <i class="text-danger">*</i></label>
        <?php echo form_dropdown('department_id',$department_list,$appointment->department_id,'class="form-control basic-single" required id="department_id"') ?>
    <span class="doctor_error"></span>
</div>
<?php if(isset($appointment_type)) : ?>
<div class="form-group">
    <label> <?= display('department_price')?> <i class="text-danger">*</i></label>
    <input type="text" class="form-control" name="price" id="price" required placeholder="<?= display('department_price'); ?>" readonly="true">
    <input type="hidden" name="price_code" id="price_code" value=""/>
</div>
<?php else: ?>
    <input type="hidden" name="price" id="price" class="price" value="" />
    <input type="hidden" name="price_code" id="price_code" class="price_code" value="" />
<?php endif; ?>
<div class="form-group">
    <label> <?= display('doctor_name')?><i class="text-danger">*</i></label>
    <?php echo form_dropdown('doctor_id','','','class="form-control basic-single" required id="doctor_id"') ?>
            <p class="help-block" id="available_days"></p>
</div>
<div class="form-group">
    <label><?= display('appointment_date')?> <i class="text-danger">*</i></label>
    <input type="text" class="form-control datepicker1" required name="date" id="date" placeholder="<?= display('appointment_date')?>" autocomplete="off">
</div>
    <div class="form-group">
    <label><?php echo display('serial_no') ?> <i class="text-danger">*</i></label>
    <div id="serial_preview">
        <div class="btn btn-success disabled btn-sm"> 01</div>
        <div class="btn btn-success disabled btn-sm"> 02</div>
        <div class="btn btn-success disabled btn-sm"> 03</div>...
        <div class="slbtn btn btn-success disabled btn-sm"> N</div>
    </div>
    <input type="hidden" name="schedule_id" id="schedule_id"/>
    <input type="hidden" name="serial_no" id="serial_no"/>
</div>
<div class="form-group">
    <label><?= display('problem')?></label>
    <textarea class="form-control" name="problem" id="problem2" rows="3"></textarea>
</div>
<?php if(isset($payment_type_list)) : ?>
<div class="form-group">
    <label><?php echo display('payment_type') ?><i class="text-danger">*</i></label>
    <div class="form-check">
        <label class="radio-inline">
            <input type="radio" name="payment_type_id" id="payment_type_id" class="payment_type_id" value="Cash" required <?php echo  set_radio('payment_type_id', 'Cash', TRUE); ?> ><?php echo 'Cash' ?>
        </label>
        <label class="radio-inline">
            <input type="radio" name="payment_type_id" id="payment_type_id" class="payment_type_id" value="Online" required <?php echo  set_radio('payment_type_id', 'Online'); ?> ><?php echo "Online" ?>
        </label>
    </div>
</div>
<?php else: ?>
    <input type="hidden" name="payment_type_id" id="payment_type_id" class="payment_type_id" value="Cash"/>
<?php endif; ?>

<div class="form-group">
    <label><?= display('receipt')?> <i class="text-danger">*</i></label>
    <input type="text" class="form-control" name="receipt_id" id="receipt_id" required placeholder="<?= display('receipt_id')?>" autocomplete="off">
</div>
