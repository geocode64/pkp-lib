{**
 * templates/controllers/tab/settings/plugins/plugins.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * List installed and available plugins in a tabbed interface.
 *}

<script type="text/javascript">
	// Attach the JS file tab handler.
	$(function() {ldelim}
		$('#pluginsTabs').pkpHandler(
				'$.pkp.controllers.TabHandler', {ldelim}
					notScrollable: true
				{rdelim});
	{rdelim});
</script>
<div id="pluginsTabs" class="pkp_controllers_tab">
	<ul>
		<li><a href="#installedPluginsDiv">{translate key="manager.plugins.installed"}</a></li>
		<li><a href="#pluginGalleryDiv">{translate key="manager.plugins.pluginGallery"}</a></li>
	</ul>
	<div id="installedPluginsDiv">
		{url|assign:pluginGridUrl router=$smarty.const.ROUTE_COMPONENT component="grid.settings.plugins.SettingsPluginGridHandler" op="fetchGrid" escape=false}
		{load_url_in_div id="pluginGridContainer" url=$pluginGridUrl}
	</div>
	<div id="pluginGalleryDiv">
		{url|assign:pluginGalleryGridUrl router=$smarty.const.ROUTE_COMPONENT component="grid.plugins.PluginGalleryGridHandler" op="fetchGrid" escape=false}
		{load_url_in_div id="pluginGalleryGridContainer" url=$pluginGalleryGridUrl}
	</div>
</div>
