<nav class="primary">
	<span class="nav-open-button">²</span>
	<ul class="dropdown-menu">
		<% loop $Menu(1) %>
			<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
		<% end_loop %>
	</ul>
</nav>
