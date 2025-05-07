<#import "template.ftl" as layout>
<@layout.emailLayout>
${kcSanitize(msg("emailVerificationBodyHtml",link, linkExpiration, realmName, user.firstName, linkExpirationFormatter(linkExpiration)))?no_esc}
</@layout.emailLayout>
