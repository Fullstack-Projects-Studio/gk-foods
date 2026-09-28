@include("common.header")
<link rel="stylesheet" id="elementor-post-761-css" href="./assets/post-761.css" media="all">
	<div data-elementor-type="wp-page" data-elementor-id="761" class="elementor elementor-761"
		data-elementor-post-type="page">
		<div class="elementor-element elementor-element-b3e0bea e-flex e-con-boxed e-con e-parent e-lazyloaded"
			data-id="b3e0bea" data-element_type="container"
			data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="e-con-inner">
				<div class="elementor-element elementor-element-762ce0d elementor-hidden-desktop elementor-hidden-tablet elementor-hidden-mobile elementor-invisible elementor-widget elementor-widget-heading"
					data-id="762ce0d" data-element_type="widget"
					data-settings="{&quot;_animation&quot;:&quot;zoomIn&quot;}" data-widget_type="heading.default">
					<div class="elementor-widget-container">
						<h2 class="elementor-heading-title elementor-size-default">Brands</h2>
					</div>
				</div>
			</div>
		</div>  
		
		<div class="elementor-element elementor-element-90286d6 e-grid e-con-boxed e-con e-parent e-lazyloaded"
			data-id="90286d6" data-element_type="container">
			<div class="e-con-inner">
				<div class="elementor-element elementor-element-d638698 elementor-widget elementor-widget-shortcode"
					data-id="d638698" data-element_type="widget" data-widget_type="shortcode.default">
					<div class="elementor-widget-container">
						<div class="elementor-shortcode">
							<div class="brands-container">
								@foreach ($brands as $brand)
									@if ($loop->first || $loop->index % 4 == 0)
										<div class="brand-row">
									@endif

									<div class="brand-item">
										<a href="{{ route('brand-category', ['id' => $brand->id]) }}">
											<h3 class="brand-title">{{ $brand->name }}</h3>
											@if(isset($brand->img_path) && !empty($brand->img_path))
												<img decoding="async" src="{{ asset('assets/' . $brand->img_path) }}" alt="{{ $brand->name }}">
											@else
											<img decoding="async" src="{{ asset('assets/No_Image_Available.jpg') }}" alt="{{ $brand->name }}">
											@endif
										</a>
									</div>

									@if ($loop->iteration % 4 == 0 || $loop->last)
										</div>
									@endif
								@endforeach
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
@include("common.footer")