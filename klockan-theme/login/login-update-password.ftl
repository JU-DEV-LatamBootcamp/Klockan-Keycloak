<#import "template.ftl" as layout>
<#import "password-commons.ftl" as passwordCommons>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
   
    <#if section = "header">
    <#elseif section = "form">
		<div id="kc-form">
			<div id="kc-form-wrapper">
				<div id="kc-logo">
				<img src="${url.resourcesPath}/svg/klockan-logo.svg" alt="Klockan Logo" id="kc-logo-img" />
				</div>
				<div id="kc-title">${msg("updatePasswordTitle")}</div>
				<form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
					<div class="${properties.kcFormGroupClass!}">
					
						<div class="${properties.kcInputWrapperClass!}">
							<div class="${properties.kcInputGroup!}">
								<input type="password" id="password-new"  name="password-new" class="${properties.kcInputClass!}"
									autofocus autocomplete="new-password"
									placeholder="New Password"
									aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
								/>
							</div>

							<#if messagesPerField.existsError('password')>
								<span id="input-error" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
									${kcSanitize(messagesPerField.get('password'))?no_esc}
								</span>
							</#if>
						</div>
					</div>

					<div class="${properties.kcFormGroupClass!}">
					
						<div class="${properties.kcInputWrapperClass!}">
							<div class="${properties.kcInputGroup!}">
								<input type="password" id="password-confirm" name="password-confirm"
									class="${properties.kcInputClass!}"
									autocomplete="new-password"
									placeholder="Confirm Password"
									aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
								/>

							</div>

							<#if messagesPerField.existsError('password-confirm')>
								<span id="input-error" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
									${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
								</span>
							</#if>

						</div>
					</div>

					<div class="${properties.kcFormGroupClass!}">
						<div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
							<#if isAppInitiatedAction??>
								<input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" />
								<button class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" />${msg("doCancel")}</button>
							<#else>
								<input id="kc-button" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" />
							</#if>
						</div>
					</div>
				</form>
			</div>
		</div>
        <script type="module" src="${url.resourcesPath}/js/passwordVisibility.js"></script>
    </#if>
</@layout.registrationLayout>