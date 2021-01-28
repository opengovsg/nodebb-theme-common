<div class="top">
	<div class="row">
		<div class="col-lg-12">
			<div class="row">
				<div class="col-lg-12">
					<h1 style="margin-bottom: 1em">
						[[pages:top]]
					</h1>
				</div>
			</div>
		</div>
	</div>

	<a href="{config.relative_path}/{selectedFilter.url}">
		<div class="alert alert-warning hide" id="new-topics-alert"></div>
	</a>

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		<strong>[[top:no_top_topics]]</strong>
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
			<div class="panel panel-default">
				<div class="panel-body">
					<!-- IF canPost -->
					<button
						component="category/post"
						id="new_topic"
						class="btn btn-primary btn-full-width btn-round"
						>
						[[category:new_topic_button]]
					</button>
					<!-- ELSE -->
					<a
						component="category/post/guest"
						href="{config.relative_path}/login"
						class="btn btn-primary btn-full-width btn-round"
						>
						[[category:guest-login-post]]
					</a>
					<!-- ENDIF canPost -->
				</div>
			</div>
			<!-- IMPORT partials/feeds/sidebar.tpl -->
		</div>
	</div>
</div>