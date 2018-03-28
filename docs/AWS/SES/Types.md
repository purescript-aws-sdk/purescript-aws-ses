## Module AWS.SES.Types

#### `options`

``` purescript
options :: Options
```

#### `AccountSendingPausedException`

``` purescript
newtype AccountSendingPausedException
  = AccountSendingPausedException NoArguments
```

<p>Indicates that email sending is disabled for your entire Amazon SES account.</p> <p>You can enable or disable email sending for your Amazon SES account using <a>UpdateAccountSendingEnabled</a>.</p>

##### Instances
``` purescript
Newtype AccountSendingPausedException _
Generic AccountSendingPausedException _
Show AccountSendingPausedException
Decode AccountSendingPausedException
Encode AccountSendingPausedException
```

#### `AddHeaderAction`

``` purescript
newtype AddHeaderAction
  = AddHeaderAction { "HeaderName" :: HeaderName, "HeaderValue" :: HeaderValue }
```

<p>When included in a receipt rule, this action adds a header to the received email.</p> <p>For information about adding a header using a receipt rule, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype AddHeaderAction _
Generic AddHeaderAction _
Show AddHeaderAction
Decode AddHeaderAction
Encode AddHeaderAction
```

#### `newAddHeaderAction`

``` purescript
newAddHeaderAction :: HeaderName -> HeaderValue -> AddHeaderAction
```

Constructs AddHeaderAction from required parameters

#### `newAddHeaderAction'`

``` purescript
newAddHeaderAction' :: HeaderName -> HeaderValue -> ({ "HeaderName" :: HeaderName, "HeaderValue" :: HeaderValue } -> { "HeaderName" :: HeaderName, "HeaderValue" :: HeaderValue }) -> AddHeaderAction
```

Constructs AddHeaderAction's fields from required parameters

#### `Address`

``` purescript
newtype Address
  = Address String
```

##### Instances
``` purescript
Newtype Address _
Generic Address _
Show Address
Decode Address
Encode Address
```

#### `AddressList`

``` purescript
newtype AddressList
  = AddressList (Array Address)
```

##### Instances
``` purescript
Newtype AddressList _
Generic AddressList _
Show AddressList
Decode AddressList
Encode AddressList
```

#### `AlreadyExistsException`

``` purescript
newtype AlreadyExistsException
  = AlreadyExistsException { "Name" :: NullOrUndefined (RuleOrRuleSetName) }
```

<p>Indicates that a resource could not be created because of a naming conflict.</p>

##### Instances
``` purescript
Newtype AlreadyExistsException _
Generic AlreadyExistsException _
Show AlreadyExistsException
Decode AlreadyExistsException
Encode AlreadyExistsException
```

#### `newAlreadyExistsException`

``` purescript
newAlreadyExistsException :: AlreadyExistsException
```

Constructs AlreadyExistsException from required parameters

#### `newAlreadyExistsException'`

``` purescript
newAlreadyExistsException' :: ({ "Name" :: NullOrUndefined (RuleOrRuleSetName) } -> { "Name" :: NullOrUndefined (RuleOrRuleSetName) }) -> AlreadyExistsException
```

Constructs AlreadyExistsException's fields from required parameters

#### `AmazonResourceName`

``` purescript
newtype AmazonResourceName
  = AmazonResourceName String
```

##### Instances
``` purescript
Newtype AmazonResourceName _
Generic AmazonResourceName _
Show AmazonResourceName
Decode AmazonResourceName
Encode AmazonResourceName
```

#### `ArrivalDate`

``` purescript
newtype ArrivalDate
  = ArrivalDate Timestamp
```

##### Instances
``` purescript
Newtype ArrivalDate _
Generic ArrivalDate _
Show ArrivalDate
Decode ArrivalDate
Encode ArrivalDate
```

#### `BehaviorOnMXFailure`

``` purescript
newtype BehaviorOnMXFailure
  = BehaviorOnMXFailure String
```

##### Instances
``` purescript
Newtype BehaviorOnMXFailure _
Generic BehaviorOnMXFailure _
Show BehaviorOnMXFailure
Decode BehaviorOnMXFailure
Encode BehaviorOnMXFailure
```

#### `Body`

``` purescript
newtype Body
  = Body { "Text" :: NullOrUndefined (Content), "Html" :: NullOrUndefined (Content) }
```

<p>Represents the body of the message. You can specify text, HTML, or both. If you use both, then the message should display correctly in the widest variety of email clients.</p>

##### Instances
``` purescript
Newtype Body _
Generic Body _
Show Body
Decode Body
Encode Body
```

#### `newBody`

``` purescript
newBody :: Body
```

Constructs Body from required parameters

#### `newBody'`

``` purescript
newBody' :: ({ "Text" :: NullOrUndefined (Content), "Html" :: NullOrUndefined (Content) } -> { "Text" :: NullOrUndefined (Content), "Html" :: NullOrUndefined (Content) }) -> Body
```

Constructs Body's fields from required parameters

#### `BounceAction`

``` purescript
newtype BounceAction
  = BounceAction { "TopicArn" :: NullOrUndefined (AmazonResourceName), "SmtpReplyCode" :: BounceSmtpReplyCode, "StatusCode" :: NullOrUndefined (BounceStatusCode), "Message" :: BounceMessage, "Sender" :: Address }
```

<p>When included in a receipt rule, this action rejects the received email by returning a bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>For information about sending a bounce message in response to a received email, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-bounce.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype BounceAction _
Generic BounceAction _
Show BounceAction
Decode BounceAction
Encode BounceAction
```

#### `newBounceAction`

``` purescript
newBounceAction :: BounceMessage -> Address -> BounceSmtpReplyCode -> BounceAction
```

Constructs BounceAction from required parameters

#### `newBounceAction'`

``` purescript
newBounceAction' :: BounceMessage -> Address -> BounceSmtpReplyCode -> ({ "TopicArn" :: NullOrUndefined (AmazonResourceName), "SmtpReplyCode" :: BounceSmtpReplyCode, "StatusCode" :: NullOrUndefined (BounceStatusCode), "Message" :: BounceMessage, "Sender" :: Address } -> { "TopicArn" :: NullOrUndefined (AmazonResourceName), "SmtpReplyCode" :: BounceSmtpReplyCode, "StatusCode" :: NullOrUndefined (BounceStatusCode), "Message" :: BounceMessage, "Sender" :: Address }) -> BounceAction
```

Constructs BounceAction's fields from required parameters

#### `BounceMessage`

``` purescript
newtype BounceMessage
  = BounceMessage String
```

##### Instances
``` purescript
Newtype BounceMessage _
Generic BounceMessage _
Show BounceMessage
Decode BounceMessage
Encode BounceMessage
```

#### `BounceSmtpReplyCode`

``` purescript
newtype BounceSmtpReplyCode
  = BounceSmtpReplyCode String
```

##### Instances
``` purescript
Newtype BounceSmtpReplyCode _
Generic BounceSmtpReplyCode _
Show BounceSmtpReplyCode
Decode BounceSmtpReplyCode
Encode BounceSmtpReplyCode
```

#### `BounceStatusCode`

``` purescript
newtype BounceStatusCode
  = BounceStatusCode String
```

##### Instances
``` purescript
Newtype BounceStatusCode _
Generic BounceStatusCode _
Show BounceStatusCode
Decode BounceStatusCode
Encode BounceStatusCode
```

#### `BounceType`

``` purescript
newtype BounceType
  = BounceType String
```

##### Instances
``` purescript
Newtype BounceType _
Generic BounceType _
Show BounceType
Decode BounceType
Encode BounceType
```

#### `BouncedRecipientInfo`

``` purescript
newtype BouncedRecipientInfo
  = BouncedRecipientInfo { "Recipient" :: Address, "RecipientArn" :: NullOrUndefined (AmazonResourceName), "BounceType" :: NullOrUndefined (BounceType), "RecipientDsnFields" :: NullOrUndefined (RecipientDsnFields) }
```

<p>Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype BouncedRecipientInfo _
Generic BouncedRecipientInfo _
Show BouncedRecipientInfo
Decode BouncedRecipientInfo
Encode BouncedRecipientInfo
```

#### `newBouncedRecipientInfo`

``` purescript
newBouncedRecipientInfo :: Address -> BouncedRecipientInfo
```

Constructs BouncedRecipientInfo from required parameters

#### `newBouncedRecipientInfo'`

``` purescript
newBouncedRecipientInfo' :: Address -> ({ "Recipient" :: Address, "RecipientArn" :: NullOrUndefined (AmazonResourceName), "BounceType" :: NullOrUndefined (BounceType), "RecipientDsnFields" :: NullOrUndefined (RecipientDsnFields) } -> { "Recipient" :: Address, "RecipientArn" :: NullOrUndefined (AmazonResourceName), "BounceType" :: NullOrUndefined (BounceType), "RecipientDsnFields" :: NullOrUndefined (RecipientDsnFields) }) -> BouncedRecipientInfo
```

Constructs BouncedRecipientInfo's fields from required parameters

#### `BouncedRecipientInfoList`

``` purescript
newtype BouncedRecipientInfoList
  = BouncedRecipientInfoList (Array BouncedRecipientInfo)
```

##### Instances
``` purescript
Newtype BouncedRecipientInfoList _
Generic BouncedRecipientInfoList _
Show BouncedRecipientInfoList
Decode BouncedRecipientInfoList
Encode BouncedRecipientInfoList
```

#### `BulkEmailDestination`

``` purescript
newtype BulkEmailDestination
  = BulkEmailDestination { "Destination" :: Destination, "ReplacementTags" :: NullOrUndefined (MessageTagList), "ReplacementTemplateData" :: NullOrUndefined (TemplateData) }
```

<p>An array that contains one or more Destinations, as well as the tags and replacement data associated with each of those Destinations.</p>

##### Instances
``` purescript
Newtype BulkEmailDestination _
Generic BulkEmailDestination _
Show BulkEmailDestination
Decode BulkEmailDestination
Encode BulkEmailDestination
```

#### `newBulkEmailDestination`

``` purescript
newBulkEmailDestination :: Destination -> BulkEmailDestination
```

Constructs BulkEmailDestination from required parameters

#### `newBulkEmailDestination'`

``` purescript
newBulkEmailDestination' :: Destination -> ({ "Destination" :: Destination, "ReplacementTags" :: NullOrUndefined (MessageTagList), "ReplacementTemplateData" :: NullOrUndefined (TemplateData) } -> { "Destination" :: Destination, "ReplacementTags" :: NullOrUndefined (MessageTagList), "ReplacementTemplateData" :: NullOrUndefined (TemplateData) }) -> BulkEmailDestination
```

Constructs BulkEmailDestination's fields from required parameters

#### `BulkEmailDestinationList`

``` purescript
newtype BulkEmailDestinationList
  = BulkEmailDestinationList (Array BulkEmailDestination)
```

##### Instances
``` purescript
Newtype BulkEmailDestinationList _
Generic BulkEmailDestinationList _
Show BulkEmailDestinationList
Decode BulkEmailDestinationList
Encode BulkEmailDestinationList
```

#### `BulkEmailDestinationStatus`

``` purescript
newtype BulkEmailDestinationStatus
  = BulkEmailDestinationStatus { "Status" :: NullOrUndefined (BulkEmailStatus), "Error" :: NullOrUndefined (Error), "MessageId" :: NullOrUndefined (MessageId) }
```

<p>An object that contains the response from the <code>SendBulkTemplatedEmail</code> operation.</p>

##### Instances
``` purescript
Newtype BulkEmailDestinationStatus _
Generic BulkEmailDestinationStatus _
Show BulkEmailDestinationStatus
Decode BulkEmailDestinationStatus
Encode BulkEmailDestinationStatus
```

#### `newBulkEmailDestinationStatus`

``` purescript
newBulkEmailDestinationStatus :: BulkEmailDestinationStatus
```

Constructs BulkEmailDestinationStatus from required parameters

#### `newBulkEmailDestinationStatus'`

``` purescript
newBulkEmailDestinationStatus' :: ({ "Status" :: NullOrUndefined (BulkEmailStatus), "Error" :: NullOrUndefined (Error), "MessageId" :: NullOrUndefined (MessageId) } -> { "Status" :: NullOrUndefined (BulkEmailStatus), "Error" :: NullOrUndefined (Error), "MessageId" :: NullOrUndefined (MessageId) }) -> BulkEmailDestinationStatus
```

Constructs BulkEmailDestinationStatus's fields from required parameters

#### `BulkEmailDestinationStatusList`

``` purescript
newtype BulkEmailDestinationStatusList
  = BulkEmailDestinationStatusList (Array BulkEmailDestinationStatus)
```

##### Instances
``` purescript
Newtype BulkEmailDestinationStatusList _
Generic BulkEmailDestinationStatusList _
Show BulkEmailDestinationStatusList
Decode BulkEmailDestinationStatusList
Encode BulkEmailDestinationStatusList
```

#### `BulkEmailStatus`

``` purescript
newtype BulkEmailStatus
  = BulkEmailStatus String
```

##### Instances
``` purescript
Newtype BulkEmailStatus _
Generic BulkEmailStatus _
Show BulkEmailStatus
Decode BulkEmailStatus
Encode BulkEmailStatus
```

#### `CannotDeleteException`

``` purescript
newtype CannotDeleteException
  = CannotDeleteException { "Name" :: NullOrUndefined (RuleOrRuleSetName) }
```

<p>Indicates that the delete operation could not be completed.</p>

##### Instances
``` purescript
Newtype CannotDeleteException _
Generic CannotDeleteException _
Show CannotDeleteException
Decode CannotDeleteException
Encode CannotDeleteException
```

#### `newCannotDeleteException`

``` purescript
newCannotDeleteException :: CannotDeleteException
```

Constructs CannotDeleteException from required parameters

#### `newCannotDeleteException'`

``` purescript
newCannotDeleteException' :: ({ "Name" :: NullOrUndefined (RuleOrRuleSetName) } -> { "Name" :: NullOrUndefined (RuleOrRuleSetName) }) -> CannotDeleteException
```

Constructs CannotDeleteException's fields from required parameters

#### `Charset`

``` purescript
newtype Charset
  = Charset String
```

##### Instances
``` purescript
Newtype Charset _
Generic Charset _
Show Charset
Decode Charset
Encode Charset
```

#### `Cidr`

``` purescript
newtype Cidr
  = Cidr String
```

##### Instances
``` purescript
Newtype Cidr _
Generic Cidr _
Show Cidr
Decode Cidr
Encode Cidr
```

#### `CloneReceiptRuleSetRequest`

``` purescript
newtype CloneReceiptRuleSetRequest
  = CloneReceiptRuleSetRequest { "RuleSetName" :: ReceiptRuleSetName, "OriginalRuleSetName" :: ReceiptRuleSetName }
```

<p>Represents a request to create a receipt rule set by cloning an existing one. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype CloneReceiptRuleSetRequest _
Generic CloneReceiptRuleSetRequest _
Show CloneReceiptRuleSetRequest
Decode CloneReceiptRuleSetRequest
Encode CloneReceiptRuleSetRequest
```

#### `newCloneReceiptRuleSetRequest`

``` purescript
newCloneReceiptRuleSetRequest :: ReceiptRuleSetName -> ReceiptRuleSetName -> CloneReceiptRuleSetRequest
```

Constructs CloneReceiptRuleSetRequest from required parameters

#### `newCloneReceiptRuleSetRequest'`

``` purescript
newCloneReceiptRuleSetRequest' :: ReceiptRuleSetName -> ReceiptRuleSetName -> ({ "RuleSetName" :: ReceiptRuleSetName, "OriginalRuleSetName" :: ReceiptRuleSetName } -> { "RuleSetName" :: ReceiptRuleSetName, "OriginalRuleSetName" :: ReceiptRuleSetName }) -> CloneReceiptRuleSetRequest
```

Constructs CloneReceiptRuleSetRequest's fields from required parameters

#### `CloneReceiptRuleSetResponse`

``` purescript
newtype CloneReceiptRuleSetResponse
  = CloneReceiptRuleSetResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype CloneReceiptRuleSetResponse _
Generic CloneReceiptRuleSetResponse _
Show CloneReceiptRuleSetResponse
Decode CloneReceiptRuleSetResponse
Encode CloneReceiptRuleSetResponse
```

#### `CloudWatchDestination`

``` purescript
newtype CloudWatchDestination
  = CloudWatchDestination { "DimensionConfigurations" :: CloudWatchDimensionConfigurations }
```

<p>Contains information associated with an Amazon CloudWatch event destination to which email sending events are published.</p> <p>Event destinations, such as Amazon CloudWatch, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype CloudWatchDestination _
Generic CloudWatchDestination _
Show CloudWatchDestination
Decode CloudWatchDestination
Encode CloudWatchDestination
```

#### `newCloudWatchDestination`

``` purescript
newCloudWatchDestination :: CloudWatchDimensionConfigurations -> CloudWatchDestination
```

Constructs CloudWatchDestination from required parameters

#### `newCloudWatchDestination'`

``` purescript
newCloudWatchDestination' :: CloudWatchDimensionConfigurations -> ({ "DimensionConfigurations" :: CloudWatchDimensionConfigurations } -> { "DimensionConfigurations" :: CloudWatchDimensionConfigurations }) -> CloudWatchDestination
```

Constructs CloudWatchDestination's fields from required parameters

#### `CloudWatchDimensionConfiguration`

``` purescript
newtype CloudWatchDimensionConfiguration
  = CloudWatchDimensionConfiguration { "DimensionName" :: DimensionName, "DimensionValueSource" :: DimensionValueSource, "DefaultDimensionValue" :: DefaultDimensionValue }
```

<p>Contains the dimension configuration to use when you publish email sending events to Amazon CloudWatch.</p> <p>For information about publishing email sending events to Amazon CloudWatch, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype CloudWatchDimensionConfiguration _
Generic CloudWatchDimensionConfiguration _
Show CloudWatchDimensionConfiguration
Decode CloudWatchDimensionConfiguration
Encode CloudWatchDimensionConfiguration
```

#### `newCloudWatchDimensionConfiguration`

``` purescript
newCloudWatchDimensionConfiguration :: DefaultDimensionValue -> DimensionName -> DimensionValueSource -> CloudWatchDimensionConfiguration
```

Constructs CloudWatchDimensionConfiguration from required parameters

#### `newCloudWatchDimensionConfiguration'`

``` purescript
newCloudWatchDimensionConfiguration' :: DefaultDimensionValue -> DimensionName -> DimensionValueSource -> ({ "DimensionName" :: DimensionName, "DimensionValueSource" :: DimensionValueSource, "DefaultDimensionValue" :: DefaultDimensionValue } -> { "DimensionName" :: DimensionName, "DimensionValueSource" :: DimensionValueSource, "DefaultDimensionValue" :: DefaultDimensionValue }) -> CloudWatchDimensionConfiguration
```

Constructs CloudWatchDimensionConfiguration's fields from required parameters

#### `CloudWatchDimensionConfigurations`

``` purescript
newtype CloudWatchDimensionConfigurations
  = CloudWatchDimensionConfigurations (Array CloudWatchDimensionConfiguration)
```

##### Instances
``` purescript
Newtype CloudWatchDimensionConfigurations _
Generic CloudWatchDimensionConfigurations _
Show CloudWatchDimensionConfigurations
Decode CloudWatchDimensionConfigurations
Encode CloudWatchDimensionConfigurations
```

#### `ConfigurationSet`

``` purescript
newtype ConfigurationSet
  = ConfigurationSet { "Name" :: ConfigurationSetName }
```

<p>The name of the configuration set.</p> <p>Configuration sets let you create groups of rules that you can apply to the emails you send using Amazon SES. For more information about using configuration sets, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/using-configuration-sets.html">Using Amazon SES Configuration Sets</a> in the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ConfigurationSet _
Generic ConfigurationSet _
Show ConfigurationSet
Decode ConfigurationSet
Encode ConfigurationSet
```

#### `newConfigurationSet`

``` purescript
newConfigurationSet :: ConfigurationSetName -> ConfigurationSet
```

Constructs ConfigurationSet from required parameters

#### `newConfigurationSet'`

``` purescript
newConfigurationSet' :: ConfigurationSetName -> ({ "Name" :: ConfigurationSetName } -> { "Name" :: ConfigurationSetName }) -> ConfigurationSet
```

Constructs ConfigurationSet's fields from required parameters

#### `ConfigurationSetAlreadyExistsException`

``` purescript
newtype ConfigurationSetAlreadyExistsException
  = ConfigurationSetAlreadyExistsException { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }
```

<p>Indicates that the configuration set could not be created because of a naming conflict.</p>

##### Instances
``` purescript
Newtype ConfigurationSetAlreadyExistsException _
Generic ConfigurationSetAlreadyExistsException _
Show ConfigurationSetAlreadyExistsException
Decode ConfigurationSetAlreadyExistsException
Encode ConfigurationSetAlreadyExistsException
```

#### `newConfigurationSetAlreadyExistsException`

``` purescript
newConfigurationSetAlreadyExistsException :: ConfigurationSetAlreadyExistsException
```

Constructs ConfigurationSetAlreadyExistsException from required parameters

#### `newConfigurationSetAlreadyExistsException'`

``` purescript
newConfigurationSetAlreadyExistsException' :: ({ "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) } -> { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }) -> ConfigurationSetAlreadyExistsException
```

Constructs ConfigurationSetAlreadyExistsException's fields from required parameters

#### `ConfigurationSetAttribute`

``` purescript
newtype ConfigurationSetAttribute
  = ConfigurationSetAttribute String
```

##### Instances
``` purescript
Newtype ConfigurationSetAttribute _
Generic ConfigurationSetAttribute _
Show ConfigurationSetAttribute
Decode ConfigurationSetAttribute
Encode ConfigurationSetAttribute
```

#### `ConfigurationSetAttributeList`

``` purescript
newtype ConfigurationSetAttributeList
  = ConfigurationSetAttributeList (Array ConfigurationSetAttribute)
```

##### Instances
``` purescript
Newtype ConfigurationSetAttributeList _
Generic ConfigurationSetAttributeList _
Show ConfigurationSetAttributeList
Decode ConfigurationSetAttributeList
Encode ConfigurationSetAttributeList
```

#### `ConfigurationSetDoesNotExistException`

``` purescript
newtype ConfigurationSetDoesNotExistException
  = ConfigurationSetDoesNotExistException { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }
```

<p>Indicates that the configuration set does not exist.</p>

##### Instances
``` purescript
Newtype ConfigurationSetDoesNotExistException _
Generic ConfigurationSetDoesNotExistException _
Show ConfigurationSetDoesNotExistException
Decode ConfigurationSetDoesNotExistException
Encode ConfigurationSetDoesNotExistException
```

#### `newConfigurationSetDoesNotExistException`

``` purescript
newConfigurationSetDoesNotExistException :: ConfigurationSetDoesNotExistException
```

Constructs ConfigurationSetDoesNotExistException from required parameters

#### `newConfigurationSetDoesNotExistException'`

``` purescript
newConfigurationSetDoesNotExistException' :: ({ "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) } -> { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }) -> ConfigurationSetDoesNotExistException
```

Constructs ConfigurationSetDoesNotExistException's fields from required parameters

#### `ConfigurationSetName`

``` purescript
newtype ConfigurationSetName
  = ConfigurationSetName String
```

##### Instances
``` purescript
Newtype ConfigurationSetName _
Generic ConfigurationSetName _
Show ConfigurationSetName
Decode ConfigurationSetName
Encode ConfigurationSetName
```

#### `ConfigurationSetSendingPausedException`

``` purescript
newtype ConfigurationSetSendingPausedException
  = ConfigurationSetSendingPausedException { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }
```

<p>Indicates that email sending is disabled for the configuration set.</p> <p>You can enable or disable email sending for a configuration set using <a>UpdateConfigurationSetSendingEnabled</a>.</p>

##### Instances
``` purescript
Newtype ConfigurationSetSendingPausedException _
Generic ConfigurationSetSendingPausedException _
Show ConfigurationSetSendingPausedException
Decode ConfigurationSetSendingPausedException
Encode ConfigurationSetSendingPausedException
```

#### `newConfigurationSetSendingPausedException`

``` purescript
newConfigurationSetSendingPausedException :: ConfigurationSetSendingPausedException
```

Constructs ConfigurationSetSendingPausedException from required parameters

#### `newConfigurationSetSendingPausedException'`

``` purescript
newConfigurationSetSendingPausedException' :: ({ "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) } -> { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }) -> ConfigurationSetSendingPausedException
```

Constructs ConfigurationSetSendingPausedException's fields from required parameters

#### `ConfigurationSets`

``` purescript
newtype ConfigurationSets
  = ConfigurationSets (Array ConfigurationSet)
```

##### Instances
``` purescript
Newtype ConfigurationSets _
Generic ConfigurationSets _
Show ConfigurationSets
Decode ConfigurationSets
Encode ConfigurationSets
```

#### `Content`

``` purescript
newtype Content
  = Content { "Data" :: MessageData, "Charset" :: NullOrUndefined (Charset) }
```

<p>Represents textual data, plus an optional character set specification.</p> <p>By default, the text must be 7-bit ASCII, due to the constraints of the SMTP protocol. If the text must contain any other characters, then you must also specify a character set. Examples include UTF-8, ISO-8859-1, and Shift_JIS.</p>

##### Instances
``` purescript
Newtype Content _
Generic Content _
Show Content
Decode Content
Encode Content
```

#### `newContent`

``` purescript
newContent :: MessageData -> Content
```

Constructs Content from required parameters

#### `newContent'`

``` purescript
newContent' :: MessageData -> ({ "Data" :: MessageData, "Charset" :: NullOrUndefined (Charset) } -> { "Data" :: MessageData, "Charset" :: NullOrUndefined (Charset) }) -> Content
```

Constructs Content's fields from required parameters

#### `Counter`

``` purescript
newtype Counter
  = Counter Number
```

##### Instances
``` purescript
Newtype Counter _
Generic Counter _
Show Counter
Decode Counter
Encode Counter
```

#### `CreateConfigurationSetEventDestinationRequest`

``` purescript
newtype CreateConfigurationSetEventDestinationRequest
  = CreateConfigurationSetEventDestinationRequest { "ConfigurationSetName" :: ConfigurationSetName, "EventDestination" :: EventDestination }
```

<p>Represents a request to create a configuration set event destination. A configuration set event destination, which can be either Amazon CloudWatch or Amazon Kinesis Firehose, describes an AWS service in which Amazon SES publishes the email sending events associated with a configuration set. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype CreateConfigurationSetEventDestinationRequest _
Generic CreateConfigurationSetEventDestinationRequest _
Show CreateConfigurationSetEventDestinationRequest
Decode CreateConfigurationSetEventDestinationRequest
Encode CreateConfigurationSetEventDestinationRequest
```

#### `newCreateConfigurationSetEventDestinationRequest`

``` purescript
newCreateConfigurationSetEventDestinationRequest :: ConfigurationSetName -> EventDestination -> CreateConfigurationSetEventDestinationRequest
```

Constructs CreateConfigurationSetEventDestinationRequest from required parameters

#### `newCreateConfigurationSetEventDestinationRequest'`

``` purescript
newCreateConfigurationSetEventDestinationRequest' :: ConfigurationSetName -> EventDestination -> ({ "ConfigurationSetName" :: ConfigurationSetName, "EventDestination" :: EventDestination } -> { "ConfigurationSetName" :: ConfigurationSetName, "EventDestination" :: EventDestination }) -> CreateConfigurationSetEventDestinationRequest
```

Constructs CreateConfigurationSetEventDestinationRequest's fields from required parameters

#### `CreateConfigurationSetEventDestinationResponse`

``` purescript
newtype CreateConfigurationSetEventDestinationResponse
  = CreateConfigurationSetEventDestinationResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype CreateConfigurationSetEventDestinationResponse _
Generic CreateConfigurationSetEventDestinationResponse _
Show CreateConfigurationSetEventDestinationResponse
Decode CreateConfigurationSetEventDestinationResponse
Encode CreateConfigurationSetEventDestinationResponse
```

#### `CreateConfigurationSetRequest`

``` purescript
newtype CreateConfigurationSetRequest
  = CreateConfigurationSetRequest { "ConfigurationSet" :: ConfigurationSet }
```

<p>Represents a request to create a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype CreateConfigurationSetRequest _
Generic CreateConfigurationSetRequest _
Show CreateConfigurationSetRequest
Decode CreateConfigurationSetRequest
Encode CreateConfigurationSetRequest
```

#### `newCreateConfigurationSetRequest`

``` purescript
newCreateConfigurationSetRequest :: ConfigurationSet -> CreateConfigurationSetRequest
```

Constructs CreateConfigurationSetRequest from required parameters

#### `newCreateConfigurationSetRequest'`

``` purescript
newCreateConfigurationSetRequest' :: ConfigurationSet -> ({ "ConfigurationSet" :: ConfigurationSet } -> { "ConfigurationSet" :: ConfigurationSet }) -> CreateConfigurationSetRequest
```

Constructs CreateConfigurationSetRequest's fields from required parameters

#### `CreateConfigurationSetResponse`

``` purescript
newtype CreateConfigurationSetResponse
  = CreateConfigurationSetResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype CreateConfigurationSetResponse _
Generic CreateConfigurationSetResponse _
Show CreateConfigurationSetResponse
Decode CreateConfigurationSetResponse
Encode CreateConfigurationSetResponse
```

#### `CreateConfigurationSetTrackingOptionsRequest`

``` purescript
newtype CreateConfigurationSetTrackingOptionsRequest
  = CreateConfigurationSetTrackingOptionsRequest { "ConfigurationSetName" :: ConfigurationSetName, "TrackingOptions" :: TrackingOptions }
```

<p>Represents a request to create an open and click tracking option object in a configuration set. </p>

##### Instances
``` purescript
Newtype CreateConfigurationSetTrackingOptionsRequest _
Generic CreateConfigurationSetTrackingOptionsRequest _
Show CreateConfigurationSetTrackingOptionsRequest
Decode CreateConfigurationSetTrackingOptionsRequest
Encode CreateConfigurationSetTrackingOptionsRequest
```

#### `newCreateConfigurationSetTrackingOptionsRequest`

``` purescript
newCreateConfigurationSetTrackingOptionsRequest :: ConfigurationSetName -> TrackingOptions -> CreateConfigurationSetTrackingOptionsRequest
```

Constructs CreateConfigurationSetTrackingOptionsRequest from required parameters

#### `newCreateConfigurationSetTrackingOptionsRequest'`

``` purescript
newCreateConfigurationSetTrackingOptionsRequest' :: ConfigurationSetName -> TrackingOptions -> ({ "ConfigurationSetName" :: ConfigurationSetName, "TrackingOptions" :: TrackingOptions } -> { "ConfigurationSetName" :: ConfigurationSetName, "TrackingOptions" :: TrackingOptions }) -> CreateConfigurationSetTrackingOptionsRequest
```

