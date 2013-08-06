<%--Include SidebarMenu recursively --%>
<% if $Children %>
	<% loop $Children %>
		<% if ClassName != Feature %>
		<li class="$LinkingMode">
			<a href="$Link" class="$LinkingMode" title="Go to the $Title.XML page">
				<span class="text">$MenuTitle.XML</span>
			</a>
			<% if $Children %>
				<% if LinkOrSection != link %> 
					<ul>
						<% include SidebarMenu %>
					</ul>
				<% end_if %>
			<% end_if %>
		</li>
		<% end_if %>
	<% end_loop %>
<% end_if %>
