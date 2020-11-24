<div class="panel-body">
    <div class="text-center">
        <div class="col-sm-12" align="center">  
            <h1><?php echo "Refund Information"; ?></h1>
            <br>
        </div>
        <div class="col-sm-6"> 
            <dl class="dl-horizontal">
                <dt><?php echo "Refund ID:" ?></dt>
                <dd><?php echo print_value($appointment, 'refund_id'); ?></dd>
                <dt><?php echo "Refund Amount(INR):" ?></dt>
                <dd><?php echo print_value($appointment, 'refund_amount'); ?></dd> 
                <dt><?php echo "Refund Status:" ?></dt>
                <dd><?php echo print_value($appointment, 'refund_status'); ?></dd> 
                <dt><?php echo "Refund Speed:" ?></dt>
                <dd><?php echo print_value($appointment, 'speed_processed'); ?></dd> 
                <dt><?php echo "Refund Date:" ?></dt>
                <dd><?php echo print_date($appointment, 'refund_date'); ?></dd> 
            </dl> 
        </div>
    </div>
</div>