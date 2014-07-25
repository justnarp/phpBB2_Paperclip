
<script language="JavaScript" type="text/javascript">
<!--
function checkForm(formObj) {

	formErrors = false;    

	if (formObj.message.value.length < 2) {
		formErrors = "{L_EMPTY_MESSAGE_EMAIL}";
	}
	else if ( formObj.subject.value.length < 2)
	{
		formErrors = "{L_EMPTY_SUBJECT_EMAIL}";
	}

	if (formErrors) {
		alert(formErrors);
		return false;
	}
}
//-->
</script>

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
			
			<form action="{S_POST_ACTION}" method="post" name="post" onSubmit="return checkForm(this)">

			<div id="forum">
			
				<h1><span class="h1_back"><a href="{U_VIEW_FORUM}"><img src="templates/paperclip/images/backarrow.gif" alt="" /></a></span>{L_SEND_EMAIL_MSG}</h1>
				<h2 class="noborder"><a href="javascript:;" tabindex="1" onClick="switchMenu('show_options');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{L_OPTIONS}</a>
				{ERROR_BOX}
				</h2>

					<div id="show_options" class="show_userdetails" style="display: none;">
						<div class="line_show" style="padding: 10px;">
							<p><input type="checkbox" name="cc_email"  value="1" checked="checked" class="radio" />
							{L_CC_EMAIL}</p>
						</div>
					</div>

				<h2>{L_RECIPIENT}</h2>
				<p>{USERNAME}</p>
				<h2>{L_SUBJECT}</h2>
				<p><input type="text" name="subject" maxlength="100" tabindex="1" class="post" value="{SUBJECT}" /></p>
				<h2>{L_MESSAGE_BODY}</h2>
				<p>{L_MESSAGE_BODY_DESC}</p>
				<p><textarea name="message" rows="25" cols="40" wrap="virtual" tabindex="2" class="post">{MESSAGE}</textarea></p>
				<h2 class="noborder"><br />
				<input type="submit" tabindex="3" name="submit" class="button" value="{L_SEND_EMAIL}" />
				{S_HIDDEN_FIELDS}
				</h2>
			</div>
			</form>