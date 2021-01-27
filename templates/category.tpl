<!-- IMPORT partials/category/header.tpl -->

<div class="category row">
	<div class="col-lg-8 col-md-9 col-sm-12">
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">
			[[category:no_topics]]
		</div>
		<!-- ENDIF !topics.length -->

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>

	<!-- IF topics.length -->
	<div data-widget-area="sidebar" class="col-lg-4 col-md-3 col-xs-12 category-sidebar">
		<!-- IMPORT widgets/category-sidebar.tpl -->
		<!-- BEGIN widgets.sidebar -->
		{{widgets.sidebar.html}}
		<!-- END widgets.sidebar -->
	</div>
	<!-- ENDIF topics.length -->
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
