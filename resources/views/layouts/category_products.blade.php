@include("common.header")
 <style id='elementor-frontend-inline-css'>
    .elementor-430 .elementor-element.elementor-element-f8a4c52:not(.elementor-motion-effects-element-type-background), .elementor-430 .elementor-element.elementor-element-f8a4c52 > .elementor-motion-effects-container > .elementor-motion-effects-layer {
        background-image: url('{{ asset("assets/uploads/2024/12/SMI-Product-Banner-02-01.png") }}');
    }
</style>
	<link rel="stylesheet" id="elementor-post-384-css" href="{{ asset('assets/post-430.css') }}" media="all">
	<div data-elementor-type="product-archive" data-elementor-id="430"
		class="elementor elementor-430 elementor-location-archive product" data-elementor-post-type="elementor_library">
		<div class="elementor-element elementor-element-f8a4c52 e-flex e-con-boxed e-con e-parent" data-id="f8a4c52"
			data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="e-con-inner">
				<div class="elementor-element elementor-element-00762e8 elementor-hidden-desktop elementor-hidden-tablet elementor-hidden-mobile elementor-widget elementor-widget-theme-archive-title elementor-page-title elementor-widget-heading"
					data-id="00762e8" data-element_type="widget" data-widget_type="theme-archive-title.default">
					<div class="elementor-widget-container">
						<h1 class="elementor-heading-title elementor-size-default">{{$category_name}}</h1>
					</div>
				</div>
			</div>
		</div>
		<div class="elementor-element elementor-element-c3f65d7 e-flex e-con-boxed e-con e-parent" data-id="c3f65d7"
			data-element_type="container">
			<div class="e-con-inner">
				<div class="elementor-element elementor-element-ac19889 elementor-widget elementor-widget-woocommerce-breadcrumb"
					data-id="ac19889" data-element_type="widget" data-widget_type="woocommerce-breadcrumb.default">
					<div class="elementor-widget-container">
						<nav class="woocommerce-breadcrumb" aria-label="Breadcrumb"><a
								href="https://selvaraniagencies.com">Home</a> &gt; {{$category_name}}</nav>
					</div>
				</div>
				<div class="elementor-element elementor-element-2fc7d70 e-con-full e-flex e-con e-child"
					data-id="2fc7d70" data-element_type="container">
					<div class="elementor-element elementor-element-341ab89 e-con-full e-flex e-con e-child"
						data-id="341ab89" data-element_type="container"
						data-settings="{&quot;sticky&quot;:&quot;top&quot;,&quot;sticky_on&quot;:[&quot;desktop&quot;],&quot;sticky_effects_offset&quot;:2,&quot;sticky_parent&quot;:&quot;yes&quot;,&quot;sticky_offset&quot;:0,&quot;sticky_anchor_link_offset&quot;:0}">
						<div class="elementor-element elementor-element-df99220 elementor-widget elementor-widget-shortcode"
							data-id="df99220" data-element_type="widget" data-widget_type="shortcode.default">
							<div class="elementor-widget-container">
								<div class="elementor-shortcode"><button class="hamburger"
										aria-label="Toggle menu">&#9776;</button>
									<nav class="category-filter">
										<ul class="category-list">
											@foreach ($categories as $category)
												<li class="category-li  {{ $category->name }} child {{ request()->segment(2) == $category->id ? 'active' : '' }}">
													<a
														href="{{ route('product-category', ['id' => $category->id]) }}" role="tab"
														class="category-link  {{ request()->segment(2) == $category->id ? 'active' : '' }}">
														<div>{{ $category->name }}</div><span class="cate-count">{{ $category->products_count }}</span>
													</a>
												</li>
											@endforeach
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
					<div class="elementor-element elementor-element-b5f5ef5 e-con-full product-con e-flex e-con e-child"
						data-id="b5f5ef5" data-element_type="container">
						<div class="elementor-element elementor-element-21151e1 elementor-grid-3 elementor-grid-mobile-1 elementor-product-loop-item--align-center btncssadd elementor-grid-tablet-3 elementor-products-grid elementor-wc-products elementor-widget elementor-widget-woocommerce-products"
							data-id="21151e1" data-element_type="widget"
							data-widget_type="woocommerce-products.default">
							<div class="elementor-widget-container">
								<div class="woocommerce columns-3 ">
									@foreach($products as $categoryName => $product_data)
										<h2 class="heading1 title">{{$categoryName}}</h2>
										<ul class="products elementor-grid custom-category-products 10">
											 @foreach ($product_data as $product)
												<li
													class="product type-product post-6937 status-publish first instock product_cat-all-products product_cat-burger-mayyonaise product_cat-horeca product_cat-mayyonnaise has-post-thumbnail shipping-taxable purchasable product-type-simple">
													<a href="{{ route('product-detail', ['id' => $product->id]) }}"
														class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
														
													@if (!empty($product->img_path))
														<img src="{{ env('IMG_URL') . $product->img_path }}" alt="{{ $product->name }}" width="300" height="300">
													@else
													<img decoding="async" src="{{ asset('assets/No_Image_Available.jpg') }}" alt="{{ $brand->name }}" width="300" height="300">
													@endif		
													<h2 class="woocommerce-loop-product__title">{{ $product->name }}</h2>
													</a>
													 @if ($product->show_price)
														<p>Price: ₹{{ $product->price }}</p>
													@endif
													@if(isset($cart[$product->id]))
														<button class="button btn btn-success" disabled>✔️ Added to Cart</button>
													@else
														<div class="show_add_{{$product->id}}">
															<div class="quantity quantity-buttons">
																<button type="button" class="minus">-</button>
																<input type="number" name="quantity" value="1" min="1"
																	class="input-text qty text qty_{{$product->id}}" />
																<button type="button" class="plus">+</button>
															</div>
															<button type="button" data-id="{{$product->id}}" class="button add_to_cart_button">Add to cart</button>	
														</div>
														<div class="show_hide_{{$product->id}} d-none">
															<button class="button btn btn-success" disabled>✔️ Added to Cart</button>
														</div>															
													@endif
												</li>
											@endforeach	
										</ul>
									@endforeach	
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="elementor-element elementor-element-a74ca1d e-flex e-con-boxed e-con e-parent" data-id="a74ca1d"
			data-element_type="container">
			<div class="e-con-inner">
			</div>
		</div>
	</div>
@include("common.footer")