(function ($) {
    $(document).ready(function () {
        //$('.elementor-element-603e33b>li.productmenuclass a').filter(function (index, anchorEl) {
      //  console.log('activeadd');
        $('.elementor-element-603e33b li.menu-item-103 ul').first().addClass('activeadd');

		$('.hamburger').on('click', function(e) {

			var categoryList = document.querySelector('.category-list');
			// console.log(categoryList);
			categoryList.classList.toggle('show');

		});
		$('.subcategory-list').each(function() {
			// Check if any .subcategory-li has the active class
			if ($(this).find('.subcategory-li.active').length > 0) {
				// Show the corresponding subcategory list if it has an active subcategory
				$(this).show(); // Use .slideDown() for animation if needed
			} else {
				$(this).hide(); // Hide if no active subcategory
			}
		});
		$('.category-link').on('click', function(e) {
		e.preventDefault(); // Prevent default link behavior

		// Find the subcategory list associated with the clicked category link
		var subcategoryList = $(this).siblings('.subcategory-list');

		// Check if the clicked category's subcategory list is currently visible
		var isOpen = subcategoryList.is(':visible');

		// Close all open subcategory lists
		$('.subcategory-list').slideUp();

		// If the clicked category has a subcategory list
		if (subcategoryList.length > 0 && subcategoryList.length) {
			// If the clicked category's subcategory list was not open, open it
			if (!isOpen) {
				subcategoryList.slideDown(); // Show the subcategory list
			}
		} else {
			// If no subcategory list exists, redirect to the href of the category link
			var href = $(this).attr('href');
			if (href && href !== '#') {
				window.location.href = href; // Redirect to the category page
			}
		}

		});
		var $overlay = $('<div id="menu-overlay"></div>');
		$overlay.css({
			'position': 'fixed',
			'top': '494px',
			'left': '0',
			'width': '100%',
			'height': '2%',
			'backgroundColor': '#f1f1f1', // Semi-transparent black
			'zIndex': '999',
			'display':'none'
		});

		// Target the mega menu item
		var $megaMenu = $('li.mega-menu-item.mega-menu-megamenu.productmenuclass#mega-menu-item-103 > ul.mega-sub-menu');

		if ($megaMenu.length) {
			// Add overlay directly after the mega menu
			$megaMenu.after($overlay);
			// console.log('Hover in');
		}

		$('.suggestions-carousel').slick({
			slidesToShow:3,
			slideToScroll:3,
			arrows:false,
			// prevArrow: '<button type="button" class="slick-prev"><i class="fa fa-chevron-left"></i></button>',
			// nextArrow: '<button type="button" class="slick-next"><i class="fa fa-chevron-right"></i></button>',
			autoplay: true,
			autoplaySpeed: 3000,
			infinite: false,
			responsive:[{
				breakpoint:992,
				settings: {
					slidesToShow: 3
				}
			},{
				breakpoint:480,
				settings: {
					slidesToShow: 1
				}
			}]

		});
		$("#e-n-tab-content-65308031,#e-n-tab-content-65308032,#e-n-tab-content-1694763101,#e-n-tab-content-1694763102").removeClass('e-active');
		$('#e-n-tab-content-1694763101').removeClass('e-active');
		$('.e-n-tab-title').attr('aria-selected', 'false');
		$('#e-n-tab-title-1694763101').attr('aria-selected', 'false');
		$('#e-n-tab-title-65308031,#e-n-tab-title-65308032,#e-n-tab-title-1694763101,#e-n-tab-title-1694763102').on('click', function() {
			  // Hide all tab contents
			$('.tab-content').hide();
			$('.e-n-tab-title').removeClass('selected')
			// Get the ID of the clicked title
			const titleId = $(this).attr('id');
			$(this).addClass('selected');
			// Construct the corresponding content ID
			const contentId = titleId.replace('title', 'content');
			if(contentId == 'e-n-tab-content-1694763101'){
			   $('.elementor-element-0b5a79c').show();
			}
			//console.log(contentId);
			if(contentId == 'e-n-tab-content-65308031' || contentId == 'e-n-tab-content-65308032'){
				$('.elementor-element-063a6f3 .e-n-tabs-heading').css('left','0');
			}
			$('#' + contentId).show();
    	});

	});
	/*jQuery(document).ready(function($) {
		// Use event delegation to attach hover events
		$(document).on('mouseenter', '#mega-menu-item-103,li.mega-menu-item.mega-menu-megamenu.productmenuclass#mega-menu-item-103 > ul.mega-sub-menu', function() {
			console.log('Mouse entered');
			$("#menu-overlay").show();
		}).on('mouseleave', '#mega-menu-item-103,li.mega-menu-item.mega-menu-megamenu.productmenuclass#mega-menu-item-103 > ul.mega-sub-menu', function() {
			console.log('Mouse left');
			$("#menu-overlay").hide();
			$(this).css('background-color', '');
		});
	});*/
	//$(".productmenuclass.mega-toggle-on").click(function(e) {
	/*$(document).on('click','.productmenuclass',function(){

		if($(this).hasClass('mega-toggle-on')){
		   $(this).removeClass('mega-toggle-on');
			console.log('test');
		}else{
			console.log('test2');
		}

	});*/
	 $('.rem_horeca a[aria-label="Visit product category Horeca"]').parent('li').hide();
	$('.rem_horeca a[aria-label="Visit product category Retail"]').parent('li').hide();
	
	document.addEventListener('DOMContentLoaded', function () {
		document.querySelectorAll('.quantity-buttons').forEach(function (container) {
			const input = container.querySelector('input.qty');

			container.querySelector('.plus').addEventListener('click', function () {
				input.stepUp();
			});

			container.querySelector('.minus').addEventListener('click', function () {
				if (parseInt(input.value) > 1) input.stepDown();
			});
		});
	});

	document.addEventListener('DOMContentLoaded', function () {
		// Only apply if NOT already inside a quantity-buttons container
		document.querySelectorAll('.quantity:not(.quantity-buttons)').forEach(function (quantityContainer) {
			const input = quantityContainer.querySelector('input.qty');
			if (!input) return;

			// Prevent adding buttons again
			if (quantityContainer.querySelector('.plus') || quantityContainer.querySelector('.minus')) return;

			// Create minus button
			const minusBtn = document.createElement('button');
			minusBtn.type = 'button';
			minusBtn.className = 'minus';
			minusBtn.textContent = '-';

			// Create plus button
			const plusBtn = document.createElement('button');
			plusBtn.type = 'button';
			plusBtn.className = 'plus';
			plusBtn.textContent = '+';

			// Insert buttons before and after input
			quantityContainer.insertBefore(minusBtn, input);
			quantityContainer.appendChild(plusBtn);

			// Event listeners
			plusBtn.addEventListener('click', function () {
				input.stepUp();
			});

			minusBtn.addEventListener('click', function () {
				if (parseInt(input.value) > 1) input.stepDown();
			});
		});
	});
})(window.jQuery);