<!--Section: Block Content-->
<section>
<div class="container">
  <!--Grid row-->
  <div class="row">
    <?php if($isPatient) : ?>
    <!--Grid column-->
        <div class="col-md-8" style="margin-bottom:10px; margin-top:20px;">
            <h4 class="mb-3">Billing address</h4>
            <?php if ($this->session->flashdata('success')) { ?>

            <div class="alert alert-success">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                <strong><?php echo $this->session->flashdata('success'); ?></strong>
            </div>
            <?php } ?>
            <?php if ($this->session->flashdata('exception')) { ?>

            <div class="alert alert-danger">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                <strong><?php echo $this->session->flashdata('exception'); ?></strong>
            </div>

            <?php } ?>
            <form class="needs-validation" method="post" action="<?php echo base_url('cart/process/checkout/'); ?>" id="checkoutForm">
                <?php                     
                    $name = isset($patient['fullname']) ? $patient['fullname'] : '';
                    $patient_name = explode(' ',$name);
                    //echo "<pre>".print_r($patient_name,true); exit; 
                ?>
                <div class="row">
                    <div class="col-md-6 mb-3 form-group">
                        <input type="hidden" id="user_id" name="user_id" placeholder="" value="<?php echo isset($patient['user_id']) ? $patient['user_id'] : ''; ?>" required="">
                        <input type="hidden" id="package_id" name="package_id" value="<?php echo isset($cart['items']->package_id) ? $cart['items']->package_id : ''; ?>">
                        <input type="hidden" id="package_price" name="package_price" value="<?php echo isset($cart['items']->package_special_price) ? $cart['items']->package_special_price  : ''; ?>">
                        <input type="hidden" id="package_slots" name="package_slots" value="<?php echo isset($cart['items']->package_slots) ? $cart['items']->package_slots : ''; ?>">
                        <input type="hidden" id="discount_price" name="discount_price" value="0">
                        <input type="hidden" id="payment_id" name="payment_id" value="">
                        <input type="hidden" id="receipt_id" name="receipt_id" value="">
                        <input type="hidden" id="payment_code" name="payment_code" value="<?php echo isset($cart['items']->payment_code) ? $cart['items']->payment_code : ''; ?>">
                        
                        <?php 
                            $other = 0;
                            $other = (float) ($cart['total']['total'] - $cart['total']['subtotal']);
                        ?>
                        <input type="hidden" id="other" name="other" value="<?php echo $other; ?>">
                        <input type="hidden" id="total_price" name="total_price" value="<?php echo isset($cart['total']['total']) ? $cart['total']['total'] : 0; ?>">
                        <input type="hidden" id="discount_price" name="discount_price" value="0">
                        <label for="firstname">First name</label>
                        <input type="text" class="form-control" id="firstname" name="firstname" placeholder="" value="<?php echo isset($patient_name[0]) ? $patient_name[0] : ''; ?>" required="">
                        <div class="invalid-feedback">
                            Valid first name is required.
                        </div>
                    </div>
                    <div class="col-md-6 mb-3 form-group">
                        <label for="lastname">Last name</label>
                        <input type="text" class="form-control" id="lastname" name="lastname" placeholder="" value="<?php echo isset($patient_name[1]) ? $patient_name[1] : ''; ?>" required="">
                        <div class="invalid-feedback">
                            Valid last name is required.
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email">Email <span class="text-muted">(Optional)</span></label>
                    <input type="email" class="form-control" id="email"  name="email" placeholder="you@example.com" value="<?php echo isset($patient['email']) ? $patient['email'] : ''; ?>">
                    <div class="invalid-feedback">
                    Please enter a valid email address for shipping updates.
                    </div>
                </div>

                <div class="mb-3">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" name="address" placeholder="1234 Main St" required="">
                    <div class="invalid-feedback">
                    Please enter your shipping address.
                    </div>
                </div>

                <div class="mb-3">
                    <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
                    <input type="text" name="address2" class="form-control" id="address2" placeholder="Apartment or suite">
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3 form-group">
                        <label for="country">Country</label>
                        <input type="text" class="form-control" id="country" name="country" placeholder="" value="" required="">
                        <div class="invalid-feedback">
                            Valid country is required.
                        </div>
                    </div>
                    <div class="col-md-6 mb-3 form-group">
                        <label for="state">State</label>
                        <input type="text" class="form-control" id="state" name="state" placeholder="" value="" required="">
                        <div class="invalid-feedback">
                            Valid state is required.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="zip">Zip</label>
                        <input type="text" class="form-control" id="zip" name="zip" placeholder="" required="">
                        <div class="invalid-feedback">
                            Zip code required.
                        </div>
                    </div>
                </div>
                <hr class="mb-4">
           
            <button class="btn btn-primary btn-lg btn-block pay" type="button">Continue to checkout</button>
            </form>
        </div>    
    <!--Grid column-->
    <?php else : ?>
        <div class="col-md-8" style="margin-bottom:10px; margin-top:20px;">
            <a href="<?php echo base_url('parent_login?cart=true'); ?>" class="btn btn-primary btn-lg btn-block" type="submit">Sign In/ Register</a>
        </div>
    <?php endif; ?>
    <!--Grid column-->
    <div class="col-lg-4">
      <!-- Card -->
      <div class="mb-3">
        <div class="pt-4">

          <h5 class="mb-3">Cart Summery</h5>

          <ul class="list-group list-group-flush">
            <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
            <?php echo isset($cart['items']->package_title) ? $cart['items']->package_title : ''; ?>
              <span>INR <?php echo isset($cart['items']->package_special_price) ? $cart['items']->package_special_price : ''; ?></span>
            </li>
            <?php if(isset($cart['total']['other'])) : ?>
            <?php foreach($cart['total']['other'] as $item) : ?>
              <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                <?php echo $item['title']; ?>
                <span>INR <?php echo $item['value']; ?></span>
              </li>
            <?php endforeach;?>
            <?php endif; ?>
            
            <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
              <div>
                <strong>Total</strong>
                <strong>
                  <p class="mb-0">(including charges)</p>
                </strong>
              </div>
              <span><strong>INR <?php echo isset($cart['total']['total']) ? $cart['total']['total'] : 0; ?></strong></span>
            </li>
          </ul>

          <!-- <button type="button" class="btn btn-primary btn-block">Place Order</button> -->

        </div>
      </div>
      <!-- Card -->    

    </div>
    <!--Grid column-->

  </div>
  <!-- Grid row -->
