## Module AWS.SES.Requests

#### `cloneReceiptRuleSet`

``` purescript
cloneReceiptRuleSet :: forall eff. Service -> CloneReceiptRuleSetRequest -> Aff (exception :: EXCEPTION | eff) CloneReceiptRuleSetResponse
```

<p>Creates a receipt rule set by cloning an existing one. All receipt rules and configurations are copied to the new receipt rule set and are completely independent of the source rule set.</p> <p>For information about setting up rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `createConfigurationSet`

``` purescript
createConfigurationSet :: forall eff. Service -> CreateConfigurationSetRequest -> Aff (exception :: EXCEPTION | eff) CreateConfigurationSetResponse
```

<p>Creates a configuration set.</p> <p>Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `createConfigurationSetEventDestination`

``` purescript
createConfigurationSetEventDestination :: forall eff. Service -> CreateConfigurationSetEventDestinationRequest -> Aff (exception :: EXCEPTION | eff) CreateConfigurationSetEventDestinationResponse
```

<p>Creates a configuration set event destination.</p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).</p> </note> <p>An event destination is the AWS service to which Amazon SES publishes the email sending events associated with a configuration set. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `createConfigurationSetTrackingOptions`

``` purescript
createConfigurationSetTrackingOptions :: forall eff. Service -> CreateConfigurationSetTrackingOptionsRequest -> Aff (exception :: EXCEPTION | eff) CreateConfigurationSetTrackingOptionsResponse
```

<p>Creates an association between a configuration set and a custom domain for open and click event tracking. </p> <p>By default, images and links used for tracking open and click events are hosted on domains operated by Amazon SES. You can configure a subdomain of your own to handle these events. For information about using configuration sets, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring Custom Domains to Handle Open and Click Tracking</a> in the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer Guide</a>.</p>

#### `createCustomVerificationEmailTemplate`

``` purescript
createCustomVerificationEmailTemplate :: forall eff. Service -> CreateCustomVerificationEmailTemplateRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates a new custom verification email template.</p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

#### `createReceiptFilter`

``` purescript
createReceiptFilter :: forall eff. Service -> CreateReceiptFilterRequest -> Aff (exception :: EXCEPTION | eff) CreateReceiptFilterResponse
```

<p>Creates a new IP address filter.</p> <p>For information about setting up IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `createReceiptRule`

``` purescript
createReceiptRule :: forall eff. Service -> CreateReceiptRuleRequest -> Aff (exception :: EXCEPTION | eff) CreateReceiptRuleResponse
```

<p>Creates a receipt rule.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `createReceiptRuleSet`

``` purescript
createReceiptRuleSet :: forall eff. Service -> CreateReceiptRuleSetRequest -> Aff (exception :: EXCEPTION | eff) CreateReceiptRuleSetResponse
```

<p>Creates an empty receipt rule set.</p> <p>For information about setting up receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `createTemplate`

``` purescript
createTemplate :: forall eff. Service -> CreateTemplateRequest -> Aff (exception :: EXCEPTION | eff) CreateTemplateResponse
```

<p>Creates an email template. Email templates enable you to send personalized email to one or more destinations in a single API operation. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `deleteConfigurationSet`

``` purescript
deleteConfigurationSet :: forall eff. Service -> DeleteConfigurationSetRequest -> Aff (exception :: EXCEPTION | eff) DeleteConfigurationSetResponse
```

<p>Deletes a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `deleteConfigurationSetEventDestination`

``` purescript
deleteConfigurationSetEventDestination :: forall eff. Service -> DeleteConfigurationSetEventDestinationRequest -> Aff (exception :: EXCEPTION | eff) DeleteConfigurationSetEventDestinationResponse
```

<p>Deletes a configuration set event destination. Configuration set event destinations are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `deleteConfigurationSetTrackingOptions`

``` purescript
deleteConfigurationSetTrackingOptions :: forall eff. Service -> DeleteConfigurationSetTrackingOptionsRequest -> Aff (exception :: EXCEPTION | eff) DeleteConfigurationSetTrackingOptionsResponse
```

<p>Deletes an association between a configuration set and a custom domain for open and click event tracking.</p> <p>By default, images and links used for tracking open and click events are hosted on domains operated by Amazon SES. You can configure a subdomain of your own to handle these events. For information about using configuration sets, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring Custom Domains to Handle Open and Click Tracking</a> in the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer Guide</a>.</p> <note> <p>Deleting this kind of association will result in emails sent using the specified configuration set to capture open and click events using the standard, Amazon SES-operated domains.</p> </note>

#### `deleteCustomVerificationEmailTemplate`

``` purescript
deleteCustomVerificationEmailTemplate :: forall eff. Service -> DeleteCustomVerificationEmailTemplateRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes an existing custom verification email template. </p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

