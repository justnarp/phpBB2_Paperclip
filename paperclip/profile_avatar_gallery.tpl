				<!-- BEGIN switch_user_logged_out -->
				<div id="line3">
					<a href="{U_REGISTER}">{L_REGISTER}</a>
					&nbsp;&nbsp;
					<a href="{U_LOGIN_LOGOUT}">{L_LOGIN_LOGOUT}</a>
				</div>
				<!-- END switch_user_logged_out -->
				<!-- BEGIN switch_user_logged_in -->
				<div id="line3">
					<a href="{U_PRIVATEMSGS}">{PRIVATE_MESSAGE_INFO}</a>
					&nbsp;&nbsp;
					<a href="{U_PROFILE}">{L_PROFILE}</a>
					&nbsp;&nbsp;
					<a href="{U_LOGIN_LOGOUT}">{L_LOGIN_LOGOUT}</a>
				</div>
				<!-- END switch_user_logged_in -->
			</div>

			<form action="{S_PROFILE_ACTION}" method="post">

			<div id="forum">
			
				<h1><span class="h1_back"><img src="templates/paperclip/images/backarrow_blank.gif" alt="" /></span>{L_AVATAR_GALLERY}</h1>
				<h2>{L_CATEGORY}</h2>
				<p>{S_CATEGORY_SELECT}<br />
				<input type="submit" class="button" value="{L_GO}" name="avatargallery" />				
				</p>
				<p>
					<table border="0" cellpadding="3" cellspacing="1" width="497">
					<!-- BEGIN avatar_row -->
					<tr> 
						<!-- BEGIN avatar_column -->
						<td align="center"><img src="{avatar_row.avatar_column.AVATAR_IMAGE}" alt="{avatar_row.avatar_column.AVATAR_NAME}" title="{avatar_row.avatar_column.AVATAR_NAME}" /></td>
						<!-- END avatar_column -->
					</tr>
					<tr>
						<!-- BEGIN avatar_option_column -->
						<td align="center"><input type="radio" name="avatarselect" value="{avatar_row.avatar_option_column.S_OPTIONS_AVATAR}" class="radio" /></td>
						<!-- END avatar_option_column -->
					</tr>
					<!-- END avatar_row -->
					</table>
				</p>
				<h2 class="noborder"><br />{S_HIDDEN_FIELDS}
				<input type="submit" name="submitavatar" value="{L_SELECT_AVATAR}" class="button" />
				<input type="submit" name="cancelavatar" value="{L_RETURN_PROFILE}" class="button" />
				</h2>
			</div>

</form>
