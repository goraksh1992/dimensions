<!-- <div class="service-list">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                Item details.
            </div>
            <div class="col-md-4">
                Cart summery.
            </div>
        </div>
    </div>
</div> -->
<!--Section: Block Content-->
<section>
<div class="container">
  <!--Grid row-->
  <div class="row">

    <!--Grid column-->
    <div class="col-lg-8">

      <!-- Card -->
      <div class="mb-3">
        <div class="pt-4 wish-list">

          <h5 class="mb-4">Cart (<span><?php echo (isset($cart['total']['items'])) ? $cart['total']['items']: 0; ?></span> items)</h5>
          <?php if ($this->session->flashdata('success')) { ?>

          <div class="alert alert-success">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
              <strong><?php echo $this->session->flashdata('success'); ?></strong>
          </div>
          <?php } ?>
          <?php if ($this->session->flashdata('error')) { ?>

          <div class="alert alert-danger">
              <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
              <strong><?php echo $this->session->flashdata('error'); ?></strong>
          </div>

          <?php } ?>
          <?php if(isset($cart['total']['items']) && $cart['total']['items']) : ?>
          <div class="row mb-4">
            <div class="col-md-5 col-lg-3 col-xl-3">
              <div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
                <span class="meta__avatar box-icon"><i class="fa fa-medkit" aria-hidden="true" style="font-size: 100px; color: #fa75ae;"></i></span>
                <!-- <img class="img-fluid w-100"
                  src="<?= (!empty($package->package_image)?base_url($package->package_image):base_url('assets_web/img/placeholder/profile.png'))?>" alt="Sample"> -->
                <!-- <a href="#!">
                  <div class="mask">
                    <img class="img-fluid w-100"
                      src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg">
                    <div class="mask rgba-black-slight"></div>
                  </div>
                </a> -->
              </div>
            </div>
            <div class="col-md-7 col-lg-9 col-xl-9">
              <div>
                <div class="d-flex justify-content-between">
                  <div>
                    <h5><?php echo isset($cart['items']->package_title) ? $cart['items']->package_title : ''; ?></h5>
                    <p class="mb-3 text-muted text-uppercase small"><?php echo isset($cart['items']->package_code) ? $cart['items']->package_code : ''; ?></p>
                    <!-- <p class="mb-2 text-muted text-uppercase small">Slots: blue</p> -->
                    <p class="mb-3 text-muted text-uppercase small">Slots: <?php echo isset($cart['items']->package_slots) ? $cart['items']->package_slots : ''; ?></p>
                  </div>
                </div>
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <a href="<?php echo base_url('cart/process/unsetcart/'); ?>" type="button" class="card-link-secondary small text-uppercase mr-3">
                      <i class="fas fa-trash-alt mr-1"></i> Remove item 
                    </a>
                  </div>
                  <p class="mb-0"><span><strong id="summary">INR <?php echo isset($cart['items']->package_special_price) ? $cart['items']->package_special_price : ''; ?></strong></span></p class="mb-0">
                </div>
              </div>
            </div>
          </div>
          <hr class="mb-4">
          <?php endif; ?>
          <!-- <p class="text-primary mb-0"><i class="fas fa-info-circle mr-1"></i> Do not delay the purchase, adding
            items to your cart does not mean booking them.</p> -->

        </div>
      </div>
      <!-- Card -->

      

      <!-- Card -->
      <!-- <div class="mb-3">
        <div class="pt-4">

          <h5 class="mb-4">We accept</h5>

          <img class="mr-2" width="45px"
            src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
            alt="Visa">
          <img class="mr-2" width="45px"
            src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg"
            alt="American Express">
          <img class="mr-2" width="45px"
            src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
            alt="Mastercard">
          <img class="mr-2" width="45px"
            src="https://mdbootstrap.com/wp-content/plugins/woocommerce/includes/gateways/paypal/assets/images/paypal.png"
            alt="PayPal acceptance mark">
        </div>
      </div> -->
      <!-- Card -->

    </div>
    <!--Grid column-->

    <!--Grid column-->
    <div class="col-lg-4">

      <!-- Card -->
      <div class="mb-3">
        <div class="pt-4">

          <h5 class="mb-3">The total amount of</h5>

          <ul class="list-group list-group-flush">
            <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
              Sub Total
              <span>INR <?php echo isset($cart['total']['subtotal']) ? $cart['total']['subtotal'] : 0; ?></span>
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

          <a href="<?php echo base_url('cart/process/checkout/'); ?>" type="button" class="btn btn-primary btn-block">Checkout</a>

        </div>
      </div>
      <!-- Card -->

      <!-- Card -->
      <!-- <div class="mb-3">
        <div class="pt-4">

          <a class="dark-grey-text d-flex justify-content-between" data-toggle="collapse" href="#collapseExample"
            aria-expanded="false" aria-controls="collapseExample">
            Add a discount code (optional)
            <span><i class="fas fa-chevron-down pt-1"></i></span>
          </a>

          <div class="collapse" id="collapseExample">
            <div class="mt-3">
              <div class="md-form md-outline mb-0">
                <input type="text" id="discount-code" class="form-control font-weight-light"
                  placeholder="Enter discount code">
              </div>
            </div>
          </div>
        </div>
      </div> -->
      <!-- Card -->

    </div>
    <!--Grid column-->

  </div>
  <!-- Grid row -->
</div>
</section>
<!--Section: Block Content-->