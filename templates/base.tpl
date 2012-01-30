{block name="dummy"}{* dummy block required for template inheritance and overriding to work properly *}
<!DOCTYPE html>
<html>

{include file="header.tpl"}

	<body>
		<a name="top"></a>
{include file="topbar.tpl"}

		{block name="content"}{/block}

{include file="footer.tpl"}

</body>
</html>
{/block}
