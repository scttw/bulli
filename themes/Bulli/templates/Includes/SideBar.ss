<div>
	<% if $Menu(2) %>
		<nav class="secondary">
			<ul id="subNav" class="nav nav-tabs nav-stacked">
				<% with $Level(1) %>
					<% include SidebarMenu %>
				<% end_with %>
			</ul>
		</nav>
	<% end_if %>
</div>
