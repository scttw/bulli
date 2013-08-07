			<div class="strap row-fluid">
                <% if $HasBanner %>
                    <div class="span12" style="margin-top: 20px;">$BannerLeft</div>
                <% end_if %>
            </div>
            <div class="row-fluid">&nbsp;</div>
            <div class="row-fluid">
					<% loop HomepageFeatures %>
                    <div class="span6">
                        <h1>$Title</h1>
                        <div class="content">
                            $Stuff
                        </div>
                    </div>                        
                    <% end_loop %>

                <div class="breaker"></div>
            </div>

