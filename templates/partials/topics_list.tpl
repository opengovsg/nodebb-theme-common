		<ul component="category" id="topics-container" data-nextstart="{nextStart}">
			<meta itemprop="itemListOrder" content="descending">
			<!-- BEGIN topics -->
			<li component="category/topic" style="margin-bottom: 1em" class="category-item {function.generateTopicClass}" itemprop="itemListElement" <!-- IMPORT partials/data/category.tpl -->>
				<a id="{../index}" data-index="{../index}" component="topic/anchor"></a>
				<meta itemprop="name" content="{function.stripTags, title}">

				<div class="category-body">
					<div class="row">
						<div class="col-xs-12">
							<div class="category-text">
								<p><strong><i component="topic/pinned" class="fa fa-thumb-tack<!-- IF !topics.pinned --> hide<!-- ENDIF !topics.pinned -->"></i> <i component="topic/locked" class="fa fa-lock<!-- IF !topics.locked --> hide<!-- ENDIF !topics.locked -->"></i></strong>
									<!-- IF !topics.noAnchor -->
									<a component="topic/header" href="{config.relative_path}/topic/{topics.slug}" itemprop="url" class="topic-title">
										{topics.title}
									</a>
									<!-- ELSE -->
									<a component="topic/header" itemprop="url" class="topic-title">
										{topics.title}
									</a>
									<!-- ENDIF !topics.noAnchor -->
									<small>
										<!-- IF !topics.unreplied -->
										<span class="" component="topic/teaser">
											&nbsp;&middot;&nbsp;
											<a href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
												<span class="timeago" title="{topics.teaser.timestampISO}"></span>
											</a>
										</span>
										<!-- ENDIF !topics.unreplied -->
									</small>
								</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-6 category-stat stats-votes">
							<small>
								{topics.votes} [[global:votes]]
								&nbsp;&nbsp;&middot;&nbsp;&nbsp;
								{topics.postcount} [[global:posts]]
								&nbsp;&nbsp;&middot;&nbsp;&nbsp;
								{topics.viewcount} [[global:views]]
							</small>
						</div>
					</div>
				</div>
			</li>
			<!-- END topics -->
		</ul>
