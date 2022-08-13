{$head}

	<body>
		<div id="container">
			{$modals}
			
			<header>
				<h1><a class="logo-head" href="{$url}" title="welcome to {$serverName}"><img class="logo" src="{$CI->template->image_path}logo.png" width="212" height="262" alt="{$serverName}" title="{$serverName}" /></a></h1>
				
				<div id="top-menu" class="menu">
					<ul>
						{foreach from=$menu_top item=menu_1}
							<li><a {$menu_1.link}>{$menu_1.name}</a></li>
						{/foreach}
					</ul>
				</div>
			</header>
			
			<div class="search_bar">
			</div>
			<div id="main">
				<div class="middle_background"></div>
				
				<aside id="right">
					<div id="wlc_msg" class="welcome_to closeable closed" style="display:none">
						<a href="javascript:void(0)" class="close-btn"></a>
						<div class="body">
						<span>{$serverName}</span>
							<p>
						<div class="description">
									Welcome to WoW Reforged, a Neoclassical Vanilla project! 
							</br>	World of Warcraft as you never seen before! A balance between old and new; with both forgotten and
							</br>   pioneering features to come! Although we are in the early stages of development, we encourage you to join
							</br>	us either as a tester or become a part of our team as a developer.
							</br>  {if !$isOnline}<a href="{$url}register">Register an Account</a> | {/if}<b><a href="{$url}page/connect">How to Connect</a></b></div>
							<b><br/>
						</div>
					</div>
					
					{$page}
				</aside>
				
				<aside id="left">		
					<section class="box">
						<h3 class="head">Main menu</h3>
						<ul id="left-menu">
							{foreach from=$menu_side item=menu_2}
								<li>
									<a {$menu_2.link}>{$menu_2.name}</a>
									<p><a {$menu_2.link}>{$menu_2.name}</a></p>
								</li>
							{/foreach}
						</ul>
					</section>
					
					{foreach from=$sideboxes item=sidebox}
						<section class="sidebox box">
							{if !empty($sidebox.name)}
								<h4 class="head">{$sidebox.name}</h4>
							{/if}
							<div class="body">
								{$sidebox.data}
							</div>
						</section>
					{/foreach}
				</aside>
				
				<div class="clear"></div>
			</div>
		</div>
		
		<footer>
			<div class="footer">
				<center>
				</br></br>Copyright © {$serverName}™ 2019. All Rights Reserved.
				</br>Initial Code by E.Darksider - Reworked and Designed by OMGhixD
				</br>Customized by the Reforged Team
				</br>Email address: team@wowreforged.com
				</br></br> Powered by <a href="https://gitlab.com/omghixd/fusiongen">FusionGEN</center>
				<span></span>
			</div>
		</footer>
	</body>
</html>