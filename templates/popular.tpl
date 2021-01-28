<div class="popular">
	<div class="row">
		<div class="col-lg-12">
			<div class="row">
				<div class="col-lg-12">
					<h1 style="margin-bottom: 1em">
						[[pages:popular]]
					</h1>
				</div>
			</div>
		</div>
	</div>

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		<strong>[[recent:no_popular_topics]]</strong>
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

					<div class="btn-group pull-left <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->" style="width:45%; margin-top: 15px;">
						<button type="button" class="btn btn-full-width btn-default dropdown-toggle" data-toggle="dropdown">
						{selectedFilter.name} <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							{{{each filters}}}
							<li role="presentation" class="category">
								<a role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
							</li>
							{{{end}}}
						</ul>
					</div>

					<div class="btn-group pull-left <!-- IF !terms.length -->hidden<!-- ENDIF !terms.length -->" style="width:45%; margin-left:10%; margin-top: 15px;">
						<button type="button"class="btn btn-full-width btn-default dropdown-toggle" data-toggle="dropdown">
						{selectedTerm.name} <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							{{{each terms}}}
							<li role="presentation" class="category {{{if filters.selected}}}selected{{{end}}}">
								<a role="menu-item" href="{config.relative_path}/{terms.url}"><i class="fa fa-fw <!-- IF terms.selected -->fa-check<!-- ENDIF terms.selected -->"></i>{terms.name}</a>
							</li>
							{{{end}}}
						</ul>
					</div>
				</div>
			</div>
			<!-- IMPORT partials/feeds/sidebar.tpl -->
		</div>
	</div>
</div>