#### `deleteIdentity`

``` purescript
deleteIdentity :: forall eff. Service -> DeleteIdentityRequest -> Aff (exception :: EXCEPTION | eff) DeleteIdentityResponse
```

<p>Deletes the specified identity (an email address or a domain) from the list of verified identities.</p> <p>You can execute this operation no more than once per second.</p>

#### `deleteIdentityPolicy`

``` purescript
deleteIdentityPolicy :: forall eff. Service -> DeleteIdentityPolicyRequest -> Aff (exception :: EXCEPTION | eff) DeleteIdentityPolicyResponse
```

<p>Deletes the specified sending authorization policy for the given identity (an email address or a domain). This API returns successfully even if a policy with the specified name does not exist.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `deleteReceiptFilter`

``` purescript
deleteReceiptFilter :: forall eff. Service -> DeleteReceiptFilterRequest -> Aff (exception :: EXCEPTION | eff) DeleteReceiptFilterResponse
```

<p>Deletes the specified IP address filter.</p> <p>For information about managing IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `deleteReceiptRule`

``` purescript
deleteReceiptRule :: forall eff. Service -> DeleteReceiptRuleRequest -> Aff (exception :: EXCEPTION | eff) DeleteReceiptRuleResponse
```

<p>Deletes the specified receipt rule.</p> <p>For information about managing receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `deleteReceiptRuleSet`

``` purescript
deleteReceiptRuleSet :: forall eff. Service -> DeleteReceiptRuleSetRequest -> Aff (exception :: EXCEPTION | eff) DeleteReceiptRuleSetResponse
```

<p>Deletes the specified receipt rule set and all of the receipt rules it contains.</p> <note> <p>The currently active rule set cannot be deleted.</p> </note> <p>For information about managing receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `deleteTemplate`

``` purescript
deleteTemplate :: forall eff. Service -> DeleteTemplateRequest -> Aff (exception :: EXCEPTION | eff) DeleteTemplateResponse
```

<p>Deletes an email template.</p> <p>You can execute this operation no more than once per second.</p>

#### `deleteVerifiedEmailAddress`