</div>
</section>
<!--Section: Block Content-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script type="text/javascript">
    jQuery(document).on('click', '.pay', function (e) 
    {
        console.log('asdas');
        var form = jQuery('#checkoutForm')[0];
        form.checkValidity()
        if(form.checkValidity())
        {
            var total = (jQuery('form#checkoutForm').find('input#total_price').val() * 100);
            console.log('Total:'+total);
            var merchant_order_id = '<?php echo get_order_id();?>';
            var merchant_surl_id = '';
            var merchant_furl_id = '';
           
            var merchant_total = total;
            var merchant_amount = total;
            var currency_code_id = 'INR';
            var key_id = "<?php echo RAZOR_KEY_ID; ?>";
            var store_name = 'Dimensions';
            var store_description = 'Evidence based scientific method in treating children with communication needs.';
            var store_logo = 'https://images.squarespace-cdn.com/content/5d79d3841f6ecd2d550dabbc/1574355058382-ONWDW5HC9R8AMSNL1FR0/DCCD_Logo_Final.png?format=1500w&content-type=image%2Fpng';
            //var email = jQuery('form#appointmentForm').find('input#billing-email').val();
            //var phone = jQuery('form#appointmentForm').find('input#billing-phone').val();
            var razorpay_options = {
                key: key_id,
                amount: merchant_total,
                name: store_name,
                description: store_description,
                image: store_logo,
                netbanking: true,
                currency: currency_code_id,
                notes: {
                    soolegal_order_id: merchant_order_id,
                },
                handler: function (transaction) {
                    console.log('Payment_id:'+transaction.razorpay_payment_id);
                    jQuery('form#checkoutForm').find('input#payment_id').val(transaction.razorpay_payment_id);
                    jQuery('form#checkoutForm').find('input#receipt_id').val(transaction.razorpay_payment_id);
                    $("#checkoutForm").submit();
                },
                "modal": {
                    "ondismiss": function () {
                        // code here
                    }
                }
            };
            var objrzpv1 = new Razorpay(razorpay_options);
            objrzpv1.open();
            e.preventDefault();
        }
    });
</script>