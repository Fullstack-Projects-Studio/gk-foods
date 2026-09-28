@include("common/header")

<main id="content" class="site-main post-10 page type-page status-publish hentry">
    <div class="page-header">
        <h1 class="entry-title">Checkout</h1>
    </div>
    @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
    @if(session('error'))
        <div class="alert alert-danger">
            {{ session('error') }}
        </div>
    @endif
    <div class="page-content">
        <div class="woocommerce">
            <form name="checkout" method="post" class="checkout woocommerce-checkout" action="{{route('place_order')}}" aria-label="Checkout" >
                <h3 id="order_review_heading">Your order</h3>
                <div id="order_review" class="woocommerce-checkout-review-order">
                    <table class="shop_table woocommerce-checkout-review-order-table">
                        <thead>
                            <tr>
                                <th class="product-name">Product(s)</th>
                                <th class="product-total">Subtotal</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if (isset($cart) && count($cart) > 0)
                                @foreach($cart as $cart_data)
                                    <tr class="cart_item">
                                        <td class="product-name">
                                            <img width="50" height="50"  src="{{ env('IMG_URL') . $cart_data['image'] }}" class="attachment-50x50 size-50x50" alt="{{$cart_data['name']}}">
                                            <span class="pronamespace" style="margin-left:10px"> {{$cart_data['name']}}</span>&nbsp;
                                            <strong class="product-quantity">×&nbsp;{{$cart_data['quantity']}}</strong>
                                        </td>
                                        <td class="product-total">
                                            <span class="woocommerce-Price-amount amount"><bdi><span class="woocommerce-Price-currencySymbol">₹</span>100.00</bdi></span>
                                        </td>
                                    </tr>
                                @endforeach
                            @else
                            <tr class="xoo-wsc-empty-cart">
                                <td>Your cart is empty <br>
                                    <a class="button btn" href="{{route('index')}}">Return to Shop</a>
                                </td>
                            </tr>
                            @endif
                        </tbody>
                        <tfoot>
                            <tr class="cart-subtotal">
                                <th>Subtotal</th>
                                <td><span class="woocommerce-Price-amount amount"><bdi><span class="woocommerce-Price-currencySymbol">₹</span>100.00</bdi></span></td>
                            </tr>
                            <tr class="woocommerce-shipping-totals shipping">
                                <th>Shipping</th>
                                <td data-title="Shipping">
                                    <ul id="shipping_method" class="woocommerce-shipping-methods">
                                        <li>

                                            <input type="hidden" name="shipping_method[0]" data-index="0" id="shipping_method_0_free_shipping1" value="free_shipping:1" class="shipping_method"><label for="shipping_method_0_free_shipping1">Free shipping</label>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr class="order-total">
                                <th>Total</th>
                                <td><strong><span class="woocommerce-Price-amount amount"><bdi><span class="woocommerce-Price-currencySymbol">₹</span>100.00</bdi></span></strong> </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                
                <div class="col2-set" id="customer_details">
                    <div class="col-1">
                        <div class="woocommerce-billing-fields">
                            <h3>Billing details</h3>
                            <div class="woocommerce-billing-fields__field-wrapper">
                                <p class="form-row form-row-wide validate-required" id="billing_company_field" data-priority="10"><label for="billing_company" class="required_field">Company Name&nbsp;<span class="required" aria-hidden="true">*</span></label><span class="woocommerce-input-wrapper">
                                        <input type="text" class="input-text " name="billing_company" id="billing_company" placeholder="Company Name" value="" aria-required="true" required></span></p>
                                <p class="form-row form-row-wide validate-required" id="billing_first_name_field" data-priority="20"><label for="billing_first_name" class="required_field">Contact Person Name&nbsp;<span class="required" aria-hidden="true">*</span></label><span class="woocommerce-input-wrapper">
                                        <input type="text" class="input-text " name="billing_first_name" id="billing_first_name" placeholder="Contact Person Name" value="" aria-required="true" required></span></p>
                                <p class="form-row form-row-wide validate-required" id="billing_phone_field" data-priority="30"><label for="billing_phone" class="required_field">Contact Number&nbsp;<span class="required" aria-hidden="true">*</span></label><span class="woocommerce-input-wrapper">
                                        <input type="text" class="input-text " name="billing_phone" id="billing_phone" placeholder="Contact Number" value="" aria-required="true" required></span></p>
                                <p class="form-row form-row-wide" id="sa_executive_name_field" data-priority="40"><label for="sa_executive_name" class="">SA Executive Name&nbsp;<span class="optional">(optional)</span></label><span class="woocommerce-input-wrapper">
                                        <input type="text" class="input-text " name="sa_executive_name" id="sa_executive_name" placeholder="SA Executive Name" value=""></span></p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div id="payment" class="woocommerce-checkout-payment">
                    <ul class="wc_payment_methods payment_methods methods">
                        <li class="wc_payment_method payment_method_cod">

                            <input id="payment_method_cod" type="radio" class="input-radio" name="payment_method" value="cod" checked="checked" data-order_button_text="" style="display: none;">

                            <label for="payment_method_cod">
                                Cash on delivery </label>
                            <div class="payment_box payment_method_cod">
                                <p>Pay with cash upon delivery.</p>
                            </div>
                        </li>
                    </ul>                        
                    @if (isset($cart) && count($cart) > 0)
                        <div class="form-row place-order">
                            <noscript>
                                Since your browser does not support JavaScript, or it is disabled, please ensure you click the <em>Update Totals</em> button before placing your order. You may be charged more than the amount stated above if you fail to do so. <br /><button type="submit" class="button alt" name="woocommerce_checkout_update_totals" value="Update totals">Update totals</button>
                            </noscript>

                            <div class="woocommerce-terms-and-conditions-wrapper">
                                <div class="woocommerce-privacy-policy-text">
                                    <p>Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our <a href="https://selvaraniagencies.com/?page_id=3" class="woocommerce-privacy-policy-link" target="_blank">privacy policy</a>.</p>
                                </div>
                            </div>
                            <div class="custom-privacy-note" style="margin-top: 15px;margin-bottom: 15px;">
                                By proceeding with your purchase you agree to our Terms and Conditions and Privacy Policy.<br>*All orders are subject to physical order availability.
                            </div>
                            @csrf
                            <button type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Place order" data-value="Place order">Place order</button>
                        </div>                        
                    @endif
                </div>
            </form>
        </div>
    </div>
</main>
@include("common/footer")