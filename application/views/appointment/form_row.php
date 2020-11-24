<input type="hidden" name="payment_id" id="payment_id" class="payment_id" value="" />
<?php if(isset($appointment_type)) : ?>
<div class="form-group row">
    <label class="col-sm-3" ><?php echo display('appointment_type') ?><i class="text-danger">*</i></label>
    <div class="col-xs-9">
        <div class="form-check">
            <label class="radio-inline">
                <input type="radio" name="appointment_type_id" class="appointment_type_id" value="1" required <?php echo  set_radio('schedule_type', '1', TRUE); ?> ><?php echo ' Inperson' ?>
            </label>
            <label class="radio-inline">
                <input type="radio" name="appointment_type_id" class="appointment_type_id" value="2" required <?php echo  set_radio('schedule_type', '2'); ?> ><?php echo " Online" ?>
            </label>
        </div>
    </div>
</div>
<?php else: ?>
    <input type="hidden" name="appointment_type_id" id="appointment_type_id" value="2" />
<?php endif; ?>
<div class="form-group row">
    <label class="col-xs-3 col-form-label"> <?= display('branch_name')?><i class="text-danger">*</i></label>
    <div class="col-xs-9">
        <?php echo form_dropdown('id',$main_department_list,$appointment->id,'class="form-control basic-single" required id="id"') ?>
        <span class="main_department_error"></span>
    </div>
</div>
<div class="form-group row">
    <label for="department_id" class="col-xs-3 col-form-label"><?php echo display('department_name') ?> <i class="text-danger">*</i></label>
    <div class="col-xs-9">
        <?php echo form_dropdown('department_id',$department_list,$appointment->department_id,'class="form-control" required id="department_id"') ?>
        <span class="doctor_error"></span>
    </div>
</div>
<div class="form-group row">
    <label for="department_price" class="col-xs-3 col-form-label"> <?= display('department_price')?> *</label>
    <div class="col-xs-9">
        <input type="text" class="form-control" name="price" id="price" placeholder="<?= display('department_price'); ?>" readonly="true">
        <input type="hidden" name="price_code" id="price_code" value=""/>
    </div>
</div>

<div class="form-group row">
    <label for="doctor_id" class="col-xs-3 col-form-label"><?php echo display('doctor_name') ?> <i class="text-danger">*</i></label>
    <div class="col-xs-9">
        <?php echo form_dropdown('doctor_id','','','class="form-control" required id="doctor_id"') ?>
        <div id="available_days"></div>
    </div>
</div> 

<div class="form-group row">
    <label for="date" class="col-xs-3 col-form-label"><?php echo display('appointment_date') ?> <i class="text-danger">*</i></label>
    <div class="col-xs-9"> 
        <input name="date" type="text" class="datepicker-avaiable-days form-control" required id="date" placeholder="<?php echo display('appointment_date') ?>" >
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
<?php if(isset($payment_type_list)) : ?>
<div class="form-group row">
    <label class="col-sm-3"><?php echo display('payment_type') ?><i class="text-danger">*</i></label>
    <div class="col-xs-9">
        <div class="form-check">
            <label class="radio-inline">
                <input type="radio" name="payment_type_id" id="payment_type_id" class="payment_type_id" value="Cash" required <?php echo  set_radio('payment_type_id', 'Cash', TRUE); ?> ><?php echo 'Cash' ?>
            </label>
            <label class="radio-inline">
                <input type="radio" name="payment_type_id" id="payment_type_id" class="payment_type_id" value="Online" required <?php echo  set_radio('payment_type_id', 'Online'); ?> ><?php echo "Online" ?>
            </label>
        </div>
    </div>
</div>
<?php else: ?>
    <input type="hidden" name="payment_type_id" id="payment_type_id" class="payment_type_id" value="Cash"/>
<?php endif; ?>
<div class="form-group row">
    <label for="receipt" class="col-xs-3 col-form-label"><?php echo display('receipt') ?> <i class="text-danger">*</i></label>
    <div class="col-xs-9"> 
        <input name="receipt_id" type="text" class="form-control" required id="receipt_id" placeholder="<?php echo display('receipt_id') ?>" value="<?php echo get_order_id(); ?>" readonly>
    </div>
</div>