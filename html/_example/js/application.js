(function ($) {
	$(function () {
		window.lim.plugin.example = {
			init: function () {
				var that = this;
				
				$('.sidebar-nav a[href="#example_page"]').click(function () {
					$('.sidebar-nav li').removeClass('active');
					$(this).parent().addClass('active');
					that.loadExamplePage();
	    			return false;
				});
				
				$('.sidebar-nav a[href="#another_example_page"]').click(function () {
					$('.sidebar-nav li').removeClass('active');
					$(this).parent().addClass('active');
					that.loadAnotherExamplePage();
	    			return false;
				});

				this.loadExamplePage();
			},
			//
			loadExamplePage: function () {
				window.lim.loadPage('/_example/example_page.html')
				.done(function (data) {
					window.lim.display(data, '#example-content');
				});
			},
			//
			loadAnotherExamplePage: function () {
				var that = this;
				window.lim.loadPage('/_example/another_example_page.html')
				.done(function (data) {
					window.lim.display(data, '#example-content');
					window.setTimeout(function () {
						that.getAnotherExamplePage();
					}, 1250);
				});
			},
			getAnotherExamplePage: function () {
				window.lim.getJSON('/example/example')
				.done(function (data) {
		    		if (data.example && data.example.text) {
		    			$('#text').text(data.example.text);
		    			$('#bool').text(data.example.bool ? 'True' : 'False');
		    			return;
		    		}
		    		
					$('#example-content')
					.empty()
					.append(
						$('<p class="text-warning"></p>')
						.text('Nothing returned, very strange ...')
						);
				})
				.fail(function (jqXHR) {
					$('#example-content')
					.empty()
					.append(
						$('<p class="text-error"></p>')
						.text('Unable to read example: '+window.lim.getXHRError(jqXHR))
						);
				});
			},
		};
		window.lim.plugin.example.init();
	});
})(window.jQuery);
