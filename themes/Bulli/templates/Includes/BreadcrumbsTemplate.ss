<% if Pages %>
/&nbsp;<a href="$BaseHref">home</a>
	<% loop Pages %>
		&nbsp;/&nbsp;<% if Last %>$Title.XML<% else %><a href="$Link">$MenuTitle.XML</a><% end_if %>
	<% end_loop %>
<% end_if %>