Constructs CreateConfigurationSetTrackingOptionsRequest's fields from required parameters

#### `CreateConfigurationSetTrackingOptionsResponse`

``` purescript
newtype CreateConfigurationSetTrackingOptionsResponse
  = CreateConfigurationSetTrackingOptionsResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype CreateConfigurationSetTrackingOptionsResponse _
Generic CreateConfigurationSetTrackingOptionsResponse _
Show CreateConfigurationSetTrackingOptionsResponse
Decode CreateConfigurationSetTrackingOptionsResponse
Encode CreateConfigurationSetTrackingOptionsResponse
```

#### `CreateCustomVerificationEmailTemplateRequest`

``` purescript
newtype CreateCustomVerificationEmailTemplateRequest
  = CreateCustomVerificationEmailTemplateRequest { "TemplateName" :: TemplateName, "FromEmailAddress" :: FromAddress, "TemplateSubject" :: Subject, "TemplateContent" :: TemplateContent, "SuccessRedirectionURL" :: SuccessRedirectionURL, "FailureRedirectionURL" :: FailureRedirectionURL }
```

<p>Represents a request to create a custom verification email template.</p>

##### Instances
``` purescript
Newtype CreateCustomVerificationEmailTemplateRequest _
Generic CreateCustomVerificationEmailTemplateRequest _
Show CreateCustomVerificationEmailTemplateRequest
Decode CreateCustomVerificationEmailTemplateRequest
Encode CreateCustomVerificationEmailTemplateRequest
```

#### `newCreateCustomVerificationEmailTemplateRequest`

``` purescript
newCreateCustomVerificationEmailTemplateRequest :: FailureRedirectionURL -> FromAddress -> SuccessRedirectionURL -> TemplateContent -> TemplateName -> Subject -> CreateCustomVerificationEmailTemplateRequest
```

Constructs CreateCustomVerificationEmailTemplateRequest from required parameters

#### `newCreateCustomVerificationEmailTemplateRequest'`

``` purescript
newCreateCustomVerificationEmailTemplateRequest' :: FailureRedirectionURL -> FromAddress -> SuccessRedirectionURL -> TemplateContent -> TemplateName -> Subject -> ({ "TemplateName" :: TemplateName, "FromEmailAddress" :: FromAddress, "TemplateSubject" :: Subject, "TemplateContent" :: TemplateContent, "SuccessRedirectionURL" :: SuccessRedirectionURL, "FailureRedirectionURL" :: FailureRedirectionURL } -> { "TemplateName" :: TemplateName, "FromEmailAddress" :: FromAddress, "TemplateSubject" :: Subject, "TemplateContent" :: TemplateContent, "SuccessRedirectionURL" :: SuccessRedirectionURL, "FailureRedirectionURL" :: FailureRedirectionURL }) -> CreateCustomVerificationEmailTemplateRequest
```

Constructs CreateCustomVerificationEmailTemplateRequest's fields from required parameters

#### `CreateReceiptFilterRequest`

``` purescript
newtype CreateReceiptFilterRequest
  = CreateReceiptFilterRequest { "Filter" :: ReceiptFilter }
```

<p>Represents a request to create a new IP address filter. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype CreateReceiptFilterRequest _
Generic CreateReceiptFilterRequest _
Show CreateReceiptFilterRequest
Decode CreateReceiptFilterRequest
Encode CreateReceiptFilterRequest
```

#### `newCreateReceiptFilterRequest`

``` purescript
newCreateReceiptFilterRequest :: ReceiptFilter -> CreateReceiptFilterRequest
```

Constructs CreateReceiptFilterRequest from required parameters

#### `newCreateReceiptFilterRequest'`

``` purescript
newCreateReceiptFilterRequest' :: ReceiptFilter -> ({ "Filter" :: ReceiptFilter } -> { "Filter" :: ReceiptFilter }) -> CreateReceiptFilterRequest
```

Constructs CreateReceiptFilterRequest's fields from required parameters

#### `CreateReceiptFilterResponse`

``` purescript
newtype CreateReceiptFilterResponse
  = CreateReceiptFilterResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype CreateReceiptFilterResponse _
Generic CreateReceiptFilterResponse _
Show CreateReceiptFilterResponse
Decode CreateReceiptFilterResponse
Encode CreateReceiptFilterResponse
```

#### `CreateReceiptRuleRequest`

``` purescript
newtype CreateReceiptRuleRequest
  = CreateReceiptRuleRequest { "RuleSetName" :: ReceiptRuleSetName, "After" :: NullOrUndefined (ReceiptRuleName), "Rule" :: ReceiptRule }
```

<p>Represents a request to create a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype CreateReceiptRuleRequest _
Generic CreateReceiptRuleRequest _
Show CreateReceiptRuleRequest
Decode CreateReceiptRuleRequest
Encode CreateReceiptRuleRequest
```

#### `newCreateReceiptRuleRequest`

``` purescript
newCreateReceiptRuleRequest :: ReceiptRule -> ReceiptRuleSetName -> CreateReceiptRuleRequest
```

Constructs CreateReceiptRuleRequest from required parameters

#### `newCreateReceiptRuleRequest'`

``` purescript
newCreateReceiptRuleRequest' :: ReceiptRule -> ReceiptRuleSetName -> ({ "RuleSetName" :: ReceiptRuleSetName, "After" :: NullOrUndefined (ReceiptRuleName), "Rule" :: ReceiptRule } -> { "RuleSetName" :: ReceiptRuleSetName, "After" :: NullOrUndefined (ReceiptRuleName), "Rule" :: ReceiptRule }) -> CreateReceiptRuleRequest
```

Constructs CreateReceiptRuleRequest's fields from required parameters

#### `CreateReceiptRuleResponse`

``` purescript
newtype CreateReceiptRuleResponse
  = CreateReceiptRuleResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype CreateReceiptRuleResponse _
Generic CreateReceiptRuleResponse _
Show CreateReceiptRuleResponse
Decode CreateReceiptRuleResponse
Encode CreateReceiptRuleResponse
```

#### `CreateReceiptRuleSetRequest`

``` purescript
newtype CreateReceiptRuleSetRequest
  = CreateReceiptRuleSetRequest { "RuleSetName" :: ReceiptRuleSetName }
```

<p>Represents a request to create an empty receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype CreateReceiptRuleSetRequest _
Generic CreateReceiptRuleSetRequest _
Show CreateReceiptRuleSetRequest
Decode CreateReceiptRuleSetRequest
Encode CreateReceiptRuleSetRequest
```

#### `newCreateReceiptRuleSetRequest`

``` purescript
newCreateReceiptRuleSetRequest :: ReceiptRuleSetName -> CreateReceiptRuleSetRequest
```

Constructs CreateReceiptRuleSetRequest from required parameters

#### `newCreateReceiptRuleSetRequest'`

``` purescript
newCreateReceiptRuleSetRequest' :: ReceiptRuleSetName -> ({ "RuleSetName" :: ReceiptRuleSetName } -> { "RuleSetName" :: ReceiptRuleSetName }) -> CreateReceiptRuleSetRequest
```

Constructs CreateReceiptRuleSetRequest's fields from required parameters

#### `CreateReceiptRuleSetResponse`

``` purescript
newtype CreateReceiptRuleSetResponse
  = CreateReceiptRuleSetResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype CreateReceiptRuleSetResponse _
Generic CreateReceiptRuleSetResponse _
Show CreateReceiptRuleSetResponse
Decode CreateReceiptRuleSetResponse
Encode CreateReceiptRuleSetResponse
```

#### `CreateTemplateRequest`

``` purescript
newtype CreateTemplateRequest
  = CreateTemplateRequest { "Template" :: Template }
```

<p>Represents a request to create an email template. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype CreateTemplateRequest _
Generic CreateTemplateRequest _
Show CreateTemplateRequest
Decode CreateTemplateRequest
Encode CreateTemplateRequest
```

#### `newCreateTemplateRequest`

``` purescript
newCreateTemplateRequest :: Template -> CreateTemplateRequest
```

Constructs CreateTemplateRequest from required parameters

#### `newCreateTemplateRequest'`

``` purescript
newCreateTemplateRequest' :: Template -> ({ "Template" :: Template } -> { "Template" :: Template }) -> CreateTemplateRequest
```

Constructs CreateTemplateRequest's fields from required parameters

#### `CreateTemplateResponse`

``` purescript
newtype CreateTemplateResponse
  = CreateTemplateResponse NoArguments
```

##### Instances
``` purescript
Newtype CreateTemplateResponse _
Generic CreateTemplateResponse _
Show CreateTemplateResponse
Decode CreateTemplateResponse
Encode CreateTemplateResponse
```

#### `CustomMailFromStatus`

``` purescript
newtype CustomMailFromStatus
  = CustomMailFromStatus String
```

##### Instances
``` purescript
Newtype CustomMailFromStatus _
Generic CustomMailFromStatus _
Show CustomMailFromStatus
Decode CustomMailFromStatus
Encode CustomMailFromStatus
```

#### `CustomRedirectDomain`

``` purescript
newtype CustomRedirectDomain
  = CustomRedirectDomain String
```

##### Instances
``` purescript
Newtype CustomRedirectDomain _
Generic CustomRedirectDomain _
Show CustomRedirectDomain
Decode CustomRedirectDomain
Encode CustomRedirectDomain
```

#### `CustomVerificationEmailInvalidContentException`

``` purescript
newtype CustomVerificationEmailInvalidContentException
  = CustomVerificationEmailInvalidContentException NoArguments
```

<p>Indicates that custom verification email template provided content is invalid.</p>

##### Instances
``` purescript
Newtype CustomVerificationEmailInvalidContentException _
Generic CustomVerificationEmailInvalidContentException _
Show CustomVerificationEmailInvalidContentException
Decode CustomVerificationEmailInvalidContentException
Encode CustomVerificationEmailInvalidContentException
```

#### `CustomVerificationEmailTemplate`

``` purescript
newtype CustomVerificationEmailTemplate
  = CustomVerificationEmailTemplate { "TemplateName" :: NullOrUndefined (TemplateName), "FromEmailAddress" :: NullOrUndefined (FromAddress), "TemplateSubject" :: NullOrUndefined (Subject), "SuccessRedirectionURL" :: NullOrUndefined (SuccessRedirectionURL), "FailureRedirectionURL" :: NullOrUndefined (FailureRedirectionURL) }
```

<p>Contains information about a custom verification email template.</p>

##### Instances
``` purescript
Newtype CustomVerificationEmailTemplate _
Generic CustomVerificationEmailTemplate _
Show CustomVerificationEmailTemplate
Decode CustomVerificationEmailTemplate
Encode CustomVerificationEmailTemplate
```

#### `newCustomVerificationEmailTemplate`

``` purescript
newCustomVerificationEmailTemplate :: CustomVerificationEmailTemplate
```

Constructs CustomVerificationEmailTemplate from required parameters

#### `newCustomVerificationEmailTemplate'`

``` purescript
newCustomVerificationEmailTemplate' :: ({ "TemplateName" :: NullOrUndefined (TemplateName), "FromEmailAddress" :: NullOrUndefined (FromAddress), "TemplateSubject" :: NullOrUndefined (Subject), "SuccessRedirectionURL" :: NullOrUndefined (SuccessRedirectionURL), "FailureRedirectionURL" :: NullOrUndefined (FailureRedirectionURL) } -> { "TemplateName" :: NullOrUndefined (TemplateName), "FromEmailAddress" :: NullOrUndefined (FromAddress), "TemplateSubject" :: NullOrUndefined (Subject), "SuccessRedirectionURL" :: NullOrUndefined (SuccessRedirectionURL), "FailureRedirectionURL" :: NullOrUndefined (FailureRedirectionURL) }) -> CustomVerificationEmailTemplate
```

Constructs CustomVerificationEmailTemplate's fields from required parameters

#### `CustomVerificationEmailTemplateAlreadyExistsException`

``` purescript
newtype CustomVerificationEmailTemplateAlreadyExistsException
  = CustomVerificationEmailTemplateAlreadyExistsException { "CustomVerificationEmailTemplateName" :: NullOrUndefined (TemplateName) }
```

<p>Indicates that a custom verification email template with the name you specified already exists.</p>

##### Instances
``` purescript
Newtype CustomVerificationEmailTemplateAlreadyExistsException _
Generic CustomVerificationEmailTemplateAlreadyExistsException _
Show CustomVerificationEmailTemplateAlreadyExistsException
Decode CustomVerificationEmailTemplateAlreadyExistsException
Encode CustomVerificationEmailTemplateAlreadyExistsException
```

#### `newCustomVerificationEmailTemplateAlreadyExistsException`

``` purescript
newCustomVerificationEmailTemplateAlreadyExistsException :: CustomVerificationEmailTemplateAlreadyExistsException
```

Constructs CustomVerificationEmailTemplateAlreadyExistsException from required parameters

#### `newCustomVerificationEmailTemplateAlreadyExistsException'`

``` purescript
newCustomVerificationEmailTemplateAlreadyExistsException' :: ({ "CustomVerificationEmailTemplateName" :: NullOrUndefined (TemplateName) } -> { "CustomVerificationEmailTemplateName" :: NullOrUndefined (TemplateName) }) -> CustomVerificationEmailTemplateAlreadyExistsException
```

Constructs CustomVerificationEmailTemplateAlreadyExistsException's fields from required parameters

#### `CustomVerificationEmailTemplateDoesNotExistException`

``` purescript
newtype CustomVerificationEmailTemplateDoesNotExistException
  = CustomVerificationEmailTemplateDoesNotExistException { "CustomVerificationEmailTemplateName" :: NullOrUndefined (TemplateName) }
```

<p>Indicates that a custom verification email template with the name you specified does not exist.</p>

##### Instances
``` purescript
Newtype CustomVerificationEmailTemplateDoesNotExistException _
Generic CustomVerificationEmailTemplateDoesNotExistException _
Show CustomVerificationEmailTemplateDoesNotExistException
Decode CustomVerificationEmailTemplateDoesNotExistException
Encode CustomVerificationEmailTemplateDoesNotExistException
```

#### `newCustomVerificationEmailTemplateDoesNotExistException`

``` purescript
newCustomVerificationEmailTemplateDoesNotExistException :: CustomVerificationEmailTemplateDoesNotExistException
```

Constructs CustomVerificationEmailTemplateDoesNotExistException from required parameters

#### `newCustomVerificationEmailTemplateDoesNotExistException'`

``` purescript
newCustomVerificationEmailTemplateDoesNotExistException' :: ({ "CustomVerificationEmailTemplateName" :: NullOrUndefined (TemplateName) } -> { "CustomVerificationEmailTemplateName" :: NullOrUndefined (TemplateName) }) -> CustomVerificationEmailTemplateDoesNotExistException
```

Constructs CustomVerificationEmailTemplateDoesNotExistException's fields from required parameters

#### `CustomVerificationEmailTemplates`

``` purescript
newtype CustomVerificationEmailTemplates
  = CustomVerificationEmailTemplates (Array CustomVerificationEmailTemplate)
```

##### Instances
``` purescript
Newtype CustomVerificationEmailTemplates _
Generic CustomVerificationEmailTemplates _
Show CustomVerificationEmailTemplates
Decode CustomVerificationEmailTemplates
Encode CustomVerificationEmailTemplates
```

#### `DefaultDimensionValue`

``` purescript
newtype DefaultDimensionValue
  = DefaultDimensionValue String
```

##### Instances
``` purescript
Newtype DefaultDimensionValue _
Generic DefaultDimensionValue _
Show DefaultDimensionValue
Decode DefaultDimensionValue
Encode DefaultDimensionValue
```

#### `DeleteConfigurationSetEventDestinationRequest`

``` purescript
newtype DeleteConfigurationSetEventDestinationRequest
  = DeleteConfigurationSetEventDestinationRequest { "ConfigurationSetName" :: ConfigurationSetName, "EventDestinationName" :: EventDestinationName }
```

<p>Represents a request to delete a configuration set event destination. Configuration set event destinations are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DeleteConfigurationSetEventDestinationRequest _
Generic DeleteConfigurationSetEventDestinationRequest _
Show DeleteConfigurationSetEventDestinationRequest
Decode DeleteConfigurationSetEventDestinationRequest
Encode DeleteConfigurationSetEventDestinationRequest
```

#### `newDeleteConfigurationSetEventDestinationRequest`

``` purescript
newDeleteConfigurationSetEventDestinationRequest :: ConfigurationSetName -> EventDestinationName -> DeleteConfigurationSetEventDestinationRequest
```

Constructs DeleteConfigurationSetEventDestinationRequest from required parameters

#### `newDeleteConfigurationSetEventDestinationRequest'`

``` purescript
newDeleteConfigurationSetEventDestinationRequest' :: ConfigurationSetName -> EventDestinationName -> ({ "ConfigurationSetName" :: ConfigurationSetName, "EventDestinationName" :: EventDestinationName } -> { "ConfigurationSetName" :: ConfigurationSetName, "EventDestinationName" :: EventDestinationName }) -> DeleteConfigurationSetEventDestinationRequest
```

Constructs DeleteConfigurationSetEventDestinationRequest's fields from required parameters

#### `DeleteConfigurationSetEventDestinationResponse`

``` purescript
newtype DeleteConfigurationSetEventDestinationResponse
  = DeleteConfigurationSetEventDestinationResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype DeleteConfigurationSetEventDestinationResponse _
Generic DeleteConfigurationSetEventDestinationResponse _
Show DeleteConfigurationSetEventDestinationResponse
Decode DeleteConfigurationSetEventDestinationResponse
Encode DeleteConfigurationSetEventDestinationResponse
```

#### `DeleteConfigurationSetRequest`

``` purescript
newtype DeleteConfigurationSetRequest
  = DeleteConfigurationSetRequest { "ConfigurationSetName" :: ConfigurationSetName }
```

<p>Represents a request to delete a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DeleteConfigurationSetRequest _
Generic DeleteConfigurationSetRequest _
Show DeleteConfigurationSetRequest
Decode DeleteConfigurationSetRequest
Encode DeleteConfigurationSetRequest
```

#### `newDeleteConfigurationSetRequest`

``` purescript
newDeleteConfigurationSetRequest :: ConfigurationSetName -> DeleteConfigurationSetRequest
```

Constructs DeleteConfigurationSetRequest from required parameters

#### `newDeleteConfigurationSetRequest'`

``` purescript
newDeleteConfigurationSetRequest' :: ConfigurationSetName -> ({ "ConfigurationSetName" :: ConfigurationSetName } -> { "ConfigurationSetName" :: ConfigurationSetName }) -> DeleteConfigurationSetRequest
```

Constructs DeleteConfigurationSetRequest's fields from required parameters

#### `DeleteConfigurationSetResponse`

``` purescript
newtype DeleteConfigurationSetResponse
  = DeleteConfigurationSetResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype DeleteConfigurationSetResponse _
Generic DeleteConfigurationSetResponse _
Show DeleteConfigurationSetResponse
Decode DeleteConfigurationSetResponse
Encode DeleteConfigurationSetResponse
```

#### `DeleteConfigurationSetTrackingOptionsRequest`

``` purescript
newtype DeleteConfigurationSetTrackingOptionsRequest
  = DeleteConfigurationSetTrackingOptionsRequest { "ConfigurationSetName" :: ConfigurationSetName }
```

<p>Represents a request to delete open and click tracking options in a configuration set. </p>

##### Instances
``` purescript
Newtype DeleteConfigurationSetTrackingOptionsRequest _
Generic DeleteConfigurationSetTrackingOptionsRequest _
Show DeleteConfigurationSetTrackingOptionsRequest
Decode DeleteConfigurationSetTrackingOptionsRequest
Encode DeleteConfigurationSetTrackingOptionsRequest
```

#### `newDeleteConfigurationSetTrackingOptionsRequest`

``` purescript
newDeleteConfigurationSetTrackingOptionsRequest :: ConfigurationSetName -> DeleteConfigurationSetTrackingOptionsRequest
```

Constructs DeleteConfigurationSetTrackingOptionsRequest from required parameters

#### `newDeleteConfigurationSetTrackingOptionsRequest'`

``` purescript
newDeleteConfigurationSetTrackingOptionsRequest' :: ConfigurationSetName -> ({ "ConfigurationSetName" :: ConfigurationSetName } -> { "ConfigurationSetName" :: ConfigurationSetName }) -> DeleteConfigurationSetTrackingOptionsRequest
```

Constructs DeleteConfigurationSetTrackingOptionsRequest's fields from required parameters

#### `DeleteConfigurationSetTrackingOptionsResponse`

``` purescript
newtype DeleteConfigurationSetTrackingOptionsResponse
  = DeleteConfigurationSetTrackingOptionsResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype DeleteConfigurationSetTrackingOptionsResponse _
Generic DeleteConfigurationSetTrackingOptionsResponse _
Show DeleteConfigurationSetTrackingOptionsResponse
Decode DeleteConfigurationSetTrackingOptionsResponse
Encode DeleteConfigurationSetTrackingOptionsResponse
```

#### `DeleteCustomVerificationEmailTemplateRequest`

``` purescript
newtype DeleteCustomVerificationEmailTemplateRequest
  = DeleteCustomVerificationEmailTemplateRequest { "TemplateName" :: TemplateName }
```

<p>Represents a request to delete an existing custom verification email template.</p>

##### Instances
``` purescript
Newtype DeleteCustomVerificationEmailTemplateRequest _
Generic DeleteCustomVerificationEmailTemplateRequest _
Show DeleteCustomVerificationEmailTemplateRequest
Decode DeleteCustomVerificationEmailTemplateRequest
Encode DeleteCustomVerificationEmailTemplateRequest
```

#### `newDeleteCustomVerificationEmailTemplateRequest`

``` purescript
newDeleteCustomVerificationEmailTemplateRequest :: TemplateName -> DeleteCustomVerificationEmailTemplateRequest
```

Constructs DeleteCustomVerificationEmailTemplateRequest from required parameters

#### `newDeleteCustomVerificationEmailTemplateRequest'`

``` purescript
newDeleteCustomVerificationEmailTemplateRequest' :: TemplateName -> ({ "TemplateName" :: TemplateName } -> { "TemplateName" :: TemplateName }) -> DeleteCustomVerificationEmailTemplateRequest
```

Constructs DeleteCustomVerificationEmailTemplateRequest's fields from required parameters

#### `DeleteIdentityPolicyRequest`

``` purescript
newtype DeleteIdentityPolicyRequest
  = DeleteIdentityPolicyRequest { "Identity" :: Identity, "PolicyName" :: PolicyName }
```

<p>Represents a request to delete a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DeleteIdentityPolicyRequest _
Generic DeleteIdentityPolicyRequest _
Show DeleteIdentityPolicyRequest
Decode DeleteIdentityPolicyRequest
Encode DeleteIdentityPolicyRequest
```

#### `newDeleteIdentityPolicyRequest`

``` purescript
newDeleteIdentityPolicyRequest :: Identity -> PolicyName -> DeleteIdentityPolicyRequest
```

Constructs DeleteIdentityPolicyRequest from required parameters

#### `newDeleteIdentityPolicyRequest'`

``` purescript
newDeleteIdentityPolicyRequest' :: Identity -> PolicyName -> ({ "Identity" :: Identity, "PolicyName" :: PolicyName } -> { "Identity" :: Identity, "PolicyName" :: PolicyName }) -> DeleteIdentityPolicyRequest
```

Constructs DeleteIdentityPolicyRequest's fields from required parameters

#### `DeleteIdentityPolicyResponse`

``` purescript
newtype DeleteIdentityPolicyResponse
  = DeleteIdentityPolicyResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype DeleteIdentityPolicyResponse _
Generic DeleteIdentityPolicyResponse _
Show DeleteIdentityPolicyResponse
Decode DeleteIdentityPolicyResponse
Encode DeleteIdentityPolicyResponse
```

#### `DeleteIdentityRequest`

``` purescript
newtype DeleteIdentityRequest
  = DeleteIdentityRequest { "Identity" :: Identity }
```

<p>Represents a request to delete one of your Amazon SES identities (an email address or domain).</p>

##### Instances
``` purescript
Newtype DeleteIdentityRequest _
Generic DeleteIdentityRequest _
Show DeleteIdentityRequest
Decode DeleteIdentityRequest
Encode DeleteIdentityRequest
```

#### `newDeleteIdentityRequest`

``` purescript
newDeleteIdentityRequest :: Identity -> DeleteIdentityRequest
```

Constructs DeleteIdentityRequest from required parameters

#### `newDeleteIdentityRequest'`

``` purescript
newDeleteIdentityRequest' :: Identity -> ({ "Identity" :: Identity } -> { "Identity" :: Identity }) -> DeleteIdentityRequest
```

Constructs DeleteIdentityRequest's fields from required parameters

#### `DeleteIdentityResponse`

``` purescript
newtype DeleteIdentityResponse
  = DeleteIdentityResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype DeleteIdentityResponse _
Generic DeleteIdentityResponse _
Show DeleteIdentityResponse
Decode DeleteIdentityResponse
Encode DeleteIdentityResponse
```

#### `DeleteReceiptFilterRequest`

``` purescript
newtype DeleteReceiptFilterRequest
  = DeleteReceiptFilterRequest { "FilterName" :: ReceiptFilterName }
```

<p>Represents a request to delete an IP address filter. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DeleteReceiptFilterRequest _
Generic DeleteReceiptFilterRequest _
Show DeleteReceiptFilterRequest
Decode DeleteReceiptFilterRequest
Encode DeleteReceiptFilterRequest
```

#### `newDeleteReceiptFilterRequest`

``` purescript
newDeleteReceiptFilterRequest :: ReceiptFilterName -> DeleteReceiptFilterRequest
```

Constructs DeleteReceiptFilterRequest from required parameters

#### `newDeleteReceiptFilterRequest'`

``` purescript
newDeleteReceiptFilterRequest' :: ReceiptFilterName -> ({ "FilterName" :: ReceiptFilterName } -> { "FilterName" :: ReceiptFilterName }) -> DeleteReceiptFilterRequest
```

Constructs DeleteReceiptFilterRequest's fields from required parameters

#### `DeleteReceiptFilterResponse`

``` purescript
newtype DeleteReceiptFilterResponse
  = DeleteReceiptFilterResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype DeleteReceiptFilterResponse _
Generic DeleteReceiptFilterResponse _
Show DeleteReceiptFilterResponse
Decode DeleteReceiptFilterResponse
Encode DeleteReceiptFilterResponse
```

#### `DeleteReceiptRuleRequest`

``` purescript
newtype DeleteReceiptRuleRequest
  = DeleteReceiptRuleRequest { "RuleSetName" :: ReceiptRuleSetName, "RuleName" :: ReceiptRuleName }
```

<p>Represents a request to delete a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DeleteReceiptRuleRequest _
Generic DeleteReceiptRuleRequest _
Show DeleteReceiptRuleRequest
Decode DeleteReceiptRuleRequest
Encode DeleteReceiptRuleRequest
```

#### `newDeleteReceiptRuleRequest`

``` purescript
newDeleteReceiptRuleRequest :: ReceiptRuleName -> ReceiptRuleSetName -> DeleteReceiptRuleRequest
```

Constructs DeleteReceiptRuleRequest from required parameters

#### `newDeleteReceiptRuleRequest'`

``` purescript
newDeleteReceiptRuleRequest' :: ReceiptRuleName -> ReceiptRuleSetName -> ({ "RuleSetName" :: ReceiptRuleSetName, "RuleName" :: ReceiptRuleName } -> { "RuleSetName" :: ReceiptRuleSetName, "RuleName" :: ReceiptRuleName }) -> DeleteReceiptRuleRequest
```

Constructs DeleteReceiptRuleRequest's fields from required parameters

#### `DeleteReceiptRuleResponse`

``` purescript
newtype DeleteReceiptRuleResponse
  = DeleteReceiptRuleResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype DeleteReceiptRuleResponse _
Generic DeleteReceiptRuleResponse _
Show DeleteReceiptRuleResponse
Decode DeleteReceiptRuleResponse
Encode DeleteReceiptRuleResponse
```

#### `DeleteReceiptRuleSetRequest`

``` purescript
newtype DeleteReceiptRuleSetRequest
  = DeleteReceiptRuleSetRequest { "RuleSetName" :: ReceiptRuleSetName }
```

<p>Represents a request to delete a receipt rule set and all of the receipt rules it contains. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DeleteReceiptRuleSetRequest _
Generic DeleteReceiptRuleSetRequest _
Show DeleteReceiptRuleSetRequest
Decode DeleteReceiptRuleSetRequest
Encode DeleteReceiptRuleSetRequest
```

#### `newDeleteReceiptRuleSetRequest`

``` purescript
newDeleteReceiptRuleSetRequest :: ReceiptRuleSetName -> DeleteReceiptRuleSetRequest
```

Constructs DeleteReceiptRuleSetRequest from required parameters

#### `newDeleteReceiptRuleSetRequest'`

``` purescript
newDeleteReceiptRuleSetRequest' :: ReceiptRuleSetName -> ({ "RuleSetName" :: ReceiptRuleSetName } -> { "RuleSetName" :: ReceiptRuleSetName }) -> DeleteReceiptRuleSetRequest
```

Constructs DeleteReceiptRuleSetRequest's fields from required parameters

#### `DeleteReceiptRuleSetResponse`

``` purescript
newtype DeleteReceiptRuleSetResponse
  = DeleteReceiptRuleSetResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype DeleteReceiptRuleSetResponse _
Generic DeleteReceiptRuleSetResponse _
Show DeleteReceiptRuleSetResponse
Decode DeleteReceiptRuleSetResponse
Encode DeleteReceiptRuleSetResponse
```

#### `DeleteTemplateRequest`

``` purescript
newtype DeleteTemplateRequest
  = DeleteTemplateRequest { "TemplateName" :: TemplateName }
```

<p>Represents a request to delete an email template. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DeleteTemplateRequest _
Generic DeleteTemplateRequest _
Show DeleteTemplateRequest
Decode DeleteTemplateRequest
Encode DeleteTemplateRequest
```

#### `newDeleteTemplateRequest`

``` purescript
newDeleteTemplateRequest :: TemplateName -> DeleteTemplateRequest
```

Constructs DeleteTemplateRequest from required parameters

#### `newDeleteTemplateRequest'`

``` purescript
newDeleteTemplateRequest' :: TemplateName -> ({ "TemplateName" :: TemplateName } -> { "TemplateName" :: TemplateName }) -> DeleteTemplateRequest
```

Constructs DeleteTemplateRequest's fields from required parameters

#### `DeleteTemplateResponse`

``` purescript
newtype DeleteTemplateResponse
  = DeleteTemplateResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteTemplateResponse _
Generic DeleteTemplateResponse _
Show DeleteTemplateResponse
Decode DeleteTemplateResponse
Encode DeleteTemplateResponse
```

#### `DeleteVerifiedEmailAddressRequest`