``` purescript
deleteVerifiedEmailAddress :: forall eff. Service -> DeleteVerifiedEmailAddressRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deprecated. Use the <code>DeleteIdentity</code> operation to delete email addresses and domains.</p>

#### `describeActiveReceiptRuleSet`

``` purescript
describeActiveReceiptRuleSet :: forall eff. Service -> DescribeActiveReceiptRuleSetRequest -> Aff (exception :: EXCEPTION | eff) DescribeActiveReceiptRuleSetResponse
```

<p>Returns the metadata and receipt rules for the receipt rule set that is currently active.</p> <p>For information about setting up receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `describeConfigurationSet`

``` purescript
describeConfigurationSet :: forall eff. Service -> DescribeConfigurationSetRequest -> Aff (exception :: EXCEPTION | eff) DescribeConfigurationSetResponse
```

<p>Returns the details of the specified configuration set. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `describeReceiptRule`

``` purescript
describeReceiptRule :: forall eff. Service -> DescribeReceiptRuleRequest -> Aff (exception :: EXCEPTION | eff) DescribeReceiptRuleResponse
```

<p>Returns the details of the specified receipt rule.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `describeReceiptRuleSet`

``` purescript
describeReceiptRuleSet :: forall eff. Service -> DescribeReceiptRuleSetRequest -> Aff (exception :: EXCEPTION | eff) DescribeReceiptRuleSetResponse
```

<p>Returns the details of the specified receipt rule set.</p> <p>For information about managing receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `getAccountSendingEnabled`

``` purescript
getAccountSendingEnabled :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) GetAccountSendingEnabledResponse
```

<p>Returns the email sending status of the Amazon SES account.</p> <p>You can execute this operation no more than once per second.</p>

#### `getCustomVerificationEmailTemplate`

``` purescript
getCustomVerificationEmailTemplate :: forall eff. Service -> GetCustomVerificationEmailTemplateRequest -> Aff (exception :: EXCEPTION | eff) GetCustomVerificationEmailTemplateResponse
```

<p>Returns the custom email verification template for the template name you specify.</p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

#### `getIdentityDkimAttributes`

``` purescript
getIdentityDkimAttributes :: forall eff. Service -> GetIdentityDkimAttributesRequest -> Aff (exception :: EXCEPTION | eff) GetIdentityDkimAttributesResponse
```

<p>Returns the current status of Easy DKIM signing for an entity. For domain name identities, this operation also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES has successfully verified that these tokens have been published.</p> <p>This operation takes a list of identities as input and returns the following information for each:</p> <ul> <li> <p>Whether Easy DKIM signing is enabled or disabled.</p> </li> <li> <p>A set of DKIM tokens that represent the identity. If the identity is an email address, the tokens represent the domain of that address.</p> </li> <li> <p>Whether Amazon SES has successfully verified the DKIM tokens published in the domain's DNS. This information is only returned for domain name identities, not for email addresses.</p> </li> </ul> <p>This operation is throttled at one request per second and can only get DKIM attributes for up to 100 identities at a time.</p> <p>For more information about creating DNS records using DKIM tokens, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html">Amazon SES Developer Guide</a>.</p>

#### `getIdentityMailFromDomainAttributes`

``` purescript
getIdentityMailFromDomainAttributes :: forall eff. Service -> GetIdentityMailFromDomainAttributesRequest -> Aff (exception :: EXCEPTION | eff) GetIdentityMailFromDomainAttributesResponse
```

<p>Returns the custom MAIL FROM attributes for a list of identities (email addresses : domains).</p> <p>This operation is throttled at one request per second and can only get custom MAIL FROM attributes for up to 100 identities at a time.</p>

#### `getIdentityNotificationAttributes`

``` purescript
getIdentityNotificationAttributes :: forall eff. Service -> GetIdentityNotificationAttributesRequest -> Aff (exception :: EXCEPTION | eff) GetIdentityNotificationAttributesResponse
```

<p>Given a list of verified identities (email addresses and/or domains), returns a structure describing identity notification attributes.</p> <p>This operation is throttled at one request per second and can only get notification attributes for up to 100 identities at a time.</p> <p>For more information about using notifications with Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

#### `getIdentityPolicies`

``` purescript
getIdentityPolicies :: forall eff. Service -> GetIdentityPoliciesRequest -> Aff (exception :: EXCEPTION | eff) GetIdentityPoliciesResponse
```

<p>Returns the requested sending authorization policies for the given identity (an email address or a domain). The policies are returned as a map of policy names to policy contents. You can retrieve a maximum of 20 policies at a time.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `getIdentityVerificationAttributes`

``` purescript
getIdentityVerificationAttributes :: forall eff. Service -> GetIdentityVerificationAttributesRequest -> Aff (exception :: EXCEPTION | eff) GetIdentityVerificationAttributesResponse
```

<p>Given a list of identities (email addresses and/or domains), returns the verification status and (for domain identities) the verification token for each identity.</p> <p>The verification status of an email address is "Pending" until the email address owner clicks the link within the verification email that Amazon SES sent to that address. If the email address owner clicks the link within 24 hours, the verification status of the email address changes to "Success". If the link is not clicked within 24 hours, the verification status changes to "Failed." In that case, if you still want to verify the email address, you must restart the verification process from the beginning.</p> <p>For domain identities, the domain's verification status is "Pending" as Amazon SES searches for the required TXT record in the DNS settings of the domain. When Amazon SES detects the record, the domain's verification status changes to "Success". If Amazon SES is unable to detect the record within 72 hours, the domain's verification status changes to "Failed." In that case, if you still want to verify the domain, you must restart the verification process from the beginning.</p> <p>This operation is throttled at one request per second and can only get verification attributes for up to 100 identities at a time.</p>

#### `getSendQuota`

``` purescript
getSendQuota :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) GetSendQuotaResponse
```

<p>Provides the sending limits for the Amazon SES account. </p> <p>You can execute this operation no more than once per second.</p>

#### `getSendStatistics`

``` purescript
getSendStatistics :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) GetSendStatisticsResponse
```

<p>Provides sending statistics for the Amazon SES account. The result is a list of data points, representing the last two weeks of sending activity. Each data point in the list contains statistics for a 15-minute period of time.</p> <p>You can execute this operation no more than once per second.</p>

#### `getTemplate`

``` purescript
getTemplate :: forall eff. Service -> GetTemplateRequest -> Aff (exception :: EXCEPTION | eff) GetTemplateResponse
```

<p>Displays the template object (which includes the Subject line, HTML part and text part) for the template you specify.</p> <p>You can execute this operation no more than once per second.</p>

#### `listConfigurationSets`

``` purescript
listConfigurationSets :: forall eff. Service -> ListConfigurationSetsRequest -> Aff (exception :: EXCEPTION | eff) ListConfigurationSetsResponse
```

<p>Provides a list of the configuration sets associated with your Amazon SES account. For information about using configuration sets, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Monitoring Your Amazon SES Sending Activity</a> in the <i>Amazon SES Developer Guide.</i> </p> <p>You can execute this operation no more than once per second. This operation will return up to 1,000 configuration sets each time it is run. If your Amazon SES account has more than 1,000 configuration sets, this operation will also return a NextToken element. You can then execute the <code>ListConfigurationSets</code> operation again, passing the <code>NextToken</code> parameter and the value of the NextToken element to retrieve additional results.</p>

#### `listCustomVerificationEmailTemplates`

``` purescript
listCustomVerificationEmailTemplates :: forall eff. Service -> ListCustomVerificationEmailTemplatesRequest -> Aff (exception :: EXCEPTION | eff) ListCustomVerificationEmailTemplatesResponse
```

<p>Lists the existing custom verification email templates for your account.</p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

#### `listIdentities`

``` purescript
listIdentities :: forall eff. Service -> ListIdentitiesRequest -> Aff (exception :: EXCEPTION | eff) ListIdentitiesResponse
```

<p>Returns a list containing all of the identities (email addresses and domains) for your AWS account, regardless of verification status.</p> <p>You can execute this operation no more than once per second.</p>

#### `listIdentityPolicies`

``` purescript
listIdentityPolicies :: forall eff. Service -> ListIdentityPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListIdentityPoliciesResponse
```

<p>Returns a list of sending authorization policies that are attached to the given identity (an email address or a domain). This API returns only a list. If you want the actual policy content, you can use <code>GetIdentityPolicies</code>.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `listReceiptFilters`

``` purescript
listReceiptFilters :: forall eff. Service -> ListReceiptFiltersRequest -> Aff (exception :: EXCEPTION | eff) ListReceiptFiltersResponse
```

<p>Lists the IP address filters associated with your AWS account.</p> <p>For information about managing IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `listReceiptRuleSets`

``` purescript
listReceiptRuleSets :: forall eff. Service -> ListReceiptRuleSetsRequest -> Aff (exception :: EXCEPTION | eff) ListReceiptRuleSetsResponse
```

<p>Lists the receipt rule sets that exist under your AWS account. If there are additional receipt rule sets to be retrieved, you will receive a <code>NextToken</code> that you can provide to the next call to <code>ListReceiptRuleSets</code> to retrieve the additional entries.</p> <p>For information about managing receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `listTemplates`

``` purescript
listTemplates :: forall eff. Service -> ListTemplatesRequest -> Aff (exception :: EXCEPTION | eff) ListTemplatesResponse
```

<p>Lists the email templates present in your Amazon SES account.</p> <p>You can execute this operation no more than once per second.</p>

#### `listVerifiedEmailAddresses`

``` purescript
listVerifiedEmailAddresses :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) ListVerifiedEmailAddressesResponse
```

<p>Deprecated. Use the <code>ListIdentities</code> operation to list the email addresses and domains associated with your account.</p>

#### `putIdentityPolicy`

``` purescript
putIdentityPolicy :: forall eff. Service -> PutIdentityPolicyRequest -> Aff (exception :: EXCEPTION | eff) PutIdentityPolicyResponse
```

<p>Adds or updates a sending authorization policy for the specified identity (an email address or a domain).</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `reorderReceiptRuleSet`

``` purescript
reorderReceiptRuleSet :: forall eff. Service -> ReorderReceiptRuleSetRequest -> Aff (exception :: EXCEPTION | eff) ReorderReceiptRuleSetResponse
```

<p>Reorders the receipt rules within a receipt rule set.</p> <note> <p>All of the rules in the rule set must be represented in this request. That is, this API will return an error if the reorder request doesn't explicitly position all of the rules.</p> </note> <p>For information about managing receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `sendBounce`

``` purescript
sendBounce :: forall eff. Service -> SendBounceRequest -> Aff (exception :: EXCEPTION | eff) SendBounceResponse
```

<p>Generates and sends a bounce message to the sender of an email you received through Amazon SES. You can only use this API on an email up to 24 hours after you receive it.</p> <note> <p>You cannot use this API to send generic bounces for mail that was not received by Amazon SES.</p> </note> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `sendBulkTemplatedEmail`

``` purescript
sendBulkTemplatedEmail :: forall eff. Service -> SendBulkTemplatedEmailRequest -> Aff (exception :: EXCEPTION | eff) SendBulkTemplatedEmailResponse
```

<p>Composes an email message to multiple destinations. The message body is created using an email template.</p> <p>In order to send email using the <code>SendBulkTemplatedEmail</code> operation, your call to the API must meet the following requirements:</p> <ul> <li> <p>The call must refer to an existing email template. You can create email templates using the <a>CreateTemplate</a> operation.</p> </li> <li> <p>The message must be sent from a verified email address or domain.</p> </li> <li> <p>If your account is still in the Amazon SES sandbox, you may only send to verified addresses or domains, or to email addresses associated with the Amazon SES Mailbox Simulator. For more information, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i> </p> </li> <li> <p>The total size of the message, including attachments, must be less than 10 MB.</p> </li> <li> <p>Each <code>Destination</code> parameter must include at least one recipient email address. The recipient address can be a To: address, a CC: address, or a BCC: address. If a recipient email address is invalid (that is, it is not in the format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire message will be rejected, even if the message contains other recipients that are valid.</p> </li> </ul>

#### `sendCustomVerificationEmail`

``` purescript
sendCustomVerificationEmail :: forall eff. Service -> SendCustomVerificationEmailRequest -> Aff (exception :: EXCEPTION | eff) SendCustomVerificationEmailResponse
```

<p>Adds an email address to the list of identities for your Amazon SES account and attempts to verify it. As a result of executing this operation, a customized verification email is sent to the specified address.</p> <p>To use this operation, you must first create a custom verification email template. For more information about creating and using custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

#### `sendEmail`

``` purescript
sendEmail :: forall eff. Service -> SendEmailRequest -> Aff (exception :: EXCEPTION | eff) SendEmailResponse
```

<p>Composes an email message and immediately queues it for sending. In order to send email using the <code>SendEmail</code> operation, your message must meet the following requirements:</p> <ul> <li> <p>The message must be sent from a verified email address or domain. If you attempt to send email using a non-verified address or domain, the operation will result in an "Email address not verified" error. </p> </li> <li> <p>If your account is still in the Amazon SES sandbox, you may only send to verified addresses or domains, or to email addresses associated with the Amazon SES Mailbox Simulator. For more information, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i> </p> </li> <li> <p>The total size of the message, including attachments, must be smaller than 10 MB.</p> </li> <li> <p>The message must include at least one recipient email address. The recipient address can be a To: address, a CC: address, or a BCC: address. If a recipient email address is invalid (that is, it is not in the format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire message will be rejected, even if the message contains other recipients that are valid.</p> </li> <li> <p>The message may not include more than 50 recipients, across the To:, CC: and BCC: fields. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call the <code>SendEmail</code> operation several times to send the message to each group.</p> </li> </ul> <important> <p>For every message that you send, the total number of recipients (including each recipient in the To:, CC: and BCC: fields) is counted against the maximum number of emails you can send in a 24-hour period (your <i>sending quota</i>). For more information about sending quotas in Amazon SES, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html">Managing Your Amazon SES Sending Limits</a> in the <i>Amazon SES Developer Guide.</i> </p> </important>

#### `sendRawEmail`

``` purescript
sendRawEmail :: forall eff. Service -> SendRawEmailRequest -> Aff (exception :: EXCEPTION | eff) SendRawEmailResponse
```

<p>Composes an email message and immediately queues it for sending. When calling this operation, you may specify the message headers as well as the content. The <code>SendRawEmail</code> operation is particularly useful for sending multipart MIME emails (such as those that contain both a plain-text and an HTML version). </p> <p>In order to send email using the <code>SendRawEmail</code> operation, your message must meet the following requirements:</p> <ul> <li> <p>The message must be sent from a verified email address or domain. If you attempt to send email using a non-verified address or domain, the operation will result in an "Email address not verified" error. </p> </li> <li> <p>If your account is still in the Amazon SES sandbox, you may only send to verified addresses or domains, or to email addresses associated with the Amazon SES Mailbox Simulator. For more information, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i> </p> </li> <li> <p>The total size of the message, including attachments, must be smaller than 10 MB.</p> </li> <li> <p>The message must include at least one recipient email address. The recipient address can be a To: address, a CC: address, or a BCC: address. If a recipient email address is invalid (that is, it is not in the format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire message will be rejected, even if the message contains other recipients that are valid.</p> </li> <li> <p>The message may not include more than 50 recipients, across the To:, CC: and BCC: fields. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call the <code>SendRawEmail</code> operation several times to send the message to each group.</p> </li> </ul> <important> <p>For every message that you send, the total number of recipients (including each recipient in the To:, CC: and BCC: fields) is counted against the maximum number of emails you can send in a 24-hour period (your <i>sending quota</i>). For more information about sending quotas in Amazon SES, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html">Managing Your Amazon SES Sending Limits</a> in the <i>Amazon SES Developer Guide.</i> </p> </important> <p>Additionally, keep the following considerations in mind when using the <code>SendRawEmail</code> operation:</p> <ul> <li> <p>Although you can customize the message headers when using the <code>SendRawEmail</code> operation, Amazon SES will automatically apply its own <code>Message-ID</code> and <code>Date</code> headers; if you passed these headers when creating the message, they will be overwritten by the values that Amazon SES provides.</p> </li> <li> <p>If you are using sending authorization to send on behalf of another user, <code>SendRawEmail</code> enables you to specify the cross-account identity for the email's Source, From, and Return-Path parameters in one of two ways: you can pass optional parameters <code>SourceArn</code>, <code>FromArn</code>, and/or <code>ReturnPathArn</code> to the API, or you can include the following X-headers in the header of your raw email:</p> <ul> <li> <p> <code>X-SES-SOURCE-ARN</code> </p> </li> <li> <p> <code>X-SES-FROM-ARN</code> </p> </li> <li> <p> <code>X-SES-RETURN-PATH-ARN</code> </p> </li> </ul> <important> <p>Do not include these X-headers in the DKIM signature; Amazon SES will remove them before sending the email.</p> </important> <p>For most common sending authorization scenarios, we recommend that you specify the <code>SourceIdentityArn</code> parameter and not the <code>FromIdentityArn</code> or <code>ReturnPathIdentityArn</code> parameters. If you only specify the <code>SourceIdentityArn</code> parameter, Amazon SES will set the From and Return Path addresses to the identity specified in <code>SourceIdentityArn</code>. For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Using Sending Authorization with Amazon SES</a> in the <i>Amazon SES Developer Guide.</i> </p> </li> </ul>

#### `sendTemplatedEmail`

``` purescript
sendTemplatedEmail :: forall eff. Service -> SendTemplatedEmailRequest -> Aff (exception :: EXCEPTION | eff) SendTemplatedEmailResponse
```

<p>Composes an email message using an email template and immediately queues it for sending.</p> <p>In order to send email using the <code>SendTemplatedEmail</code> operation, your call to the API must meet the following requirements:</p> <ul> <li> <p>The call must refer to an existing email template. You can create email templates using the <a>CreateTemplate</a> operation.</p> </li> <li> <p>The message must be sent from a verified email address or domain.</p> </li> <li> <p>If your account is still in the Amazon SES sandbox, you may only send to verified addresses or domains, or to email addresses associated with the Amazon SES Mailbox Simulator. For more information, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i> </p> </li> <li> <p>The total size of the message, including attachments, must be less than 10 MB.</p> </li> <li> <p>Calls to the <code>SendTemplatedEmail</code> operation may only include one <code>Destination</code> parameter. A destination is a set of recipients who will receive the same version of the email. The <code>Destination</code> parameter can include up to 50 recipients, across the To:, CC: and BCC: fields.</p> </li> <li> <p>The <code>Destination</code> parameter must include at least one recipient email address. The recipient address can be a To: address, a CC: address, or a BCC: address. If a recipient email address is invalid (that is, it is not in the format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire message will be rejected, even if the message contains other recipients that are valid.</p> </li> </ul>

#### `setActiveReceiptRuleSet`

``` purescript
setActiveReceiptRuleSet :: forall eff. Service -> SetActiveReceiptRuleSetRequest -> Aff (exception :: EXCEPTION | eff) SetActiveReceiptRuleSetResponse
```

<p>Sets the specified receipt rule set as the active receipt rule set.</p> <note> <p>To disable your email-receiving through Amazon SES completely, you can call this API with RuleSetName set to null.</p> </note> <p>For information about managing receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `setIdentityDkimEnabled`

``` purescript
setIdentityDkimEnabled :: forall eff. Service -> SetIdentityDkimEnabledRequest -> Aff (exception :: EXCEPTION | eff) SetIdentityDkimEnabledResponse
```

<p>Enables or disables Easy DKIM signing of email sent from an identity:</p> <ul> <li> <p>If Easy DKIM signing is enabled for a domain name identity (such as <code>example.com</code>), then Amazon SES will DKIM-sign all email sent by addresses under that domain name (for example, <code>user@example.com</code>).</p> </li> <li> <p>If Easy DKIM signing is enabled for an email address, then Amazon SES will DKIM-sign all email sent by that email address.</p> </li> </ul> <p>For email addresses (for example, <code>user@example.com</code>), you can only enable Easy DKIM signing if the corresponding domain (in this case, <code>example.com</code>) has been set up for Easy DKIM using the AWS Console or the <code>VerifyDomainDkim</code> operation.</p> <p>You can execute this operation no more than once per second.</p> <p>For more information about Easy DKIM signing, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>

#### `setIdentityFeedbackForwardingEnabled`

``` purescript
setIdentityFeedbackForwardingEnabled :: forall eff. Service -> SetIdentityFeedbackForwardingEnabledRequest -> Aff (exception :: EXCEPTION | eff) SetIdentityFeedbackForwardingEnabledResponse
```

<p>Given an identity (an email address or a domain), enables or disables whether Amazon SES forwards bounce and complaint notifications as email. Feedback forwarding can only be disabled when Amazon Simple Notification Service (Amazon SNS) topics are specified for both bounces and complaints.</p> <note> <p>Feedback forwarding does not apply to delivery notifications. Delivery notifications are only available through Amazon SNS.</p> </note> <p>You can execute this operation no more than once per second.</p> <p>For more information about using notifications with Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

#### `setIdentityHeadersInNotificationsEnabled`

``` purescript
setIdentityHeadersInNotificationsEnabled :: forall eff. Service -> SetIdentityHeadersInNotificationsEnabledRequest -> Aff (exception :: EXCEPTION | eff) SetIdentityHeadersInNotificationsEnabledResponse
```

<p>Given an identity (an email address or a domain), sets whether Amazon SES includes the original email headers in the Amazon Simple Notification Service (Amazon SNS) notifications of a specified type.</p> <p>You can execute this operation no more than once per second.</p> <p>For more information about using notifications with Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

#### `setIdentityMailFromDomain`

``` purescript
setIdentityMailFromDomain :: forall eff. Service -> SetIdentityMailFromDomainRequest -> Aff (exception :: EXCEPTION | eff) SetIdentityMailFromDomainResponse
```

<p>Enables or disables the custom MAIL FROM domain setup for a verified identity (an email address or a domain).</p> <important> <p>To send emails using the specified MAIL FROM domain, you must add an MX record to your MAIL FROM domain's DNS settings. If you want your emails to pass Sender Policy Framework (SPF) checks, you must also add or update an SPF record. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-set.html">Amazon SES Developer Guide</a>.</p> </important> <p>You can execute this operation no more than once per second.</p>

#### `setIdentityNotificationTopic`

``` purescript
setIdentityNotificationTopic :: forall eff. Service -> SetIdentityNotificationTopicRequest -> Aff (exception :: EXCEPTION | eff) SetIdentityNotificationTopicResponse
```

<p>Given an identity (an email address or a domain), sets the Amazon Simple Notification Service (Amazon SNS) topic to which Amazon SES will publish bounce, complaint, and/or delivery notifications for emails sent with that identity as the <code>Source</code>.</p> <note> <p>Unless feedback forwarding is enabled, you must specify Amazon SNS topics for bounce and complaint notifications. For more information, see <code>SetIdentityFeedbackForwardingEnabled</code>.</p> </note> <p>You can execute this operation no more than once per second.</p> <p>For more information about feedback notification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

#### `setReceiptRulePosition`

``` purescript
setReceiptRulePosition :: forall eff. Service -> SetReceiptRulePositionRequest -> Aff (exception :: EXCEPTION | eff) SetReceiptRulePositionResponse
```

<p>Sets the position of the specified receipt rule in the receipt rule set.</p> <p>For information about managing receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `testRenderTemplate`

``` purescript
testRenderTemplate :: forall eff. Service -> TestRenderTemplateRequest -> Aff (exception :: EXCEPTION | eff) TestRenderTemplateResponse
```

<p>Creates a preview of the MIME content of an email when provided with a template and a set of replacement data.</p> <p>You can execute this operation no more than once per second.</p>

#### `updateAccountSendingEnabled`

``` purescript
updateAccountSendingEnabled :: forall eff. Service -> UpdateAccountSendingEnabledRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Enables or disables email sending across your entire Amazon SES account. You can use this operation in conjunction with Amazon CloudWatch alarms to temporarily pause email sending across your Amazon SES account when reputation metrics (such as your bounce on complaint rate) reach certain thresholds.</p> <p>You can execute this operation no more than once per second.</p>

