<div class="recent">

	<div class="row">
		<div class="col-lg-12">
			<div class="row">
				<div class="col-lg-12">
					<h1 style="margin-bottom: 1em">[[pages:recent]]</h1>
				</div>
			</div>
		</div>
	</div>

	<a href="{config.relative_path}/{selectedFilter.url}">
		<div class="alert alert-warning hide" id="new-topics-alert"></div>
	</a>

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		<strong>[[recent:no_recent_topics]]</strong>
	</div>
	<!-- ENDIF !topics.length -->

	<div class="category row">
		<div class="col-md-8 col-xs-12">
			<!-- IMPORT partials/topics_list.tpl -->

			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
		<div class="col-md-4 col-xs-12">
			<!-- IMPORT partials/recent/sidebar.tpl -->
		</div>
	</div>
</div>