``` purescript
newtype DeleteVerifiedEmailAddressRequest
  = DeleteVerifiedEmailAddressRequest { "EmailAddress" :: Address }
```

<p>Represents a request to delete an email address from the list of email addresses you have attempted to verify under your AWS account.</p>

##### Instances
``` purescript
Newtype DeleteVerifiedEmailAddressRequest _
Generic DeleteVerifiedEmailAddressRequest _
Show DeleteVerifiedEmailAddressRequest
Decode DeleteVerifiedEmailAddressRequest
Encode DeleteVerifiedEmailAddressRequest
```

#### `newDeleteVerifiedEmailAddressRequest`

``` purescript
newDeleteVerifiedEmailAddressRequest :: Address -> DeleteVerifiedEmailAddressRequest
```

Constructs DeleteVerifiedEmailAddressRequest from required parameters

#### `newDeleteVerifiedEmailAddressRequest'`

``` purescript
newDeleteVerifiedEmailAddressRequest' :: Address -> ({ "EmailAddress" :: Address } -> { "EmailAddress" :: Address }) -> DeleteVerifiedEmailAddressRequest
```

Constructs DeleteVerifiedEmailAddressRequest's fields from required parameters

#### `DescribeActiveReceiptRuleSetRequest`

``` purescript
newtype DescribeActiveReceiptRuleSetRequest
  = DescribeActiveReceiptRuleSetRequest NoArguments
```

<p>Represents a request to return the metadata and receipt rules for the receipt rule set that is currently active. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DescribeActiveReceiptRuleSetRequest _
Generic DescribeActiveReceiptRuleSetRequest _
Show DescribeActiveReceiptRuleSetRequest
Decode DescribeActiveReceiptRuleSetRequest
Encode DescribeActiveReceiptRuleSetRequest
```

#### `DescribeActiveReceiptRuleSetResponse`

``` purescript
newtype DescribeActiveReceiptRuleSetResponse
  = DescribeActiveReceiptRuleSetResponse { "Metadata" :: NullOrUndefined (ReceiptRuleSetMetadata), "Rules" :: NullOrUndefined (ReceiptRulesList) }
```

<p>Represents the metadata and receipt rules for the receipt rule set that is currently active.</p>

##### Instances
``` purescript
Newtype DescribeActiveReceiptRuleSetResponse _
Generic DescribeActiveReceiptRuleSetResponse _
Show DescribeActiveReceiptRuleSetResponse
Decode DescribeActiveReceiptRuleSetResponse
Encode DescribeActiveReceiptRuleSetResponse
```

#### `newDescribeActiveReceiptRuleSetResponse`

``` purescript
newDescribeActiveReceiptRuleSetResponse :: DescribeActiveReceiptRuleSetResponse
```

Constructs DescribeActiveReceiptRuleSetResponse from required parameters

#### `newDescribeActiveReceiptRuleSetResponse'`

``` purescript
newDescribeActiveReceiptRuleSetResponse' :: ({ "Metadata" :: NullOrUndefined (ReceiptRuleSetMetadata), "Rules" :: NullOrUndefined (ReceiptRulesList) } -> { "Metadata" :: NullOrUndefined (ReceiptRuleSetMetadata), "Rules" :: NullOrUndefined (ReceiptRulesList) }) -> DescribeActiveReceiptRuleSetResponse
```

Constructs DescribeActiveReceiptRuleSetResponse's fields from required parameters

#### `DescribeConfigurationSetRequest`

``` purescript
newtype DescribeConfigurationSetRequest
  = DescribeConfigurationSetRequest { "ConfigurationSetName" :: ConfigurationSetName, "ConfigurationSetAttributeNames" :: NullOrUndefined (ConfigurationSetAttributeList) }
```

<p>Represents a request to return the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DescribeConfigurationSetRequest _
Generic DescribeConfigurationSetRequest _
Show DescribeConfigurationSetRequest
Decode DescribeConfigurationSetRequest
Encode DescribeConfigurationSetRequest
```

#### `newDescribeConfigurationSetRequest`

``` purescript
newDescribeConfigurationSetRequest :: ConfigurationSetName -> DescribeConfigurationSetRequest
```

Constructs DescribeConfigurationSetRequest from required parameters

#### `newDescribeConfigurationSetRequest'`

``` purescript
newDescribeConfigurationSetRequest' :: ConfigurationSetName -> ({ "ConfigurationSetName" :: ConfigurationSetName, "ConfigurationSetAttributeNames" :: NullOrUndefined (ConfigurationSetAttributeList) } -> { "ConfigurationSetName" :: ConfigurationSetName, "ConfigurationSetAttributeNames" :: NullOrUndefined (ConfigurationSetAttributeList) }) -> DescribeConfigurationSetRequest
```

Constructs DescribeConfigurationSetRequest's fields from required parameters

#### `DescribeConfigurationSetResponse`

``` purescript
newtype DescribeConfigurationSetResponse
  = DescribeConfigurationSetResponse { "ConfigurationSet" :: NullOrUndefined (ConfigurationSet), "EventDestinations" :: NullOrUndefined (EventDestinations), "TrackingOptions" :: NullOrUndefined (TrackingOptions), "ReputationOptions" :: NullOrUndefined (ReputationOptions) }
```

<p>Represents the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DescribeConfigurationSetResponse _
Generic DescribeConfigurationSetResponse _
Show DescribeConfigurationSetResponse
Decode DescribeConfigurationSetResponse
Encode DescribeConfigurationSetResponse
```

#### `newDescribeConfigurationSetResponse`

``` purescript
newDescribeConfigurationSetResponse :: DescribeConfigurationSetResponse
```

Constructs DescribeConfigurationSetResponse from required parameters

#### `newDescribeConfigurationSetResponse'`

``` purescript
newDescribeConfigurationSetResponse' :: ({ "ConfigurationSet" :: NullOrUndefined (ConfigurationSet), "EventDestinations" :: NullOrUndefined (EventDestinations), "TrackingOptions" :: NullOrUndefined (TrackingOptions), "ReputationOptions" :: NullOrUndefined (ReputationOptions) } -> { "ConfigurationSet" :: NullOrUndefined (ConfigurationSet), "EventDestinations" :: NullOrUndefined (EventDestinations), "TrackingOptions" :: NullOrUndefined (TrackingOptions), "ReputationOptions" :: NullOrUndefined (ReputationOptions) }) -> DescribeConfigurationSetResponse
```

Constructs DescribeConfigurationSetResponse's fields from required parameters

#### `DescribeReceiptRuleRequest`

``` purescript
newtype DescribeReceiptRuleRequest
  = DescribeReceiptRuleRequest { "RuleSetName" :: ReceiptRuleSetName, "RuleName" :: ReceiptRuleName }
```

<p>Represents a request to return the details of a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DescribeReceiptRuleRequest _
Generic DescribeReceiptRuleRequest _
Show DescribeReceiptRuleRequest
Decode DescribeReceiptRuleRequest
Encode DescribeReceiptRuleRequest
```

#### `newDescribeReceiptRuleRequest`

``` purescript
newDescribeReceiptRuleRequest :: ReceiptRuleName -> ReceiptRuleSetName -> DescribeReceiptRuleRequest
```

Constructs DescribeReceiptRuleRequest from required parameters

#### `newDescribeReceiptRuleRequest'`

``` purescript
newDescribeReceiptRuleRequest' :: ReceiptRuleName -> ReceiptRuleSetName -> ({ "RuleSetName" :: ReceiptRuleSetName, "RuleName" :: ReceiptRuleName } -> { "RuleSetName" :: ReceiptRuleSetName, "RuleName" :: ReceiptRuleName }) -> DescribeReceiptRuleRequest
```

Constructs DescribeReceiptRuleRequest's fields from required parameters

#### `DescribeReceiptRuleResponse`

``` purescript
newtype DescribeReceiptRuleResponse
  = DescribeReceiptRuleResponse { "Rule" :: NullOrUndefined (ReceiptRule) }
```

<p>Represents the details of a receipt rule.</p>

##### Instances
``` purescript
Newtype DescribeReceiptRuleResponse _
Generic DescribeReceiptRuleResponse _
Show DescribeReceiptRuleResponse
Decode DescribeReceiptRuleResponse
Encode DescribeReceiptRuleResponse
```

#### `newDescribeReceiptRuleResponse`

``` purescript
newDescribeReceiptRuleResponse :: DescribeReceiptRuleResponse
```

Constructs DescribeReceiptRuleResponse from required parameters

#### `newDescribeReceiptRuleResponse'`

``` purescript
newDescribeReceiptRuleResponse' :: ({ "Rule" :: NullOrUndefined (ReceiptRule) } -> { "Rule" :: NullOrUndefined (ReceiptRule) }) -> DescribeReceiptRuleResponse
```

Constructs DescribeReceiptRuleResponse's fields from required parameters

#### `DescribeReceiptRuleSetRequest`

``` purescript
newtype DescribeReceiptRuleSetRequest
  = DescribeReceiptRuleSetRequest { "RuleSetName" :: ReceiptRuleSetName }
```

<p>Represents a request to return the details of a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype DescribeReceiptRuleSetRequest _
Generic DescribeReceiptRuleSetRequest _
Show DescribeReceiptRuleSetRequest
Decode DescribeReceiptRuleSetRequest
Encode DescribeReceiptRuleSetRequest
```

#### `newDescribeReceiptRuleSetRequest`

``` purescript
newDescribeReceiptRuleSetRequest :: ReceiptRuleSetName -> DescribeReceiptRuleSetRequest
```

Constructs DescribeReceiptRuleSetRequest from required parameters

#### `newDescribeReceiptRuleSetRequest'`

``` purescript
newDescribeReceiptRuleSetRequest' :: ReceiptRuleSetName -> ({ "RuleSetName" :: ReceiptRuleSetName } -> { "RuleSetName" :: ReceiptRuleSetName }) -> DescribeReceiptRuleSetRequest
```

Constructs DescribeReceiptRuleSetRequest's fields from required parameters

#### `DescribeReceiptRuleSetResponse`

``` purescript
newtype DescribeReceiptRuleSetResponse
  = DescribeReceiptRuleSetResponse { "Metadata" :: NullOrUndefined (ReceiptRuleSetMetadata), "Rules" :: NullOrUndefined (ReceiptRulesList) }
```

<p>Represents the details of the specified receipt rule set.</p>

##### Instances
``` purescript
Newtype DescribeReceiptRuleSetResponse _
Generic DescribeReceiptRuleSetResponse _
Show DescribeReceiptRuleSetResponse
Decode DescribeReceiptRuleSetResponse
Encode DescribeReceiptRuleSetResponse
```

#### `newDescribeReceiptRuleSetResponse`

``` purescript
newDescribeReceiptRuleSetResponse :: DescribeReceiptRuleSetResponse
```

Constructs DescribeReceiptRuleSetResponse from required parameters

#### `newDescribeReceiptRuleSetResponse'`

``` purescript
newDescribeReceiptRuleSetResponse' :: ({ "Metadata" :: NullOrUndefined (ReceiptRuleSetMetadata), "Rules" :: NullOrUndefined (ReceiptRulesList) } -> { "Metadata" :: NullOrUndefined (ReceiptRuleSetMetadata), "Rules" :: NullOrUndefined (ReceiptRulesList) }) -> DescribeReceiptRuleSetResponse
```

Constructs DescribeReceiptRuleSetResponse's fields from required parameters

#### `Destination`

``` purescript
newtype Destination
  = Destination { "ToAddresses" :: NullOrUndefined (AddressList), "CcAddresses" :: NullOrUndefined (AddressList), "BccAddresses" :: NullOrUndefined (AddressList) }
```

