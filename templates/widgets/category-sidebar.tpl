<div class="panel panel-default" style="border-top-color: {../bgColor}">
  <div class="panel-heading">
		<b>About [[category:category]]</b>
	</div>
  <div class="panel-body">
		<div class="category-tools clearfix">
			<!-- IF privileges.topics:create -->
			<button	
				id="new_topic" class="btn btn-primary btn-round btn-full-width"
				style="background-color: {../bgColor}; border-color: {../bgColor}"
				>
				[[category:new_topic_button]]
			</button>
			<!-- ELSE -->
				<!-- IF !loggedIn -->
				<a href="{config.relative_path}/login" class="btn btn-primary btn-round btn-full-width" style="background-color: {../bgColor}">[[category:guest-login-post]]</a>
				<!-- ENDIF !loggedIn -->
			<!-- ENDIF privileges.topics:create -->

			<div
				style="margin-top: 15px;"
				class="text-center"
				component="category/controls"
			>
				<!-- IMPORT partials/category_watch.tpl -->

				<!-- IMPORT partials/category_sort.tpl -->

				<!-- IMPORT partials/category_tools.tpl -->
			</div>
		</div>
  </div>
</div>