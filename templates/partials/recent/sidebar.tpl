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

<div class="panel panel-info">
	<div class="panel-heading"><b>[[unread:all_categories]]</b></div>
  <div class="panel-body">
		<ul component="category/list" role="menu">
			<!-- BEGIN categories -->
			<li
				role="presentation"
				class="category {{{ if categories.disabledClass }}}disabled{{{ end }}}"
				data-cid="{categories.cid}"
				data-parent-cid="{categories.parentCid}"
				data-name="{categories.name}"
				style="margin-top: 0.5em;"
				>
					<a role="menu-item" href="/category/{categories.cid}">
						<span component="category-markup">
							{{{ if categories.icon }}}
							<span
								class="fa-stack"
								style="{function.generateCategoryBackground}; border-radius: 20px; margin-right: 0.5em">
								<i class="fa fa-fw fa-stack-1x {categories.icon}" style="color: {categories.color};"></i>
							</span>
							{{{ end }}} {categories.name}
						</span>
					</a>
			</li>
			<!-- END categories -->
		</ul>
	</div>
</div>