<p>Represents the destination of the message, consisting of To:, CC:, and BCC: fields.</p> <note> <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the <i>local part</i> of a destination email address (the part of the email address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII characters</a>. If the <i>domain part</i> of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>.</p> </note>

##### Instances
``` purescript
Newtype Destination _
Generic Destination _
Show Destination
Decode Destination
Encode Destination
```

#### `newDestination`

``` purescript
newDestination :: Destination
```

Constructs Destination from required parameters

#### `newDestination'`

``` purescript
newDestination' :: ({ "ToAddresses" :: NullOrUndefined (AddressList), "CcAddresses" :: NullOrUndefined (AddressList), "BccAddresses" :: NullOrUndefined (AddressList) } -> { "ToAddresses" :: NullOrUndefined (AddressList), "CcAddresses" :: NullOrUndefined (AddressList), "BccAddresses" :: NullOrUndefined (AddressList) }) -> Destination
```

Constructs Destination's fields from required parameters

#### `DiagnosticCode`

``` purescript
newtype DiagnosticCode
  = DiagnosticCode String
```

##### Instances
``` purescript
Newtype DiagnosticCode _
Generic DiagnosticCode _
Show DiagnosticCode
Decode DiagnosticCode
Encode DiagnosticCode
```

#### `DimensionName`

``` purescript
newtype DimensionName
  = DimensionName String
```

##### Instances
``` purescript
Newtype DimensionName _
Generic DimensionName _
Show DimensionName
Decode DimensionName
Encode DimensionName
```

#### `DimensionValueSource`

``` purescript
newtype DimensionValueSource
  = DimensionValueSource String
```

##### Instances
``` purescript
Newtype DimensionValueSource _
Generic DimensionValueSource _
Show DimensionValueSource
Decode DimensionValueSource
Encode DimensionValueSource
```

#### `DkimAttributes`

``` purescript
newtype DkimAttributes
  = DkimAttributes (StrMap IdentityDkimAttributes)
```

##### Instances
``` purescript
Newtype DkimAttributes _
Generic DkimAttributes _
Show DkimAttributes
Decode DkimAttributes
Encode DkimAttributes
```

#### `Domain`

``` purescript
newtype Domain
  = Domain String
```

##### Instances
``` purescript
Newtype Domain _
Generic Domain _
Show Domain
Decode Domain
Encode Domain
```

#### `DsnAction`

``` purescript
newtype DsnAction
  = DsnAction String
```

##### Instances
``` purescript
Newtype DsnAction _
Generic DsnAction _
Show DsnAction
Decode DsnAction
Encode DsnAction
```

#### `DsnStatus`

``` purescript
newtype DsnStatus
  = DsnStatus String
```

##### Instances
``` purescript
Newtype DsnStatus _
Generic DsnStatus _
Show DsnStatus
Decode DsnStatus
Encode DsnStatus
```

#### `Enabled`

``` purescript
newtype Enabled
  = Enabled Boolean
```

##### Instances
``` purescript
Newtype Enabled _
Generic Enabled _
Show Enabled
Decode Enabled
Encode Enabled
```

#### `Error`

``` purescript
newtype Error
  = Error String
```

##### Instances
``` purescript
Newtype Error _
Generic Error _
Show Error
Decode Error
Encode Error
```

#### `EventDestination`

``` purescript
newtype EventDestination
  = EventDestination { "Name" :: EventDestinationName, "Enabled" :: NullOrUndefined (Enabled), "MatchingEventTypes" :: EventTypes, "KinesisFirehoseDestination" :: NullOrUndefined (KinesisFirehoseDestination), "CloudWatchDestination" :: NullOrUndefined (CloudWatchDestination), "SNSDestination" :: NullOrUndefined (SNSDestination) }
```

<p>Contains information about the event destination that the specified email sending events will be published to.</p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose or Amazon Simple Notification Service (Amazon SNS).</p> </note> <p>Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype EventDestination _
Generic EventDestination _
Show EventDestination
Decode EventDestination
Encode EventDestination
```

#### `newEventDestination`

``` purescript
newEventDestination :: EventTypes -> EventDestinationName -> EventDestination
```

Constructs EventDestination from required parameters

#### `newEventDestination'`

``` purescript
newEventDestination' :: EventTypes -> EventDestinationName -> ({ "Name" :: EventDestinationName, "Enabled" :: NullOrUndefined (Enabled), "MatchingEventTypes" :: EventTypes, "KinesisFirehoseDestination" :: NullOrUndefined (KinesisFirehoseDestination), "CloudWatchDestination" :: NullOrUndefined (CloudWatchDestination), "SNSDestination" :: NullOrUndefined (SNSDestination) } -> { "Name" :: EventDestinationName, "Enabled" :: NullOrUndefined (Enabled), "MatchingEventTypes" :: EventTypes, "KinesisFirehoseDestination" :: NullOrUndefined (KinesisFirehoseDestination), "CloudWatchDestination" :: NullOrUndefined (CloudWatchDestination), "SNSDestination" :: NullOrUndefined (SNSDestination) }) -> EventDestination
```

Constructs EventDestination's fields from required parameters

#### `EventDestinationAlreadyExistsException`

``` purescript
newtype EventDestinationAlreadyExistsException
  = EventDestinationAlreadyExistsException { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) }
```

<p>Indicates that the event destination could not be created because of a naming conflict.</p>

##### Instances
``` purescript
Newtype EventDestinationAlreadyExistsException _
Generic EventDestinationAlreadyExistsException _
Show EventDestinationAlreadyExistsException
Decode EventDestinationAlreadyExistsException
Encode EventDestinationAlreadyExistsException
```

#### `newEventDestinationAlreadyExistsException`

``` purescript
newEventDestinationAlreadyExistsException :: EventDestinationAlreadyExistsException
```

Constructs EventDestinationAlreadyExistsException from required parameters

#### `newEventDestinationAlreadyExistsException'`

``` purescript
newEventDestinationAlreadyExistsException' :: ({ "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) } -> { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) }) -> EventDestinationAlreadyExistsException
```

Constructs EventDestinationAlreadyExistsException's fields from required parameters

#### `EventDestinationDoesNotExistException`

``` purescript
newtype EventDestinationDoesNotExistException
  = EventDestinationDoesNotExistException { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) }
```

<p>Indicates that the event destination does not exist.</p>

##### Instances
``` purescript
Newtype EventDestinationDoesNotExistException _
Generic EventDestinationDoesNotExistException _
Show EventDestinationDoesNotExistException
Decode EventDestinationDoesNotExistException
Encode EventDestinationDoesNotExistException
```

#### `newEventDestinationDoesNotExistException`

``` purescript
newEventDestinationDoesNotExistException :: EventDestinationDoesNotExistException
```

Constructs EventDestinationDoesNotExistException from required parameters

#### `newEventDestinationDoesNotExistException'`

``` purescript
newEventDestinationDoesNotExistException' :: ({ "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) } -> { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) }) -> EventDestinationDoesNotExistException
```

Constructs EventDestinationDoesNotExistException's fields from required parameters

#### `EventDestinationName`

``` purescript
newtype EventDestinationName
  = EventDestinationName String
```

##### Instances
``` purescript
Newtype EventDestinationName _
Generic EventDestinationName _
Show EventDestinationName
Decode EventDestinationName
Encode EventDestinationName
```

#### `EventDestinations`

``` purescript
newtype EventDestinations
  = EventDestinations (Array EventDestination)
```

##### Instances
``` purescript
Newtype EventDestinations _
Generic EventDestinations _
Show EventDestinations
Decode EventDestinations
Encode EventDestinations
```

#### `EventType`

``` purescript
newtype EventType
  = EventType String
```

##### Instances
``` purescript
Newtype EventType _
Generic EventType _
Show EventType
Decode EventType
Encode EventType
```

#### `EventTypes`

``` purescript
newtype EventTypes
  = EventTypes (Array EventType)
```

##### Instances
``` purescript
Newtype EventTypes _
Generic EventTypes _
Show EventTypes
Decode EventTypes
Encode EventTypes
```

#### `Explanation`

``` purescript
newtype Explanation
  = Explanation String
```

##### Instances
``` purescript
Newtype Explanation _
Generic Explanation _
Show Explanation
Decode Explanation
Encode Explanation
```

#### `ExtensionField`

``` purescript
newtype ExtensionField
  = ExtensionField { "Name" :: ExtensionFieldName, "Value" :: ExtensionFieldValue }
```

<p>Additional X-headers to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ExtensionField _
Generic ExtensionField _
Show ExtensionField
Decode ExtensionField
Encode ExtensionField
```

#### `newExtensionField`

``` purescript
newExtensionField :: ExtensionFieldName -> ExtensionFieldValue -> ExtensionField
```

Constructs ExtensionField from required parameters

#### `newExtensionField'`

``` purescript
newExtensionField' :: ExtensionFieldName -> ExtensionFieldValue -> ({ "Name" :: ExtensionFieldName, "Value" :: ExtensionFieldValue } -> { "Name" :: ExtensionFieldName, "Value" :: ExtensionFieldValue }) -> ExtensionField
```

Constructs ExtensionField's fields from required parameters

#### `ExtensionFieldList`

``` purescript
newtype ExtensionFieldList
  = ExtensionFieldList (Array ExtensionField)
```

##### Instances
``` purescript
Newtype ExtensionFieldList _
Generic ExtensionFieldList _
Show ExtensionFieldList
Decode ExtensionFieldList
Encode ExtensionFieldList
```

#### `ExtensionFieldName`

``` purescript
newtype ExtensionFieldName
  = ExtensionFieldName String
```

##### Instances
``` purescript
Newtype ExtensionFieldName _
Generic ExtensionFieldName _
Show ExtensionFieldName
Decode ExtensionFieldName
Encode ExtensionFieldName
```

#### `ExtensionFieldValue`

``` purescript
newtype ExtensionFieldValue
  = ExtensionFieldValue String
```

##### Instances
``` purescript
Newtype ExtensionFieldValue _
Generic ExtensionFieldValue _
Show ExtensionFieldValue
Decode ExtensionFieldValue
Encode ExtensionFieldValue
```

#### `FailureRedirectionURL`

``` purescript
newtype FailureRedirectionURL
  = FailureRedirectionURL String
```

##### Instances
``` purescript
Newtype FailureRedirectionURL _
Generic FailureRedirectionURL _
Show FailureRedirectionURL
Decode FailureRedirectionURL
Encode FailureRedirectionURL
```

#### `FromAddress`

``` purescript
newtype FromAddress
  = FromAddress String
```

##### Instances
``` purescript
Newtype FromAddress _
Generic FromAddress _
Show FromAddress
Decode FromAddress
Encode FromAddress
```

#### `FromEmailAddressNotVerifiedException`

``` purescript
newtype FromEmailAddressNotVerifiedException
  = FromEmailAddressNotVerifiedException { "FromEmailAddress" :: NullOrUndefined (FromAddress) }
```

<p>Indicates that the sender address specified for a custom verification email is not verified, and is therefore not eligible to send the custom verification email. </p>

##### Instances
``` purescript
Newtype FromEmailAddressNotVerifiedException _
Generic FromEmailAddressNotVerifiedException _
Show FromEmailAddressNotVerifiedException
Decode FromEmailAddressNotVerifiedException
Encode FromEmailAddressNotVerifiedException
```

#### `newFromEmailAddressNotVerifiedException`

``` purescript
newFromEmailAddressNotVerifiedException :: FromEmailAddressNotVerifiedException
```

Constructs FromEmailAddressNotVerifiedException from required parameters

#### `newFromEmailAddressNotVerifiedException'`

``` purescript
newFromEmailAddressNotVerifiedException' :: ({ "FromEmailAddress" :: NullOrUndefined (FromAddress) } -> { "FromEmailAddress" :: NullOrUndefined (FromAddress) }) -> FromEmailAddressNotVerifiedException
```

Constructs FromEmailAddressNotVerifiedException's fields from required parameters

#### `GetAccountSendingEnabledResponse`

``` purescript
newtype GetAccountSendingEnabledResponse
  = GetAccountSendingEnabledResponse { "Enabled" :: NullOrUndefined (Enabled) }
```

<p>Represents a request to return the email sending status for your Amazon SES account.</p>

##### Instances
``` purescript
Newtype GetAccountSendingEnabledResponse _
Generic GetAccountSendingEnabledResponse _
Show GetAccountSendingEnabledResponse
Decode GetAccountSendingEnabledResponse
Encode GetAccountSendingEnabledResponse
```

#### `newGetAccountSendingEnabledResponse`

``` purescript
newGetAccountSendingEnabledResponse :: GetAccountSendingEnabledResponse
```

Constructs GetAccountSendingEnabledResponse from required parameters

#### `newGetAccountSendingEnabledResponse'`

``` purescript
newGetAccountSendingEnabledResponse' :: ({ "Enabled" :: NullOrUndefined (Enabled) } -> { "Enabled" :: NullOrUndefined (Enabled) }) -> GetAccountSendingEnabledResponse
```

Constructs GetAccountSendingEnabledResponse's fields from required parameters

#### `GetCustomVerificationEmailTemplateRequest`

``` purescript
newtype GetCustomVerificationEmailTemplateRequest
  = GetCustomVerificationEmailTemplateRequest { "TemplateName" :: TemplateName }
```

<p>Represents a request to retrieve an existing custom verification email template.</p>

##### Instances
``` purescript
Newtype GetCustomVerificationEmailTemplateRequest _
Generic GetCustomVerificationEmailTemplateRequest _
Show GetCustomVerificationEmailTemplateRequest
Decode GetCustomVerificationEmailTemplateRequest
Encode GetCustomVerificationEmailTemplateRequest
```

#### `newGetCustomVerificationEmailTemplateRequest`

``` purescript
newGetCustomVerificationEmailTemplateRequest :: TemplateName -> GetCustomVerificationEmailTemplateRequest
```

Constructs GetCustomVerificationEmailTemplateRequest from required parameters

#### `newGetCustomVerificationEmailTemplateRequest'`

``` purescript
newGetCustomVerificationEmailTemplateRequest' :: TemplateName -> ({ "TemplateName" :: TemplateName } -> { "TemplateName" :: TemplateName }) -> GetCustomVerificationEmailTemplateRequest
```

Constructs GetCustomVerificationEmailTemplateRequest's fields from required parameters

#### `GetCustomVerificationEmailTemplateResponse`

``` purescript
newtype GetCustomVerificationEmailTemplateResponse
  = GetCustomVerificationEmailTemplateResponse { "TemplateName" :: NullOrUndefined (TemplateName), "FromEmailAddress" :: NullOrUndefined (FromAddress), "TemplateSubject" :: NullOrUndefined (Subject), "TemplateContent" :: NullOrUndefined (TemplateContent), "SuccessRedirectionURL" :: NullOrUndefined (SuccessRedirectionURL), "FailureRedirectionURL" :: NullOrUndefined (FailureRedirectionURL) }
```

<p>The content of the custom verification email template.</p>

##### Instances
``` purescript
Newtype GetCustomVerificationEmailTemplateResponse _
Generic GetCustomVerificationEmailTemplateResponse _
Show GetCustomVerificationEmailTemplateResponse
Decode GetCustomVerificationEmailTemplateResponse
Encode GetCustomVerificationEmailTemplateResponse
```

#### `newGetCustomVerificationEmailTemplateResponse`

``` purescript
newGetCustomVerificationEmailTemplateResponse :: GetCustomVerificationEmailTemplateResponse
```

Constructs GetCustomVerificationEmailTemplateResponse from required parameters

#### `newGetCustomVerificationEmailTemplateResponse'`

``` purescript
newGetCustomVerificationEmailTemplateResponse' :: ({ "TemplateName" :: NullOrUndefined (TemplateName), "FromEmailAddress" :: NullOrUndefined (FromAddress), "TemplateSubject" :: NullOrUndefined (Subject), "TemplateContent" :: NullOrUndefined (TemplateContent), "SuccessRedirectionURL" :: NullOrUndefined (SuccessRedirectionURL), "FailureRedirectionURL" :: NullOrUndefined (FailureRedirectionURL) } -> { "TemplateName" :: NullOrUndefined (TemplateName), "FromEmailAddress" :: NullOrUndefined (FromAddress), "TemplateSubject" :: NullOrUndefined (Subject), "TemplateContent" :: NullOrUndefined (TemplateContent), "SuccessRedirectionURL" :: NullOrUndefined (SuccessRedirectionURL), "FailureRedirectionURL" :: NullOrUndefined (FailureRedirectionURL) }) -> GetCustomVerificationEmailTemplateResponse
```

Constructs GetCustomVerificationEmailTemplateResponse's fields from required parameters

#### `GetIdentityDkimAttributesRequest`

``` purescript
newtype GetIdentityDkimAttributesRequest
  = GetIdentityDkimAttributesRequest { "Identities" :: IdentityList }
```

<p>Represents a request for the status of Amazon SES Easy DKIM signing for an identity. For domain identities, this request also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES successfully verified that these tokens were published. For more information about Easy DKIM, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype GetIdentityDkimAttributesRequest _
Generic GetIdentityDkimAttributesRequest _
Show GetIdentityDkimAttributesRequest
Decode GetIdentityDkimAttributesRequest
Encode GetIdentityDkimAttributesRequest
```

#### `newGetIdentityDkimAttributesRequest`

``` purescript
newGetIdentityDkimAttributesRequest :: IdentityList -> GetIdentityDkimAttributesRequest
```

Constructs GetIdentityDkimAttributesRequest from required parameters

#### `newGetIdentityDkimAttributesRequest'`

``` purescript
newGetIdentityDkimAttributesRequest' :: IdentityList -> ({ "Identities" :: IdentityList } -> { "Identities" :: IdentityList }) -> GetIdentityDkimAttributesRequest
```

Constructs GetIdentityDkimAttributesRequest's fields from required parameters

#### `GetIdentityDkimAttributesResponse`

``` purescript
newtype GetIdentityDkimAttributesResponse
  = GetIdentityDkimAttributesResponse { "DkimAttributes" :: DkimAttributes }
```

<p>Represents the status of Amazon SES Easy DKIM signing for an identity. For domain identities, this response also contains the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES successfully verified that these tokens were published.</p>

##### Instances
``` purescript
Newtype GetIdentityDkimAttributesResponse _
Generic GetIdentityDkimAttributesResponse _
Show GetIdentityDkimAttributesResponse
Decode GetIdentityDkimAttributesResponse
Encode GetIdentityDkimAttributesResponse
```

#### `newGetIdentityDkimAttributesResponse`

``` purescript
newGetIdentityDkimAttributesResponse :: DkimAttributes -> GetIdentityDkimAttributesResponse
```

Constructs GetIdentityDkimAttributesResponse from required parameters

#### `newGetIdentityDkimAttributesResponse'`

``` purescript
newGetIdentityDkimAttributesResponse' :: DkimAttributes -> ({ "DkimAttributes" :: DkimAttributes } -> { "DkimAttributes" :: DkimAttributes }) -> GetIdentityDkimAttributesResponse
```

Constructs GetIdentityDkimAttributesResponse's fields from required parameters

#### `GetIdentityMailFromDomainAttributesRequest`

``` purescript
newtype GetIdentityMailFromDomainAttributesRequest
  = GetIdentityMailFromDomainAttributesRequest { "Identities" :: IdentityList }
```

<p>Represents a request to return the Amazon SES custom MAIL FROM attributes for a list of identities. For information about using a custom MAIL FROM domain, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype GetIdentityMailFromDomainAttributesRequest _
Generic GetIdentityMailFromDomainAttributesRequest _
Show GetIdentityMailFromDomainAttributesRequest
Decode GetIdentityMailFromDomainAttributesRequest
Encode GetIdentityMailFromDomainAttributesRequest
```

#### `newGetIdentityMailFromDomainAttributesRequest`

``` purescript
newGetIdentityMailFromDomainAttributesRequest :: IdentityList -> GetIdentityMailFromDomainAttributesRequest
```

Constructs GetIdentityMailFromDomainAttributesRequest from required parameters

#### `newGetIdentityMailFromDomainAttributesRequest'`

``` purescript
newGetIdentityMailFromDomainAttributesRequest' :: IdentityList -> ({ "Identities" :: IdentityList } -> { "Identities" :: IdentityList }) -> GetIdentityMailFromDomainAttributesRequest
```

Constructs GetIdentityMailFromDomainAttributesRequest's fields from required parameters

#### `GetIdentityMailFromDomainAttributesResponse`

``` purescript
newtype GetIdentityMailFromDomainAttributesResponse
  = GetIdentityMailFromDomainAttributesResponse { "MailFromDomainAttributes" :: MailFromDomainAttributes }
```

<p>Represents the custom MAIL FROM attributes for a list of identities.</p>

##### Instances
``` purescript
Newtype GetIdentityMailFromDomainAttributesResponse _
Generic GetIdentityMailFromDomainAttributesResponse _
Show GetIdentityMailFromDomainAttributesResponse
Decode GetIdentityMailFromDomainAttributesResponse
Encode GetIdentityMailFromDomainAttributesResponse
```

#### `newGetIdentityMailFromDomainAttributesResponse`

``` purescript
newGetIdentityMailFromDomainAttributesResponse :: MailFromDomainAttributes -> GetIdentityMailFromDomainAttributesResponse
```

Constructs GetIdentityMailFromDomainAttributesResponse from required parameters

#### `newGetIdentityMailFromDomainAttributesResponse'`

``` purescript
newGetIdentityMailFromDomainAttributesResponse' :: MailFromDomainAttributes -> ({ "MailFromDomainAttributes" :: MailFromDomainAttributes } -> { "MailFromDomainAttributes" :: MailFromDomainAttributes }) -> GetIdentityMailFromDomainAttributesResponse
```

Constructs GetIdentityMailFromDomainAttributesResponse's fields from required parameters

#### `GetIdentityNotificationAttributesRequest`

``` purescript
newtype GetIdentityNotificationAttributesRequest
  = GetIdentityNotificationAttributesRequest { "Identities" :: IdentityList }
```

<p>Represents a request to return the notification attributes for a list of identities you verified with Amazon SES. For information about Amazon SES notifications, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype GetIdentityNotificationAttributesRequest _
Generic GetIdentityNotificationAttributesRequest _
Show GetIdentityNotificationAttributesRequest
Decode GetIdentityNotificationAttributesRequest
Encode GetIdentityNotificationAttributesRequest
```

#### `newGetIdentityNotificationAttributesRequest`

``` purescript
newGetIdentityNotificationAttributesRequest :: IdentityList -> GetIdentityNotificationAttributesRequest
```

Constructs GetIdentityNotificationAttributesRequest from required parameters

#### `newGetIdentityNotificationAttributesRequest'`

``` purescript
newGetIdentityNotificationAttributesRequest' :: IdentityList -> ({ "Identities" :: IdentityList } -> { "Identities" :: IdentityList }) -> GetIdentityNotificationAttributesRequest
```

Constructs GetIdentityNotificationAttributesRequest's fields from required parameters

#### `GetIdentityNotificationAttributesResponse`

``` purescript
newtype GetIdentityNotificationAttributesResponse
  = GetIdentityNotificationAttributesResponse { "NotificationAttributes" :: NotificationAttributes }
```

<p>Represents the notification attributes for a list of identities.</p>

##### Instances
``` purescript
Newtype GetIdentityNotificationAttributesResponse _
Generic GetIdentityNotificationAttributesResponse _
Show GetIdentityNotificationAttributesResponse
Decode GetIdentityNotificationAttributesResponse
Encode GetIdentityNotificationAttributesResponse
```

#### `newGetIdentityNotificationAttributesResponse`

``` purescript
newGetIdentityNotificationAttributesResponse :: NotificationAttributes -> GetIdentityNotificationAttributesResponse
```

Constructs GetIdentityNotificationAttributesResponse from required parameters

#### `newGetIdentityNotificationAttributesResponse'`

``` purescript
newGetIdentityNotificationAttributesResponse' :: NotificationAttributes -> ({ "NotificationAttributes" :: NotificationAttributes } -> { "NotificationAttributes" :: NotificationAttributes }) -> GetIdentityNotificationAttributesResponse
```

Constructs GetIdentityNotificationAttributesResponse's fields from required parameters

#### `GetIdentityPoliciesRequest`

``` purescript
newtype GetIdentityPoliciesRequest
  = GetIdentityPoliciesRequest { "Identity" :: Identity, "PolicyNames" :: PolicyNameList }
```

<p>Represents a request to return the requested sending authorization policies for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype GetIdentityPoliciesRequest _
Generic GetIdentityPoliciesRequest _
Show GetIdentityPoliciesRequest
Decode GetIdentityPoliciesRequest
Encode GetIdentityPoliciesRequest
```

#### `newGetIdentityPoliciesRequest`

``` purescript
newGetIdentityPoliciesRequest :: Identity -> PolicyNameList -> GetIdentityPoliciesRequest
```

Constructs GetIdentityPoliciesRequest from required parameters

#### `newGetIdentityPoliciesRequest'`

``` purescript
newGetIdentityPoliciesRequest' :: Identity -> PolicyNameList -> ({ "Identity" :: Identity, "PolicyNames" :: PolicyNameList } -> { "Identity" :: Identity, "PolicyNames" :: PolicyNameList }) -> GetIdentityPoliciesRequest
```

Constructs GetIdentityPoliciesRequest's fields from required parameters

#### `GetIdentityPoliciesResponse`

``` purescript
newtype GetIdentityPoliciesResponse
  = GetIdentityPoliciesResponse { "Policies" :: PolicyMap }
```

<p>Represents the requested sending authorization policies.</p>

##### Instances
``` purescript
Newtype GetIdentityPoliciesResponse _
Generic GetIdentityPoliciesResponse _
Show GetIdentityPoliciesResponse
Decode GetIdentityPoliciesResponse
Encode GetIdentityPoliciesResponse
```

#### `newGetIdentityPoliciesResponse`

``` purescript
newGetIdentityPoliciesResponse :: PolicyMap -> GetIdentityPoliciesResponse
```

Constructs GetIdentityPoliciesResponse from required parameters

#### `newGetIdentityPoliciesResponse'`

``` purescript
newGetIdentityPoliciesResponse' :: PolicyMap -> ({ "Policies" :: PolicyMap } -> { "Policies" :: PolicyMap }) -> GetIdentityPoliciesResponse
```

Constructs GetIdentityPoliciesResponse's fields from required parameters

#### `GetIdentityVerificationAttributesRequest`

``` purescript
newtype GetIdentityVerificationAttributesRequest
  = GetIdentityVerificationAttributesRequest { "Identities" :: IdentityList }
```

<p>Represents a request to return the Amazon SES verification status of a list of identities. For domain identities, this request also returns the verification token. For information about verifying identities with Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype GetIdentityVerificationAttributesRequest _
Generic GetIdentityVerificationAttributesRequest _
Show GetIdentityVerificationAttributesRequest
Decode GetIdentityVerificationAttributesRequest
Encode GetIdentityVerificationAttributesRequest
```

#### `newGetIdentityVerificationAttributesRequest`

``` purescript
newGetIdentityVerificationAttributesRequest :: IdentityList -> GetIdentityVerificationAttributesRequest
```

Constructs GetIdentityVerificationAttributesRequest from required parameters

#### `newGetIdentityVerificationAttributesRequest'`

``` purescript
newGetIdentityVerificationAttributesRequest' :: IdentityList -> ({ "Identities" :: IdentityList } -> { "Identities" :: IdentityList }) -> GetIdentityVerificationAttributesRequest
```

Constructs GetIdentityVerificationAttributesRequest's fields from required parameters

#### `GetIdentityVerificationAttributesResponse`

``` purescript
newtype GetIdentityVerificationAttributesResponse
  = GetIdentityVerificationAttributesResponse { "VerificationAttributes" :: VerificationAttributes }
```

<p>The Amazon SES verification status of a list of identities. For domain identities, this response also contains the verification token.</p>

##### Instances
``` purescript
Newtype GetIdentityVerificationAttributesResponse _
Generic GetIdentityVerificationAttributesResponse _
Show GetIdentityVerificationAttributesResponse
Decode GetIdentityVerificationAttributesResponse
Encode GetIdentityVerificationAttributesResponse
```

#### `newGetIdentityVerificationAttributesResponse`

``` purescript
newGetIdentityVerificationAttributesResponse :: VerificationAttributes -> GetIdentityVerificationAttributesResponse
```

Constructs GetIdentityVerificationAttributesResponse from required parameters

#### `newGetIdentityVerificationAttributesResponse'`

``` purescript
newGetIdentityVerificationAttributesResponse' :: VerificationAttributes -> ({ "VerificationAttributes" :: VerificationAttributes } -> { "VerificationAttributes" :: VerificationAttributes }) -> GetIdentityVerificationAttributesResponse
```

Constructs GetIdentityVerificationAttributesResponse's fields from required parameters

#### `GetSendQuotaResponse`

``` purescript
newtype GetSendQuotaResponse
  = GetSendQuotaResponse { "Max24HourSend" :: NullOrUndefined (Max24HourSend), "MaxSendRate" :: NullOrUndefined (MaxSendRate), "SentLast24Hours" :: NullOrUndefined (SentLast24Hours) }
```

<p>Represents your Amazon SES daily sending quota, maximum send rate, and the number of emails you have sent in the last 24 hours.</p>

##### Instances
``` purescript
Newtype GetSendQuotaResponse _
Generic GetSendQuotaResponse _
Show GetSendQuotaResponse
Decode GetSendQuotaResponse
Encode GetSendQuotaResponse
```

#### `newGetSendQuotaResponse`

``` purescript
newGetSendQuotaResponse :: GetSendQuotaResponse
```

Constructs GetSendQuotaResponse from required parameters

#### `newGetSendQuotaResponse'`

``` purescript
newGetSendQuotaResponse' :: ({ "Max24HourSend" :: NullOrUndefined (Max24HourSend), "MaxSendRate" :: NullOrUndefined (MaxSendRate), "SentLast24Hours" :: NullOrUndefined (SentLast24Hours) } -> { "Max24HourSend" :: NullOrUndefined (Max24HourSend), "MaxSendRate" :: NullOrUndefined (MaxSendRate), "SentLast24Hours" :: NullOrUndefined (SentLast24Hours) }) -> GetSendQuotaResponse
```

Constructs GetSendQuotaResponse's fields from required parameters

#### `GetSendStatisticsResponse`

``` purescript
newtype GetSendStatisticsResponse
  = GetSendStatisticsResponse { "SendDataPoints" :: NullOrUndefined (SendDataPointList) }
```

<p>Represents a list of data points. This list contains aggregated data from the previous two weeks of your sending activity with Amazon SES.</p>

##### Instances
``` purescript
Newtype GetSendStatisticsResponse _
Generic GetSendStatisticsResponse _
Show GetSendStatisticsResponse
Decode GetSendStatisticsResponse
Encode GetSendStatisticsResponse
```

#### `newGetSendStatisticsResponse`

``` purescript
newGetSendStatisticsResponse :: GetSendStatisticsResponse
```

Constructs GetSendStatisticsResponse from required parameters

#### `newGetSendStatisticsResponse'`

``` purescript
newGetSendStatisticsResponse' :: ({ "SendDataPoints" :: NullOrUndefined (SendDataPointList) } -> { "SendDataPoints" :: NullOrUndefined (SendDataPointList) }) -> GetSendStatisticsResponse
```

Constructs GetSendStatisticsResponse's fields from required parameters

#### `GetTemplateRequest`

``` purescript
newtype GetTemplateRequest
  = GetTemplateRequest { "TemplateName" :: TemplateName }
```

##### Instances
``` purescript
Newtype GetTemplateRequest _
Generic GetTemplateRequest _
Show GetTemplateRequest
Decode GetTemplateRequest
Encode GetTemplateRequest
```

#### `newGetTemplateRequest`

``` purescript
newGetTemplateRequest :: TemplateName -> GetTemplateRequest
```

Constructs GetTemplateRequest from required parameters

#### `newGetTemplateRequest'`

``` purescript
newGetTemplateRequest' :: TemplateName -> ({ "TemplateName" :: TemplateName } -> { "TemplateName" :: TemplateName }) -> GetTemplateRequest
```

Constructs GetTemplateRequest's fields from required parameters

#### `GetTemplateResponse`

``` purescript
newtype GetTemplateResponse
  = GetTemplateResponse { "Template" :: NullOrUndefined (Template) }
```

##### Instances
``` purescript
Newtype GetTemplateResponse _
Generic GetTemplateResponse _
Show GetTemplateResponse
Decode GetTemplateResponse
Encode GetTemplateResponse
```

#### `newGetTemplateResponse`

``` purescript
newGetTemplateResponse :: GetTemplateResponse
```

Constructs GetTemplateResponse from required parameters

#### `newGetTemplateResponse'`

``` purescript
newGetTemplateResponse' :: ({ "Template" :: NullOrUndefined (Template) } -> { "Template" :: NullOrUndefined (Template) }) -> GetTemplateResponse
```

Constructs GetTemplateResponse's fields from required parameters

#### `HeaderName`

``` purescript
newtype HeaderName
  = HeaderName String
```

##### Instances
``` purescript
Newtype HeaderName _
Generic HeaderName _
Show HeaderName
Decode HeaderName
Encode HeaderName
```

#### `HeaderValue`

``` purescript
newtype HeaderValue
  = HeaderValue String
```

##### Instances
``` purescript
Newtype HeaderValue _
Generic HeaderValue _
Show HeaderValue
Decode HeaderValue
Encode HeaderValue
```

#### `HtmlPart`

``` purescript
newtype HtmlPart
  = HtmlPart String
```

##### Instances
``` purescript
Newtype HtmlPart _
Generic HtmlPart _
Show HtmlPart
Decode HtmlPart
Encode HtmlPart
```

#### `Identity`

``` purescript
newtype Identity
  = Identity String
```

##### Instances
``` purescript
Newtype Identity _
Generic Identity _
Show Identity
Decode Identity
Encode Identity
```

#### `IdentityDkimAttributes`

``` purescript
newtype IdentityDkimAttributes
  = IdentityDkimAttributes { "DkimEnabled" :: Enabled, "DkimVerificationStatus" :: VerificationStatus, "DkimTokens" :: NullOrUndefined (VerificationTokenList) }
```

<p>Represents the DKIM attributes of a verified email address or a domain.</p>

##### Instances
``` purescript
Newtype IdentityDkimAttributes _
Generic IdentityDkimAttributes _
Show IdentityDkimAttributes
Decode IdentityDkimAttributes
Encode IdentityDkimAttributes
```

#### `newIdentityDkimAttributes`

``` purescript
newIdentityDkimAttributes :: Enabled -> VerificationStatus -> IdentityDkimAttributes
```

Constructs IdentityDkimAttributes from required parameters

#### `newIdentityDkimAttributes'`

``` purescript
newIdentityDkimAttributes' :: Enabled -> VerificationStatus -> ({ "DkimEnabled" :: Enabled, "DkimVerificationStatus" :: VerificationStatus, "DkimTokens" :: NullOrUndefined (VerificationTokenList) } -> { "DkimEnabled" :: Enabled, "DkimVerificationStatus" :: VerificationStatus, "DkimTokens" :: NullOrUndefined (VerificationTokenList) }) -> IdentityDkimAttributes
```

Constructs IdentityDkimAttributes's fields from required parameters

#### `IdentityList`

``` purescript
newtype IdentityList
  = IdentityList (Array Identity)
```

##### Instances
``` purescript
Newtype IdentityList _
Generic IdentityList _
Show IdentityList
Decode IdentityList
Encode IdentityList
```

#### `IdentityMailFromDomainAttributes`

``` purescript
newtype IdentityMailFromDomainAttributes
  = IdentityMailFromDomainAttributes { "MailFromDomain" :: MailFromDomainName, "MailFromDomainStatus" :: CustomMailFromStatus, "BehaviorOnMXFailure" :: BehaviorOnMXFailure }
```

<p>Represents the custom MAIL FROM domain attributes of a verified identity (email address or domain).</p>

##### Instances
``` purescript
Newtype IdentityMailFromDomainAttributes _
Generic IdentityMailFromDomainAttributes _
Show IdentityMailFromDomainAttributes
Decode IdentityMailFromDomainAttributes
Encode IdentityMailFromDomainAttributes
```

#### `newIdentityMailFromDomainAttributes`

``` purescript
newIdentityMailFromDomainAttributes :: BehaviorOnMXFailure -> MailFromDomainName -> CustomMailFromStatus -> IdentityMailFromDomainAttributes
```

Constructs IdentityMailFromDomainAttributes from required parameters

#### `newIdentityMailFromDomainAttributes'`

``` purescript
newIdentityMailFromDomainAttributes' :: BehaviorOnMXFailure -> MailFromDomainName -> CustomMailFromStatus -> ({ "MailFromDomain" :: MailFromDomainName, "MailFromDomainStatus" :: CustomMailFromStatus, "BehaviorOnMXFailure" :: BehaviorOnMXFailure } -> { "MailFromDomain" :: MailFromDomainName, "MailFromDomainStatus" :: CustomMailFromStatus, "BehaviorOnMXFailure" :: BehaviorOnMXFailure }) -> IdentityMailFromDomainAttributes
```

Constructs IdentityMailFromDomainAttributes's fields from required parameters

#### `IdentityNotificationAttributes`

``` purescript
newtype IdentityNotificationAttributes
  = IdentityNotificationAttributes { "BounceTopic" :: NotificationTopic, "ComplaintTopic" :: NotificationTopic, "DeliveryTopic" :: NotificationTopic, "ForwardingEnabled" :: Enabled, "HeadersInBounceNotificationsEnabled" :: NullOrUndefined (Enabled), "HeadersInComplaintNotificationsEnabled" :: NullOrUndefined (Enabled), "HeadersInDeliveryNotificationsEnabled" :: NullOrUndefined (Enabled) }
```

<p>Represents the notification attributes of an identity, including whether an identity has Amazon Simple Notification Service (Amazon SNS) topics set for bounce, complaint, and/or delivery notifications, and whether feedback forwarding is enabled for bounce and complaint notifications.</p>

##### Instances
``` purescript
Newtype IdentityNotificationAttributes _
Generic IdentityNotificationAttributes _
Show IdentityNotificationAttributes
Decode IdentityNotificationAttributes
Encode IdentityNotificationAttributes
```

#### `newIdentityNotificationAttributes`

``` purescript
newIdentityNotificationAttributes :: NotificationTopic -> NotificationTopic -> NotificationTopic -> Enabled -> IdentityNotificationAttributes
```

Constructs IdentityNotificationAttributes from required parameters

#### `newIdentityNotificationAttributes'`

``` purescript
newIdentityNotificationAttributes' :: NotificationTopic -> NotificationTopic -> NotificationTopic -> Enabled -> ({ "BounceTopic" :: NotificationTopic, "ComplaintTopic" :: NotificationTopic, "DeliveryTopic" :: NotificationTopic, "ForwardingEnabled" :: Enabled, "HeadersInBounceNotificationsEnabled" :: NullOrUndefined (Enabled), "HeadersInComplaintNotificationsEnabled" :: NullOrUndefined (Enabled), "HeadersInDeliveryNotificationsEnabled" :: NullOrUndefined (Enabled) } -> { "BounceTopic" :: NotificationTopic, "ComplaintTopic" :: NotificationTopic, "DeliveryTopic" :: NotificationTopic, "ForwardingEnabled" :: Enabled, "HeadersInBounceNotificationsEnabled" :: NullOrUndefined (Enabled), "HeadersInComplaintNotificationsEnabled" :: NullOrUndefined (Enabled), "HeadersInDeliveryNotificationsEnabled" :: NullOrUndefined (Enabled) }) -> IdentityNotificationAttributes
```

Constructs IdentityNotificationAttributes's fields from required parameters

#### `IdentityType`

``` purescript
newtype IdentityType
  = IdentityType String
```

##### Instances
``` purescript
Newtype IdentityType _
Generic IdentityType _
Show IdentityType
Decode IdentityType
Encode IdentityType
```

#### `IdentityVerificationAttributes`

``` purescript
newtype IdentityVerificationAttributes
  = IdentityVerificationAttributes { "VerificationStatus" :: VerificationStatus, "VerificationToken" :: NullOrUndefined (VerificationToken) }
```

<p>Represents the verification attributes of a single identity.</p>

##### Instances
``` purescript
Newtype IdentityVerificationAttributes _
Generic IdentityVerificationAttributes _
Show IdentityVerificationAttributes
Decode IdentityVerificationAttributes
Encode IdentityVerificationAttributes
```

#### `newIdentityVerificationAttributes`

``` purescript
newIdentityVerificationAttributes :: VerificationStatus -> IdentityVerificationAttributes
```

Constructs IdentityVerificationAttributes from required parameters

#### `newIdentityVerificationAttributes'`

``` purescript
newIdentityVerificationAttributes' :: VerificationStatus -> ({ "VerificationStatus" :: VerificationStatus, "VerificationToken" :: NullOrUndefined (VerificationToken) } -> { "VerificationStatus" :: VerificationStatus, "VerificationToken" :: NullOrUndefined (VerificationToken) }) -> IdentityVerificationAttributes
```

Constructs IdentityVerificationAttributes's fields from required parameters

#### `InvalidCloudWatchDestinationException`

``` purescript
newtype InvalidCloudWatchDestinationException
  = InvalidCloudWatchDestinationException { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) }
```

<p>Indicates that the Amazon CloudWatch destination is invalid. See the error message for details.</p>

##### Instances
``` purescript
Newtype InvalidCloudWatchDestinationException _
Generic InvalidCloudWatchDestinationException _
Show InvalidCloudWatchDestinationException
Decode InvalidCloudWatchDestinationException
Encode InvalidCloudWatchDestinationException
```

#### `newInvalidCloudWatchDestinationException`

``` purescript
newInvalidCloudWatchDestinationException :: InvalidCloudWatchDestinationException
```

Constructs InvalidCloudWatchDestinationException from required parameters

#### `newInvalidCloudWatchDestinationException'`

``` purescript
newInvalidCloudWatchDestinationException' :: ({ "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) } -> { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) }) -> InvalidCloudWatchDestinationException
```

Constructs InvalidCloudWatchDestinationException's fields from required parameters

#### `InvalidConfigurationSetException`

``` purescript
newtype InvalidConfigurationSetException
  = InvalidConfigurationSetException NoArguments
```

<p>Indicates that the configuration set is invalid. See the error message for details.</p>

##### Instances
``` purescript
Newtype InvalidConfigurationSetException _
Generic InvalidConfigurationSetException _
Show InvalidConfigurationSetException
Decode InvalidConfigurationSetException
Encode InvalidConfigurationSetException
```

#### `InvalidFirehoseDestinationException`

``` purescript
newtype InvalidFirehoseDestinationException
  = InvalidFirehoseDestinationException { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) }
```

<p>Indicates that the Amazon Kinesis Firehose destination is invalid. See the error message for details.</p>

##### Instances
``` purescript
Newtype InvalidFirehoseDestinationException _
Generic InvalidFirehoseDestinationException _
Show InvalidFirehoseDestinationException
Decode InvalidFirehoseDestinationException
Encode InvalidFirehoseDestinationException
```

#### `newInvalidFirehoseDestinationException`

``` purescript
newInvalidFirehoseDestinationException :: InvalidFirehoseDestinationException
```

Constructs InvalidFirehoseDestinationException from required parameters

#### `newInvalidFirehoseDestinationException'`

``` purescript
newInvalidFirehoseDestinationException' :: ({ "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) } -> { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) }) -> InvalidFirehoseDestinationException
```

Constructs InvalidFirehoseDestinationException's fields from required parameters

#### `InvalidLambdaFunctionException`

``` purescript
newtype InvalidLambdaFunctionException
  = InvalidLambdaFunctionException { "FunctionArn" :: NullOrUndefined (AmazonResourceName) }
```

<p>Indicates that the provided AWS Lambda function is invalid, or that Amazon SES could not execute the provided function, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype InvalidLambdaFunctionException _
Generic InvalidLambdaFunctionException _
Show InvalidLambdaFunctionException
Decode InvalidLambdaFunctionException
Encode InvalidLambdaFunctionException
```

#### `newInvalidLambdaFunctionException`

``` purescript
newInvalidLambdaFunctionException :: InvalidLambdaFunctionException
```

Constructs InvalidLambdaFunctionException from required parameters

#### `newInvalidLambdaFunctionException'`

``` purescript
newInvalidLambdaFunctionException' :: ({ "FunctionArn" :: NullOrUndefined (AmazonResourceName) } -> { "FunctionArn" :: NullOrUndefined (AmazonResourceName) }) -> InvalidLambdaFunctionException
```

Constructs InvalidLambdaFunctionException's fields from required parameters

#### `InvalidPolicyException`

``` purescript
newtype InvalidPolicyException
  = InvalidPolicyException NoArguments
```

<p>Indicates that the provided policy is invalid. Check the error stack for more information about what caused the error.</p>

##### Instances
``` purescript
Newtype InvalidPolicyException _
Generic InvalidPolicyException _
Show InvalidPolicyException
Decode InvalidPolicyException
Encode InvalidPolicyException
```

#### `InvalidRenderingParameterException`

``` purescript
newtype InvalidRenderingParameterException
  = InvalidRenderingParameterException { "TemplateName" :: NullOrUndefined (TemplateName) }
```

<p>Indicates that one or more of the replacement values you provided is invalid. This error may occur when the TemplateData object contains invalid JSON.</p>

##### Instances
``` purescript
Newtype InvalidRenderingParameterException _
Generic InvalidRenderingParameterException _
Show InvalidRenderingParameterException
Decode InvalidRenderingParameterException
Encode InvalidRenderingParameterException
```

#### `newInvalidRenderingParameterException`

``` purescript
newInvalidRenderingParameterException :: InvalidRenderingParameterException
```

Constructs InvalidRenderingParameterException from required parameters

#### `newInvalidRenderingParameterException'`

``` purescript
newInvalidRenderingParameterException' :: ({ "TemplateName" :: NullOrUndefined (TemplateName) } -> { "TemplateName" :: NullOrUndefined (TemplateName) }) -> InvalidRenderingParameterException
```

Constructs InvalidRenderingParameterException's fields from required parameters

#### `InvalidS3ConfigurationException`

``` purescript
newtype InvalidS3ConfigurationException
  = InvalidS3ConfigurationException { "Bucket" :: NullOrUndefined (S3BucketName) }
```

<p>Indicates that the provided Amazon S3 bucket or AWS KMS encryption key is invalid, or that Amazon SES could not publish to the bucket, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype InvalidS3ConfigurationException _
Generic InvalidS3ConfigurationException _
Show InvalidS3ConfigurationException
Decode InvalidS3ConfigurationException
Encode InvalidS3ConfigurationException
```

#### `newInvalidS3ConfigurationException`

``` purescript
newInvalidS3ConfigurationException :: InvalidS3ConfigurationException
```

Constructs InvalidS3ConfigurationException from required parameters

#### `newInvalidS3ConfigurationException'`

``` purescript
newInvalidS3ConfigurationException' :: ({ "Bucket" :: NullOrUndefined (S3BucketName) } -> { "Bucket" :: NullOrUndefined (S3BucketName) }) -> InvalidS3ConfigurationException
```

Constructs InvalidS3ConfigurationException's fields from required parameters

#### `InvalidSNSDestinationException`

``` purescript
newtype InvalidSNSDestinationException
  = InvalidSNSDestinationException { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) }
```

<p>Indicates that the Amazon Simple Notification Service (Amazon SNS) destination is invalid. See the error message for details.</p>

##### Instances
``` purescript
Newtype InvalidSNSDestinationException _
Generic InvalidSNSDestinationException _
Show InvalidSNSDestinationException
Decode InvalidSNSDestinationException
Encode InvalidSNSDestinationException
```

#### `newInvalidSNSDestinationException`

``` purescript
newInvalidSNSDestinationException :: InvalidSNSDestinationException
```

Constructs InvalidSNSDestinationException from required parameters

#### `newInvalidSNSDestinationException'`

``` purescript
newInvalidSNSDestinationException' :: ({ "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) } -> { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "EventDestinationName" :: NullOrUndefined (EventDestinationName) }) -> InvalidSNSDestinationException
```

Constructs InvalidSNSDestinationException's fields from required parameters

#### `InvalidSnsTopicException`

``` purescript
newtype InvalidSnsTopicException
  = InvalidSnsTopicException { "Topic" :: NullOrUndefined (AmazonResourceName) }
```

<p>Indicates that the provided Amazon SNS topic is invalid, or that Amazon SES could not publish to the topic, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype InvalidSnsTopicException _
Generic InvalidSnsTopicException _
Show InvalidSnsTopicException
Decode InvalidSnsTopicException
Encode InvalidSnsTopicException
```

#### `newInvalidSnsTopicException`

``` purescript
newInvalidSnsTopicException :: InvalidSnsTopicException
```

Constructs InvalidSnsTopicException from required parameters

#### `newInvalidSnsTopicException'`

``` purescript
newInvalidSnsTopicException' :: ({ "Topic" :: NullOrUndefined (AmazonResourceName) } -> { "Topic" :: NullOrUndefined (AmazonResourceName) }) -> InvalidSnsTopicException
```

Constructs InvalidSnsTopicException's fields from required parameters

#### `InvalidTemplateException`

``` purescript
newtype InvalidTemplateException
  = InvalidTemplateException { "TemplateName" :: NullOrUndefined (TemplateName) }
```

<p>Indicates that a template could not be created because it contained invalid JSON.</p>

##### Instances
``` purescript
Newtype InvalidTemplateException _
Generic InvalidTemplateException _
Show InvalidTemplateException
Decode InvalidTemplateException
Encode InvalidTemplateException
```

#### `newInvalidTemplateException`

``` purescript
newInvalidTemplateException :: InvalidTemplateException
```

Constructs InvalidTemplateException from required parameters

#### `newInvalidTemplateException'`

``` purescript
newInvalidTemplateException' :: ({ "TemplateName" :: NullOrUndefined (TemplateName) } -> { "TemplateName" :: NullOrUndefined (TemplateName) }) -> InvalidTemplateException
```

Constructs InvalidTemplateException's fields from required parameters

#### `InvalidTrackingOptionsException`

``` purescript
newtype InvalidTrackingOptionsException
  = InvalidTrackingOptionsException NoArguments
```

<p>Indicates that the custom domain to be used for open and click tracking redirects is invalid. This error appears most often in the following situations:</p> <ul> <li> <p>When the tracking domain you specified is not verified in Amazon SES.</p> </li> <li> <p>When the tracking domain you specified is not a valid domain or subdomain.</p> </li> </ul>

##### Instances
``` purescript
Newtype InvalidTrackingOptionsException _
Generic InvalidTrackingOptionsException _
Show InvalidTrackingOptionsException
Decode InvalidTrackingOptionsException
Encode InvalidTrackingOptionsException
```

#### `InvocationType`

``` purescript
newtype InvocationType
  = InvocationType String
```

##### Instances
``` purescript
Newtype InvocationType _
Generic InvocationType _
Show InvocationType
Decode InvocationType
Encode InvocationType
```

#### `KinesisFirehoseDestination`

``` purescript
newtype KinesisFirehoseDestination
  = KinesisFirehoseDestination { "IAMRoleARN" :: AmazonResourceName, "DeliveryStreamARN" :: AmazonResourceName }
```

<p>Contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event destination.</p> <p>Event destinations, such as Amazon Kinesis Firehose, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype KinesisFirehoseDestination _
Generic KinesisFirehoseDestination _
Show KinesisFirehoseDestination
Decode KinesisFirehoseDestination
Encode KinesisFirehoseDestination
```

#### `newKinesisFirehoseDestination`

``` purescript
newKinesisFirehoseDestination :: AmazonResourceName -> AmazonResourceName -> KinesisFirehoseDestination
```

Constructs KinesisFirehoseDestination from required parameters

#### `newKinesisFirehoseDestination'`

``` purescript
newKinesisFirehoseDestination' :: AmazonResourceName -> AmazonResourceName -> ({ "IAMRoleARN" :: AmazonResourceName, "DeliveryStreamARN" :: AmazonResourceName } -> { "IAMRoleARN" :: AmazonResourceName, "DeliveryStreamARN" :: AmazonResourceName }) -> KinesisFirehoseDestination
```

Constructs KinesisFirehoseDestination's fields from required parameters

#### `LambdaAction`

``` purescript
newtype LambdaAction
  = LambdaAction { "TopicArn" :: NullOrUndefined (AmazonResourceName), "FunctionArn" :: AmazonResourceName, "InvocationType" :: NullOrUndefined (InvocationType) }
```

<p>When included in a receipt rule, this action calls an AWS Lambda function and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>To enable Amazon SES to call your AWS Lambda function or to publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <p>For information about using AWS Lambda actions in receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype LambdaAction _
Generic LambdaAction _
Show LambdaAction
Decode LambdaAction
Encode LambdaAction
```

#### `newLambdaAction`

``` purescript
newLambdaAction :: AmazonResourceName -> LambdaAction
```

Constructs LambdaAction from required parameters

#### `newLambdaAction'`

``` purescript
newLambdaAction' :: AmazonResourceName -> ({ "TopicArn" :: NullOrUndefined (AmazonResourceName), "FunctionArn" :: AmazonResourceName, "InvocationType" :: NullOrUndefined (InvocationType) } -> { "TopicArn" :: NullOrUndefined (AmazonResourceName), "FunctionArn" :: AmazonResourceName, "InvocationType" :: NullOrUndefined (InvocationType) }) -> LambdaAction
```

Constructs LambdaAction's fields from required parameters

#### `LastAttemptDate`

``` purescript
newtype LastAttemptDate
  = LastAttemptDate Timestamp
```

##### Instances
``` purescript
Newtype LastAttemptDate _
Generic LastAttemptDate _
Show LastAttemptDate
Decode LastAttemptDate
Encode LastAttemptDate
```

#### `LastFreshStart`

``` purescript
newtype LastFreshStart
  = LastFreshStart Timestamp
```

##### Instances
``` purescript
Newtype LastFreshStart _
Generic LastFreshStart _
Show LastFreshStart
Decode LastFreshStart
Encode LastFreshStart
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException NoArguments
```

<p>Indicates that a resource could not be created because of service limits. For a list of Amazon SES limits, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/limits.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `ListConfigurationSetsRequest`

``` purescript
newtype ListConfigurationSetsRequest
  = ListConfigurationSetsRequest { "NextToken" :: NullOrUndefined (NextToken), "MaxItems" :: NullOrUndefined (MaxItems) }
```

<p>Represents a request to list the configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ListConfigurationSetsRequest _
Generic ListConfigurationSetsRequest _
Show ListConfigurationSetsRequest
Decode ListConfigurationSetsRequest
Encode ListConfigurationSetsRequest
```

#### `newListConfigurationSetsRequest`

``` purescript
newListConfigurationSetsRequest :: ListConfigurationSetsRequest
```

Constructs ListConfigurationSetsRequest from required parameters

#### `newListConfigurationSetsRequest'`

``` purescript
newListConfigurationSetsRequest' :: ({ "NextToken" :: NullOrUndefined (NextToken), "MaxItems" :: NullOrUndefined (MaxItems) } -> { "NextToken" :: NullOrUndefined (NextToken), "MaxItems" :: NullOrUndefined (MaxItems) }) -> ListConfigurationSetsRequest
```

Constructs ListConfigurationSetsRequest's fields from required parameters

#### `ListConfigurationSetsResponse`

``` purescript
newtype ListConfigurationSetsResponse
  = ListConfigurationSetsResponse { "ConfigurationSets" :: NullOrUndefined (ConfigurationSets), "NextToken" :: NullOrUndefined (NextToken) }
```

<p>A list of configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ListConfigurationSetsResponse _
Generic ListConfigurationSetsResponse _
Show ListConfigurationSetsResponse
Decode ListConfigurationSetsResponse
Encode ListConfigurationSetsResponse
```

#### `newListConfigurationSetsResponse`

``` purescript
newListConfigurationSetsResponse :: ListConfigurationSetsResponse
```

Constructs ListConfigurationSetsResponse from required parameters

#### `newListConfigurationSetsResponse'`

``` purescript
newListConfigurationSetsResponse' :: ({ "ConfigurationSets" :: NullOrUndefined (ConfigurationSets), "NextToken" :: NullOrUndefined (NextToken) } -> { "ConfigurationSets" :: NullOrUndefined (ConfigurationSets), "NextToken" :: NullOrUndefined (NextToken) }) -> ListConfigurationSetsResponse
```

Constructs ListConfigurationSetsResponse's fields from required parameters

#### `ListCustomVerificationEmailTemplatesRequest`

``` purescript
newtype ListCustomVerificationEmailTemplatesRequest
  = ListCustomVerificationEmailTemplatesRequest { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
```

<p>Represents a request to list the existing custom verification email templates for your account.</p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype ListCustomVerificationEmailTemplatesRequest _
Generic ListCustomVerificationEmailTemplatesRequest _
Show ListCustomVerificationEmailTemplatesRequest
Decode ListCustomVerificationEmailTemplatesRequest
Encode ListCustomVerificationEmailTemplatesRequest
```

#### `newListCustomVerificationEmailTemplatesRequest`

``` purescript
newListCustomVerificationEmailTemplatesRequest :: ListCustomVerificationEmailTemplatesRequest
```

Constructs ListCustomVerificationEmailTemplatesRequest from required parameters

#### `newListCustomVerificationEmailTemplatesRequest'`

``` purescript
newListCustomVerificationEmailTemplatesRequest' :: ({ "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListCustomVerificationEmailTemplatesRequest
```

Constructs ListCustomVerificationEmailTemplatesRequest's fields from required parameters

#### `ListCustomVerificationEmailTemplatesResponse`

``` purescript
newtype ListCustomVerificationEmailTemplatesResponse
  = ListCustomVerificationEmailTemplatesResponse { "CustomVerificationEmailTemplates" :: NullOrUndefined (CustomVerificationEmailTemplates), "NextToken" :: NullOrUndefined (NextToken) }
```

<p>A paginated list of custom verification email templates.</p>

##### Instances
``` purescript
Newtype ListCustomVerificationEmailTemplatesResponse _
Generic ListCustomVerificationEmailTemplatesResponse _
Show ListCustomVerificationEmailTemplatesResponse
Decode ListCustomVerificationEmailTemplatesResponse
Encode ListCustomVerificationEmailTemplatesResponse
```

#### `newListCustomVerificationEmailTemplatesResponse`

``` purescript
newListCustomVerificationEmailTemplatesResponse :: ListCustomVerificationEmailTemplatesResponse
```

Constructs ListCustomVerificationEmailTemplatesResponse from required parameters

#### `newListCustomVerificationEmailTemplatesResponse'`

``` purescript
newListCustomVerificationEmailTemplatesResponse' :: ({ "CustomVerificationEmailTemplates" :: NullOrUndefined (CustomVerificationEmailTemplates), "NextToken" :: NullOrUndefined (NextToken) } -> { "CustomVerificationEmailTemplates" :: NullOrUndefined (CustomVerificationEmailTemplates), "NextToken" :: NullOrUndefined (NextToken) }) -> ListCustomVerificationEmailTemplatesResponse
```

Constructs ListCustomVerificationEmailTemplatesResponse's fields from required parameters

#### `ListIdentitiesRequest`

``` purescript
newtype ListIdentitiesRequest
  = ListIdentitiesRequest { "IdentityType" :: NullOrUndefined (IdentityType), "NextToken" :: NullOrUndefined (NextToken), "MaxItems" :: NullOrUndefined (MaxItems) }
```

<p>Represents a request to return a list of all identities (email addresses and domains) that you have attempted to verify under your AWS account, regardless of verification status.</p>

##### Instances
``` purescript
Newtype ListIdentitiesRequest _
Generic ListIdentitiesRequest _
Show ListIdentitiesRequest
Decode ListIdentitiesRequest
Encode ListIdentitiesRequest
```

#### `newListIdentitiesRequest`

``` purescript
newListIdentitiesRequest :: ListIdentitiesRequest
```

Constructs ListIdentitiesRequest from required parameters

#### `newListIdentitiesRequest'`

``` purescript
newListIdentitiesRequest' :: ({ "IdentityType" :: NullOrUndefined (IdentityType), "NextToken" :: NullOrUndefined (NextToken), "MaxItems" :: NullOrUndefined (MaxItems) } -> { "IdentityType" :: NullOrUndefined (IdentityType), "NextToken" :: NullOrUndefined (NextToken), "MaxItems" :: NullOrUndefined (MaxItems) }) -> ListIdentitiesRequest
```

Constructs ListIdentitiesRequest's fields from required parameters

#### `ListIdentitiesResponse`

``` purescript
newtype ListIdentitiesResponse
  = ListIdentitiesResponse { "Identities" :: IdentityList, "NextToken" :: NullOrUndefined (NextToken) }
```

<p>A list of all identities that you have attempted to verify under your AWS account, regardless of verification status.</p>

##### Instances
``` purescript
Newtype ListIdentitiesResponse _
Generic ListIdentitiesResponse _
Show ListIdentitiesResponse
Decode ListIdentitiesResponse
Encode ListIdentitiesResponse
```

#### `newListIdentitiesResponse`

``` purescript
newListIdentitiesResponse :: IdentityList -> ListIdentitiesResponse
```

Constructs ListIdentitiesResponse from required parameters

#### `newListIdentitiesResponse'`

``` purescript
newListIdentitiesResponse' :: IdentityList -> ({ "Identities" :: IdentityList, "NextToken" :: NullOrUndefined (NextToken) } -> { "Identities" :: IdentityList, "NextToken" :: NullOrUndefined (NextToken) }) -> ListIdentitiesResponse
```

Constructs ListIdentitiesResponse's fields from required parameters

#### `ListIdentityPoliciesRequest`

``` purescript
newtype ListIdentityPoliciesRequest
  = ListIdentityPoliciesRequest { "Identity" :: Identity }
```

<p>Represents a request to return a list of sending authorization policies that are attached to an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ListIdentityPoliciesRequest _
Generic ListIdentityPoliciesRequest _
Show ListIdentityPoliciesRequest
Decode ListIdentityPoliciesRequest
Encode ListIdentityPoliciesRequest
```

#### `newListIdentityPoliciesRequest`

``` purescript
newListIdentityPoliciesRequest :: Identity -> ListIdentityPoliciesRequest
```

Constructs ListIdentityPoliciesRequest from required parameters

#### `newListIdentityPoliciesRequest'`

``` purescript
newListIdentityPoliciesRequest' :: Identity -> ({ "Identity" :: Identity } -> { "Identity" :: Identity }) -> ListIdentityPoliciesRequest
```

Constructs ListIdentityPoliciesRequest's fields from required parameters

#### `ListIdentityPoliciesResponse`

``` purescript
newtype ListIdentityPoliciesResponse
  = ListIdentityPoliciesResponse { "PolicyNames" :: PolicyNameList }
```

<p>A list of names of sending authorization policies that apply to an identity.</p>

##### Instances
``` purescript
Newtype ListIdentityPoliciesResponse _
Generic ListIdentityPoliciesResponse _
Show ListIdentityPoliciesResponse
Decode ListIdentityPoliciesResponse
Encode ListIdentityPoliciesResponse
```

#### `newListIdentityPoliciesResponse`

``` purescript
newListIdentityPoliciesResponse :: PolicyNameList -> ListIdentityPoliciesResponse
```

Constructs ListIdentityPoliciesResponse from required parameters

#### `newListIdentityPoliciesResponse'`

``` purescript
newListIdentityPoliciesResponse' :: PolicyNameList -> ({ "PolicyNames" :: PolicyNameList } -> { "PolicyNames" :: PolicyNameList }) -> ListIdentityPoliciesResponse
```

Constructs ListIdentityPoliciesResponse's fields from required parameters

#### `ListReceiptFiltersRequest`

``` purescript
newtype ListReceiptFiltersRequest
  = ListReceiptFiltersRequest NoArguments
```

<p>Represents a request to list the IP address filters that exist under your AWS account. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ListReceiptFiltersRequest _
Generic ListReceiptFiltersRequest _
Show ListReceiptFiltersRequest
Decode ListReceiptFiltersRequest
Encode ListReceiptFiltersRequest
```

#### `ListReceiptFiltersResponse`

``` purescript
newtype ListReceiptFiltersResponse
  = ListReceiptFiltersResponse { "Filters" :: NullOrUndefined (ReceiptFilterList) }
```

<p>A list of IP address filters that exist under your AWS account.</p>

##### Instances
``` purescript
Newtype ListReceiptFiltersResponse _
Generic ListReceiptFiltersResponse _
Show ListReceiptFiltersResponse
Decode ListReceiptFiltersResponse
Encode ListReceiptFiltersResponse
```

#### `newListReceiptFiltersResponse`

``` purescript
newListReceiptFiltersResponse :: ListReceiptFiltersResponse
```

Constructs ListReceiptFiltersResponse from required parameters

#### `newListReceiptFiltersResponse'`

``` purescript
newListReceiptFiltersResponse' :: ({ "Filters" :: NullOrUndefined (ReceiptFilterList) } -> { "Filters" :: NullOrUndefined (ReceiptFilterList) }) -> ListReceiptFiltersResponse
```

Constructs ListReceiptFiltersResponse's fields from required parameters

#### `ListReceiptRuleSetsRequest`

``` purescript
newtype ListReceiptRuleSetsRequest
  = ListReceiptRuleSetsRequest { "NextToken" :: NullOrUndefined (NextToken) }
```

<p>Represents a request to list the receipt rule sets that exist under your AWS account. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ListReceiptRuleSetsRequest _
Generic ListReceiptRuleSetsRequest _
Show ListReceiptRuleSetsRequest
Decode ListReceiptRuleSetsRequest
Encode ListReceiptRuleSetsRequest
```

#### `newListReceiptRuleSetsRequest`

``` purescript
newListReceiptRuleSetsRequest :: ListReceiptRuleSetsRequest
```

Constructs ListReceiptRuleSetsRequest from required parameters

#### `newListReceiptRuleSetsRequest'`

``` purescript
newListReceiptRuleSetsRequest' :: ({ "NextToken" :: NullOrUndefined (NextToken) } -> { "NextToken" :: NullOrUndefined (NextToken) }) -> ListReceiptRuleSetsRequest
```

Constructs ListReceiptRuleSetsRequest's fields from required parameters

#### `ListReceiptRuleSetsResponse`

``` purescript
newtype ListReceiptRuleSetsResponse
  = ListReceiptRuleSetsResponse { "RuleSets" :: NullOrUndefined (ReceiptRuleSetsLists), "NextToken" :: NullOrUndefined (NextToken) }
```

<p>A list of receipt rule sets that exist under your AWS account.</p>

##### Instances
``` purescript
Newtype ListReceiptRuleSetsResponse _
Generic ListReceiptRuleSetsResponse _
Show ListReceiptRuleSetsResponse
Decode ListReceiptRuleSetsResponse
Encode ListReceiptRuleSetsResponse
```

#### `newListReceiptRuleSetsResponse`

``` purescript
newListReceiptRuleSetsResponse :: ListReceiptRuleSetsResponse
```

Constructs ListReceiptRuleSetsResponse from required parameters

#### `newListReceiptRuleSetsResponse'`

``` purescript
newListReceiptRuleSetsResponse' :: ({ "RuleSets" :: NullOrUndefined (ReceiptRuleSetsLists), "NextToken" :: NullOrUndefined (NextToken) } -> { "RuleSets" :: NullOrUndefined (ReceiptRuleSetsLists), "NextToken" :: NullOrUndefined (NextToken) }) -> ListReceiptRuleSetsResponse
```

Constructs ListReceiptRuleSetsResponse's fields from required parameters

#### `ListTemplatesRequest`

``` purescript
newtype ListTemplatesRequest
  = ListTemplatesRequest { "NextToken" :: NullOrUndefined (NextToken), "MaxItems" :: NullOrUndefined (MaxItems) }
```

##### Instances
``` purescript
Newtype ListTemplatesRequest _
Generic ListTemplatesRequest _
Show ListTemplatesRequest
Decode ListTemplatesRequest
Encode ListTemplatesRequest
```

#### `newListTemplatesRequest`

``` purescript
newListTemplatesRequest :: ListTemplatesRequest
```

Constructs ListTemplatesRequest from required parameters

#### `newListTemplatesRequest'`

``` purescript
newListTemplatesRequest' :: ({ "NextToken" :: NullOrUndefined (NextToken), "MaxItems" :: NullOrUndefined (MaxItems) } -> { "NextToken" :: NullOrUndefined (NextToken), "MaxItems" :: NullOrUndefined (MaxItems) }) -> ListTemplatesRequest
```

Constructs ListTemplatesRequest's fields from required parameters

#### `ListTemplatesResponse`

``` purescript
newtype ListTemplatesResponse
  = ListTemplatesResponse { "TemplatesMetadata" :: NullOrUndefined (TemplateMetadataList), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListTemplatesResponse _
Generic ListTemplatesResponse _
Show ListTemplatesResponse
Decode ListTemplatesResponse
Encode ListTemplatesResponse
```

#### `newListTemplatesResponse`

``` purescript
newListTemplatesResponse :: ListTemplatesResponse
```

Constructs ListTemplatesResponse from required parameters

#### `newListTemplatesResponse'`

``` purescript
newListTemplatesResponse' :: ({ "TemplatesMetadata" :: NullOrUndefined (TemplateMetadataList), "NextToken" :: NullOrUndefined (NextToken) } -> { "TemplatesMetadata" :: NullOrUndefined (TemplateMetadataList), "NextToken" :: NullOrUndefined (NextToken) }) -> ListTemplatesResponse
```

Constructs ListTemplatesResponse's fields from required parameters

#### `ListVerifiedEmailAddressesResponse`

``` purescript
newtype ListVerifiedEmailAddressesResponse
  = ListVerifiedEmailAddressesResponse { "VerifiedEmailAddresses" :: NullOrUndefined (AddressList) }
```

<p>A list of email addresses that you have verified with Amazon SES under your AWS account.</p>

##### Instances
``` purescript
Newtype ListVerifiedEmailAddressesResponse _
Generic ListVerifiedEmailAddressesResponse _
Show ListVerifiedEmailAddressesResponse
Decode ListVerifiedEmailAddressesResponse
Encode ListVerifiedEmailAddressesResponse
```

#### `newListVerifiedEmailAddressesResponse`

``` purescript
newListVerifiedEmailAddressesResponse :: ListVerifiedEmailAddressesResponse
```

Constructs ListVerifiedEmailAddressesResponse from required parameters

#### `newListVerifiedEmailAddressesResponse'`

``` purescript
newListVerifiedEmailAddressesResponse' :: ({ "VerifiedEmailAddresses" :: NullOrUndefined (AddressList) } -> { "VerifiedEmailAddresses" :: NullOrUndefined (AddressList) }) -> ListVerifiedEmailAddressesResponse
```

Constructs ListVerifiedEmailAddressesResponse's fields from required parameters

#### `MailFromDomainAttributes`

``` purescript
newtype MailFromDomainAttributes
  = MailFromDomainAttributes (StrMap IdentityMailFromDomainAttributes)
```

##### Instances
``` purescript
Newtype MailFromDomainAttributes _
Generic MailFromDomainAttributes _
Show MailFromDomainAttributes
Decode MailFromDomainAttributes
Encode MailFromDomainAttributes
```

#### `MailFromDomainName`

``` purescript
newtype MailFromDomainName
  = MailFromDomainName String
```

##### Instances
``` purescript
Newtype MailFromDomainName _
Generic MailFromDomainName _
Show MailFromDomainName
Decode MailFromDomainName
Encode MailFromDomainName
```

#### `MailFromDomainNotVerifiedException`

``` purescript
newtype MailFromDomainNotVerifiedException
  = MailFromDomainNotVerifiedException NoArguments
```

<p> Indicates that the message could not be sent because Amazon SES could not read the MX record required to use the specified MAIL FROM domain. For information about editing the custom MAIL FROM domain settings for an identity, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-edit.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype MailFromDomainNotVerifiedException _
Generic MailFromDomainNotVerifiedException _
Show MailFromDomainNotVerifiedException
Decode MailFromDomainNotVerifiedException
Encode MailFromDomainNotVerifiedException
```

#### `Max24HourSend`

``` purescript
newtype Max24HourSend
  = Max24HourSend Number
```

##### Instances
``` purescript
Newtype Max24HourSend _
Generic Max24HourSend _
Show Max24HourSend
Decode Max24HourSend
Encode Max24HourSend
```

#### `MaxItems`

``` purescript
newtype MaxItems
  = MaxItems Int
```

##### Instances
``` purescript
Newtype MaxItems _
Generic MaxItems _
Show MaxItems
Decode MaxItems
Encode MaxItems
```

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MaxSendRate`

``` purescript
newtype MaxSendRate
  = MaxSendRate Number
```

##### Instances
``` purescript
Newtype MaxSendRate _
Generic MaxSendRate _
Show MaxSendRate
Decode MaxSendRate
Encode MaxSendRate
```

#### `Message`

``` purescript
newtype Message
  = Message { "Subject" :: Content, "Body" :: Body }
```

<p>Represents the message to be sent, composed of a subject and a body.</p>

##### Instances
``` purescript
Newtype Message _
Generic Message _
Show Message
Decode Message
Encode Message
```

#### `newMessage`

``` purescript
newMessage :: Body -> Content -> Message
```

Constructs Message from required parameters

#### `newMessage'`

``` purescript
newMessage' :: Body -> Content -> ({ "Subject" :: Content, "Body" :: Body } -> { "Subject" :: Content, "Body" :: Body }) -> Message
```

Constructs Message's fields from required parameters

#### `MessageData`

``` purescript
newtype MessageData
  = MessageData String
```

##### Instances
``` purescript
Newtype MessageData _
Generic MessageData _
Show MessageData
Decode MessageData
Encode MessageData
```

#### `MessageDsn`

``` purescript
newtype MessageDsn
  = MessageDsn { "ReportingMta" :: ReportingMta, "ArrivalDate" :: NullOrUndefined (ArrivalDate), "ExtensionFields" :: NullOrUndefined (ExtensionFieldList) }
```

<p>Message-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype MessageDsn _
Generic MessageDsn _
Show MessageDsn
Decode MessageDsn
Encode MessageDsn
```

#### `newMessageDsn`

``` purescript
newMessageDsn :: ReportingMta -> MessageDsn
```

Constructs MessageDsn from required parameters

#### `newMessageDsn'`

``` purescript
newMessageDsn' :: ReportingMta -> ({ "ReportingMta" :: ReportingMta, "ArrivalDate" :: NullOrUndefined (ArrivalDate), "ExtensionFields" :: NullOrUndefined (ExtensionFieldList) } -> { "ReportingMta" :: ReportingMta, "ArrivalDate" :: NullOrUndefined (ArrivalDate), "ExtensionFields" :: NullOrUndefined (ExtensionFieldList) }) -> MessageDsn
```

Constructs MessageDsn's fields from required parameters

#### `MessageId`

``` purescript
newtype MessageId
  = MessageId String
```

##### Instances
``` purescript
Newtype MessageId _
Generic MessageId _
Show MessageId
Decode MessageId
Encode MessageId
```

#### `MessageRejected`

``` purescript
newtype MessageRejected
  = MessageRejected NoArguments
```

<p>Indicates that the action failed, and the message could not be sent. Check the error stack for more information about what caused the error.</p>

##### Instances
``` purescript
Newtype MessageRejected _
Generic MessageRejected _
Show MessageRejected
Decode MessageRejected
Encode MessageRejected
```

#### `MessageTag`

``` purescript
newtype MessageTag
  = MessageTag { "Name" :: MessageTagName, "Value" :: MessageTagValue }
```

<p>Contains the name and value of a tag that you can provide to <code>SendEmail</code> or <code>SendRawEmail</code> to apply to an email.</p> <p>Message tags, which you use with configuration sets, enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype MessageTag _
Generic MessageTag _
Show MessageTag
Decode MessageTag
Encode MessageTag
```

#### `newMessageTag`

``` purescript
newMessageTag :: MessageTagName -> MessageTagValue -> MessageTag
```

Constructs MessageTag from required parameters

#### `newMessageTag'`

``` purescript
newMessageTag' :: MessageTagName -> MessageTagValue -> ({ "Name" :: MessageTagName, "Value" :: MessageTagValue } -> { "Name" :: MessageTagName, "Value" :: MessageTagValue }) -> MessageTag
```

Constructs MessageTag's fields from required parameters

#### `MessageTagList`

``` purescript
newtype MessageTagList
  = MessageTagList (Array MessageTag)
```

##### Instances
``` purescript
Newtype MessageTagList _
Generic MessageTagList _
Show MessageTagList
Decode MessageTagList
Encode MessageTagList
```

#### `MessageTagName`

``` purescript
newtype MessageTagName
  = MessageTagName String
```

##### Instances
``` purescript
Newtype MessageTagName _
Generic MessageTagName _
Show MessageTagName
Decode MessageTagName
Encode MessageTagName
```

#### `MessageTagValue`

``` purescript
newtype MessageTagValue
  = MessageTagValue String
```

##### Instances
``` purescript
Newtype MessageTagValue _
Generic MessageTagValue _
Show MessageTagValue
Decode MessageTagValue
Encode MessageTagValue
```

#### `MissingRenderingAttributeException`

``` purescript
newtype MissingRenderingAttributeException
  = MissingRenderingAttributeException { "TemplateName" :: NullOrUndefined (TemplateName) }
```

<p>Indicates that one or more of the replacement values for the specified template was not specified. Ensure that the TemplateData object contains references to all of the replacement tags in the specified template.</p>

##### Instances
``` purescript
Newtype MissingRenderingAttributeException _
Generic MissingRenderingAttributeException _
Show MissingRenderingAttributeException
Decode MissingRenderingAttributeException
Encode MissingRenderingAttributeException
```

#### `newMissingRenderingAttributeException`

``` purescript
newMissingRenderingAttributeException :: MissingRenderingAttributeException
```

Constructs MissingRenderingAttributeException from required parameters

#### `newMissingRenderingAttributeException'`

``` purescript
newMissingRenderingAttributeException' :: ({ "TemplateName" :: NullOrUndefined (TemplateName) } -> { "TemplateName" :: NullOrUndefined (TemplateName) }) -> MissingRenderingAttributeException
```

Constructs MissingRenderingAttributeException's fields from required parameters

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `NotificationAttributes`

``` purescript
newtype NotificationAttributes
  = NotificationAttributes (StrMap IdentityNotificationAttributes)
```

##### Instances
``` purescript
Newtype NotificationAttributes _
Generic NotificationAttributes _
Show NotificationAttributes
Decode NotificationAttributes
Encode NotificationAttributes
```

#### `NotificationTopic`

``` purescript
newtype NotificationTopic
  = NotificationTopic String
```

##### Instances
``` purescript
Newtype NotificationTopic _
Generic NotificationTopic _
Show NotificationTopic
Decode NotificationTopic
Encode NotificationTopic
```

#### `NotificationType`

``` purescript
newtype NotificationType
  = NotificationType String
```

##### Instances
``` purescript
Newtype NotificationType _
Generic NotificationType _
Show NotificationType
Decode NotificationType
Encode NotificationType
```

#### `Policy`

``` purescript
newtype Policy
  = Policy String
```

##### Instances
``` purescript
Newtype Policy _
Generic Policy _
Show Policy
Decode Policy
Encode Policy
```

#### `PolicyMap`

``` purescript
newtype PolicyMap
  = PolicyMap (StrMap Policy)
```

##### Instances
``` purescript
Newtype PolicyMap _
Generic PolicyMap _
Show PolicyMap
Decode PolicyMap
Encode PolicyMap
```

#### `PolicyName`

``` purescript
newtype PolicyName
  = PolicyName String
```

##### Instances
``` purescript
Newtype PolicyName _
Generic PolicyName _
Show PolicyName
Decode PolicyName
Encode PolicyName
```

#### `PolicyNameList`

``` purescript
newtype PolicyNameList
  = PolicyNameList (Array PolicyName)
```

##### Instances
``` purescript
Newtype PolicyNameList _
Generic PolicyNameList _
Show PolicyNameList
Decode PolicyNameList
Encode PolicyNameList
```

#### `ProductionAccessNotGrantedException`

``` purescript
newtype ProductionAccessNotGrantedException
  = ProductionAccessNotGrantedException NoArguments
```

<p>Indicates that the account has not been granted production access.</p>

##### Instances
``` purescript
Newtype ProductionAccessNotGrantedException _
Generic ProductionAccessNotGrantedException _
Show ProductionAccessNotGrantedException
Decode ProductionAccessNotGrantedException
Encode ProductionAccessNotGrantedException
```

#### `PutIdentityPolicyRequest`

``` purescript
newtype PutIdentityPolicyRequest
  = PutIdentityPolicyRequest { "Identity" :: Identity, "PolicyName" :: PolicyName, "Policy" :: Policy }
```

<p>Represents a request to add or update a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype PutIdentityPolicyRequest _
Generic PutIdentityPolicyRequest _
Show PutIdentityPolicyRequest
Decode PutIdentityPolicyRequest
Encode PutIdentityPolicyRequest
```

#### `newPutIdentityPolicyRequest`

``` purescript
newPutIdentityPolicyRequest :: Identity -> Policy -> PolicyName -> PutIdentityPolicyRequest
```

Constructs PutIdentityPolicyRequest from required parameters

#### `newPutIdentityPolicyRequest'`

``` purescript
newPutIdentityPolicyRequest' :: Identity -> Policy -> PolicyName -> ({ "Identity" :: Identity, "PolicyName" :: PolicyName, "Policy" :: Policy } -> { "Identity" :: Identity, "PolicyName" :: PolicyName, "Policy" :: Policy }) -> PutIdentityPolicyRequest
```

Constructs PutIdentityPolicyRequest's fields from required parameters

#### `PutIdentityPolicyResponse`

``` purescript
newtype PutIdentityPolicyResponse
  = PutIdentityPolicyResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype PutIdentityPolicyResponse _
Generic PutIdentityPolicyResponse _
Show PutIdentityPolicyResponse
Decode PutIdentityPolicyResponse
Encode PutIdentityPolicyResponse
```

#### `RawMessage`

``` purescript
newtype RawMessage
  = RawMessage { "Data" :: RawMessageData }
```

<p>Represents the raw data of the message.</p>

##### Instances
``` purescript
Newtype RawMessage _
Generic RawMessage _
Show RawMessage
Decode RawMessage
Encode RawMessage
```

#### `newRawMessage`

``` purescript
newRawMessage :: RawMessageData -> RawMessage
```

Constructs RawMessage from required parameters

#### `newRawMessage'`

``` purescript
newRawMessage' :: RawMessageData -> ({ "Data" :: RawMessageData } -> { "Data" :: RawMessageData }) -> RawMessage
```

Constructs RawMessage's fields from required parameters

#### `RawMessageData`

``` purescript
newtype RawMessageData
  = RawMessageData String
```

##### Instances
``` purescript
Newtype RawMessageData _
Generic RawMessageData _
Show RawMessageData
Decode RawMessageData
Encode RawMessageData
```

#### `ReceiptAction`

``` purescript
newtype ReceiptAction
  = ReceiptAction { "S3Action" :: NullOrUndefined (S3Action), "BounceAction" :: NullOrUndefined (BounceAction), "WorkmailAction" :: NullOrUndefined (WorkmailAction), "LambdaAction" :: NullOrUndefined (LambdaAction), "StopAction" :: NullOrUndefined (StopAction), "AddHeaderAction" :: NullOrUndefined (AddHeaderAction), "SNSAction" :: NullOrUndefined (SNSAction) }
```

<p>An action that Amazon SES can take when it receives an email on behalf of one or more email addresses or domains that you own. An instance of this data type can represent only one action.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ReceiptAction _
Generic ReceiptAction _
Show ReceiptAction
Decode ReceiptAction
Encode ReceiptAction
```

#### `newReceiptAction`

``` purescript
newReceiptAction :: ReceiptAction
```

Constructs ReceiptAction from required parameters

#### `newReceiptAction'`

``` purescript
newReceiptAction' :: ({ "S3Action" :: NullOrUndefined (S3Action), "BounceAction" :: NullOrUndefined (BounceAction), "WorkmailAction" :: NullOrUndefined (WorkmailAction), "LambdaAction" :: NullOrUndefined (LambdaAction), "StopAction" :: NullOrUndefined (StopAction), "AddHeaderAction" :: NullOrUndefined (AddHeaderAction), "SNSAction" :: NullOrUndefined (SNSAction) } -> { "S3Action" :: NullOrUndefined (S3Action), "BounceAction" :: NullOrUndefined (BounceAction), "WorkmailAction" :: NullOrUndefined (WorkmailAction), "LambdaAction" :: NullOrUndefined (LambdaAction), "StopAction" :: NullOrUndefined (StopAction), "AddHeaderAction" :: NullOrUndefined (AddHeaderAction), "SNSAction" :: NullOrUndefined (SNSAction) }) -> ReceiptAction
```

Constructs ReceiptAction's fields from required parameters

#### `ReceiptActionsList`

``` purescript
newtype ReceiptActionsList
  = ReceiptActionsList (Array ReceiptAction)
```

##### Instances
``` purescript
Newtype ReceiptActionsList _
Generic ReceiptActionsList _
Show ReceiptActionsList
Decode ReceiptActionsList
Encode ReceiptActionsList
```

#### `ReceiptFilter`

``` purescript
newtype ReceiptFilter
  = ReceiptFilter { "Name" :: ReceiptFilterName, "IpFilter" :: ReceiptIpFilter }
```

<p>A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.</p> <p>For information about setting up IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ReceiptFilter _
Generic ReceiptFilter _
Show ReceiptFilter
Decode ReceiptFilter
Encode ReceiptFilter
```

#### `newReceiptFilter`

``` purescript
newReceiptFilter :: ReceiptIpFilter -> ReceiptFilterName -> ReceiptFilter
```

Constructs ReceiptFilter from required parameters

#### `newReceiptFilter'`

``` purescript
newReceiptFilter' :: ReceiptIpFilter -> ReceiptFilterName -> ({ "Name" :: ReceiptFilterName, "IpFilter" :: ReceiptIpFilter } -> { "Name" :: ReceiptFilterName, "IpFilter" :: ReceiptIpFilter }) -> ReceiptFilter
```

Constructs ReceiptFilter's fields from required parameters

#### `ReceiptFilterList`

``` purescript
newtype ReceiptFilterList
  = ReceiptFilterList (Array ReceiptFilter)
```

##### Instances
``` purescript
Newtype ReceiptFilterList _
Generic ReceiptFilterList _
Show ReceiptFilterList
Decode ReceiptFilterList
Encode ReceiptFilterList
```

#### `ReceiptFilterName`

``` purescript
newtype ReceiptFilterName
  = ReceiptFilterName String
```

##### Instances
``` purescript
Newtype ReceiptFilterName _
Generic ReceiptFilterName _
Show ReceiptFilterName
Decode ReceiptFilterName
Encode ReceiptFilterName
```

#### `ReceiptFilterPolicy`

``` purescript
newtype ReceiptFilterPolicy
  = ReceiptFilterPolicy String
```

##### Instances
``` purescript
Newtype ReceiptFilterPolicy _
Generic ReceiptFilterPolicy _
Show ReceiptFilterPolicy
Decode ReceiptFilterPolicy
Encode ReceiptFilterPolicy
```

#### `ReceiptIpFilter`

``` purescript
newtype ReceiptIpFilter
  = ReceiptIpFilter { "Policy" :: ReceiptFilterPolicy, "Cidr" :: Cidr }
```

<p>A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.</p> <p>For information about setting up IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ReceiptIpFilter _
Generic ReceiptIpFilter _
Show ReceiptIpFilter
Decode ReceiptIpFilter
Encode ReceiptIpFilter
```

#### `newReceiptIpFilter`

``` purescript
newReceiptIpFilter :: Cidr -> ReceiptFilterPolicy -> ReceiptIpFilter
```

Constructs ReceiptIpFilter from required parameters

#### `newReceiptIpFilter'`

``` purescript
newReceiptIpFilter' :: Cidr -> ReceiptFilterPolicy -> ({ "Policy" :: ReceiptFilterPolicy, "Cidr" :: Cidr } -> { "Policy" :: ReceiptFilterPolicy, "Cidr" :: Cidr }) -> ReceiptIpFilter
```

Constructs ReceiptIpFilter's fields from required parameters

#### `ReceiptRule`

``` purescript
newtype ReceiptRule
  = ReceiptRule { "Name" :: ReceiptRuleName, "Enabled" :: NullOrUndefined (Enabled), "TlsPolicy" :: NullOrUndefined (TlsPolicy), "Recipients" :: NullOrUndefined (RecipientsList), "Actions" :: NullOrUndefined (ReceiptActionsList), "ScanEnabled" :: NullOrUndefined (Enabled) }
```

<p>Receipt rules enable you to specify which actions Amazon SES should take when it receives mail on behalf of one or more email addresses or domains that you own.</p> <p>Each receipt rule defines a set of email addresses or domains that it applies to. If the email addresses or domains match at least one recipient address of the message, Amazon SES executes all of the receipt rule's actions on the message.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ReceiptRule _
Generic ReceiptRule _
Show ReceiptRule
Decode ReceiptRule
Encode ReceiptRule
```

#### `newReceiptRule`

``` purescript
newReceiptRule :: ReceiptRuleName -> ReceiptRule
```

Constructs ReceiptRule from required parameters

#### `newReceiptRule'`

``` purescript
newReceiptRule' :: ReceiptRuleName -> ({ "Name" :: ReceiptRuleName, "Enabled" :: NullOrUndefined (Enabled), "TlsPolicy" :: NullOrUndefined (TlsPolicy), "Recipients" :: NullOrUndefined (RecipientsList), "Actions" :: NullOrUndefined (ReceiptActionsList), "ScanEnabled" :: NullOrUndefined (Enabled) } -> { "Name" :: ReceiptRuleName, "Enabled" :: NullOrUndefined (Enabled), "TlsPolicy" :: NullOrUndefined (TlsPolicy), "Recipients" :: NullOrUndefined (RecipientsList), "Actions" :: NullOrUndefined (ReceiptActionsList), "ScanEnabled" :: NullOrUndefined (Enabled) }) -> ReceiptRule
```

Constructs ReceiptRule's fields from required parameters

#### `ReceiptRuleName`

``` purescript
newtype ReceiptRuleName
  = ReceiptRuleName String
```

##### Instances
``` purescript
Newtype ReceiptRuleName _
Generic ReceiptRuleName _
Show ReceiptRuleName
Decode ReceiptRuleName
Encode ReceiptRuleName
```

#### `ReceiptRuleNamesList`

``` purescript
newtype ReceiptRuleNamesList
  = ReceiptRuleNamesList (Array ReceiptRuleName)
```

##### Instances
``` purescript
Newtype ReceiptRuleNamesList _
Generic ReceiptRuleNamesList _
Show ReceiptRuleNamesList
Decode ReceiptRuleNamesList
Encode ReceiptRuleNamesList
```

#### `ReceiptRuleSetMetadata`

``` purescript
newtype ReceiptRuleSetMetadata
  = ReceiptRuleSetMetadata { "Name" :: NullOrUndefined (ReceiptRuleSetName), "CreatedTimestamp" :: NullOrUndefined (Timestamp) }
```

<p>Information about a receipt rule set.</p> <p>A receipt rule set is a collection of rules that specify what Amazon SES should do with mail it receives on behalf of your account's verified domains.</p> <p>For information about setting up receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ReceiptRuleSetMetadata _
Generic ReceiptRuleSetMetadata _
Show ReceiptRuleSetMetadata
Decode ReceiptRuleSetMetadata
Encode ReceiptRuleSetMetadata
```

#### `newReceiptRuleSetMetadata`

``` purescript
newReceiptRuleSetMetadata :: ReceiptRuleSetMetadata
```

Constructs ReceiptRuleSetMetadata from required parameters

#### `newReceiptRuleSetMetadata'`

``` purescript
newReceiptRuleSetMetadata' :: ({ "Name" :: NullOrUndefined (ReceiptRuleSetName), "CreatedTimestamp" :: NullOrUndefined (Timestamp) } -> { "Name" :: NullOrUndefined (ReceiptRuleSetName), "CreatedTimestamp" :: NullOrUndefined (Timestamp) }) -> ReceiptRuleSetMetadata
```

Constructs ReceiptRuleSetMetadata's fields from required parameters

#### `ReceiptRuleSetName`

``` purescript
newtype ReceiptRuleSetName
  = ReceiptRuleSetName String
```

##### Instances
``` purescript
Newtype ReceiptRuleSetName _
Generic ReceiptRuleSetName _
Show ReceiptRuleSetName
Decode ReceiptRuleSetName
Encode ReceiptRuleSetName
```

#### `ReceiptRuleSetsLists`

``` purescript
newtype ReceiptRuleSetsLists
  = ReceiptRuleSetsLists (Array ReceiptRuleSetMetadata)
```

##### Instances
``` purescript
Newtype ReceiptRuleSetsLists _
Generic ReceiptRuleSetsLists _
Show ReceiptRuleSetsLists
Decode ReceiptRuleSetsLists
Encode ReceiptRuleSetsLists
```

#### `ReceiptRulesList`

``` purescript
newtype ReceiptRulesList
  = ReceiptRulesList (Array ReceiptRule)
```

##### Instances
``` purescript
Newtype ReceiptRulesList _
Generic ReceiptRulesList _
Show ReceiptRulesList
Decode ReceiptRulesList
Encode ReceiptRulesList
```

#### `Recipient`

``` purescript
newtype Recipient
  = Recipient String
```

##### Instances
``` purescript
Newtype Recipient _
Generic Recipient _
Show Recipient
Decode Recipient
Encode Recipient
```

#### `RecipientDsnFields`

``` purescript
newtype RecipientDsnFields
  = RecipientDsnFields { "FinalRecipient" :: NullOrUndefined (Address), "Action" :: DsnAction, "RemoteMta" :: NullOrUndefined (RemoteMta), "Status" :: DsnStatus, "DiagnosticCode" :: NullOrUndefined (DiagnosticCode), "LastAttemptDate" :: NullOrUndefined (LastAttemptDate), "ExtensionFields" :: NullOrUndefined (ExtensionFieldList) }
```

<p>Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype RecipientDsnFields _
Generic RecipientDsnFields _
Show RecipientDsnFields
Decode RecipientDsnFields
Encode RecipientDsnFields
```

#### `newRecipientDsnFields`

``` purescript
newRecipientDsnFields :: DsnAction -> DsnStatus -> RecipientDsnFields
```

Constructs RecipientDsnFields from required parameters

#### `newRecipientDsnFields'`

``` purescript
newRecipientDsnFields' :: DsnAction -> DsnStatus -> ({ "FinalRecipient" :: NullOrUndefined (Address), "Action" :: DsnAction, "RemoteMta" :: NullOrUndefined (RemoteMta), "Status" :: DsnStatus, "DiagnosticCode" :: NullOrUndefined (DiagnosticCode), "LastAttemptDate" :: NullOrUndefined (LastAttemptDate), "ExtensionFields" :: NullOrUndefined (ExtensionFieldList) } -> { "FinalRecipient" :: NullOrUndefined (Address), "Action" :: DsnAction, "RemoteMta" :: NullOrUndefined (RemoteMta), "Status" :: DsnStatus, "DiagnosticCode" :: NullOrUndefined (DiagnosticCode), "LastAttemptDate" :: NullOrUndefined (LastAttemptDate), "ExtensionFields" :: NullOrUndefined (ExtensionFieldList) }) -> RecipientDsnFields
```

Constructs RecipientDsnFields's fields from required parameters

#### `RecipientsList`

``` purescript
newtype RecipientsList
  = RecipientsList (Array Recipient)
```

##### Instances
``` purescript
Newtype RecipientsList _
Generic RecipientsList _
Show RecipientsList
Decode RecipientsList
Encode RecipientsList
```

#### `RemoteMta`

``` purescript
newtype RemoteMta
  = RemoteMta String
```

##### Instances
``` purescript
Newtype RemoteMta _
Generic RemoteMta _
Show RemoteMta
Decode RemoteMta
Encode RemoteMta
```

#### `RenderedTemplate`

``` purescript
newtype RenderedTemplate
  = RenderedTemplate String
```

##### Instances
``` purescript
Newtype RenderedTemplate _
Generic RenderedTemplate _
Show RenderedTemplate
Decode RenderedTemplate
Encode RenderedTemplate
```

#### `ReorderReceiptRuleSetRequest`

``` purescript
newtype ReorderReceiptRuleSetRequest
  = ReorderReceiptRuleSetRequest { "RuleSetName" :: ReceiptRuleSetName, "RuleNames" :: ReceiptRuleNamesList }
```

<p>Represents a request to reorder the receipt rules within a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype ReorderReceiptRuleSetRequest _
Generic ReorderReceiptRuleSetRequest _
Show ReorderReceiptRuleSetRequest
Decode ReorderReceiptRuleSetRequest
Encode ReorderReceiptRuleSetRequest
```

#### `newReorderReceiptRuleSetRequest`

``` purescript
newReorderReceiptRuleSetRequest :: ReceiptRuleNamesList -> ReceiptRuleSetName -> ReorderReceiptRuleSetRequest
```

Constructs ReorderReceiptRuleSetRequest from required parameters

#### `newReorderReceiptRuleSetRequest'`

``` purescript
newReorderReceiptRuleSetRequest' :: ReceiptRuleNamesList -> ReceiptRuleSetName -> ({ "RuleSetName" :: ReceiptRuleSetName, "RuleNames" :: ReceiptRuleNamesList } -> { "RuleSetName" :: ReceiptRuleSetName, "RuleNames" :: ReceiptRuleNamesList }) -> ReorderReceiptRuleSetRequest
```

Constructs ReorderReceiptRuleSetRequest's fields from required parameters

#### `ReorderReceiptRuleSetResponse`

``` purescript
newtype ReorderReceiptRuleSetResponse
  = ReorderReceiptRuleSetResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype ReorderReceiptRuleSetResponse _
Generic ReorderReceiptRuleSetResponse _
Show ReorderReceiptRuleSetResponse
Decode ReorderReceiptRuleSetResponse
Encode ReorderReceiptRuleSetResponse
```

#### `ReportingMta`

``` purescript
newtype ReportingMta
  = ReportingMta String
```

##### Instances
``` purescript
Newtype ReportingMta _
Generic ReportingMta _
Show ReportingMta
Decode ReportingMta
Encode ReportingMta
```

#### `ReputationOptions`

``` purescript
newtype ReputationOptions
  = ReputationOptions { "SendingEnabled" :: NullOrUndefined (Enabled), "ReputationMetricsEnabled" :: NullOrUndefined (Enabled), "LastFreshStart" :: NullOrUndefined (LastFreshStart) }
```

<p>Contains information about the reputation settings for a configuration set.</p>

##### Instances
``` purescript
Newtype ReputationOptions _
Generic ReputationOptions _
Show ReputationOptions
Decode ReputationOptions
Encode ReputationOptions
```

#### `newReputationOptions`

``` purescript
newReputationOptions :: ReputationOptions
```

Constructs ReputationOptions from required parameters

#### `newReputationOptions'`

``` purescript
newReputationOptions' :: ({ "SendingEnabled" :: NullOrUndefined (Enabled), "ReputationMetricsEnabled" :: NullOrUndefined (Enabled), "LastFreshStart" :: NullOrUndefined (LastFreshStart) } -> { "SendingEnabled" :: NullOrUndefined (Enabled), "ReputationMetricsEnabled" :: NullOrUndefined (Enabled), "LastFreshStart" :: NullOrUndefined (LastFreshStart) }) -> ReputationOptions
```

Constructs ReputationOptions's fields from required parameters

#### `RuleDoesNotExistException`

``` purescript
newtype RuleDoesNotExistException
  = RuleDoesNotExistException { "Name" :: NullOrUndefined (RuleOrRuleSetName) }
```

<p>Indicates that the provided receipt rule does not exist.</p>

##### Instances
``` purescript
Newtype RuleDoesNotExistException _
Generic RuleDoesNotExistException _
Show RuleDoesNotExistException
Decode RuleDoesNotExistException
Encode RuleDoesNotExistException
```

#### `newRuleDoesNotExistException`

``` purescript
newRuleDoesNotExistException :: RuleDoesNotExistException
```

Constructs RuleDoesNotExistException from required parameters

#### `newRuleDoesNotExistException'`

``` purescript
newRuleDoesNotExistException' :: ({ "Name" :: NullOrUndefined (RuleOrRuleSetName) } -> { "Name" :: NullOrUndefined (RuleOrRuleSetName) }) -> RuleDoesNotExistException
```

Constructs RuleDoesNotExistException's fields from required parameters

#### `RuleOrRuleSetName`

``` purescript
newtype RuleOrRuleSetName
  = RuleOrRuleSetName String
```

##### Instances
``` purescript
Newtype RuleOrRuleSetName _
Generic RuleOrRuleSetName _
Show RuleOrRuleSetName
Decode RuleOrRuleSetName
Encode RuleOrRuleSetName
```

#### `RuleSetDoesNotExistException`

``` purescript
newtype RuleSetDoesNotExistException
  = RuleSetDoesNotExistException { "Name" :: NullOrUndefined (RuleOrRuleSetName) }
```

<p>Indicates that the provided receipt rule set does not exist.</p>

##### Instances
``` purescript
Newtype RuleSetDoesNotExistException _
Generic RuleSetDoesNotExistException _
Show RuleSetDoesNotExistException
Decode RuleSetDoesNotExistException
Encode RuleSetDoesNotExistException
```

#### `newRuleSetDoesNotExistException`

``` purescript
newRuleSetDoesNotExistException :: RuleSetDoesNotExistException
```

Constructs RuleSetDoesNotExistException from required parameters

#### `newRuleSetDoesNotExistException'`

``` purescript
newRuleSetDoesNotExistException' :: ({ "Name" :: NullOrUndefined (RuleOrRuleSetName) } -> { "Name" :: NullOrUndefined (RuleOrRuleSetName) }) -> RuleSetDoesNotExistException
```

Constructs RuleSetDoesNotExistException's fields from required parameters

#### `S3Action`

``` purescript
newtype S3Action
  = S3Action { "TopicArn" :: NullOrUndefined (AmazonResourceName), "BucketName" :: S3BucketName, "ObjectKeyPrefix" :: NullOrUndefined (S3KeyPrefix), "KmsKeyArn" :: NullOrUndefined (AmazonResourceName) }
```

<p>When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>To enable Amazon SES to write emails to your Amazon S3 bucket, use an AWS KMS key to encrypt your emails, or publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <note> <p>When you save your emails to an Amazon S3 bucket, the maximum email size (including headers) is 30 MB. Emails larger than that will bounce.</p> </note> <p>For information about specifying Amazon S3 actions in receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype S3Action _
Generic S3Action _
Show S3Action
Decode S3Action
Encode S3Action
```

#### `newS3Action`

``` purescript
newS3Action :: S3BucketName -> S3Action
```

Constructs S3Action from required parameters

#### `newS3Action'`

``` purescript
newS3Action' :: S3BucketName -> ({ "TopicArn" :: NullOrUndefined (AmazonResourceName), "BucketName" :: S3BucketName, "ObjectKeyPrefix" :: NullOrUndefined (S3KeyPrefix), "KmsKeyArn" :: NullOrUndefined (AmazonResourceName) } -> { "TopicArn" :: NullOrUndefined (AmazonResourceName), "BucketName" :: S3BucketName, "ObjectKeyPrefix" :: NullOrUndefined (S3KeyPrefix), "KmsKeyArn" :: NullOrUndefined (AmazonResourceName) }) -> S3Action
```

Constructs S3Action's fields from required parameters

#### `S3BucketName`

``` purescript
newtype S3BucketName
  = S3BucketName String
```

##### Instances
``` purescript
Newtype S3BucketName _
Generic S3BucketName _
Show S3BucketName
Decode S3BucketName
Encode S3BucketName
```

#### `S3KeyPrefix`

``` purescript
newtype S3KeyPrefix
  = S3KeyPrefix String
```

##### Instances
``` purescript
Newtype S3KeyPrefix _
Generic S3KeyPrefix _
Show S3KeyPrefix
Decode S3KeyPrefix
Encode S3KeyPrefix
```

#### `SNSAction`

``` purescript
newtype SNSAction
  = SNSAction { "TopicArn" :: AmazonResourceName, "Encoding" :: NullOrUndefined (SNSActionEncoding) }
```

<p>When included in a receipt rule, this action publishes a notification to Amazon Simple Notification Service (Amazon SNS). This action includes a complete copy of the email content in the Amazon SNS notifications. Amazon SNS notifications for all other actions simply provide information about the email. They do not include the email content itself.</p> <p>If you own the Amazon SNS topic, you don't need to do anything to give Amazon SES permission to publish emails to it. However, if you don't own the Amazon SNS topic, you need to attach a policy to the topic to give Amazon SES permissions to access it. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <important> <p>You can only publish emails that are 150 KB or less (including the header) to Amazon SNS. Larger emails will bounce. If you anticipate emails larger than 150 KB, use the S3 action instead.</p> </important> <p>For information about using a receipt rule to publish an Amazon SNS notification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-sns.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SNSAction _
Generic SNSAction _
Show SNSAction
Decode SNSAction
Encode SNSAction
```

#### `newSNSAction`

``` purescript
newSNSAction :: AmazonResourceName -> SNSAction
```

Constructs SNSAction from required parameters

#### `newSNSAction'`

``` purescript
newSNSAction' :: AmazonResourceName -> ({ "TopicArn" :: AmazonResourceName, "Encoding" :: NullOrUndefined (SNSActionEncoding) } -> { "TopicArn" :: AmazonResourceName, "Encoding" :: NullOrUndefined (SNSActionEncoding) }) -> SNSAction
```

Constructs SNSAction's fields from required parameters

#### `SNSActionEncoding`

``` purescript
newtype SNSActionEncoding
  = SNSActionEncoding String
```

##### Instances
``` purescript
Newtype SNSActionEncoding _
Generic SNSActionEncoding _
Show SNSActionEncoding
Decode SNSActionEncoding
Encode SNSActionEncoding
```

#### `SNSDestination`

``` purescript
newtype SNSDestination
  = SNSDestination { "TopicARN" :: AmazonResourceName }
```

<p>Contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event destination.</p> <p>Event destinations, such as Amazon SNS, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SNSDestination _
Generic SNSDestination _
Show SNSDestination
Decode SNSDestination
Encode SNSDestination
```

#### `newSNSDestination`

``` purescript
newSNSDestination :: AmazonResourceName -> SNSDestination
```

Constructs SNSDestination from required parameters

#### `newSNSDestination'`

``` purescript
newSNSDestination' :: AmazonResourceName -> ({ "TopicARN" :: AmazonResourceName } -> { "TopicARN" :: AmazonResourceName }) -> SNSDestination
```

Constructs SNSDestination's fields from required parameters

#### `SendBounceRequest`

``` purescript
newtype SendBounceRequest
  = SendBounceRequest { "OriginalMessageId" :: MessageId, "BounceSender" :: Address, "Explanation" :: NullOrUndefined (Explanation), "MessageDsn" :: NullOrUndefined (MessageDsn), "BouncedRecipientInfoList" :: BouncedRecipientInfoList, "BounceSenderArn" :: NullOrUndefined (AmazonResourceName) }
```

<p>Represents a request to send a bounce message to the sender of an email you received through Amazon SES.</p>

##### Instances
``` purescript
Newtype SendBounceRequest _
Generic SendBounceRequest _
Show SendBounceRequest
Decode SendBounceRequest
Encode SendBounceRequest
```

#### `newSendBounceRequest`

``` purescript
newSendBounceRequest :: Address -> BouncedRecipientInfoList -> MessageId -> SendBounceRequest
```

Constructs SendBounceRequest from required parameters

#### `newSendBounceRequest'`

``` purescript
newSendBounceRequest' :: Address -> BouncedRecipientInfoList -> MessageId -> ({ "OriginalMessageId" :: MessageId, "BounceSender" :: Address, "Explanation" :: NullOrUndefined (Explanation), "MessageDsn" :: NullOrUndefined (MessageDsn), "BouncedRecipientInfoList" :: BouncedRecipientInfoList, "BounceSenderArn" :: NullOrUndefined (AmazonResourceName) } -> { "OriginalMessageId" :: MessageId, "BounceSender" :: Address, "Explanation" :: NullOrUndefined (Explanation), "MessageDsn" :: NullOrUndefined (MessageDsn), "BouncedRecipientInfoList" :: BouncedRecipientInfoList, "BounceSenderArn" :: NullOrUndefined (AmazonResourceName) }) -> SendBounceRequest
```

Constructs SendBounceRequest's fields from required parameters

#### `SendBounceResponse`

``` purescript
newtype SendBounceResponse
  = SendBounceResponse { "MessageId" :: NullOrUndefined (MessageId) }
```

<p>Represents a unique message ID.</p>

##### Instances
``` purescript
Newtype SendBounceResponse _
Generic SendBounceResponse _
Show SendBounceResponse
Decode SendBounceResponse
Encode SendBounceResponse
```

#### `newSendBounceResponse`

``` purescript
newSendBounceResponse :: SendBounceResponse
```

Constructs SendBounceResponse from required parameters

#### `newSendBounceResponse'`

``` purescript
newSendBounceResponse' :: ({ "MessageId" :: NullOrUndefined (MessageId) } -> { "MessageId" :: NullOrUndefined (MessageId) }) -> SendBounceResponse
```

Constructs SendBounceResponse's fields from required parameters

#### `SendBulkTemplatedEmailRequest`

``` purescript
newtype SendBulkTemplatedEmailRequest
  = SendBulkTemplatedEmailRequest { "Source" :: Address, "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReplyToAddresses" :: NullOrUndefined (AddressList), "ReturnPath" :: NullOrUndefined (Address), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "DefaultTags" :: NullOrUndefined (MessageTagList), "Template" :: TemplateName, "TemplateArn" :: NullOrUndefined (AmazonResourceName), "DefaultTemplateData" :: NullOrUndefined (TemplateData), "Destinations" :: BulkEmailDestinationList }
```

<p>Represents a request to send a templated email to multiple destinations using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SendBulkTemplatedEmailRequest _
Generic SendBulkTemplatedEmailRequest _
Show SendBulkTemplatedEmailRequest
Decode SendBulkTemplatedEmailRequest
Encode SendBulkTemplatedEmailRequest
```

#### `newSendBulkTemplatedEmailRequest`

``` purescript
newSendBulkTemplatedEmailRequest :: BulkEmailDestinationList -> Address -> TemplateName -> SendBulkTemplatedEmailRequest
```

Constructs SendBulkTemplatedEmailRequest from required parameters

#### `newSendBulkTemplatedEmailRequest'`

``` purescript
newSendBulkTemplatedEmailRequest' :: BulkEmailDestinationList -> Address -> TemplateName -> ({ "Source" :: Address, "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReplyToAddresses" :: NullOrUndefined (AddressList), "ReturnPath" :: NullOrUndefined (Address), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "DefaultTags" :: NullOrUndefined (MessageTagList), "Template" :: TemplateName, "TemplateArn" :: NullOrUndefined (AmazonResourceName), "DefaultTemplateData" :: NullOrUndefined (TemplateData), "Destinations" :: BulkEmailDestinationList } -> { "Source" :: Address, "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReplyToAddresses" :: NullOrUndefined (AddressList), "ReturnPath" :: NullOrUndefined (Address), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "DefaultTags" :: NullOrUndefined (MessageTagList), "Template" :: TemplateName, "TemplateArn" :: NullOrUndefined (AmazonResourceName), "DefaultTemplateData" :: NullOrUndefined (TemplateData), "Destinations" :: BulkEmailDestinationList }) -> SendBulkTemplatedEmailRequest
```

Constructs SendBulkTemplatedEmailRequest's fields from required parameters

#### `SendBulkTemplatedEmailResponse`

``` purescript
newtype SendBulkTemplatedEmailResponse
  = SendBulkTemplatedEmailResponse { "Status" :: BulkEmailDestinationStatusList }
```

##### Instances
``` purescript
Newtype SendBulkTemplatedEmailResponse _
Generic SendBulkTemplatedEmailResponse _
Show SendBulkTemplatedEmailResponse
Decode SendBulkTemplatedEmailResponse
Encode SendBulkTemplatedEmailResponse
```

#### `newSendBulkTemplatedEmailResponse`

``` purescript
newSendBulkTemplatedEmailResponse :: BulkEmailDestinationStatusList -> SendBulkTemplatedEmailResponse
```

Constructs SendBulkTemplatedEmailResponse from required parameters

#### `newSendBulkTemplatedEmailResponse'`

``` purescript
newSendBulkTemplatedEmailResponse' :: BulkEmailDestinationStatusList -> ({ "Status" :: BulkEmailDestinationStatusList } -> { "Status" :: BulkEmailDestinationStatusList }) -> SendBulkTemplatedEmailResponse
```

Constructs SendBulkTemplatedEmailResponse's fields from required parameters

#### `SendCustomVerificationEmailRequest`

``` purescript
newtype SendCustomVerificationEmailRequest
  = SendCustomVerificationEmailRequest { "EmailAddress" :: Address, "TemplateName" :: TemplateName, "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }
```

<p>Represents a request to send a custom verification email to a specified recipient.</p>

##### Instances
``` purescript
Newtype SendCustomVerificationEmailRequest _
Generic SendCustomVerificationEmailRequest _
Show SendCustomVerificationEmailRequest
Decode SendCustomVerificationEmailRequest
Encode SendCustomVerificationEmailRequest
```

#### `newSendCustomVerificationEmailRequest`

``` purescript
newSendCustomVerificationEmailRequest :: Address -> TemplateName -> SendCustomVerificationEmailRequest
```

Constructs SendCustomVerificationEmailRequest from required parameters

#### `newSendCustomVerificationEmailRequest'`

``` purescript
newSendCustomVerificationEmailRequest' :: Address -> TemplateName -> ({ "EmailAddress" :: Address, "TemplateName" :: TemplateName, "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) } -> { "EmailAddress" :: Address, "TemplateName" :: TemplateName, "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }) -> SendCustomVerificationEmailRequest
```

Constructs SendCustomVerificationEmailRequest's fields from required parameters

#### `SendCustomVerificationEmailResponse`

``` purescript
newtype SendCustomVerificationEmailResponse
  = SendCustomVerificationEmailResponse { "MessageId" :: NullOrUndefined (MessageId) }
```

<p>The response received when attempting to send the custom verification email.</p>

##### Instances
``` purescript
Newtype SendCustomVerificationEmailResponse _
Generic SendCustomVerificationEmailResponse _
Show SendCustomVerificationEmailResponse
Decode SendCustomVerificationEmailResponse
Encode SendCustomVerificationEmailResponse
```

#### `newSendCustomVerificationEmailResponse`

``` purescript
newSendCustomVerificationEmailResponse :: SendCustomVerificationEmailResponse
```

Constructs SendCustomVerificationEmailResponse from required parameters

#### `newSendCustomVerificationEmailResponse'`

``` purescript
newSendCustomVerificationEmailResponse' :: ({ "MessageId" :: NullOrUndefined (MessageId) } -> { "MessageId" :: NullOrUndefined (MessageId) }) -> SendCustomVerificationEmailResponse
```

Constructs SendCustomVerificationEmailResponse's fields from required parameters

#### `SendDataPoint`

``` purescript
newtype SendDataPoint
  = SendDataPoint { "Timestamp" :: NullOrUndefined (Timestamp), "DeliveryAttempts" :: NullOrUndefined (Counter), "Bounces" :: NullOrUndefined (Counter), "Complaints" :: NullOrUndefined (Counter), "Rejects" :: NullOrUndefined (Counter) }
```

<p>Represents sending statistics data. Each <code>SendDataPoint</code> contains statistics for a 15-minute period of sending activity. </p>

##### Instances
``` purescript
Newtype SendDataPoint _
Generic SendDataPoint _
Show SendDataPoint
Decode SendDataPoint
Encode SendDataPoint
```

#### `newSendDataPoint`

``` purescript
newSendDataPoint :: SendDataPoint
```

Constructs SendDataPoint from required parameters

#### `newSendDataPoint'`

``` purescript
newSendDataPoint' :: ({ "Timestamp" :: NullOrUndefined (Timestamp), "DeliveryAttempts" :: NullOrUndefined (Counter), "Bounces" :: NullOrUndefined (Counter), "Complaints" :: NullOrUndefined (Counter), "Rejects" :: NullOrUndefined (Counter) } -> { "Timestamp" :: NullOrUndefined (Timestamp), "DeliveryAttempts" :: NullOrUndefined (Counter), "Bounces" :: NullOrUndefined (Counter), "Complaints" :: NullOrUndefined (Counter), "Rejects" :: NullOrUndefined (Counter) }) -> SendDataPoint
```

Constructs SendDataPoint's fields from required parameters

#### `SendDataPointList`

``` purescript
newtype SendDataPointList
  = SendDataPointList (Array SendDataPoint)
```

##### Instances
``` purescript
Newtype SendDataPointList _
Generic SendDataPointList _
Show SendDataPointList
Decode SendDataPointList
Encode SendDataPointList
```

#### `SendEmailRequest`

``` purescript
newtype SendEmailRequest
  = SendEmailRequest { "Source" :: Address, "Destination" :: Destination, "Message" :: Message, "ReplyToAddresses" :: NullOrUndefined (AddressList), "ReturnPath" :: NullOrUndefined (Address), "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "Tags" :: NullOrUndefined (MessageTagList), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }
```

<p>Represents a request to send a single formatted email using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-formatted.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SendEmailRequest _
Generic SendEmailRequest _
Show SendEmailRequest
Decode SendEmailRequest
Encode SendEmailRequest
```

#### `newSendEmailRequest`

``` purescript
newSendEmailRequest :: Destination -> Message -> Address -> SendEmailRequest
```

Constructs SendEmailRequest from required parameters

#### `newSendEmailRequest'`

``` purescript
newSendEmailRequest' :: Destination -> Message -> Address -> ({ "Source" :: Address, "Destination" :: Destination, "Message" :: Message, "ReplyToAddresses" :: NullOrUndefined (AddressList), "ReturnPath" :: NullOrUndefined (Address), "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "Tags" :: NullOrUndefined (MessageTagList), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) } -> { "Source" :: Address, "Destination" :: Destination, "Message" :: Message, "ReplyToAddresses" :: NullOrUndefined (AddressList), "ReturnPath" :: NullOrUndefined (Address), "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "Tags" :: NullOrUndefined (MessageTagList), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }) -> SendEmailRequest
```

Constructs SendEmailRequest's fields from required parameters

#### `SendEmailResponse`

``` purescript
newtype SendEmailResponse
  = SendEmailResponse { "MessageId" :: MessageId }
```

<p>Represents a unique message ID.</p>

##### Instances
``` purescript
Newtype SendEmailResponse _
Generic SendEmailResponse _
Show SendEmailResponse
Decode SendEmailResponse
Encode SendEmailResponse
```

#### `newSendEmailResponse`

``` purescript
newSendEmailResponse :: MessageId -> SendEmailResponse
```

Constructs SendEmailResponse from required parameters

#### `newSendEmailResponse'`

``` purescript
newSendEmailResponse' :: MessageId -> ({ "MessageId" :: MessageId } -> { "MessageId" :: MessageId }) -> SendEmailResponse
```

Constructs SendEmailResponse's fields from required parameters

#### `SendRawEmailRequest`

``` purescript
newtype SendRawEmailRequest
  = SendRawEmailRequest { "Source" :: NullOrUndefined (Address), "Destinations" :: NullOrUndefined (AddressList), "RawMessage" :: RawMessage, "FromArn" :: NullOrUndefined (AmazonResourceName), "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "Tags" :: NullOrUndefined (MessageTagList), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }
```

<p>Represents a request to send a single raw email using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SendRawEmailRequest _
Generic SendRawEmailRequest _
Show SendRawEmailRequest
Decode SendRawEmailRequest
Encode SendRawEmailRequest
```

#### `newSendRawEmailRequest`

``` purescript
newSendRawEmailRequest :: RawMessage -> SendRawEmailRequest
```

Constructs SendRawEmailRequest from required parameters

#### `newSendRawEmailRequest'`

``` purescript
newSendRawEmailRequest' :: RawMessage -> ({ "Source" :: NullOrUndefined (Address), "Destinations" :: NullOrUndefined (AddressList), "RawMessage" :: RawMessage, "FromArn" :: NullOrUndefined (AmazonResourceName), "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "Tags" :: NullOrUndefined (MessageTagList), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) } -> { "Source" :: NullOrUndefined (Address), "Destinations" :: NullOrUndefined (AddressList), "RawMessage" :: RawMessage, "FromArn" :: NullOrUndefined (AmazonResourceName), "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "Tags" :: NullOrUndefined (MessageTagList), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }) -> SendRawEmailRequest
```

Constructs SendRawEmailRequest's fields from required parameters

#### `SendRawEmailResponse`

``` purescript
newtype SendRawEmailResponse
  = SendRawEmailResponse { "MessageId" :: MessageId }
```

<p>Represents a unique message ID.</p>

##### Instances
``` purescript
Newtype SendRawEmailResponse _
Generic SendRawEmailResponse _
Show SendRawEmailResponse
Decode SendRawEmailResponse
Encode SendRawEmailResponse
```

#### `newSendRawEmailResponse`

``` purescript
newSendRawEmailResponse :: MessageId -> SendRawEmailResponse
```

Constructs SendRawEmailResponse from required parameters

#### `newSendRawEmailResponse'`

``` purescript
newSendRawEmailResponse' :: MessageId -> ({ "MessageId" :: MessageId } -> { "MessageId" :: MessageId }) -> SendRawEmailResponse
```

Constructs SendRawEmailResponse's fields from required parameters

#### `SendTemplatedEmailRequest`

``` purescript
newtype SendTemplatedEmailRequest
  = SendTemplatedEmailRequest { "Source" :: Address, "Destination" :: Destination, "ReplyToAddresses" :: NullOrUndefined (AddressList), "ReturnPath" :: NullOrUndefined (Address), "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "Tags" :: NullOrUndefined (MessageTagList), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "Template" :: TemplateName, "TemplateArn" :: NullOrUndefined (AmazonResourceName), "TemplateData" :: TemplateData }
```

<p>Represents a request to send a templated email using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SendTemplatedEmailRequest _
Generic SendTemplatedEmailRequest _
Show SendTemplatedEmailRequest
Decode SendTemplatedEmailRequest
Encode SendTemplatedEmailRequest
```

#### `newSendTemplatedEmailRequest`

``` purescript
newSendTemplatedEmailRequest :: Destination -> Address -> TemplateName -> TemplateData -> SendTemplatedEmailRequest
```

Constructs SendTemplatedEmailRequest from required parameters

#### `newSendTemplatedEmailRequest'`

``` purescript
newSendTemplatedEmailRequest' :: Destination -> Address -> TemplateName -> TemplateData -> ({ "Source" :: Address, "Destination" :: Destination, "ReplyToAddresses" :: NullOrUndefined (AddressList), "ReturnPath" :: NullOrUndefined (Address), "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "Tags" :: NullOrUndefined (MessageTagList), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "Template" :: TemplateName, "TemplateArn" :: NullOrUndefined (AmazonResourceName), "TemplateData" :: TemplateData } -> { "Source" :: Address, "Destination" :: Destination, "ReplyToAddresses" :: NullOrUndefined (AddressList), "ReturnPath" :: NullOrUndefined (Address), "SourceArn" :: NullOrUndefined (AmazonResourceName), "ReturnPathArn" :: NullOrUndefined (AmazonResourceName), "Tags" :: NullOrUndefined (MessageTagList), "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName), "Template" :: TemplateName, "TemplateArn" :: NullOrUndefined (AmazonResourceName), "TemplateData" :: TemplateData }) -> SendTemplatedEmailRequest
```

Constructs SendTemplatedEmailRequest's fields from required parameters

#### `SendTemplatedEmailResponse`

``` purescript
newtype SendTemplatedEmailResponse
  = SendTemplatedEmailResponse { "MessageId" :: MessageId }
```

##### Instances
``` purescript
Newtype SendTemplatedEmailResponse _
Generic SendTemplatedEmailResponse _
Show SendTemplatedEmailResponse
Decode SendTemplatedEmailResponse
Encode SendTemplatedEmailResponse
```

#### `newSendTemplatedEmailResponse`

``` purescript
newSendTemplatedEmailResponse :: MessageId -> SendTemplatedEmailResponse
```

Constructs SendTemplatedEmailResponse from required parameters

#### `newSendTemplatedEmailResponse'`

``` purescript
newSendTemplatedEmailResponse' :: MessageId -> ({ "MessageId" :: MessageId } -> { "MessageId" :: MessageId }) -> SendTemplatedEmailResponse
```

Constructs SendTemplatedEmailResponse's fields from required parameters

#### `SentLast24Hours`

``` purescript
newtype SentLast24Hours
  = SentLast24Hours Number
```

##### Instances
``` purescript
Newtype SentLast24Hours _
Generic SentLast24Hours _
Show SentLast24Hours
Decode SentLast24Hours
Encode SentLast24Hours
```

#### `SetActiveReceiptRuleSetRequest`

``` purescript
newtype SetActiveReceiptRuleSetRequest
  = SetActiveReceiptRuleSetRequest { "RuleSetName" :: NullOrUndefined (ReceiptRuleSetName) }
```

<p>Represents a request to set a receipt rule set as the active receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SetActiveReceiptRuleSetRequest _
Generic SetActiveReceiptRuleSetRequest _
Show SetActiveReceiptRuleSetRequest
Decode SetActiveReceiptRuleSetRequest
Encode SetActiveReceiptRuleSetRequest
```

#### `newSetActiveReceiptRuleSetRequest`

``` purescript
newSetActiveReceiptRuleSetRequest :: SetActiveReceiptRuleSetRequest
```

Constructs SetActiveReceiptRuleSetRequest from required parameters

#### `newSetActiveReceiptRuleSetRequest'`

``` purescript
newSetActiveReceiptRuleSetRequest' :: ({ "RuleSetName" :: NullOrUndefined (ReceiptRuleSetName) } -> { "RuleSetName" :: NullOrUndefined (ReceiptRuleSetName) }) -> SetActiveReceiptRuleSetRequest
```

Constructs SetActiveReceiptRuleSetRequest's fields from required parameters

#### `SetActiveReceiptRuleSetResponse`

``` purescript
newtype SetActiveReceiptRuleSetResponse
  = SetActiveReceiptRuleSetResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype SetActiveReceiptRuleSetResponse _
Generic SetActiveReceiptRuleSetResponse _
Show SetActiveReceiptRuleSetResponse
Decode SetActiveReceiptRuleSetResponse
Encode SetActiveReceiptRuleSetResponse
```

#### `SetIdentityDkimEnabledRequest`

``` purescript
newtype SetIdentityDkimEnabledRequest
  = SetIdentityDkimEnabledRequest { "Identity" :: Identity, "DkimEnabled" :: Enabled }
```

<p>Represents a request to enable or disable Amazon SES Easy DKIM signing for an identity. For more information about setting up Easy DKIM, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SetIdentityDkimEnabledRequest _
Generic SetIdentityDkimEnabledRequest _
Show SetIdentityDkimEnabledRequest
Decode SetIdentityDkimEnabledRequest
Encode SetIdentityDkimEnabledRequest
```

#### `newSetIdentityDkimEnabledRequest`

``` purescript
newSetIdentityDkimEnabledRequest :: Enabled -> Identity -> SetIdentityDkimEnabledRequest
```

Constructs SetIdentityDkimEnabledRequest from required parameters

#### `newSetIdentityDkimEnabledRequest'`

``` purescript
newSetIdentityDkimEnabledRequest' :: Enabled -> Identity -> ({ "Identity" :: Identity, "DkimEnabled" :: Enabled } -> { "Identity" :: Identity, "DkimEnabled" :: Enabled }) -> SetIdentityDkimEnabledRequest
```

Constructs SetIdentityDkimEnabledRequest's fields from required parameters

#### `SetIdentityDkimEnabledResponse`

``` purescript
newtype SetIdentityDkimEnabledResponse
  = SetIdentityDkimEnabledResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype SetIdentityDkimEnabledResponse _
Generic SetIdentityDkimEnabledResponse _
Show SetIdentityDkimEnabledResponse
Decode SetIdentityDkimEnabledResponse
Encode SetIdentityDkimEnabledResponse
```

#### `SetIdentityFeedbackForwardingEnabledRequest`

``` purescript
newtype SetIdentityFeedbackForwardingEnabledRequest
  = SetIdentityFeedbackForwardingEnabledRequest { "Identity" :: Identity, "ForwardingEnabled" :: Enabled }
```

<p>Represents a request to enable or disable whether Amazon SES forwards you bounce and complaint notifications through email. For information about email feedback forwarding, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-email.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SetIdentityFeedbackForwardingEnabledRequest _
Generic SetIdentityFeedbackForwardingEnabledRequest _
Show SetIdentityFeedbackForwardingEnabledRequest
Decode SetIdentityFeedbackForwardingEnabledRequest
Encode SetIdentityFeedbackForwardingEnabledRequest
```

#### `newSetIdentityFeedbackForwardingEnabledRequest`

``` purescript
newSetIdentityFeedbackForwardingEnabledRequest :: Enabled -> Identity -> SetIdentityFeedbackForwardingEnabledRequest
```

Constructs SetIdentityFeedbackForwardingEnabledRequest from required parameters

#### `newSetIdentityFeedbackForwardingEnabledRequest'`

``` purescript
newSetIdentityFeedbackForwardingEnabledRequest' :: Enabled -> Identity -> ({ "Identity" :: Identity, "ForwardingEnabled" :: Enabled } -> { "Identity" :: Identity, "ForwardingEnabled" :: Enabled }) -> SetIdentityFeedbackForwardingEnabledRequest
```

Constructs SetIdentityFeedbackForwardingEnabledRequest's fields from required parameters

#### `SetIdentityFeedbackForwardingEnabledResponse`

``` purescript
newtype SetIdentityFeedbackForwardingEnabledResponse
  = SetIdentityFeedbackForwardingEnabledResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype SetIdentityFeedbackForwardingEnabledResponse _
Generic SetIdentityFeedbackForwardingEnabledResponse _
Show SetIdentityFeedbackForwardingEnabledResponse
Decode SetIdentityFeedbackForwardingEnabledResponse
Encode SetIdentityFeedbackForwardingEnabledResponse
```

#### `SetIdentityHeadersInNotificationsEnabledRequest`

``` purescript
newtype SetIdentityHeadersInNotificationsEnabledRequest
  = SetIdentityHeadersInNotificationsEnabledRequest { "Identity" :: Identity, "NotificationType" :: NotificationType, "Enabled" :: Enabled }
```

<p>Represents a request to set whether Amazon SES includes the original email headers in the Amazon SNS notifications of a specified type. For information about notifications, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SetIdentityHeadersInNotificationsEnabledRequest _
Generic SetIdentityHeadersInNotificationsEnabledRequest _
Show SetIdentityHeadersInNotificationsEnabledRequest
Decode SetIdentityHeadersInNotificationsEnabledRequest
Encode SetIdentityHeadersInNotificationsEnabledRequest
```

#### `newSetIdentityHeadersInNotificationsEnabledRequest`

``` purescript
newSetIdentityHeadersInNotificationsEnabledRequest :: Enabled -> Identity -> NotificationType -> SetIdentityHeadersInNotificationsEnabledRequest
```

Constructs SetIdentityHeadersInNotificationsEnabledRequest from required parameters

#### `newSetIdentityHeadersInNotificationsEnabledRequest'`

``` purescript
newSetIdentityHeadersInNotificationsEnabledRequest' :: Enabled -> Identity -> NotificationType -> ({ "Identity" :: Identity, "NotificationType" :: NotificationType, "Enabled" :: Enabled } -> { "Identity" :: Identity, "NotificationType" :: NotificationType, "Enabled" :: Enabled }) -> SetIdentityHeadersInNotificationsEnabledRequest
```

Constructs SetIdentityHeadersInNotificationsEnabledRequest's fields from required parameters

#### `SetIdentityHeadersInNotificationsEnabledResponse`

``` purescript
newtype SetIdentityHeadersInNotificationsEnabledResponse
  = SetIdentityHeadersInNotificationsEnabledResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype SetIdentityHeadersInNotificationsEnabledResponse _
Generic SetIdentityHeadersInNotificationsEnabledResponse _
Show SetIdentityHeadersInNotificationsEnabledResponse
Decode SetIdentityHeadersInNotificationsEnabledResponse
Encode SetIdentityHeadersInNotificationsEnabledResponse
```

#### `SetIdentityMailFromDomainRequest`

``` purescript
newtype SetIdentityMailFromDomainRequest
  = SetIdentityMailFromDomainRequest { "Identity" :: Identity, "MailFromDomain" :: NullOrUndefined (MailFromDomainName), "BehaviorOnMXFailure" :: NullOrUndefined (BehaviorOnMXFailure) }
```

<p>Represents a request to enable or disable the Amazon SES custom MAIL FROM domain setup for a verified identity. For information about using a custom MAIL FROM domain, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SetIdentityMailFromDomainRequest _
Generic SetIdentityMailFromDomainRequest _
Show SetIdentityMailFromDomainRequest
Decode SetIdentityMailFromDomainRequest
Encode SetIdentityMailFromDomainRequest
```

#### `newSetIdentityMailFromDomainRequest`

``` purescript
newSetIdentityMailFromDomainRequest :: Identity -> SetIdentityMailFromDomainRequest
```

Constructs SetIdentityMailFromDomainRequest from required parameters

#### `newSetIdentityMailFromDomainRequest'`

``` purescript
newSetIdentityMailFromDomainRequest' :: Identity -> ({ "Identity" :: Identity, "MailFromDomain" :: NullOrUndefined (MailFromDomainName), "BehaviorOnMXFailure" :: NullOrUndefined (BehaviorOnMXFailure) } -> { "Identity" :: Identity, "MailFromDomain" :: NullOrUndefined (MailFromDomainName), "BehaviorOnMXFailure" :: NullOrUndefined (BehaviorOnMXFailure) }) -> SetIdentityMailFromDomainRequest
```

Constructs SetIdentityMailFromDomainRequest's fields from required parameters

#### `SetIdentityMailFromDomainResponse`

``` purescript
newtype SetIdentityMailFromDomainResponse
  = SetIdentityMailFromDomainResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype SetIdentityMailFromDomainResponse _
Generic SetIdentityMailFromDomainResponse _
Show SetIdentityMailFromDomainResponse
Decode SetIdentityMailFromDomainResponse
Encode SetIdentityMailFromDomainResponse
```

#### `SetIdentityNotificationTopicRequest`

``` purescript
newtype SetIdentityNotificationTopicRequest
  = SetIdentityNotificationTopicRequest { "Identity" :: Identity, "NotificationType" :: NotificationType, "SnsTopic" :: NullOrUndefined (NotificationTopic) }
```

<p>Represents a request to specify the Amazon SNS topic to which Amazon SES will publish bounce, complaint, or delivery notifications for emails sent with that identity as the Source. For information about Amazon SES notifications, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SetIdentityNotificationTopicRequest _
Generic SetIdentityNotificationTopicRequest _
Show SetIdentityNotificationTopicRequest
Decode SetIdentityNotificationTopicRequest
Encode SetIdentityNotificationTopicRequest
```

#### `newSetIdentityNotificationTopicRequest`

``` purescript
newSetIdentityNotificationTopicRequest :: Identity -> NotificationType -> SetIdentityNotificationTopicRequest
```

Constructs SetIdentityNotificationTopicRequest from required parameters

#### `newSetIdentityNotificationTopicRequest'`

``` purescript
newSetIdentityNotificationTopicRequest' :: Identity -> NotificationType -> ({ "Identity" :: Identity, "NotificationType" :: NotificationType, "SnsTopic" :: NullOrUndefined (NotificationTopic) } -> { "Identity" :: Identity, "NotificationType" :: NotificationType, "SnsTopic" :: NullOrUndefined (NotificationTopic) }) -> SetIdentityNotificationTopicRequest
```

Constructs SetIdentityNotificationTopicRequest's fields from required parameters

#### `SetIdentityNotificationTopicResponse`

``` purescript
newtype SetIdentityNotificationTopicResponse
  = SetIdentityNotificationTopicResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype SetIdentityNotificationTopicResponse _
Generic SetIdentityNotificationTopicResponse _
Show SetIdentityNotificationTopicResponse
Decode SetIdentityNotificationTopicResponse
Encode SetIdentityNotificationTopicResponse
```

#### `SetReceiptRulePositionRequest`

``` purescript
newtype SetReceiptRulePositionRequest
  = SetReceiptRulePositionRequest { "RuleSetName" :: ReceiptRuleSetName, "RuleName" :: ReceiptRuleName, "After" :: NullOrUndefined (ReceiptRuleName) }
```

<p>Represents a request to set the position of a receipt rule in a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype SetReceiptRulePositionRequest _
Generic SetReceiptRulePositionRequest _
Show SetReceiptRulePositionRequest
Decode SetReceiptRulePositionRequest
Encode SetReceiptRulePositionRequest
```

#### `newSetReceiptRulePositionRequest`

``` purescript
newSetReceiptRulePositionRequest :: ReceiptRuleName -> ReceiptRuleSetName -> SetReceiptRulePositionRequest
```

Constructs SetReceiptRulePositionRequest from required parameters

#### `newSetReceiptRulePositionRequest'`

``` purescript
newSetReceiptRulePositionRequest' :: ReceiptRuleName -> ReceiptRuleSetName -> ({ "RuleSetName" :: ReceiptRuleSetName, "RuleName" :: ReceiptRuleName, "After" :: NullOrUndefined (ReceiptRuleName) } -> { "RuleSetName" :: ReceiptRuleSetName, "RuleName" :: ReceiptRuleName, "After" :: NullOrUndefined (ReceiptRuleName) }) -> SetReceiptRulePositionRequest
```

Constructs SetReceiptRulePositionRequest's fields from required parameters

#### `SetReceiptRulePositionResponse`

``` purescript
newtype SetReceiptRulePositionResponse
  = SetReceiptRulePositionResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype SetReceiptRulePositionResponse _
Generic SetReceiptRulePositionResponse _
Show SetReceiptRulePositionResponse
Decode SetReceiptRulePositionResponse
Encode SetReceiptRulePositionResponse
```

#### `StopAction`

``` purescript
newtype StopAction
  = StopAction { "Scope" :: StopScope, "TopicArn" :: NullOrUndefined (AmazonResourceName) }
```

<p>When included in a receipt rule, this action terminates the evaluation of the receipt rule set and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>For information about setting a stop action in a receipt rule, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype StopAction _
Generic StopAction _
Show StopAction
Decode StopAction
Encode StopAction
```

#### `newStopAction`

``` purescript
newStopAction :: StopScope -> StopAction
```

Constructs StopAction from required parameters

#### `newStopAction'`

``` purescript
newStopAction' :: StopScope -> ({ "Scope" :: StopScope, "TopicArn" :: NullOrUndefined (AmazonResourceName) } -> { "Scope" :: StopScope, "TopicArn" :: NullOrUndefined (AmazonResourceName) }) -> StopAction
```

Constructs StopAction's fields from required parameters

#### `StopScope`

``` purescript
newtype StopScope
  = StopScope String
```

##### Instances
``` purescript
Newtype StopScope _
Generic StopScope _
Show StopScope
Decode StopScope
Encode StopScope
```

#### `Subject`

``` purescript
newtype Subject
  = Subject String
```

##### Instances
``` purescript
Newtype Subject _
Generic Subject _
Show Subject
Decode Subject
Encode Subject
```

#### `SubjectPart`

``` purescript
newtype SubjectPart
  = SubjectPart String
```

##### Instances
``` purescript
Newtype SubjectPart _
Generic SubjectPart _
Show SubjectPart
Decode SubjectPart
Encode SubjectPart
```

#### `SuccessRedirectionURL`

``` purescript
newtype SuccessRedirectionURL
  = SuccessRedirectionURL String
```

##### Instances
``` purescript
Newtype SuccessRedirectionURL _
Generic SuccessRedirectionURL _
Show SuccessRedirectionURL
Decode SuccessRedirectionURL
Encode SuccessRedirectionURL
```

#### `Template`

``` purescript
newtype Template
  = Template { "TemplateName" :: TemplateName, "SubjectPart" :: NullOrUndefined (SubjectPart), "TextPart" :: NullOrUndefined (TextPart), "HtmlPart" :: NullOrUndefined (HtmlPart) }
```

<p>The content of the email, composed of a subject line, an HTML part, and a text-only part.</p>

##### Instances
``` purescript
Newtype Template _
Generic Template _
Show Template
Decode Template
Encode Template
```

#### `newTemplate`

``` purescript
newTemplate :: TemplateName -> Template
```

Constructs Template from required parameters

#### `newTemplate'`

``` purescript
newTemplate' :: TemplateName -> ({ "TemplateName" :: TemplateName, "SubjectPart" :: NullOrUndefined (SubjectPart), "TextPart" :: NullOrUndefined (TextPart), "HtmlPart" :: NullOrUndefined (HtmlPart) } -> { "TemplateName" :: TemplateName, "SubjectPart" :: NullOrUndefined (SubjectPart), "TextPart" :: NullOrUndefined (TextPart), "HtmlPart" :: NullOrUndefined (HtmlPart) }) -> Template
```

Constructs Template's fields from required parameters

#### `TemplateContent`

``` purescript
newtype TemplateContent
  = TemplateContent String
```

##### Instances
``` purescript
Newtype TemplateContent _
Generic TemplateContent _
Show TemplateContent
Decode TemplateContent
Encode TemplateContent
```

#### `TemplateData`

``` purescript
newtype TemplateData
  = TemplateData String
```

##### Instances
``` purescript
Newtype TemplateData _
Generic TemplateData _
Show TemplateData
Decode TemplateData
Encode TemplateData
```

#### `TemplateDoesNotExistException`

``` purescript
newtype TemplateDoesNotExistException
  = TemplateDoesNotExistException { "TemplateName" :: NullOrUndefined (TemplateName) }
```

<p>Indicates that the Template object you specified does not exist in your Amazon SES account.</p>

##### Instances
``` purescript
Newtype TemplateDoesNotExistException _
Generic TemplateDoesNotExistException _
Show TemplateDoesNotExistException
Decode TemplateDoesNotExistException
Encode TemplateDoesNotExistException
```

#### `newTemplateDoesNotExistException`

``` purescript
newTemplateDoesNotExistException :: TemplateDoesNotExistException
```

Constructs TemplateDoesNotExistException from required parameters

#### `newTemplateDoesNotExistException'`

``` purescript
newTemplateDoesNotExistException' :: ({ "TemplateName" :: NullOrUndefined (TemplateName) } -> { "TemplateName" :: NullOrUndefined (TemplateName) }) -> TemplateDoesNotExistException
```

Constructs TemplateDoesNotExistException's fields from required parameters

#### `TemplateMetadata`

``` purescript
newtype TemplateMetadata
  = TemplateMetadata { "Name" :: NullOrUndefined (TemplateName), "CreatedTimestamp" :: NullOrUndefined (Timestamp) }
```

<p>Contains information about an email template.</p>

##### Instances
``` purescript
Newtype TemplateMetadata _
Generic TemplateMetadata _
Show TemplateMetadata
Decode TemplateMetadata
Encode TemplateMetadata
```

#### `newTemplateMetadata`

``` purescript
newTemplateMetadata :: TemplateMetadata
```

Constructs TemplateMetadata from required parameters

#### `newTemplateMetadata'`

``` purescript
newTemplateMetadata' :: ({ "Name" :: NullOrUndefined (TemplateName), "CreatedTimestamp" :: NullOrUndefined (Timestamp) } -> { "Name" :: NullOrUndefined (TemplateName), "CreatedTimestamp" :: NullOrUndefined (Timestamp) }) -> TemplateMetadata
```

Constructs TemplateMetadata's fields from required parameters

#### `TemplateMetadataList`

``` purescript
newtype TemplateMetadataList
  = TemplateMetadataList (Array TemplateMetadata)
```

##### Instances
``` purescript
Newtype TemplateMetadataList _
Generic TemplateMetadataList _
Show TemplateMetadataList
Decode TemplateMetadataList
Encode TemplateMetadataList
```

#### `TemplateName`

``` purescript
newtype TemplateName
  = TemplateName String
```

##### Instances
``` purescript
Newtype TemplateName _
Generic TemplateName _
Show TemplateName
Decode TemplateName
Encode TemplateName
```

#### `TestRenderTemplateRequest`

``` purescript
newtype TestRenderTemplateRequest
  = TestRenderTemplateRequest { "TemplateName" :: TemplateName, "TemplateData" :: TemplateData }
```

##### Instances
``` purescript
Newtype TestRenderTemplateRequest _
Generic TestRenderTemplateRequest _
Show TestRenderTemplateRequest
Decode TestRenderTemplateRequest
Encode TestRenderTemplateRequest
```

#### `newTestRenderTemplateRequest`

``` purescript
newTestRenderTemplateRequest :: TemplateData -> TemplateName -> TestRenderTemplateRequest
```

Constructs TestRenderTemplateRequest from required parameters

#### `newTestRenderTemplateRequest'`

``` purescript
newTestRenderTemplateRequest' :: TemplateData -> TemplateName -> ({ "TemplateName" :: TemplateName, "TemplateData" :: TemplateData } -> { "TemplateName" :: TemplateName, "TemplateData" :: TemplateData }) -> TestRenderTemplateRequest
```

Constructs TestRenderTemplateRequest's fields from required parameters

#### `TestRenderTemplateResponse`

``` purescript
newtype TestRenderTemplateResponse
  = TestRenderTemplateResponse { "RenderedTemplate" :: NullOrUndefined (RenderedTemplate) }
```

##### Instances
``` purescript
Newtype TestRenderTemplateResponse _
Generic TestRenderTemplateResponse _
Show TestRenderTemplateResponse
Decode TestRenderTemplateResponse
Encode TestRenderTemplateResponse
```

#### `newTestRenderTemplateResponse`

``` purescript
newTestRenderTemplateResponse :: TestRenderTemplateResponse
```

Constructs TestRenderTemplateResponse from required parameters

#### `newTestRenderTemplateResponse'`

``` purescript
newTestRenderTemplateResponse' :: ({ "RenderedTemplate" :: NullOrUndefined (RenderedTemplate) } -> { "RenderedTemplate" :: NullOrUndefined (RenderedTemplate) }) -> TestRenderTemplateResponse
```

Constructs TestRenderTemplateResponse's fields from required parameters

#### `TextPart`

``` purescript
newtype TextPart
  = TextPart String
```

##### Instances
``` purescript
Newtype TextPart _
Generic TextPart _
Show TextPart
Decode TextPart
Encode TextPart
```

#### `TlsPolicy`

``` purescript
newtype TlsPolicy
  = TlsPolicy String
```

##### Instances
``` purescript
Newtype TlsPolicy _
Generic TlsPolicy _
Show TlsPolicy
Decode TlsPolicy
Encode TlsPolicy
```

#### `TrackingOptions`

``` purescript
newtype TrackingOptions
  = TrackingOptions { "CustomRedirectDomain" :: NullOrUndefined (CustomRedirectDomain) }
```

<p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This domain captures open and click events generated by Amazon SES emails.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring Custom Domains to Handle Open and Click Tracking</a> in the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype TrackingOptions _
Generic TrackingOptions _
Show TrackingOptions
Decode TrackingOptions
Encode TrackingOptions
```

#### `newTrackingOptions`

``` purescript
newTrackingOptions :: TrackingOptions
```

Constructs TrackingOptions from required parameters

#### `newTrackingOptions'`

``` purescript
newTrackingOptions' :: ({ "CustomRedirectDomain" :: NullOrUndefined (CustomRedirectDomain) } -> { "CustomRedirectDomain" :: NullOrUndefined (CustomRedirectDomain) }) -> TrackingOptions
```

Constructs TrackingOptions's fields from required parameters

#### `TrackingOptionsAlreadyExistsException`

``` purescript
newtype TrackingOptionsAlreadyExistsException
  = TrackingOptionsAlreadyExistsException { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }
```

<p>Indicates that the configuration set you specified already contains a TrackingOptions object.</p>

##### Instances
``` purescript
Newtype TrackingOptionsAlreadyExistsException _
Generic TrackingOptionsAlreadyExistsException _
Show TrackingOptionsAlreadyExistsException
Decode TrackingOptionsAlreadyExistsException
Encode TrackingOptionsAlreadyExistsException
```

#### `newTrackingOptionsAlreadyExistsException`

``` purescript
newTrackingOptionsAlreadyExistsException :: TrackingOptionsAlreadyExistsException
```

Constructs TrackingOptionsAlreadyExistsException from required parameters

#### `newTrackingOptionsAlreadyExistsException'`

``` purescript
newTrackingOptionsAlreadyExistsException' :: ({ "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) } -> { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }) -> TrackingOptionsAlreadyExistsException
```

Constructs TrackingOptionsAlreadyExistsException's fields from required parameters

#### `TrackingOptionsDoesNotExistException`

``` purescript
newtype TrackingOptionsDoesNotExistException
  = TrackingOptionsDoesNotExistException { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }
```

<p>Indicates that the TrackingOptions object you specified does not exist.</p>

##### Instances
``` purescript
Newtype TrackingOptionsDoesNotExistException _
Generic TrackingOptionsDoesNotExistException _
Show TrackingOptionsDoesNotExistException
Decode TrackingOptionsDoesNotExistException
Encode TrackingOptionsDoesNotExistException
```

#### `newTrackingOptionsDoesNotExistException`

``` purescript
newTrackingOptionsDoesNotExistException :: TrackingOptionsDoesNotExistException
```

Constructs TrackingOptionsDoesNotExistException from required parameters

#### `newTrackingOptionsDoesNotExistException'`

``` purescript
newTrackingOptionsDoesNotExistException' :: ({ "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) } -> { "ConfigurationSetName" :: NullOrUndefined (ConfigurationSetName) }) -> TrackingOptionsDoesNotExistException
```

Constructs TrackingOptionsDoesNotExistException's fields from required parameters

#### `UpdateAccountSendingEnabledRequest`

``` purescript
newtype UpdateAccountSendingEnabledRequest
  = UpdateAccountSendingEnabledRequest { "Enabled" :: NullOrUndefined (Enabled) }
```

<p>Represents a request to enable or disable the email sending capabilities for your entire Amazon SES account.</p>

##### Instances
``` purescript
Newtype UpdateAccountSendingEnabledRequest _
Generic UpdateAccountSendingEnabledRequest _
Show UpdateAccountSendingEnabledRequest
Decode UpdateAccountSendingEnabledRequest
Encode UpdateAccountSendingEnabledRequest
```

#### `newUpdateAccountSendingEnabledRequest`

``` purescript
newUpdateAccountSendingEnabledRequest :: UpdateAccountSendingEnabledRequest
```

Constructs UpdateAccountSendingEnabledRequest from required parameters

#### `newUpdateAccountSendingEnabledRequest'`

``` purescript
newUpdateAccountSendingEnabledRequest' :: ({ "Enabled" :: NullOrUndefined (Enabled) } -> { "Enabled" :: NullOrUndefined (Enabled) }) -> UpdateAccountSendingEnabledRequest
```

Constructs UpdateAccountSendingEnabledRequest's fields from required parameters

#### `UpdateConfigurationSetEventDestinationRequest`

``` purescript
newtype UpdateConfigurationSetEventDestinationRequest
  = UpdateConfigurationSetEventDestinationRequest { "ConfigurationSetName" :: ConfigurationSetName, "EventDestination" :: EventDestination }
```

<p>Represents a request to update the event destination of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype UpdateConfigurationSetEventDestinationRequest _
Generic UpdateConfigurationSetEventDestinationRequest _
Show UpdateConfigurationSetEventDestinationRequest
Decode UpdateConfigurationSetEventDestinationRequest
Encode UpdateConfigurationSetEventDestinationRequest
```

#### `newUpdateConfigurationSetEventDestinationRequest`

``` purescript
newUpdateConfigurationSetEventDestinationRequest :: ConfigurationSetName -> EventDestination -> UpdateConfigurationSetEventDestinationRequest
```

Constructs UpdateConfigurationSetEventDestinationRequest from required parameters

#### `newUpdateConfigurationSetEventDestinationRequest'`

``` purescript
newUpdateConfigurationSetEventDestinationRequest' :: ConfigurationSetName -> EventDestination -> ({ "ConfigurationSetName" :: ConfigurationSetName, "EventDestination" :: EventDestination } -> { "ConfigurationSetName" :: ConfigurationSetName, "EventDestination" :: EventDestination }) -> UpdateConfigurationSetEventDestinationRequest
```

Constructs UpdateConfigurationSetEventDestinationRequest's fields from required parameters

#### `UpdateConfigurationSetEventDestinationResponse`

``` purescript
newtype UpdateConfigurationSetEventDestinationResponse
  = UpdateConfigurationSetEventDestinationResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype UpdateConfigurationSetEventDestinationResponse _
Generic UpdateConfigurationSetEventDestinationResponse _
Show UpdateConfigurationSetEventDestinationResponse
Decode UpdateConfigurationSetEventDestinationResponse
Encode UpdateConfigurationSetEventDestinationResponse
```

#### `UpdateConfigurationSetReputationMetricsEnabledRequest`

``` purescript
newtype UpdateConfigurationSetReputationMetricsEnabledRequest
  = UpdateConfigurationSetReputationMetricsEnabledRequest { "ConfigurationSetName" :: ConfigurationSetName, "Enabled" :: Enabled }
```

<p>Represents a request to modify the reputation metric publishing settings for a configuration set.</p>

##### Instances
``` purescript
Newtype UpdateConfigurationSetReputationMetricsEnabledRequest _
Generic UpdateConfigurationSetReputationMetricsEnabledRequest _
Show UpdateConfigurationSetReputationMetricsEnabledRequest
Decode UpdateConfigurationSetReputationMetricsEnabledRequest
Encode UpdateConfigurationSetReputationMetricsEnabledRequest
```

#### `newUpdateConfigurationSetReputationMetricsEnabledRequest`

``` purescript
newUpdateConfigurationSetReputationMetricsEnabledRequest :: ConfigurationSetName -> Enabled -> UpdateConfigurationSetReputationMetricsEnabledRequest
```

Constructs UpdateConfigurationSetReputationMetricsEnabledRequest from required parameters

#### `newUpdateConfigurationSetReputationMetricsEnabledRequest'`

``` purescript
newUpdateConfigurationSetReputationMetricsEnabledRequest' :: ConfigurationSetName -> Enabled -> ({ "ConfigurationSetName" :: ConfigurationSetName, "Enabled" :: Enabled } -> { "ConfigurationSetName" :: ConfigurationSetName, "Enabled" :: Enabled }) -> UpdateConfigurationSetReputationMetricsEnabledRequest
```

Constructs UpdateConfigurationSetReputationMetricsEnabledRequest's fields from required parameters

#### `UpdateConfigurationSetSendingEnabledRequest`

``` purescript
newtype UpdateConfigurationSetSendingEnabledRequest
  = UpdateConfigurationSetSendingEnabledRequest { "ConfigurationSetName" :: ConfigurationSetName, "Enabled" :: Enabled }
```

<p>Represents a request to enable or disable the email sending capabilities for a specific configuration set.</p>

##### Instances
``` purescript
Newtype UpdateConfigurationSetSendingEnabledRequest _
Generic UpdateConfigurationSetSendingEnabledRequest _
Show UpdateConfigurationSetSendingEnabledRequest
Decode UpdateConfigurationSetSendingEnabledRequest
Encode UpdateConfigurationSetSendingEnabledRequest
```

#### `newUpdateConfigurationSetSendingEnabledRequest`

``` purescript
newUpdateConfigurationSetSendingEnabledRequest :: ConfigurationSetName -> Enabled -> UpdateConfigurationSetSendingEnabledRequest
```

Constructs UpdateConfigurationSetSendingEnabledRequest from required parameters

#### `newUpdateConfigurationSetSendingEnabledRequest'`

``` purescript
newUpdateConfigurationSetSendingEnabledRequest' :: ConfigurationSetName -> Enabled -> ({ "ConfigurationSetName" :: ConfigurationSetName, "Enabled" :: Enabled } -> { "ConfigurationSetName" :: ConfigurationSetName, "Enabled" :: Enabled }) -> UpdateConfigurationSetSendingEnabledRequest
```

Constructs UpdateConfigurationSetSendingEnabledRequest's fields from required parameters

#### `UpdateConfigurationSetTrackingOptionsRequest`

``` purescript
newtype UpdateConfigurationSetTrackingOptionsRequest
  = UpdateConfigurationSetTrackingOptionsRequest { "ConfigurationSetName" :: ConfigurationSetName, "TrackingOptions" :: TrackingOptions }
```

<p>Represents a request to update the tracking options for a configuration set. </p>

##### Instances
``` purescript
Newtype UpdateConfigurationSetTrackingOptionsRequest _
Generic UpdateConfigurationSetTrackingOptionsRequest _
Show UpdateConfigurationSetTrackingOptionsRequest
Decode UpdateConfigurationSetTrackingOptionsRequest
Encode UpdateConfigurationSetTrackingOptionsRequest
```

#### `newUpdateConfigurationSetTrackingOptionsRequest`

``` purescript
newUpdateConfigurationSetTrackingOptionsRequest :: ConfigurationSetName -> TrackingOptions -> UpdateConfigurationSetTrackingOptionsRequest
```

Constructs UpdateConfigurationSetTrackingOptionsRequest from required parameters

#### `newUpdateConfigurationSetTrackingOptionsRequest'`

``` purescript
newUpdateConfigurationSetTrackingOptionsRequest' :: ConfigurationSetName -> TrackingOptions -> ({ "ConfigurationSetName" :: ConfigurationSetName, "TrackingOptions" :: TrackingOptions } -> { "ConfigurationSetName" :: ConfigurationSetName, "TrackingOptions" :: TrackingOptions }) -> UpdateConfigurationSetTrackingOptionsRequest
```

Constructs UpdateConfigurationSetTrackingOptionsRequest's fields from required parameters

#### `UpdateConfigurationSetTrackingOptionsResponse`

``` purescript
newtype UpdateConfigurationSetTrackingOptionsResponse
  = UpdateConfigurationSetTrackingOptionsResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype UpdateConfigurationSetTrackingOptionsResponse _
Generic UpdateConfigurationSetTrackingOptionsResponse _
Show UpdateConfigurationSetTrackingOptionsResponse
Decode UpdateConfigurationSetTrackingOptionsResponse
Encode UpdateConfigurationSetTrackingOptionsResponse
```

#### `UpdateCustomVerificationEmailTemplateRequest`

``` purescript
newtype UpdateCustomVerificationEmailTemplateRequest
  = UpdateCustomVerificationEmailTemplateRequest { "TemplateName" :: TemplateName, "FromEmailAddress" :: NullOrUndefined (FromAddress), "TemplateSubject" :: NullOrUndefined (Subject), "TemplateContent" :: NullOrUndefined (TemplateContent), "SuccessRedirectionURL" :: NullOrUndefined (SuccessRedirectionURL), "FailureRedirectionURL" :: NullOrUndefined (FailureRedirectionURL) }
```

<p>Represents a request to update an existing custom verification email template.</p>

##### Instances
``` purescript
Newtype UpdateCustomVerificationEmailTemplateRequest _
Generic UpdateCustomVerificationEmailTemplateRequest _
Show UpdateCustomVerificationEmailTemplateRequest
Decode UpdateCustomVerificationEmailTemplateRequest
Encode UpdateCustomVerificationEmailTemplateRequest
```

#### `newUpdateCustomVerificationEmailTemplateRequest`

``` purescript
newUpdateCustomVerificationEmailTemplateRequest :: TemplateName -> UpdateCustomVerificationEmailTemplateRequest
```

Constructs UpdateCustomVerificationEmailTemplateRequest from required parameters

#### `newUpdateCustomVerificationEmailTemplateRequest'`

``` purescript
newUpdateCustomVerificationEmailTemplateRequest' :: TemplateName -> ({ "TemplateName" :: TemplateName, "FromEmailAddress" :: NullOrUndefined (FromAddress), "TemplateSubject" :: NullOrUndefined (Subject), "TemplateContent" :: NullOrUndefined (TemplateContent), "SuccessRedirectionURL" :: NullOrUndefined (SuccessRedirectionURL), "FailureRedirectionURL" :: NullOrUndefined (FailureRedirectionURL) } -> { "TemplateName" :: TemplateName, "FromEmailAddress" :: NullOrUndefined (FromAddress), "TemplateSubject" :: NullOrUndefined (Subject), "TemplateContent" :: NullOrUndefined (TemplateContent), "SuccessRedirectionURL" :: NullOrUndefined (SuccessRedirectionURL), "FailureRedirectionURL" :: NullOrUndefined (FailureRedirectionURL) }) -> UpdateCustomVerificationEmailTemplateRequest
```

Constructs UpdateCustomVerificationEmailTemplateRequest's fields from required parameters

#### `UpdateReceiptRuleRequest`

``` purescript
newtype UpdateReceiptRuleRequest
  = UpdateReceiptRuleRequest { "RuleSetName" :: ReceiptRuleSetName, "Rule" :: ReceiptRule }
```

<p>Represents a request to update a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype UpdateReceiptRuleRequest _
Generic UpdateReceiptRuleRequest _
Show UpdateReceiptRuleRequest
Decode UpdateReceiptRuleRequest
Encode UpdateReceiptRuleRequest
```

#### `newUpdateReceiptRuleRequest`

``` purescript
newUpdateReceiptRuleRequest :: ReceiptRule -> ReceiptRuleSetName -> UpdateReceiptRuleRequest
```

Constructs UpdateReceiptRuleRequest from required parameters

#### `newUpdateReceiptRuleRequest'`

``` purescript
newUpdateReceiptRuleRequest' :: ReceiptRule -> ReceiptRuleSetName -> ({ "RuleSetName" :: ReceiptRuleSetName, "Rule" :: ReceiptRule } -> { "RuleSetName" :: ReceiptRuleSetName, "Rule" :: ReceiptRule }) -> UpdateReceiptRuleRequest
```

Constructs UpdateReceiptRuleRequest's fields from required parameters

#### `UpdateReceiptRuleResponse`

``` purescript
newtype UpdateReceiptRuleResponse
  = UpdateReceiptRuleResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype UpdateReceiptRuleResponse _
Generic UpdateReceiptRuleResponse _
Show UpdateReceiptRuleResponse
Decode UpdateReceiptRuleResponse
Encode UpdateReceiptRuleResponse
```

#### `UpdateTemplateRequest`

``` purescript
newtype UpdateTemplateRequest
  = UpdateTemplateRequest { "Template" :: Template }
```

##### Instances
``` purescript
Newtype UpdateTemplateRequest _
Generic UpdateTemplateRequest _
Show UpdateTemplateRequest
Decode UpdateTemplateRequest
Encode UpdateTemplateRequest
```

#### `newUpdateTemplateRequest`

``` purescript
newUpdateTemplateRequest :: Template -> UpdateTemplateRequest
```

Constructs UpdateTemplateRequest from required parameters

#### `newUpdateTemplateRequest'`

``` purescript
newUpdateTemplateRequest' :: Template -> ({ "Template" :: Template } -> { "Template" :: Template }) -> UpdateTemplateRequest
```

Constructs UpdateTemplateRequest's fields from required parameters

#### `UpdateTemplateResponse`

``` purescript
newtype UpdateTemplateResponse
  = UpdateTemplateResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateTemplateResponse _
Generic UpdateTemplateResponse _
Show UpdateTemplateResponse
Decode UpdateTemplateResponse
Encode UpdateTemplateResponse
```

#### `VerificationAttributes`

``` purescript
newtype VerificationAttributes
  = VerificationAttributes (StrMap IdentityVerificationAttributes)
```

##### Instances
``` purescript
Newtype VerificationAttributes _
Generic VerificationAttributes _
Show VerificationAttributes
Decode VerificationAttributes
Encode VerificationAttributes
```

#### `VerificationStatus`

``` purescript
newtype VerificationStatus
  = VerificationStatus String
```

##### Instances
``` purescript
Newtype VerificationStatus _
Generic VerificationStatus _
Show VerificationStatus
Decode VerificationStatus
Encode VerificationStatus
```

#### `VerificationToken`

``` purescript
newtype VerificationToken
  = VerificationToken String
```

##### Instances
``` purescript
Newtype VerificationToken _
Generic VerificationToken _
Show VerificationToken
Decode VerificationToken
Encode VerificationToken
```

#### `VerificationTokenList`

``` purescript
newtype VerificationTokenList
  = VerificationTokenList (Array VerificationToken)
```

##### Instances
``` purescript
Newtype VerificationTokenList _
Generic VerificationTokenList _
Show VerificationTokenList
Decode VerificationTokenList
Encode VerificationTokenList
```

#### `VerifyDomainDkimRequest`

``` purescript
newtype VerifyDomainDkimRequest
  = VerifyDomainDkimRequest { "Domain" :: Domain }
```

<p>Represents a request to generate the CNAME records needed to set up Easy DKIM with Amazon SES. For more information about setting up Easy DKIM, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype VerifyDomainDkimRequest _
Generic VerifyDomainDkimRequest _
Show VerifyDomainDkimRequest
Decode VerifyDomainDkimRequest
Encode VerifyDomainDkimRequest
```

#### `newVerifyDomainDkimRequest`

``` purescript
newVerifyDomainDkimRequest :: Domain -> VerifyDomainDkimRequest
```

Constructs VerifyDomainDkimRequest from required parameters

#### `newVerifyDomainDkimRequest'`

``` purescript
newVerifyDomainDkimRequest' :: Domain -> ({ "Domain" :: Domain } -> { "Domain" :: Domain }) -> VerifyDomainDkimRequest
```

Constructs VerifyDomainDkimRequest's fields from required parameters

#### `VerifyDomainDkimResponse`

``` purescript
newtype VerifyDomainDkimResponse
  = VerifyDomainDkimResponse { "DkimTokens" :: VerificationTokenList }
```

<p>Returns CNAME records that you must publish to the DNS server of your domain to set up Easy DKIM with Amazon SES.</p>

##### Instances
``` purescript
Newtype VerifyDomainDkimResponse _
Generic VerifyDomainDkimResponse _
Show VerifyDomainDkimResponse
Decode VerifyDomainDkimResponse
Encode VerifyDomainDkimResponse
```

#### `newVerifyDomainDkimResponse`

``` purescript
newVerifyDomainDkimResponse :: VerificationTokenList -> VerifyDomainDkimResponse
```

Constructs VerifyDomainDkimResponse from required parameters

#### `newVerifyDomainDkimResponse'`

``` purescript
newVerifyDomainDkimResponse' :: VerificationTokenList -> ({ "DkimTokens" :: VerificationTokenList } -> { "DkimTokens" :: VerificationTokenList }) -> VerifyDomainDkimResponse
```

Constructs VerifyDomainDkimResponse's fields from required parameters

#### `VerifyDomainIdentityRequest`

``` purescript
newtype VerifyDomainIdentityRequest
  = VerifyDomainIdentityRequest { "Domain" :: Domain }
```

<p>Represents a request to begin Amazon SES domain verification and to generate the TXT records that you must publish to the DNS server of your domain to complete the verification. For information about domain verification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype VerifyDomainIdentityRequest _
Generic VerifyDomainIdentityRequest _
Show VerifyDomainIdentityRequest
Decode VerifyDomainIdentityRequest
Encode VerifyDomainIdentityRequest
```

#### `newVerifyDomainIdentityRequest`

``` purescript
newVerifyDomainIdentityRequest :: Domain -> VerifyDomainIdentityRequest
```

Constructs VerifyDomainIdentityRequest from required parameters

#### `newVerifyDomainIdentityRequest'`

``` purescript
newVerifyDomainIdentityRequest' :: Domain -> ({ "Domain" :: Domain } -> { "Domain" :: Domain }) -> VerifyDomainIdentityRequest
```

Constructs VerifyDomainIdentityRequest's fields from required parameters

#### `VerifyDomainIdentityResponse`

``` purescript
newtype VerifyDomainIdentityResponse
  = VerifyDomainIdentityResponse { "VerificationToken" :: VerificationToken }
```

<p>Returns a TXT record that you must publish to the DNS server of your domain to complete domain verification with Amazon SES.</p>

##### Instances
``` purescript
Newtype VerifyDomainIdentityResponse _
Generic VerifyDomainIdentityResponse _
Show VerifyDomainIdentityResponse
Decode VerifyDomainIdentityResponse
Encode VerifyDomainIdentityResponse
```

#### `newVerifyDomainIdentityResponse`

``` purescript
newVerifyDomainIdentityResponse :: VerificationToken -> VerifyDomainIdentityResponse
```

Constructs VerifyDomainIdentityResponse from required parameters

#### `newVerifyDomainIdentityResponse'`

``` purescript
newVerifyDomainIdentityResponse' :: VerificationToken -> ({ "VerificationToken" :: VerificationToken } -> { "VerificationToken" :: VerificationToken }) -> VerifyDomainIdentityResponse
```

Constructs VerifyDomainIdentityResponse's fields from required parameters

#### `VerifyEmailAddressRequest`

``` purescript
newtype VerifyEmailAddressRequest
  = VerifyEmailAddressRequest { "EmailAddress" :: Address }
```

<p>Represents a request to begin email address verification with Amazon SES. For information about email address verification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype VerifyEmailAddressRequest _
Generic VerifyEmailAddressRequest _
Show VerifyEmailAddressRequest
Decode VerifyEmailAddressRequest
Encode VerifyEmailAddressRequest
```

#### `newVerifyEmailAddressRequest`

``` purescript
newVerifyEmailAddressRequest :: Address -> VerifyEmailAddressRequest
```

Constructs VerifyEmailAddressRequest from required parameters

#### `newVerifyEmailAddressRequest'`

``` purescript
newVerifyEmailAddressRequest' :: Address -> ({ "EmailAddress" :: Address } -> { "EmailAddress" :: Address }) -> VerifyEmailAddressRequest
```

Constructs VerifyEmailAddressRequest's fields from required parameters

#### `VerifyEmailIdentityRequest`

``` purescript
newtype VerifyEmailIdentityRequest
  = VerifyEmailIdentityRequest { "EmailAddress" :: Address }
```

<p>Represents a request to begin email address verification with Amazon SES. For information about email address verification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype VerifyEmailIdentityRequest _
Generic VerifyEmailIdentityRequest _
Show VerifyEmailIdentityRequest
Decode VerifyEmailIdentityRequest
Encode VerifyEmailIdentityRequest
```

#### `newVerifyEmailIdentityRequest`

``` purescript
newVerifyEmailIdentityRequest :: Address -> VerifyEmailIdentityRequest
```

Constructs VerifyEmailIdentityRequest from required parameters

#### `newVerifyEmailIdentityRequest'`

``` purescript
newVerifyEmailIdentityRequest' :: Address -> ({ "EmailAddress" :: Address } -> { "EmailAddress" :: Address }) -> VerifyEmailIdentityRequest
```

Constructs VerifyEmailIdentityRequest's fields from required parameters

#### `VerifyEmailIdentityResponse`

``` purescript
newtype VerifyEmailIdentityResponse
  = VerifyEmailIdentityResponse NoArguments
```

<p>An empty element returned on a successful request.</p>

##### Instances
``` purescript
Newtype VerifyEmailIdentityResponse _
Generic VerifyEmailIdentityResponse _
Show VerifyEmailIdentityResponse
Decode VerifyEmailIdentityResponse
Encode VerifyEmailIdentityResponse
```

#### `WorkmailAction`

``` purescript
newtype WorkmailAction
  = WorkmailAction { "TopicArn" :: NullOrUndefined (AmazonResourceName), "OrganizationArn" :: AmazonResourceName }
```

<p>When included in a receipt rule, this action calls Amazon WorkMail and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS). You will typically not use this action directly because Amazon WorkMail adds the rule automatically during its setup procedure.</p> <p>For information using a receipt rule to call Amazon WorkMail, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html">Amazon SES Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype WorkmailAction _
Generic WorkmailAction _
Show WorkmailAction
Decode WorkmailAction
Encode WorkmailAction
```

#### `newWorkmailAction`

``` purescript
newWorkmailAction :: AmazonResourceName -> WorkmailAction
```

Constructs WorkmailAction from required parameters

#### `newWorkmailAction'`

``` purescript
newWorkmailAction' :: AmazonResourceName -> ({ "TopicArn" :: NullOrUndefined (AmazonResourceName), "OrganizationArn" :: AmazonResourceName } -> { "TopicArn" :: NullOrUndefined (AmazonResourceName), "OrganizationArn" :: AmazonResourceName }) -> WorkmailAction
```

Constructs WorkmailAction's fields from required parameters