#### `updateConfigurationSetEventDestination`

``` purescript
updateConfigurationSetEventDestination :: forall eff. Service -> UpdateConfigurationSetEventDestinationRequest -> Aff (exception :: EXCEPTION | eff) UpdateConfigurationSetEventDestinationResponse
```

<p>Updates the event destination of a configuration set. Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about using configuration sets, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Monitoring Your Amazon SES Sending Activity</a> in the <i>Amazon SES Developer Guide.</i> </p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).</p> </note> <p>You can execute this operation no more than once per second.</p>

#### `updateConfigurationSetReputationMetricsEnabled`

``` purescript
updateConfigurationSetReputationMetricsEnabled :: forall eff. Service -> UpdateConfigurationSetReputationMetricsEnabledRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Enables or disables the publishing of reputation metrics for emails sent using a specific configuration set. Reputation metrics include bounce and complaint rates. These metrics are published to Amazon CloudWatch. By using Amazon CloudWatch, you can create alarms when bounce or complaint rates exceed a certain threshold.</p> <p>You can execute this operation no more than once per second.</p>

#### `updateConfigurationSetSendingEnabled`

``` purescript
updateConfigurationSetSendingEnabled :: forall eff. Service -> UpdateConfigurationSetSendingEnabledRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Enables or disables email sending for messages sent using a specific configuration set. You can use this operation in conjunction with Amazon CloudWatch alarms to temporarily pause email sending for a configuration set when the reputation metrics for that configuration set (such as your bounce on complaint rate) reach certain thresholds.</p> <p>You can execute this operation no more than once per second.</p>

