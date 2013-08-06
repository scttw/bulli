            <header class="banner" role="banner">
                <div class="logo"><h1><a href="$BaseHref">Buli Anglican Church</a></h1></div>
                <nav id="mainnav" class="mainnav navbar">
		        <ul class="nav">
		           <% control Menu(1) %>
		              <li class="$LinkingMode <% if $First %>first<% end_if %><% if $Children %> dropdown<% end_if %>"><a class="$LinkingMode<% if $Children %> dropdown-toggle" data-toggle="dropdown<% end_if %>" href="$Link">$MenuTitle<% if $Children %> <span class="caret"></span><% end_if %> </a>
		                <% if $Children %>
		                <% if ClassName != HomePage %>
		                  <ul class="dropdown-menu">
		                    <% include TopbarMenu %>
		                  </ul>
		                <% end_if %>
		                <% end_if %>
		              </li>
		           <% end_control %>
				</ul>
                </nav>
                <div class="search">
                    
                    $SearchForm
                </div>
            </header>