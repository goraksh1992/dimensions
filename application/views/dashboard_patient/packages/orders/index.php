
<div class="row">
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
            <!-- <?php
             if($this->permission->method('package_order_add','create')->access()){
            ?>
            <div class="panel-heading no-print">
                <div class="btn-group"> 
                    <a class="btn btn-success" href="<?php echo base_url("orders/create") ?>"> <i class="fa fa-plus"></i>  <?php echo display('add_package') ?> </a>  
                </div>
            </div>
            <?php } ?> -->

            
            <div class="panel-body">
                <!-- Nav tabs --> 
                <ul class="col-xs-12 nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"> 
                        <a href="#home" aria-controls="home" role="tab" data-toggle="tab"> <i class="fa fa-list"></i> <?php echo display('package_order') ?></a>
                    </li>
                </ul>  

                <!-- Tab panes --> 
                <div class="col-xs-12 tab-content">
                    <br>
                    <!-- INFORMATION -->
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <div class="row">
                            <div class="col-md-12"> 
                                <table class="datatable table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th><?php echo display('serial') ?></th>
                                            <th><?php echo display('patient_name') ?></th> 
                                            <th><?php echo display('mobile') ?></th>
                                            <th><?php echo display('package_title') ?></th>
                                            <!-- <th><?php echo display('package_price') ?></th> -->
                                            <th><?php echo display('order_total') ?></th>
                                            <th><?php echo display('order_status') ?></th>
                                            <th><?php echo display('order_date') ?></th>
                                            <th><?php echo display('action') ?></th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if (!empty($orders) && count($orders)) { ?>
                                            <?php $sl = 1; ?>
                                            <?php foreach ($orders as $package) { ?>
                                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                                    <td><?php echo $sl; ?></td>
                                                    <td><?php echo $package->firstname.' '.$package->lastname; ?></td>
                                                    <td><?php echo $package->mobile; ?></td>
                                                    <td><?php echo $package->package_title; ?></td>
                                                    <!-- <td><?php echo $package->package_special_price; ?></td> -->
                                                    <td><?php echo $package->total_price; ?></td>
                                                    <td><?php echo $package->order_status; ?></td>
                                                    <td><?php echo print_date($package,'created_date')." ".print_time($package->created_date); ?></td>
                                                    
                                                    <!-- <td><?php echo $package->package_sort_order; ?></td> -->
                                                    <td class="center">
                                                        <a href="<?php echo base_url("dashboard_patient/packages/orders/view/$package->order_id") ?>" class="btn btn-xs  btn-success"><i class="fa fa-eye"></i></a> 
                                                    </td>
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
            

        </div>
    </div>
</div>

