@include ('web/include/header')

    <section>
    <div class="cart-bg">
        <div class="container">
          <div class="row">
            <div class="col-md-12 cart-heading">
                <h1>Shoping Cart</h1>
            </div>
          </div>
        </div>

    </div>

    </section>

    <div class="container mt-6">



<section class="">
<div class="shopping-cart">

<div class="column-labels">
  <label class="product-image">Image</label>
  <label class="product-details">Product</label>
  <label class="product-quantity">Quantity</label>
  <label class="product-price">Price</label>
  <label class="product-line-price">Total</label>
</div>

<div class="product">
  <div class="product-image">
    <img src="{{URL:: to('public/assests/img/book.jpg')}}" class="img-fluid mr-3">
  </div>
  <div class="product-details">
    <div class="product-title">book</div>
    <p class="product-description">The best Book</p>
  </div>
  <div class="product-quantity">
    <input type="number" class="border-0" value="2" min="1">
  </div>
  <div class="product-price">12.99</div>
  <div class="product-line-price">25.98</div>
</div>




    <div class="row">
      <div class="col-md-6">
        <div class="d-flex">
          <div class="form-input mr-3">
            <input type="text" class="form-control" placeholder="Enter Code Here">
          </div>
          <button class="btn btn-coupan">APPLY COUPAN</button>
        </div>
      </div>
      <div class="col-md-6">
      <div class="totals">
  <div class="totals-item">
    <label>Subtotal</label>
    <div class="totals-value" id="cart-subtotal">71.97</div>
  </div>
  <div class="totals-item">
    <label>Tax (5%)</label>
    <div class="totals-value" id="cart-tax">3.60</div>
  </div>
  <div class="totals-item">
    <label>Shipping</label>
    <div class="totals-value" id="cart-shipping">15.00</div>
  </div>
  <div class="totals-item totals-item-total">
    <label>Grand Total</label>
    <div class="totals-value" id="cart-total">90.57</div>
  </div>
</div>
      </div>
    </div>


</div>

<div class="d-flex justify-content-end mt-3">
    <button class="btn btn-checkout mr-3">Continue Shoping</button>
    <button class="btn btn-checkout">Process to checkout</button>
    </div>
</section>


@include ('web/include/footer2')

