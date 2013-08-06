<form $FormAttributes>
	<fieldset>
		<% loop Fields %>
			<input type="text" class="text-field" name="Search" id="$ID" placeholder="site search..." value="$SearchQuery" />
		<% end_loop %>
		<% loop Actions %>
			$Field
		<% end_loop %>
	</fieldset>
</form>
