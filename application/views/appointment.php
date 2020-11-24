<div class="row">
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
          <?php
           if($this->permission->method('add_appointment','create')->access()){
          ?>
            <div class="panel-heading no-print">
                <div class="btn-group"> 
                    <a class="btn btn-success" href="<?php echo base_url("appointment/create") ?>"> <i class="fa fa-plus"></i>  <?php echo display('add_appointment') ?> </a>  
                </div>
            </div> 
          <?php } ?>

            <?php
            if($this->permission->method('appointment_list','read')->access() || $this->permission->method('appointment_list','update')->access() || $this->permission->method('appointment_list','delete')->access()){
            ?>
            <div class="panel-body">
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

                            <?php
                             if($this->permission->method('appointment_list','read')->access() || $this->permission->method('appointment_list','delete')->access()){
                            ?>
                            <th><?php echo display('action') ?></th>
                            <?php } ?>

                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($appointments)) { ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($appointments as $appointment) { ?>
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                    <td>
                                      <a href="<?php echo base_url("appointment/view/$appointment->appointment_id") ?>" class=""><?php echo $appointment->appointment_id; ?></i></a> 
                                      
                                    </td>
                                    <td><?php echo $appointment->patient_id; ?></td>
                                    <td><?php echo $appointment->department; ?></td>
                                    <td><?php echo $appointment->firstname.' '.$appointment->lastname; ?></td>
                                    <td><?php echo date("h:i a", strtotime($appointment->start_time))." - ".date("h:i a", strtotime($appointment->end_time));?></td>
                                    <td><?php echo ($appointment->schedule_type == 1) ? 'Inperson' : 'Online'; ?></td>
                                    <!-- <td><?php echo $appointment->problem; ?></td> -->
                                    <td><?php echo print_date($appointment, 'date'); ?></td>
                                    <td><?php echo get_appointment_status($appointment->status); ?></td>

                                  <?php
                                    if($this->permission->method('appointment_list','read')->access() || $this->permission->method('appointment_list','delete')->access()){
                                  ?>
                                    <td class="center">
                                        <?php
                                         if($this->permission->method('add_appointment','create')->access()){
                                        ?>
                                          <!-- <a href="<?php echo base_url("prescription/prescription/create?aid=$appointment->appointment_id&pid=$appointment->patient_id") ?>" class="btn btn-xs btn-primary" data-toggle="tooltip" data-placement="top" title="<?= display('add_prescription')?>"><i class="ti-book"></i></a>  -->
                                        <?php } ?>

                                        <?php
                                         if($this->permission->method('appointment_list','read')->access()){
                                        ?>
                                          <a href="<?php echo base_url("appointment/view/$appointment->appointment_id") ?>" class="btn btn-xs btn-success"><i class="fa fa-eye"></i></a> 
                                        <?php } ?>

              
                                        <?php
                                         if($this->permission->method('appointment_list','delete')->access() && $appointment->status == 3){
                                        ?>
                                          <a href="<?php echo base_url("appointment/delete/$appointment->appointment_id") ?>" onclick="return confirm('<?php echo display('are_you_sure') ?>')" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i></a> 
                                        <?php } ?>
                                        <?php
                                         if($this->permission->method('appointment_list','update')->access() && ($appointment->status == 2 || $appointment->status == 1) ){
                                        ?>
                                          <a href="<?php echo base_url("appointment/cancell/$appointment->appointment_id") ?>" onclick="return confirm('<?php echo display('are_you_sure') ?>')" class="btn btn-xs btn-danger"><i class="fa fa-times-circle"></i></a> 
                                        <?php } ?>
                                        <?php
                                         if($this->permission->method('appointment_list','update')->access() && $appointment->status == 2 ){
                                        ?>
                                          <a href="<?php echo base_url("appointment/confirm/$appointment->appointment_id") ?>" onclick="return confirm('<?php echo display('are_you_sure') ?>')" class="btn btn-xs btn-danger"><i class="fa fa-check-circle"></i></a> 
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
            <?php 
            }
             else{
             ?>
               <div class="row">
                <div class="col-sm-12">
                   <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                      <div class="panel-title">
                        <h4><?php echo display('you_do_not_have_permission_to_access_please_contact_with_administrator');?>.</h4>
                       </div>
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