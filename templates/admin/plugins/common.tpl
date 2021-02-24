<div class="col-lg-9">	
	<div class="panel panel-default">
		<div class="panel-heading">COMMON Theme Settings</div>
		<div class="panel-body">
			<form class="row">
				<div class="col-xs-12">
					<label>Disable Masonry
						<input id="disableMasonry" type="checkbox" data-field="disableMasonry" />
					</label>
				</div>
				<div class="col-xs-12">
					<label>Banner Message
						<input id="bannerMessage" type="text" data-field="bannerMessage" style="width: 100%" />
						<p><small>Leave blank to disable banner</small></p>
					</label>
				</div>
			</form>
		</div>
	</div>
</div>

<div class="col-lg-3 acp-sidebar">
	<div class="panel panel-default">
		<div class="panel-heading">Save Settings</div>
		<div class="panel-body">
			<button class="btn btn-primary btn-md" id="save">Save Changes</button>
			<button class="btn btn-warning btn-md" id="revert">Revert Changes</button>
		</div>
	</div>
</div>

<script>
	require(['admin/settings'], function(Settings) {
		Settings.prepare();
	});
</script>
