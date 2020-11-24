<div class="row">
    <div class="col-md-12"> 
        <table class="datatable table table-striped table-bordered" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th><?php echo display('serial') ?></th>
                    <th><?php echo display('patient_name') ?></th> 
                    <th><?php echo display('mobile') ?></th>
                    <th><?php echo display('package_title') ?></th>
                    <th><?php echo display('package_price') ?></th>
                    <th><?php echo display('order_total') ?></th>
                    <th><?php echo display('order_date') ?></th>
                    <th><?php echo "Renewal Date" ?></th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($renewals) && count($orders)) { ?>
                    <?php $sl = 1; ?>
                    <?php foreach ($orders as $package) { ?>
                        <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                            <td><?php echo $sl; ?></td>
                            <td><?php echo $package->firstname.' '.$package->lastname; ?></td>
                            <td><?php echo $package->mobile; ?></td>
                            <td><?php echo $package->package_title; ?></td>
                            <td><?php echo $package->package_special_price; ?></td>
                            <td><?php echo $package->total_price; ?></td>
                            <td><?php echo $package->created_date; ?></td>
                            <td><?php echo date('Y-m-d'); ?></td>
                        </tr>
                        <?php $sl++; ?>
                    <?php } ?> 
                <?php } ?> 
            </tbody>
        </table>  <!-- /.table-responsive -->
    </div>
</div>