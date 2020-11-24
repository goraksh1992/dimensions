<td><?php echo $sl; ?></td>
<td>
    <a href="<?php echo base_url("appointment/view/$appointment->appointment_id") ?>" class=""><?php echo $appointment->appointment_id; ?></i></a> 
    
</td>
<td><?php echo $appointment->patient_id; ?></td>
<td><?php echo $appointment->name; ?></td>
<td><?php echo $appointment->firstname.' '.$appointment->lastname; ?></td>
<td><?php echo $appointment->start_time.' - '.$appointment->end_time; ?></td>
<td><?php echo ($appointment->schedule_type == 1) ? 'Inperson' : 'Online'; ?></td>
<!-- <td><?php echo $appointment->problem; ?></td> -->
<td><?php echo print_date($appointment, 'date'); ?></td>
<td><?php echo get_appointment_status($appointment->status); ?></td>