#### `updateConfigurationSetTrackingOptions`

``` purescript
updateConfigurationSetTrackingOptions :: forall eff. Service -> UpdateConfigurationSetTrackingOptionsRequest -> Aff (exception :: EXCEPTION | eff) UpdateConfigurationSetTrackingOptionsResponse
```

<p>Modifies an association between a configuration set and a custom domain for open and click event tracking. </p> <p>By default, images and links used for tracking open and click events are hosted on domains operated by Amazon SES. You can configure a subdomain of your own to handle these events. For information about using configuration sets, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring Custom Domains to Handle Open and Click Tracking</a> in the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer Guide</a>.</p>

#### `updateCustomVerificationEmailTemplate`

``` purescript
updateCustomVerificationEmailTemplate :: forall eff. Service -> UpdateCustomVerificationEmailTemplateRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates an existing custom verification email template.</p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

#### `updateReceiptRule`

``` purescript
updateReceiptRule :: forall eff. Service -> UpdateReceiptRuleRequest -> Aff (exception :: EXCEPTION | eff) UpdateReceiptRuleResponse
```

<p>Updates a receipt rule.</p> <p>For information about managing receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `updateTemplate`

``` purescript
updateTemplate :: forall eff. Service -> UpdateTemplateRequest -> Aff (exception :: EXCEPTION | eff) UpdateTemplateResponse
```

<p>Updates an email template. Email templates enable you to send personalized email to one or more destinations in a single API operation. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

#### `verifyDomainDkim`

``` purescript
verifyDomainDkim :: forall eff. Service -> VerifyDomainDkimRequest -> Aff (exception :: EXCEPTION | eff) VerifyDomainDkimResponse
```

<p>Returns a set of DKIM tokens for a domain. DKIM <i>tokens</i> are character strings that represent your domain's identity. Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign email originating from that domain.</p> <p>You can execute this operation no more than once per second.</p> <p>To enable or disable Easy DKIM signing for a domain, use the <code>SetIdentityDkimEnabled</code> operation.</p> <p>For more information about creating DNS records using DKIM tokens, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html">Amazon SES Developer Guide</a>.</p>

#### `verifyDomainIdentity`

``` purescript
verifyDomainIdentity :: forall eff. Service -> VerifyDomainIdentityRequest -> Aff (exception :: EXCEPTION | eff) VerifyDomainIdentityResponse
```

<p>Adds a domain to the list of identities for your Amazon SES account and attempts to verify it. For more information about verifying domains, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i> </p> <p>You can execute this operation no more than once per second.</p>

#### `verifyEmailAddress`

``` purescript
verifyEmailAddress :: forall eff. Service -> VerifyEmailAddressRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deprecated. Use the <code>VerifyEmailIdentity</code> operation to verify a new email address.</p>

#### `verifyEmailIdentity`

``` purescript
verifyEmailIdentity :: forall eff. Service -> VerifyEmailIdentityRequest -> Aff (exception :: EXCEPTION | eff) VerifyEmailIdentityResponse
```

<p>Adds an email address to the list of identities for your Amazon SES account and attempts to verify it. As a result of executing this operation, a verification email is sent to the specified address.</p> <p>You can execute this operation no more than once per second.</p>


