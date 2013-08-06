			<div class="strap row-fluid">
                <% if $HasBanner %>
                    <div class="span6" style="margin-top: 20px;">$BannerLeft</div>
                    <div class="span5" style="margin-top: 20px;">$BannerRight</div>
                <% end_if %>
            </div>
            <div class="row-fluid">&nbsp;</div>
            <div class="row-fluid">
                <div class="span8 lefstedge">
					<article>
						<h1>$Title</h1>
						<div class="content">
							$Content
						</div>
					</article>
						$Form
						$PageComments
                </div>
                <div class="span3 pull-right" style="margin-right: 20px;">
                	<% include SideBar %>
                </div>
                <div class="breaker"></div>
            </div>

