
module AWS.SES.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Indicates that email sending is disabled for your entire Amazon SES account.</p> <p>You can enable or disable email sending for your Amazon SES account using <a>UpdateAccountSendingEnabled</a>.</p>
newtype AccountSendingPausedException = AccountSendingPausedException Types.NoArguments
derive instance newtypeAccountSendingPausedException :: Newtype AccountSendingPausedException _
derive instance repGenericAccountSendingPausedException :: Generic AccountSendingPausedException _
instance showAccountSendingPausedException :: Show AccountSendingPausedException where show = genericShow
instance decodeAccountSendingPausedException :: Decode AccountSendingPausedException where decode = genericDecode options
instance encodeAccountSendingPausedException :: Encode AccountSendingPausedException where encode = genericEncode options



-- | <p>When included in a receipt rule, this action adds a header to the received email.</p> <p>For information about adding a header using a receipt rule, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html">Amazon SES Developer Guide</a>.</p>
newtype AddHeaderAction = AddHeaderAction 
  { "HeaderName" :: (HeaderName)
  , "HeaderValue" :: (HeaderValue)
  }
derive instance newtypeAddHeaderAction :: Newtype AddHeaderAction _
derive instance repGenericAddHeaderAction :: Generic AddHeaderAction _
instance showAddHeaderAction :: Show AddHeaderAction where show = genericShow
instance decodeAddHeaderAction :: Decode AddHeaderAction where decode = genericDecode options
instance encodeAddHeaderAction :: Encode AddHeaderAction where encode = genericEncode options

-- | Constructs AddHeaderAction from required parameters
newAddHeaderAction :: HeaderName -> HeaderValue -> AddHeaderAction
newAddHeaderAction _HeaderName _HeaderValue = AddHeaderAction { "HeaderName": _HeaderName, "HeaderValue": _HeaderValue }

-- | Constructs AddHeaderAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddHeaderAction' :: HeaderName -> HeaderValue -> ( { "HeaderName" :: (HeaderName) , "HeaderValue" :: (HeaderValue) } -> {"HeaderName" :: (HeaderName) , "HeaderValue" :: (HeaderValue) } ) -> AddHeaderAction
newAddHeaderAction' _HeaderName _HeaderValue customize = (AddHeaderAction <<< customize) { "HeaderName": _HeaderName, "HeaderValue": _HeaderValue }



newtype Address = Address String
derive instance newtypeAddress :: Newtype Address _
derive instance repGenericAddress :: Generic Address _
instance showAddress :: Show Address where show = genericShow
instance decodeAddress :: Decode Address where decode = genericDecode options
instance encodeAddress :: Encode Address where encode = genericEncode options



newtype AddressList = AddressList (Array Address)
derive instance newtypeAddressList :: Newtype AddressList _
derive instance repGenericAddressList :: Generic AddressList _
instance showAddressList :: Show AddressList where show = genericShow
instance decodeAddressList :: Decode AddressList where decode = genericDecode options
instance encodeAddressList :: Encode AddressList where encode = genericEncode options



-- | <p>Indicates that a resource could not be created because of a naming conflict.</p>
newtype AlreadyExistsException = AlreadyExistsException 
  { "Name" :: Maybe (RuleOrRuleSetName)
  }
derive instance newtypeAlreadyExistsException :: Newtype AlreadyExistsException _
derive instance repGenericAlreadyExistsException :: Generic AlreadyExistsException _
instance showAlreadyExistsException :: Show AlreadyExistsException where show = genericShow
instance decodeAlreadyExistsException :: Decode AlreadyExistsException where decode = genericDecode options
instance encodeAlreadyExistsException :: Encode AlreadyExistsException where encode = genericEncode options

-- | Constructs AlreadyExistsException from required parameters
newAlreadyExistsException :: AlreadyExistsException
newAlreadyExistsException  = AlreadyExistsException { "Name": Nothing }

-- | Constructs AlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlreadyExistsException' :: ( { "Name" :: Maybe (RuleOrRuleSetName) } -> {"Name" :: Maybe (RuleOrRuleSetName) } ) -> AlreadyExistsException
newAlreadyExistsException'  customize = (AlreadyExistsException <<< customize) { "Name": Nothing }



newtype AmazonResourceName = AmazonResourceName String
derive instance newtypeAmazonResourceName :: Newtype AmazonResourceName _
derive instance repGenericAmazonResourceName :: Generic AmazonResourceName _
instance showAmazonResourceName :: Show AmazonResourceName where show = genericShow
instance decodeAmazonResourceName :: Decode AmazonResourceName where decode = genericDecode options
instance encodeAmazonResourceName :: Encode AmazonResourceName where encode = genericEncode options



newtype ArrivalDate = ArrivalDate Types.Timestamp
derive instance newtypeArrivalDate :: Newtype ArrivalDate _
derive instance repGenericArrivalDate :: Generic ArrivalDate _
instance showArrivalDate :: Show ArrivalDate where show = genericShow
instance decodeArrivalDate :: Decode ArrivalDate where decode = genericDecode options
instance encodeArrivalDate :: Encode ArrivalDate where encode = genericEncode options



newtype BehaviorOnMXFailure = BehaviorOnMXFailure String
derive instance newtypeBehaviorOnMXFailure :: Newtype BehaviorOnMXFailure _
derive instance repGenericBehaviorOnMXFailure :: Generic BehaviorOnMXFailure _
instance showBehaviorOnMXFailure :: Show BehaviorOnMXFailure where show = genericShow
instance decodeBehaviorOnMXFailure :: Decode BehaviorOnMXFailure where decode = genericDecode options
instance encodeBehaviorOnMXFailure :: Encode BehaviorOnMXFailure where encode = genericEncode options



-- | <p>Represents the body of the message. You can specify text, HTML, or both. If you use both, then the message should display correctly in the widest variety of email clients.</p>
newtype Body = Body 
  { "Text" :: Maybe (Content)
  , "Html" :: Maybe (Content)
  }
derive instance newtypeBody :: Newtype Body _
derive instance repGenericBody :: Generic Body _
instance showBody :: Show Body where show = genericShow
instance decodeBody :: Decode Body where decode = genericDecode options
instance encodeBody :: Encode Body where encode = genericEncode options

-- | Constructs Body from required parameters
newBody :: Body
newBody  = Body { "Html": Nothing, "Text": Nothing }

-- | Constructs Body's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBody' :: ( { "Text" :: Maybe (Content) , "Html" :: Maybe (Content) } -> {"Text" :: Maybe (Content) , "Html" :: Maybe (Content) } ) -> Body
newBody'  customize = (Body <<< customize) { "Html": Nothing, "Text": Nothing }



-- | <p>When included in a receipt rule, this action rejects the received email by returning a bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>For information about sending a bounce message in response to a received email, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-bounce.html">Amazon SES Developer Guide</a>.</p>
newtype BounceAction = BounceAction 
  { "TopicArn" :: Maybe (AmazonResourceName)
  , "SmtpReplyCode" :: (BounceSmtpReplyCode)
  , "StatusCode" :: Maybe (BounceStatusCode)
  , "Message" :: (BounceMessage)
  , "Sender" :: (Address)
  }
derive instance newtypeBounceAction :: Newtype BounceAction _
derive instance repGenericBounceAction :: Generic BounceAction _
instance showBounceAction :: Show BounceAction where show = genericShow
instance decodeBounceAction :: Decode BounceAction where decode = genericDecode options
instance encodeBounceAction :: Encode BounceAction where encode = genericEncode options

-- | Constructs BounceAction from required parameters
newBounceAction :: BounceMessage -> Address -> BounceSmtpReplyCode -> BounceAction
newBounceAction _Message _Sender _SmtpReplyCode = BounceAction { "Message": _Message, "Sender": _Sender, "SmtpReplyCode": _SmtpReplyCode, "StatusCode": Nothing, "TopicArn": Nothing }

-- | Constructs BounceAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBounceAction' :: BounceMessage -> Address -> BounceSmtpReplyCode -> ( { "TopicArn" :: Maybe (AmazonResourceName) , "SmtpReplyCode" :: (BounceSmtpReplyCode) , "StatusCode" :: Maybe (BounceStatusCode) , "Message" :: (BounceMessage) , "Sender" :: (Address) } -> {"TopicArn" :: Maybe (AmazonResourceName) , "SmtpReplyCode" :: (BounceSmtpReplyCode) , "StatusCode" :: Maybe (BounceStatusCode) , "Message" :: (BounceMessage) , "Sender" :: (Address) } ) -> BounceAction
newBounceAction' _Message _Sender _SmtpReplyCode customize = (BounceAction <<< customize) { "Message": _Message, "Sender": _Sender, "SmtpReplyCode": _SmtpReplyCode, "StatusCode": Nothing, "TopicArn": Nothing }



newtype BounceMessage = BounceMessage String
derive instance newtypeBounceMessage :: Newtype BounceMessage _
derive instance repGenericBounceMessage :: Generic BounceMessage _
instance showBounceMessage :: Show BounceMessage where show = genericShow
instance decodeBounceMessage :: Decode BounceMessage where decode = genericDecode options
instance encodeBounceMessage :: Encode BounceMessage where encode = genericEncode options



newtype BounceSmtpReplyCode = BounceSmtpReplyCode String
derive instance newtypeBounceSmtpReplyCode :: Newtype BounceSmtpReplyCode _
derive instance repGenericBounceSmtpReplyCode :: Generic BounceSmtpReplyCode _
instance showBounceSmtpReplyCode :: Show BounceSmtpReplyCode where show = genericShow
instance decodeBounceSmtpReplyCode :: Decode BounceSmtpReplyCode where decode = genericDecode options
instance encodeBounceSmtpReplyCode :: Encode BounceSmtpReplyCode where encode = genericEncode options



newtype BounceStatusCode = BounceStatusCode String
derive instance newtypeBounceStatusCode :: Newtype BounceStatusCode _
derive instance repGenericBounceStatusCode :: Generic BounceStatusCode _
instance showBounceStatusCode :: Show BounceStatusCode where show = genericShow
instance decodeBounceStatusCode :: Decode BounceStatusCode where decode = genericDecode options
instance encodeBounceStatusCode :: Encode BounceStatusCode where encode = genericEncode options



newtype BounceType = BounceType String
derive instance newtypeBounceType :: Newtype BounceType _
derive instance repGenericBounceType :: Generic BounceType _
instance showBounceType :: Show BounceType where show = genericShow
instance decodeBounceType :: Decode BounceType where decode = genericDecode options
instance encodeBounceType :: Encode BounceType where encode = genericEncode options



-- | <p>Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
newtype BouncedRecipientInfo = BouncedRecipientInfo 
  { "Recipient" :: (Address)
  , "RecipientArn" :: Maybe (AmazonResourceName)
  , "BounceType" :: Maybe (BounceType)
  , "RecipientDsnFields" :: Maybe (RecipientDsnFields)
  }
derive instance newtypeBouncedRecipientInfo :: Newtype BouncedRecipientInfo _
derive instance repGenericBouncedRecipientInfo :: Generic BouncedRecipientInfo _
instance showBouncedRecipientInfo :: Show BouncedRecipientInfo where show = genericShow
instance decodeBouncedRecipientInfo :: Decode BouncedRecipientInfo where decode = genericDecode options
instance encodeBouncedRecipientInfo :: Encode BouncedRecipientInfo where encode = genericEncode options

-- | Constructs BouncedRecipientInfo from required parameters
newBouncedRecipientInfo :: Address -> BouncedRecipientInfo
newBouncedRecipientInfo _Recipient = BouncedRecipientInfo { "Recipient": _Recipient, "BounceType": Nothing, "RecipientArn": Nothing, "RecipientDsnFields": Nothing }

-- | Constructs BouncedRecipientInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBouncedRecipientInfo' :: Address -> ( { "Recipient" :: (Address) , "RecipientArn" :: Maybe (AmazonResourceName) , "BounceType" :: Maybe (BounceType) , "RecipientDsnFields" :: Maybe (RecipientDsnFields) } -> {"Recipient" :: (Address) , "RecipientArn" :: Maybe (AmazonResourceName) , "BounceType" :: Maybe (BounceType) , "RecipientDsnFields" :: Maybe (RecipientDsnFields) } ) -> BouncedRecipientInfo
newBouncedRecipientInfo' _Recipient customize = (BouncedRecipientInfo <<< customize) { "Recipient": _Recipient, "BounceType": Nothing, "RecipientArn": Nothing, "RecipientDsnFields": Nothing }



newtype BouncedRecipientInfoList = BouncedRecipientInfoList (Array BouncedRecipientInfo)
derive instance newtypeBouncedRecipientInfoList :: Newtype BouncedRecipientInfoList _
derive instance repGenericBouncedRecipientInfoList :: Generic BouncedRecipientInfoList _
instance showBouncedRecipientInfoList :: Show BouncedRecipientInfoList where show = genericShow
instance decodeBouncedRecipientInfoList :: Decode BouncedRecipientInfoList where decode = genericDecode options
instance encodeBouncedRecipientInfoList :: Encode BouncedRecipientInfoList where encode = genericEncode options



-- | <p>An array that contains one or more Destinations, as well as the tags and replacement data associated with each of those Destinations.</p>
newtype BulkEmailDestination = BulkEmailDestination 
  { "Destination" :: (Destination)
  , "ReplacementTags" :: Maybe (MessageTagList)
  , "ReplacementTemplateData" :: Maybe (TemplateData)
  }
derive instance newtypeBulkEmailDestination :: Newtype BulkEmailDestination _
derive instance repGenericBulkEmailDestination :: Generic BulkEmailDestination _
instance showBulkEmailDestination :: Show BulkEmailDestination where show = genericShow
instance decodeBulkEmailDestination :: Decode BulkEmailDestination where decode = genericDecode options
instance encodeBulkEmailDestination :: Encode BulkEmailDestination where encode = genericEncode options

-- | Constructs BulkEmailDestination from required parameters
newBulkEmailDestination :: Destination -> BulkEmailDestination
newBulkEmailDestination _Destination = BulkEmailDestination { "Destination": _Destination, "ReplacementTags": Nothing, "ReplacementTemplateData": Nothing }

-- | Constructs BulkEmailDestination's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBulkEmailDestination' :: Destination -> ( { "Destination" :: (Destination) , "ReplacementTags" :: Maybe (MessageTagList) , "ReplacementTemplateData" :: Maybe (TemplateData) } -> {"Destination" :: (Destination) , "ReplacementTags" :: Maybe (MessageTagList) , "ReplacementTemplateData" :: Maybe (TemplateData) } ) -> BulkEmailDestination
newBulkEmailDestination' _Destination customize = (BulkEmailDestination <<< customize) { "Destination": _Destination, "ReplacementTags": Nothing, "ReplacementTemplateData": Nothing }



newtype BulkEmailDestinationList = BulkEmailDestinationList (Array BulkEmailDestination)
derive instance newtypeBulkEmailDestinationList :: Newtype BulkEmailDestinationList _
derive instance repGenericBulkEmailDestinationList :: Generic BulkEmailDestinationList _
instance showBulkEmailDestinationList :: Show BulkEmailDestinationList where show = genericShow
instance decodeBulkEmailDestinationList :: Decode BulkEmailDestinationList where decode = genericDecode options
instance encodeBulkEmailDestinationList :: Encode BulkEmailDestinationList where encode = genericEncode options



-- | <p>An object that contains the response from the <code>SendBulkTemplatedEmail</code> operation.</p>
newtype BulkEmailDestinationStatus = BulkEmailDestinationStatus 
  { "Status" :: Maybe (BulkEmailStatus)
  , "Error" :: Maybe (Error)
  , "MessageId" :: Maybe (MessageId)
  }
derive instance newtypeBulkEmailDestinationStatus :: Newtype BulkEmailDestinationStatus _
derive instance repGenericBulkEmailDestinationStatus :: Generic BulkEmailDestinationStatus _
instance showBulkEmailDestinationStatus :: Show BulkEmailDestinationStatus where show = genericShow
instance decodeBulkEmailDestinationStatus :: Decode BulkEmailDestinationStatus where decode = genericDecode options
instance encodeBulkEmailDestinationStatus :: Encode BulkEmailDestinationStatus where encode = genericEncode options

-- | Constructs BulkEmailDestinationStatus from required parameters
newBulkEmailDestinationStatus :: BulkEmailDestinationStatus
newBulkEmailDestinationStatus  = BulkEmailDestinationStatus { "Error": Nothing, "MessageId": Nothing, "Status": Nothing }

-- | Constructs BulkEmailDestinationStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBulkEmailDestinationStatus' :: ( { "Status" :: Maybe (BulkEmailStatus) , "Error" :: Maybe (Error) , "MessageId" :: Maybe (MessageId) } -> {"Status" :: Maybe (BulkEmailStatus) , "Error" :: Maybe (Error) , "MessageId" :: Maybe (MessageId) } ) -> BulkEmailDestinationStatus
newBulkEmailDestinationStatus'  customize = (BulkEmailDestinationStatus <<< customize) { "Error": Nothing, "MessageId": Nothing, "Status": Nothing }



newtype BulkEmailDestinationStatusList = BulkEmailDestinationStatusList (Array BulkEmailDestinationStatus)
derive instance newtypeBulkEmailDestinationStatusList :: Newtype BulkEmailDestinationStatusList _
derive instance repGenericBulkEmailDestinationStatusList :: Generic BulkEmailDestinationStatusList _
instance showBulkEmailDestinationStatusList :: Show BulkEmailDestinationStatusList where show = genericShow
instance decodeBulkEmailDestinationStatusList :: Decode BulkEmailDestinationStatusList where decode = genericDecode options
instance encodeBulkEmailDestinationStatusList :: Encode BulkEmailDestinationStatusList where encode = genericEncode options



newtype BulkEmailStatus = BulkEmailStatus String
derive instance newtypeBulkEmailStatus :: Newtype BulkEmailStatus _
derive instance repGenericBulkEmailStatus :: Generic BulkEmailStatus _
instance showBulkEmailStatus :: Show BulkEmailStatus where show = genericShow
instance decodeBulkEmailStatus :: Decode BulkEmailStatus where decode = genericDecode options
instance encodeBulkEmailStatus :: Encode BulkEmailStatus where encode = genericEncode options



-- | <p>Indicates that the delete operation could not be completed.</p>
newtype CannotDeleteException = CannotDeleteException 
  { "Name" :: Maybe (RuleOrRuleSetName)
  }
derive instance newtypeCannotDeleteException :: Newtype CannotDeleteException _
derive instance repGenericCannotDeleteException :: Generic CannotDeleteException _
instance showCannotDeleteException :: Show CannotDeleteException where show = genericShow
instance decodeCannotDeleteException :: Decode CannotDeleteException where decode = genericDecode options
instance encodeCannotDeleteException :: Encode CannotDeleteException where encode = genericEncode options

-- | Constructs CannotDeleteException from required parameters
newCannotDeleteException :: CannotDeleteException
newCannotDeleteException  = CannotDeleteException { "Name": Nothing }

-- | Constructs CannotDeleteException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCannotDeleteException' :: ( { "Name" :: Maybe (RuleOrRuleSetName) } -> {"Name" :: Maybe (RuleOrRuleSetName) } ) -> CannotDeleteException
newCannotDeleteException'  customize = (CannotDeleteException <<< customize) { "Name": Nothing }



newtype Charset = Charset String
derive instance newtypeCharset :: Newtype Charset _
derive instance repGenericCharset :: Generic Charset _
instance showCharset :: Show Charset where show = genericShow
instance decodeCharset :: Decode Charset where decode = genericDecode options
instance encodeCharset :: Encode Charset where encode = genericEncode options



newtype Cidr = Cidr String
derive instance newtypeCidr :: Newtype Cidr _
derive instance repGenericCidr :: Generic Cidr _
instance showCidr :: Show Cidr where show = genericShow
instance decodeCidr :: Decode Cidr where decode = genericDecode options
instance encodeCidr :: Encode Cidr where encode = genericEncode options



-- | <p>Represents a request to create a receipt rule set by cloning an existing one. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype CloneReceiptRuleSetRequest = CloneReceiptRuleSetRequest 
  { "RuleSetName" :: (ReceiptRuleSetName)
  , "OriginalRuleSetName" :: (ReceiptRuleSetName)
  }
derive instance newtypeCloneReceiptRuleSetRequest :: Newtype CloneReceiptRuleSetRequest _
derive instance repGenericCloneReceiptRuleSetRequest :: Generic CloneReceiptRuleSetRequest _
instance showCloneReceiptRuleSetRequest :: Show CloneReceiptRuleSetRequest where show = genericShow
instance decodeCloneReceiptRuleSetRequest :: Decode CloneReceiptRuleSetRequest where decode = genericDecode options
instance encodeCloneReceiptRuleSetRequest :: Encode CloneReceiptRuleSetRequest where encode = genericEncode options

-- | Constructs CloneReceiptRuleSetRequest from required parameters
newCloneReceiptRuleSetRequest :: ReceiptRuleSetName -> ReceiptRuleSetName -> CloneReceiptRuleSetRequest
newCloneReceiptRuleSetRequest _OriginalRuleSetName _RuleSetName = CloneReceiptRuleSetRequest { "OriginalRuleSetName": _OriginalRuleSetName, "RuleSetName": _RuleSetName }

-- | Constructs CloneReceiptRuleSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloneReceiptRuleSetRequest' :: ReceiptRuleSetName -> ReceiptRuleSetName -> ( { "RuleSetName" :: (ReceiptRuleSetName) , "OriginalRuleSetName" :: (ReceiptRuleSetName) } -> {"RuleSetName" :: (ReceiptRuleSetName) , "OriginalRuleSetName" :: (ReceiptRuleSetName) } ) -> CloneReceiptRuleSetRequest
newCloneReceiptRuleSetRequest' _OriginalRuleSetName _RuleSetName customize = (CloneReceiptRuleSetRequest <<< customize) { "OriginalRuleSetName": _OriginalRuleSetName, "RuleSetName": _RuleSetName }



-- | <p>An empty element returned on a successful request.</p>
newtype CloneReceiptRuleSetResponse = CloneReceiptRuleSetResponse Types.NoArguments
derive instance newtypeCloneReceiptRuleSetResponse :: Newtype CloneReceiptRuleSetResponse _
derive instance repGenericCloneReceiptRuleSetResponse :: Generic CloneReceiptRuleSetResponse _
instance showCloneReceiptRuleSetResponse :: Show CloneReceiptRuleSetResponse where show = genericShow
instance decodeCloneReceiptRuleSetResponse :: Decode CloneReceiptRuleSetResponse where decode = genericDecode options
instance encodeCloneReceiptRuleSetResponse :: Encode CloneReceiptRuleSetResponse where encode = genericEncode options



-- | <p>Contains information associated with an Amazon CloudWatch event destination to which email sending events are published.</p> <p>Event destinations, such as Amazon CloudWatch, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype CloudWatchDestination = CloudWatchDestination 
  { "DimensionConfigurations" :: (CloudWatchDimensionConfigurations)
  }
derive instance newtypeCloudWatchDestination :: Newtype CloudWatchDestination _
derive instance repGenericCloudWatchDestination :: Generic CloudWatchDestination _
instance showCloudWatchDestination :: Show CloudWatchDestination where show = genericShow
instance decodeCloudWatchDestination :: Decode CloudWatchDestination where decode = genericDecode options
instance encodeCloudWatchDestination :: Encode CloudWatchDestination where encode = genericEncode options

-- | Constructs CloudWatchDestination from required parameters
newCloudWatchDestination :: CloudWatchDimensionConfigurations -> CloudWatchDestination
newCloudWatchDestination _DimensionConfigurations = CloudWatchDestination { "DimensionConfigurations": _DimensionConfigurations }

-- | Constructs CloudWatchDestination's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudWatchDestination' :: CloudWatchDimensionConfigurations -> ( { "DimensionConfigurations" :: (CloudWatchDimensionConfigurations) } -> {"DimensionConfigurations" :: (CloudWatchDimensionConfigurations) } ) -> CloudWatchDestination
newCloudWatchDestination' _DimensionConfigurations customize = (CloudWatchDestination <<< customize) { "DimensionConfigurations": _DimensionConfigurations }



-- | <p>Contains the dimension configuration to use when you publish email sending events to Amazon CloudWatch.</p> <p>For information about publishing email sending events to Amazon CloudWatch, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype CloudWatchDimensionConfiguration = CloudWatchDimensionConfiguration 
  { "DimensionName" :: (DimensionName)
  , "DimensionValueSource" :: (DimensionValueSource)
  , "DefaultDimensionValue" :: (DefaultDimensionValue)
  }
derive instance newtypeCloudWatchDimensionConfiguration :: Newtype CloudWatchDimensionConfiguration _
derive instance repGenericCloudWatchDimensionConfiguration :: Generic CloudWatchDimensionConfiguration _
instance showCloudWatchDimensionConfiguration :: Show CloudWatchDimensionConfiguration where show = genericShow
instance decodeCloudWatchDimensionConfiguration :: Decode CloudWatchDimensionConfiguration where decode = genericDecode options
instance encodeCloudWatchDimensionConfiguration :: Encode CloudWatchDimensionConfiguration where encode = genericEncode options

-- | Constructs CloudWatchDimensionConfiguration from required parameters
newCloudWatchDimensionConfiguration :: DefaultDimensionValue -> DimensionName -> DimensionValueSource -> CloudWatchDimensionConfiguration
newCloudWatchDimensionConfiguration _DefaultDimensionValue _DimensionName _DimensionValueSource = CloudWatchDimensionConfiguration { "DefaultDimensionValue": _DefaultDimensionValue, "DimensionName": _DimensionName, "DimensionValueSource": _DimensionValueSource }

-- | Constructs CloudWatchDimensionConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudWatchDimensionConfiguration' :: DefaultDimensionValue -> DimensionName -> DimensionValueSource -> ( { "DimensionName" :: (DimensionName) , "DimensionValueSource" :: (DimensionValueSource) , "DefaultDimensionValue" :: (DefaultDimensionValue) } -> {"DimensionName" :: (DimensionName) , "DimensionValueSource" :: (DimensionValueSource) , "DefaultDimensionValue" :: (DefaultDimensionValue) } ) -> CloudWatchDimensionConfiguration
newCloudWatchDimensionConfiguration' _DefaultDimensionValue _DimensionName _DimensionValueSource customize = (CloudWatchDimensionConfiguration <<< customize) { "DefaultDimensionValue": _DefaultDimensionValue, "DimensionName": _DimensionName, "DimensionValueSource": _DimensionValueSource }



newtype CloudWatchDimensionConfigurations = CloudWatchDimensionConfigurations (Array CloudWatchDimensionConfiguration)
derive instance newtypeCloudWatchDimensionConfigurations :: Newtype CloudWatchDimensionConfigurations _
derive instance repGenericCloudWatchDimensionConfigurations :: Generic CloudWatchDimensionConfigurations _
instance showCloudWatchDimensionConfigurations :: Show CloudWatchDimensionConfigurations where show = genericShow
instance decodeCloudWatchDimensionConfigurations :: Decode CloudWatchDimensionConfigurations where decode = genericDecode options
instance encodeCloudWatchDimensionConfigurations :: Encode CloudWatchDimensionConfigurations where encode = genericEncode options



-- | <p>The name of the configuration set.</p> <p>Configuration sets let you create groups of rules that you can apply to the emails you send using Amazon SES. For more information about using configuration sets, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/using-configuration-sets.html">Using Amazon SES Configuration Sets</a> in the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/">Amazon SES Developer Guide</a>.</p>
newtype ConfigurationSet = ConfigurationSet 
  { "Name" :: (ConfigurationSetName)
  }
derive instance newtypeConfigurationSet :: Newtype ConfigurationSet _
derive instance repGenericConfigurationSet :: Generic ConfigurationSet _
instance showConfigurationSet :: Show ConfigurationSet where show = genericShow
instance decodeConfigurationSet :: Decode ConfigurationSet where decode = genericDecode options
instance encodeConfigurationSet :: Encode ConfigurationSet where encode = genericEncode options

-- | Constructs ConfigurationSet from required parameters
newConfigurationSet :: ConfigurationSetName -> ConfigurationSet
newConfigurationSet _Name = ConfigurationSet { "Name": _Name }

-- | Constructs ConfigurationSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationSet' :: ConfigurationSetName -> ( { "Name" :: (ConfigurationSetName) } -> {"Name" :: (ConfigurationSetName) } ) -> ConfigurationSet
newConfigurationSet' _Name customize = (ConfigurationSet <<< customize) { "Name": _Name }



-- | <p>Indicates that the configuration set could not be created because of a naming conflict.</p>
newtype ConfigurationSetAlreadyExistsException = ConfigurationSetAlreadyExistsException 
  { "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  }
derive instance newtypeConfigurationSetAlreadyExistsException :: Newtype ConfigurationSetAlreadyExistsException _
derive instance repGenericConfigurationSetAlreadyExistsException :: Generic ConfigurationSetAlreadyExistsException _
instance showConfigurationSetAlreadyExistsException :: Show ConfigurationSetAlreadyExistsException where show = genericShow
instance decodeConfigurationSetAlreadyExistsException :: Decode ConfigurationSetAlreadyExistsException where decode = genericDecode options
instance encodeConfigurationSetAlreadyExistsException :: Encode ConfigurationSetAlreadyExistsException where encode = genericEncode options

-- | Constructs ConfigurationSetAlreadyExistsException from required parameters
newConfigurationSetAlreadyExistsException :: ConfigurationSetAlreadyExistsException
newConfigurationSetAlreadyExistsException  = ConfigurationSetAlreadyExistsException { "ConfigurationSetName": Nothing }

-- | Constructs ConfigurationSetAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationSetAlreadyExistsException' :: ( { "ConfigurationSetName" :: Maybe (ConfigurationSetName) } -> {"ConfigurationSetName" :: Maybe (ConfigurationSetName) } ) -> ConfigurationSetAlreadyExistsException
newConfigurationSetAlreadyExistsException'  customize = (ConfigurationSetAlreadyExistsException <<< customize) { "ConfigurationSetName": Nothing }



newtype ConfigurationSetAttribute = ConfigurationSetAttribute String
derive instance newtypeConfigurationSetAttribute :: Newtype ConfigurationSetAttribute _
derive instance repGenericConfigurationSetAttribute :: Generic ConfigurationSetAttribute _
instance showConfigurationSetAttribute :: Show ConfigurationSetAttribute where show = genericShow
instance decodeConfigurationSetAttribute :: Decode ConfigurationSetAttribute where decode = genericDecode options
instance encodeConfigurationSetAttribute :: Encode ConfigurationSetAttribute where encode = genericEncode options



newtype ConfigurationSetAttributeList = ConfigurationSetAttributeList (Array ConfigurationSetAttribute)
derive instance newtypeConfigurationSetAttributeList :: Newtype ConfigurationSetAttributeList _
derive instance repGenericConfigurationSetAttributeList :: Generic ConfigurationSetAttributeList _
instance showConfigurationSetAttributeList :: Show ConfigurationSetAttributeList where show = genericShow
instance decodeConfigurationSetAttributeList :: Decode ConfigurationSetAttributeList where decode = genericDecode options
instance encodeConfigurationSetAttributeList :: Encode ConfigurationSetAttributeList where encode = genericEncode options



-- | <p>Indicates that the configuration set does not exist.</p>
newtype ConfigurationSetDoesNotExistException = ConfigurationSetDoesNotExistException 
  { "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  }
derive instance newtypeConfigurationSetDoesNotExistException :: Newtype ConfigurationSetDoesNotExistException _
derive instance repGenericConfigurationSetDoesNotExistException :: Generic ConfigurationSetDoesNotExistException _
instance showConfigurationSetDoesNotExistException :: Show ConfigurationSetDoesNotExistException where show = genericShow
instance decodeConfigurationSetDoesNotExistException :: Decode ConfigurationSetDoesNotExistException where decode = genericDecode options
instance encodeConfigurationSetDoesNotExistException :: Encode ConfigurationSetDoesNotExistException where encode = genericEncode options

-- | Constructs ConfigurationSetDoesNotExistException from required parameters
newConfigurationSetDoesNotExistException :: ConfigurationSetDoesNotExistException
newConfigurationSetDoesNotExistException  = ConfigurationSetDoesNotExistException { "ConfigurationSetName": Nothing }

-- | Constructs ConfigurationSetDoesNotExistException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationSetDoesNotExistException' :: ( { "ConfigurationSetName" :: Maybe (ConfigurationSetName) } -> {"ConfigurationSetName" :: Maybe (ConfigurationSetName) } ) -> ConfigurationSetDoesNotExistException
newConfigurationSetDoesNotExistException'  customize = (ConfigurationSetDoesNotExistException <<< customize) { "ConfigurationSetName": Nothing }



newtype ConfigurationSetName = ConfigurationSetName String
derive instance newtypeConfigurationSetName :: Newtype ConfigurationSetName _
derive instance repGenericConfigurationSetName :: Generic ConfigurationSetName _
instance showConfigurationSetName :: Show ConfigurationSetName where show = genericShow
instance decodeConfigurationSetName :: Decode ConfigurationSetName where decode = genericDecode options
instance encodeConfigurationSetName :: Encode ConfigurationSetName where encode = genericEncode options



-- | <p>Indicates that email sending is disabled for the configuration set.</p> <p>You can enable or disable email sending for a configuration set using <a>UpdateConfigurationSetSendingEnabled</a>.</p>
newtype ConfigurationSetSendingPausedException = ConfigurationSetSendingPausedException 
  { "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  }
derive instance newtypeConfigurationSetSendingPausedException :: Newtype ConfigurationSetSendingPausedException _
derive instance repGenericConfigurationSetSendingPausedException :: Generic ConfigurationSetSendingPausedException _
instance showConfigurationSetSendingPausedException :: Show ConfigurationSetSendingPausedException where show = genericShow
instance decodeConfigurationSetSendingPausedException :: Decode ConfigurationSetSendingPausedException where decode = genericDecode options
instance encodeConfigurationSetSendingPausedException :: Encode ConfigurationSetSendingPausedException where encode = genericEncode options

-- | Constructs ConfigurationSetSendingPausedException from required parameters
newConfigurationSetSendingPausedException :: ConfigurationSetSendingPausedException
newConfigurationSetSendingPausedException  = ConfigurationSetSendingPausedException { "ConfigurationSetName": Nothing }

-- | Constructs ConfigurationSetSendingPausedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationSetSendingPausedException' :: ( { "ConfigurationSetName" :: Maybe (ConfigurationSetName) } -> {"ConfigurationSetName" :: Maybe (ConfigurationSetName) } ) -> ConfigurationSetSendingPausedException
newConfigurationSetSendingPausedException'  customize = (ConfigurationSetSendingPausedException <<< customize) { "ConfigurationSetName": Nothing }



newtype ConfigurationSets = ConfigurationSets (Array ConfigurationSet)
derive instance newtypeConfigurationSets :: Newtype ConfigurationSets _
derive instance repGenericConfigurationSets :: Generic ConfigurationSets _
instance showConfigurationSets :: Show ConfigurationSets where show = genericShow
instance decodeConfigurationSets :: Decode ConfigurationSets where decode = genericDecode options
instance encodeConfigurationSets :: Encode ConfigurationSets where encode = genericEncode options



-- | <p>Represents textual data, plus an optional character set specification.</p> <p>By default, the text must be 7-bit ASCII, due to the constraints of the SMTP protocol. If the text must contain any other characters, then you must also specify a character set. Examples include UTF-8, ISO-8859-1, and Shift_JIS.</p>
newtype Content = Content 
  { "Data" :: (MessageData)
  , "Charset" :: Maybe (Charset)
  }
derive instance newtypeContent :: Newtype Content _
derive instance repGenericContent :: Generic Content _
instance showContent :: Show Content where show = genericShow
instance decodeContent :: Decode Content where decode = genericDecode options
instance encodeContent :: Encode Content where encode = genericEncode options

-- | Constructs Content from required parameters
newContent :: MessageData -> Content
newContent _Data = Content { "Data": _Data, "Charset": Nothing }

-- | Constructs Content's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContent' :: MessageData -> ( { "Data" :: (MessageData) , "Charset" :: Maybe (Charset) } -> {"Data" :: (MessageData) , "Charset" :: Maybe (Charset) } ) -> Content
newContent' _Data customize = (Content <<< customize) { "Data": _Data, "Charset": Nothing }



newtype Counter = Counter Number
derive instance newtypeCounter :: Newtype Counter _
derive instance repGenericCounter :: Generic Counter _
instance showCounter :: Show Counter where show = genericShow
instance decodeCounter :: Decode Counter where decode = genericDecode options
instance encodeCounter :: Encode Counter where encode = genericEncode options



-- | <p>Represents a request to create a configuration set event destination. A configuration set event destination, which can be either Amazon CloudWatch or Amazon Kinesis Firehose, describes an AWS service in which Amazon SES publishes the email sending events associated with a configuration set. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype CreateConfigurationSetEventDestinationRequest = CreateConfigurationSetEventDestinationRequest 
  { "ConfigurationSetName" :: (ConfigurationSetName)
  , "EventDestination" :: (EventDestination)
  }
derive instance newtypeCreateConfigurationSetEventDestinationRequest :: Newtype CreateConfigurationSetEventDestinationRequest _
derive instance repGenericCreateConfigurationSetEventDestinationRequest :: Generic CreateConfigurationSetEventDestinationRequest _
instance showCreateConfigurationSetEventDestinationRequest :: Show CreateConfigurationSetEventDestinationRequest where show = genericShow
instance decodeCreateConfigurationSetEventDestinationRequest :: Decode CreateConfigurationSetEventDestinationRequest where decode = genericDecode options
instance encodeCreateConfigurationSetEventDestinationRequest :: Encode CreateConfigurationSetEventDestinationRequest where encode = genericEncode options

-- | Constructs CreateConfigurationSetEventDestinationRequest from required parameters
newCreateConfigurationSetEventDestinationRequest :: ConfigurationSetName -> EventDestination -> CreateConfigurationSetEventDestinationRequest
newCreateConfigurationSetEventDestinationRequest _ConfigurationSetName _EventDestination = CreateConfigurationSetEventDestinationRequest { "ConfigurationSetName": _ConfigurationSetName, "EventDestination": _EventDestination }

-- | Constructs CreateConfigurationSetEventDestinationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateConfigurationSetEventDestinationRequest' :: ConfigurationSetName -> EventDestination -> ( { "ConfigurationSetName" :: (ConfigurationSetName) , "EventDestination" :: (EventDestination) } -> {"ConfigurationSetName" :: (ConfigurationSetName) , "EventDestination" :: (EventDestination) } ) -> CreateConfigurationSetEventDestinationRequest
newCreateConfigurationSetEventDestinationRequest' _ConfigurationSetName _EventDestination customize = (CreateConfigurationSetEventDestinationRequest <<< customize) { "ConfigurationSetName": _ConfigurationSetName, "EventDestination": _EventDestination }



-- | <p>An empty element returned on a successful request.</p>
newtype CreateConfigurationSetEventDestinationResponse = CreateConfigurationSetEventDestinationResponse Types.NoArguments
derive instance newtypeCreateConfigurationSetEventDestinationResponse :: Newtype CreateConfigurationSetEventDestinationResponse _
derive instance repGenericCreateConfigurationSetEventDestinationResponse :: Generic CreateConfigurationSetEventDestinationResponse _
instance showCreateConfigurationSetEventDestinationResponse :: Show CreateConfigurationSetEventDestinationResponse where show = genericShow
instance decodeCreateConfigurationSetEventDestinationResponse :: Decode CreateConfigurationSetEventDestinationResponse where decode = genericDecode options
instance encodeCreateConfigurationSetEventDestinationResponse :: Encode CreateConfigurationSetEventDestinationResponse where encode = genericEncode options



-- | <p>Represents a request to create a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype CreateConfigurationSetRequest = CreateConfigurationSetRequest 
  { "ConfigurationSet" :: (ConfigurationSet)
  }
derive instance newtypeCreateConfigurationSetRequest :: Newtype CreateConfigurationSetRequest _
derive instance repGenericCreateConfigurationSetRequest :: Generic CreateConfigurationSetRequest _
instance showCreateConfigurationSetRequest :: Show CreateConfigurationSetRequest where show = genericShow
instance decodeCreateConfigurationSetRequest :: Decode CreateConfigurationSetRequest where decode = genericDecode options
instance encodeCreateConfigurationSetRequest :: Encode CreateConfigurationSetRequest where encode = genericEncode options

-- | Constructs CreateConfigurationSetRequest from required parameters
newCreateConfigurationSetRequest :: ConfigurationSet -> CreateConfigurationSetRequest
newCreateConfigurationSetRequest _ConfigurationSet = CreateConfigurationSetRequest { "ConfigurationSet": _ConfigurationSet }

-- | Constructs CreateConfigurationSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateConfigurationSetRequest' :: ConfigurationSet -> ( { "ConfigurationSet" :: (ConfigurationSet) } -> {"ConfigurationSet" :: (ConfigurationSet) } ) -> CreateConfigurationSetRequest
newCreateConfigurationSetRequest' _ConfigurationSet customize = (CreateConfigurationSetRequest <<< customize) { "ConfigurationSet": _ConfigurationSet }



-- | <p>An empty element returned on a successful request.</p>
newtype CreateConfigurationSetResponse = CreateConfigurationSetResponse Types.NoArguments
derive instance newtypeCreateConfigurationSetResponse :: Newtype CreateConfigurationSetResponse _
derive instance repGenericCreateConfigurationSetResponse :: Generic CreateConfigurationSetResponse _
instance showCreateConfigurationSetResponse :: Show CreateConfigurationSetResponse where show = genericShow
instance decodeCreateConfigurationSetResponse :: Decode CreateConfigurationSetResponse where decode = genericDecode options
instance encodeCreateConfigurationSetResponse :: Encode CreateConfigurationSetResponse where encode = genericEncode options



-- | <p>Represents a request to create an open and click tracking option object in a configuration set. </p>
newtype CreateConfigurationSetTrackingOptionsRequest = CreateConfigurationSetTrackingOptionsRequest 
  { "ConfigurationSetName" :: (ConfigurationSetName)
  , "TrackingOptions" :: (TrackingOptions)
  }
derive instance newtypeCreateConfigurationSetTrackingOptionsRequest :: Newtype CreateConfigurationSetTrackingOptionsRequest _
derive instance repGenericCreateConfigurationSetTrackingOptionsRequest :: Generic CreateConfigurationSetTrackingOptionsRequest _
instance showCreateConfigurationSetTrackingOptionsRequest :: Show CreateConfigurationSetTrackingOptionsRequest where show = genericShow
instance decodeCreateConfigurationSetTrackingOptionsRequest :: Decode CreateConfigurationSetTrackingOptionsRequest where decode = genericDecode options
instance encodeCreateConfigurationSetTrackingOptionsRequest :: Encode CreateConfigurationSetTrackingOptionsRequest where encode = genericEncode options

-- | Constructs CreateConfigurationSetTrackingOptionsRequest from required parameters
newCreateConfigurationSetTrackingOptionsRequest :: ConfigurationSetName -> TrackingOptions -> CreateConfigurationSetTrackingOptionsRequest
newCreateConfigurationSetTrackingOptionsRequest _ConfigurationSetName _TrackingOptions = CreateConfigurationSetTrackingOptionsRequest { "ConfigurationSetName": _ConfigurationSetName, "TrackingOptions": _TrackingOptions }

-- | Constructs CreateConfigurationSetTrackingOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateConfigurationSetTrackingOptionsRequest' :: ConfigurationSetName -> TrackingOptions -> ( { "ConfigurationSetName" :: (ConfigurationSetName) , "TrackingOptions" :: (TrackingOptions) } -> {"ConfigurationSetName" :: (ConfigurationSetName) , "TrackingOptions" :: (TrackingOptions) } ) -> CreateConfigurationSetTrackingOptionsRequest
newCreateConfigurationSetTrackingOptionsRequest' _ConfigurationSetName _TrackingOptions customize = (CreateConfigurationSetTrackingOptionsRequest <<< customize) { "ConfigurationSetName": _ConfigurationSetName, "TrackingOptions": _TrackingOptions }



-- | <p>An empty element returned on a successful request.</p>
newtype CreateConfigurationSetTrackingOptionsResponse = CreateConfigurationSetTrackingOptionsResponse Types.NoArguments
derive instance newtypeCreateConfigurationSetTrackingOptionsResponse :: Newtype CreateConfigurationSetTrackingOptionsResponse _
derive instance repGenericCreateConfigurationSetTrackingOptionsResponse :: Generic CreateConfigurationSetTrackingOptionsResponse _
instance showCreateConfigurationSetTrackingOptionsResponse :: Show CreateConfigurationSetTrackingOptionsResponse where show = genericShow
instance decodeCreateConfigurationSetTrackingOptionsResponse :: Decode CreateConfigurationSetTrackingOptionsResponse where decode = genericDecode options
instance encodeCreateConfigurationSetTrackingOptionsResponse :: Encode CreateConfigurationSetTrackingOptionsResponse where encode = genericEncode options



-- | <p>Represents a request to create a custom verification email template.</p>
newtype CreateCustomVerificationEmailTemplateRequest = CreateCustomVerificationEmailTemplateRequest 
  { "TemplateName" :: (TemplateName)
  , "FromEmailAddress" :: (FromAddress)
  , "TemplateSubject" :: (Subject)
  , "TemplateContent" :: (TemplateContent)
  , "SuccessRedirectionURL" :: (SuccessRedirectionURL)
  , "FailureRedirectionURL" :: (FailureRedirectionURL)
  }
derive instance newtypeCreateCustomVerificationEmailTemplateRequest :: Newtype CreateCustomVerificationEmailTemplateRequest _
derive instance repGenericCreateCustomVerificationEmailTemplateRequest :: Generic CreateCustomVerificationEmailTemplateRequest _
instance showCreateCustomVerificationEmailTemplateRequest :: Show CreateCustomVerificationEmailTemplateRequest where show = genericShow
instance decodeCreateCustomVerificationEmailTemplateRequest :: Decode CreateCustomVerificationEmailTemplateRequest where decode = genericDecode options
instance encodeCreateCustomVerificationEmailTemplateRequest :: Encode CreateCustomVerificationEmailTemplateRequest where encode = genericEncode options

-- | Constructs CreateCustomVerificationEmailTemplateRequest from required parameters
newCreateCustomVerificationEmailTemplateRequest :: FailureRedirectionURL -> FromAddress -> SuccessRedirectionURL -> TemplateContent -> TemplateName -> Subject -> CreateCustomVerificationEmailTemplateRequest
newCreateCustomVerificationEmailTemplateRequest _FailureRedirectionURL _FromEmailAddress _SuccessRedirectionURL _TemplateContent _TemplateName _TemplateSubject = CreateCustomVerificationEmailTemplateRequest { "FailureRedirectionURL": _FailureRedirectionURL, "FromEmailAddress": _FromEmailAddress, "SuccessRedirectionURL": _SuccessRedirectionURL, "TemplateContent": _TemplateContent, "TemplateName": _TemplateName, "TemplateSubject": _TemplateSubject }

-- | Constructs CreateCustomVerificationEmailTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCustomVerificationEmailTemplateRequest' :: FailureRedirectionURL -> FromAddress -> SuccessRedirectionURL -> TemplateContent -> TemplateName -> Subject -> ( { "TemplateName" :: (TemplateName) , "FromEmailAddress" :: (FromAddress) , "TemplateSubject" :: (Subject) , "TemplateContent" :: (TemplateContent) , "SuccessRedirectionURL" :: (SuccessRedirectionURL) , "FailureRedirectionURL" :: (FailureRedirectionURL) } -> {"TemplateName" :: (TemplateName) , "FromEmailAddress" :: (FromAddress) , "TemplateSubject" :: (Subject) , "TemplateContent" :: (TemplateContent) , "SuccessRedirectionURL" :: (SuccessRedirectionURL) , "FailureRedirectionURL" :: (FailureRedirectionURL) } ) -> CreateCustomVerificationEmailTemplateRequest
newCreateCustomVerificationEmailTemplateRequest' _FailureRedirectionURL _FromEmailAddress _SuccessRedirectionURL _TemplateContent _TemplateName _TemplateSubject customize = (CreateCustomVerificationEmailTemplateRequest <<< customize) { "FailureRedirectionURL": _FailureRedirectionURL, "FromEmailAddress": _FromEmailAddress, "SuccessRedirectionURL": _SuccessRedirectionURL, "TemplateContent": _TemplateContent, "TemplateName": _TemplateName, "TemplateSubject": _TemplateSubject }



-- | <p>Represents a request to create a new IP address filter. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype CreateReceiptFilterRequest = CreateReceiptFilterRequest 
  { "Filter" :: (ReceiptFilter)
  }
derive instance newtypeCreateReceiptFilterRequest :: Newtype CreateReceiptFilterRequest _
derive instance repGenericCreateReceiptFilterRequest :: Generic CreateReceiptFilterRequest _
instance showCreateReceiptFilterRequest :: Show CreateReceiptFilterRequest where show = genericShow
instance decodeCreateReceiptFilterRequest :: Decode CreateReceiptFilterRequest where decode = genericDecode options
instance encodeCreateReceiptFilterRequest :: Encode CreateReceiptFilterRequest where encode = genericEncode options

-- | Constructs CreateReceiptFilterRequest from required parameters
newCreateReceiptFilterRequest :: ReceiptFilter -> CreateReceiptFilterRequest
newCreateReceiptFilterRequest _Filter = CreateReceiptFilterRequest { "Filter": _Filter }

-- | Constructs CreateReceiptFilterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateReceiptFilterRequest' :: ReceiptFilter -> ( { "Filter" :: (ReceiptFilter) } -> {"Filter" :: (ReceiptFilter) } ) -> CreateReceiptFilterRequest
newCreateReceiptFilterRequest' _Filter customize = (CreateReceiptFilterRequest <<< customize) { "Filter": _Filter }



-- | <p>An empty element returned on a successful request.</p>
newtype CreateReceiptFilterResponse = CreateReceiptFilterResponse Types.NoArguments
derive instance newtypeCreateReceiptFilterResponse :: Newtype CreateReceiptFilterResponse _
derive instance repGenericCreateReceiptFilterResponse :: Generic CreateReceiptFilterResponse _
instance showCreateReceiptFilterResponse :: Show CreateReceiptFilterResponse where show = genericShow
instance decodeCreateReceiptFilterResponse :: Decode CreateReceiptFilterResponse where decode = genericDecode options
instance encodeCreateReceiptFilterResponse :: Encode CreateReceiptFilterResponse where encode = genericEncode options



-- | <p>Represents a request to create a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype CreateReceiptRuleRequest = CreateReceiptRuleRequest 
  { "RuleSetName" :: (ReceiptRuleSetName)
  , "After" :: Maybe (ReceiptRuleName)
  , "Rule" :: (ReceiptRule)
  }
derive instance newtypeCreateReceiptRuleRequest :: Newtype CreateReceiptRuleRequest _
derive instance repGenericCreateReceiptRuleRequest :: Generic CreateReceiptRuleRequest _
instance showCreateReceiptRuleRequest :: Show CreateReceiptRuleRequest where show = genericShow
instance decodeCreateReceiptRuleRequest :: Decode CreateReceiptRuleRequest where decode = genericDecode options
instance encodeCreateReceiptRuleRequest :: Encode CreateReceiptRuleRequest where encode = genericEncode options

-- | Constructs CreateReceiptRuleRequest from required parameters
newCreateReceiptRuleRequest :: ReceiptRule -> ReceiptRuleSetName -> CreateReceiptRuleRequest
newCreateReceiptRuleRequest _Rule _RuleSetName = CreateReceiptRuleRequest { "Rule": _Rule, "RuleSetName": _RuleSetName, "After": Nothing }

-- | Constructs CreateReceiptRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateReceiptRuleRequest' :: ReceiptRule -> ReceiptRuleSetName -> ( { "RuleSetName" :: (ReceiptRuleSetName) , "After" :: Maybe (ReceiptRuleName) , "Rule" :: (ReceiptRule) } -> {"RuleSetName" :: (ReceiptRuleSetName) , "After" :: Maybe (ReceiptRuleName) , "Rule" :: (ReceiptRule) } ) -> CreateReceiptRuleRequest
newCreateReceiptRuleRequest' _Rule _RuleSetName customize = (CreateReceiptRuleRequest <<< customize) { "Rule": _Rule, "RuleSetName": _RuleSetName, "After": Nothing }



-- | <p>An empty element returned on a successful request.</p>
newtype CreateReceiptRuleResponse = CreateReceiptRuleResponse Types.NoArguments
derive instance newtypeCreateReceiptRuleResponse :: Newtype CreateReceiptRuleResponse _
derive instance repGenericCreateReceiptRuleResponse :: Generic CreateReceiptRuleResponse _
instance showCreateReceiptRuleResponse :: Show CreateReceiptRuleResponse where show = genericShow
instance decodeCreateReceiptRuleResponse :: Decode CreateReceiptRuleResponse where decode = genericDecode options
instance encodeCreateReceiptRuleResponse :: Encode CreateReceiptRuleResponse where encode = genericEncode options



-- | <p>Represents a request to create an empty receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype CreateReceiptRuleSetRequest = CreateReceiptRuleSetRequest 
  { "RuleSetName" :: (ReceiptRuleSetName)
  }
derive instance newtypeCreateReceiptRuleSetRequest :: Newtype CreateReceiptRuleSetRequest _
derive instance repGenericCreateReceiptRuleSetRequest :: Generic CreateReceiptRuleSetRequest _
instance showCreateReceiptRuleSetRequest :: Show CreateReceiptRuleSetRequest where show = genericShow
instance decodeCreateReceiptRuleSetRequest :: Decode CreateReceiptRuleSetRequest where decode = genericDecode options
instance encodeCreateReceiptRuleSetRequest :: Encode CreateReceiptRuleSetRequest where encode = genericEncode options

-- | Constructs CreateReceiptRuleSetRequest from required parameters
newCreateReceiptRuleSetRequest :: ReceiptRuleSetName -> CreateReceiptRuleSetRequest
newCreateReceiptRuleSetRequest _RuleSetName = CreateReceiptRuleSetRequest { "RuleSetName": _RuleSetName }

-- | Constructs CreateReceiptRuleSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateReceiptRuleSetRequest' :: ReceiptRuleSetName -> ( { "RuleSetName" :: (ReceiptRuleSetName) } -> {"RuleSetName" :: (ReceiptRuleSetName) } ) -> CreateReceiptRuleSetRequest
newCreateReceiptRuleSetRequest' _RuleSetName customize = (CreateReceiptRuleSetRequest <<< customize) { "RuleSetName": _RuleSetName }



-- | <p>An empty element returned on a successful request.</p>
newtype CreateReceiptRuleSetResponse = CreateReceiptRuleSetResponse Types.NoArguments
derive instance newtypeCreateReceiptRuleSetResponse :: Newtype CreateReceiptRuleSetResponse _
derive instance repGenericCreateReceiptRuleSetResponse :: Generic CreateReceiptRuleSetResponse _
instance showCreateReceiptRuleSetResponse :: Show CreateReceiptRuleSetResponse where show = genericShow
instance decodeCreateReceiptRuleSetResponse :: Decode CreateReceiptRuleSetResponse where decode = genericDecode options
instance encodeCreateReceiptRuleSetResponse :: Encode CreateReceiptRuleSetResponse where encode = genericEncode options



-- | <p>Represents a request to create an email template. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>
newtype CreateTemplateRequest = CreateTemplateRequest 
  { "Template" :: (Template)
  }
derive instance newtypeCreateTemplateRequest :: Newtype CreateTemplateRequest _
derive instance repGenericCreateTemplateRequest :: Generic CreateTemplateRequest _
instance showCreateTemplateRequest :: Show CreateTemplateRequest where show = genericShow
instance decodeCreateTemplateRequest :: Decode CreateTemplateRequest where decode = genericDecode options
instance encodeCreateTemplateRequest :: Encode CreateTemplateRequest where encode = genericEncode options

-- | Constructs CreateTemplateRequest from required parameters
newCreateTemplateRequest :: Template -> CreateTemplateRequest
newCreateTemplateRequest _Template = CreateTemplateRequest { "Template": _Template }

-- | Constructs CreateTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTemplateRequest' :: Template -> ( { "Template" :: (Template) } -> {"Template" :: (Template) } ) -> CreateTemplateRequest
newCreateTemplateRequest' _Template customize = (CreateTemplateRequest <<< customize) { "Template": _Template }



newtype CreateTemplateResponse = CreateTemplateResponse Types.NoArguments
derive instance newtypeCreateTemplateResponse :: Newtype CreateTemplateResponse _
derive instance repGenericCreateTemplateResponse :: Generic CreateTemplateResponse _
instance showCreateTemplateResponse :: Show CreateTemplateResponse where show = genericShow
instance decodeCreateTemplateResponse :: Decode CreateTemplateResponse where decode = genericDecode options
instance encodeCreateTemplateResponse :: Encode CreateTemplateResponse where encode = genericEncode options



newtype CustomMailFromStatus = CustomMailFromStatus String
derive instance newtypeCustomMailFromStatus :: Newtype CustomMailFromStatus _
derive instance repGenericCustomMailFromStatus :: Generic CustomMailFromStatus _
instance showCustomMailFromStatus :: Show CustomMailFromStatus where show = genericShow
instance decodeCustomMailFromStatus :: Decode CustomMailFromStatus where decode = genericDecode options
instance encodeCustomMailFromStatus :: Encode CustomMailFromStatus where encode = genericEncode options



newtype CustomRedirectDomain = CustomRedirectDomain String
derive instance newtypeCustomRedirectDomain :: Newtype CustomRedirectDomain _
derive instance repGenericCustomRedirectDomain :: Generic CustomRedirectDomain _
instance showCustomRedirectDomain :: Show CustomRedirectDomain where show = genericShow
instance decodeCustomRedirectDomain :: Decode CustomRedirectDomain where decode = genericDecode options
instance encodeCustomRedirectDomain :: Encode CustomRedirectDomain where encode = genericEncode options



-- | <p>Indicates that custom verification email template provided content is invalid.</p>
newtype CustomVerificationEmailInvalidContentException = CustomVerificationEmailInvalidContentException Types.NoArguments
derive instance newtypeCustomVerificationEmailInvalidContentException :: Newtype CustomVerificationEmailInvalidContentException _
derive instance repGenericCustomVerificationEmailInvalidContentException :: Generic CustomVerificationEmailInvalidContentException _
instance showCustomVerificationEmailInvalidContentException :: Show CustomVerificationEmailInvalidContentException where show = genericShow
instance decodeCustomVerificationEmailInvalidContentException :: Decode CustomVerificationEmailInvalidContentException where decode = genericDecode options
instance encodeCustomVerificationEmailInvalidContentException :: Encode CustomVerificationEmailInvalidContentException where encode = genericEncode options



-- | <p>Contains information about a custom verification email template.</p>
newtype CustomVerificationEmailTemplate = CustomVerificationEmailTemplate 
  { "TemplateName" :: Maybe (TemplateName)
  , "FromEmailAddress" :: Maybe (FromAddress)
  , "TemplateSubject" :: Maybe (Subject)
  , "SuccessRedirectionURL" :: Maybe (SuccessRedirectionURL)
  , "FailureRedirectionURL" :: Maybe (FailureRedirectionURL)
  }
derive instance newtypeCustomVerificationEmailTemplate :: Newtype CustomVerificationEmailTemplate _
derive instance repGenericCustomVerificationEmailTemplate :: Generic CustomVerificationEmailTemplate _
instance showCustomVerificationEmailTemplate :: Show CustomVerificationEmailTemplate where show = genericShow
instance decodeCustomVerificationEmailTemplate :: Decode CustomVerificationEmailTemplate where decode = genericDecode options
instance encodeCustomVerificationEmailTemplate :: Encode CustomVerificationEmailTemplate where encode = genericEncode options

-- | Constructs CustomVerificationEmailTemplate from required parameters
newCustomVerificationEmailTemplate :: CustomVerificationEmailTemplate
newCustomVerificationEmailTemplate  = CustomVerificationEmailTemplate { "FailureRedirectionURL": Nothing, "FromEmailAddress": Nothing, "SuccessRedirectionURL": Nothing, "TemplateName": Nothing, "TemplateSubject": Nothing }

-- | Constructs CustomVerificationEmailTemplate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomVerificationEmailTemplate' :: ( { "TemplateName" :: Maybe (TemplateName) , "FromEmailAddress" :: Maybe (FromAddress) , "TemplateSubject" :: Maybe (Subject) , "SuccessRedirectionURL" :: Maybe (SuccessRedirectionURL) , "FailureRedirectionURL" :: Maybe (FailureRedirectionURL) } -> {"TemplateName" :: Maybe (TemplateName) , "FromEmailAddress" :: Maybe (FromAddress) , "TemplateSubject" :: Maybe (Subject) , "SuccessRedirectionURL" :: Maybe (SuccessRedirectionURL) , "FailureRedirectionURL" :: Maybe (FailureRedirectionURL) } ) -> CustomVerificationEmailTemplate
newCustomVerificationEmailTemplate'  customize = (CustomVerificationEmailTemplate <<< customize) { "FailureRedirectionURL": Nothing, "FromEmailAddress": Nothing, "SuccessRedirectionURL": Nothing, "TemplateName": Nothing, "TemplateSubject": Nothing }



-- | <p>Indicates that a custom verification email template with the name you specified already exists.</p>
newtype CustomVerificationEmailTemplateAlreadyExistsException = CustomVerificationEmailTemplateAlreadyExistsException 
  { "CustomVerificationEmailTemplateName" :: Maybe (TemplateName)
  }
derive instance newtypeCustomVerificationEmailTemplateAlreadyExistsException :: Newtype CustomVerificationEmailTemplateAlreadyExistsException _
derive instance repGenericCustomVerificationEmailTemplateAlreadyExistsException :: Generic CustomVerificationEmailTemplateAlreadyExistsException _
instance showCustomVerificationEmailTemplateAlreadyExistsException :: Show CustomVerificationEmailTemplateAlreadyExistsException where show = genericShow
instance decodeCustomVerificationEmailTemplateAlreadyExistsException :: Decode CustomVerificationEmailTemplateAlreadyExistsException where decode = genericDecode options
instance encodeCustomVerificationEmailTemplateAlreadyExistsException :: Encode CustomVerificationEmailTemplateAlreadyExistsException where encode = genericEncode options

-- | Constructs CustomVerificationEmailTemplateAlreadyExistsException from required parameters
newCustomVerificationEmailTemplateAlreadyExistsException :: CustomVerificationEmailTemplateAlreadyExistsException
newCustomVerificationEmailTemplateAlreadyExistsException  = CustomVerificationEmailTemplateAlreadyExistsException { "CustomVerificationEmailTemplateName": Nothing }

-- | Constructs CustomVerificationEmailTemplateAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomVerificationEmailTemplateAlreadyExistsException' :: ( { "CustomVerificationEmailTemplateName" :: Maybe (TemplateName) } -> {"CustomVerificationEmailTemplateName" :: Maybe (TemplateName) } ) -> CustomVerificationEmailTemplateAlreadyExistsException
newCustomVerificationEmailTemplateAlreadyExistsException'  customize = (CustomVerificationEmailTemplateAlreadyExistsException <<< customize) { "CustomVerificationEmailTemplateName": Nothing }



-- | <p>Indicates that a custom verification email template with the name you specified does not exist.</p>
newtype CustomVerificationEmailTemplateDoesNotExistException = CustomVerificationEmailTemplateDoesNotExistException 
  { "CustomVerificationEmailTemplateName" :: Maybe (TemplateName)
  }
derive instance newtypeCustomVerificationEmailTemplateDoesNotExistException :: Newtype CustomVerificationEmailTemplateDoesNotExistException _
derive instance repGenericCustomVerificationEmailTemplateDoesNotExistException :: Generic CustomVerificationEmailTemplateDoesNotExistException _
instance showCustomVerificationEmailTemplateDoesNotExistException :: Show CustomVerificationEmailTemplateDoesNotExistException where show = genericShow
instance decodeCustomVerificationEmailTemplateDoesNotExistException :: Decode CustomVerificationEmailTemplateDoesNotExistException where decode = genericDecode options
instance encodeCustomVerificationEmailTemplateDoesNotExistException :: Encode CustomVerificationEmailTemplateDoesNotExistException where encode = genericEncode options

-- | Constructs CustomVerificationEmailTemplateDoesNotExistException from required parameters
newCustomVerificationEmailTemplateDoesNotExistException :: CustomVerificationEmailTemplateDoesNotExistException
newCustomVerificationEmailTemplateDoesNotExistException  = CustomVerificationEmailTemplateDoesNotExistException { "CustomVerificationEmailTemplateName": Nothing }

-- | Constructs CustomVerificationEmailTemplateDoesNotExistException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomVerificationEmailTemplateDoesNotExistException' :: ( { "CustomVerificationEmailTemplateName" :: Maybe (TemplateName) } -> {"CustomVerificationEmailTemplateName" :: Maybe (TemplateName) } ) -> CustomVerificationEmailTemplateDoesNotExistException
newCustomVerificationEmailTemplateDoesNotExistException'  customize = (CustomVerificationEmailTemplateDoesNotExistException <<< customize) { "CustomVerificationEmailTemplateName": Nothing }



newtype CustomVerificationEmailTemplates = CustomVerificationEmailTemplates (Array CustomVerificationEmailTemplate)
derive instance newtypeCustomVerificationEmailTemplates :: Newtype CustomVerificationEmailTemplates _
derive instance repGenericCustomVerificationEmailTemplates :: Generic CustomVerificationEmailTemplates _
instance showCustomVerificationEmailTemplates :: Show CustomVerificationEmailTemplates where show = genericShow
instance decodeCustomVerificationEmailTemplates :: Decode CustomVerificationEmailTemplates where decode = genericDecode options
instance encodeCustomVerificationEmailTemplates :: Encode CustomVerificationEmailTemplates where encode = genericEncode options



newtype DefaultDimensionValue = DefaultDimensionValue String
derive instance newtypeDefaultDimensionValue :: Newtype DefaultDimensionValue _
derive instance repGenericDefaultDimensionValue :: Generic DefaultDimensionValue _
instance showDefaultDimensionValue :: Show DefaultDimensionValue where show = genericShow
instance decodeDefaultDimensionValue :: Decode DefaultDimensionValue where decode = genericDecode options
instance encodeDefaultDimensionValue :: Encode DefaultDimensionValue where encode = genericEncode options



-- | <p>Represents a request to delete a configuration set event destination. Configuration set event destinations are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype DeleteConfigurationSetEventDestinationRequest = DeleteConfigurationSetEventDestinationRequest 
  { "ConfigurationSetName" :: (ConfigurationSetName)
  , "EventDestinationName" :: (EventDestinationName)
  }
derive instance newtypeDeleteConfigurationSetEventDestinationRequest :: Newtype DeleteConfigurationSetEventDestinationRequest _
derive instance repGenericDeleteConfigurationSetEventDestinationRequest :: Generic DeleteConfigurationSetEventDestinationRequest _
instance showDeleteConfigurationSetEventDestinationRequest :: Show DeleteConfigurationSetEventDestinationRequest where show = genericShow
instance decodeDeleteConfigurationSetEventDestinationRequest :: Decode DeleteConfigurationSetEventDestinationRequest where decode = genericDecode options
instance encodeDeleteConfigurationSetEventDestinationRequest :: Encode DeleteConfigurationSetEventDestinationRequest where encode = genericEncode options

-- | Constructs DeleteConfigurationSetEventDestinationRequest from required parameters
newDeleteConfigurationSetEventDestinationRequest :: ConfigurationSetName -> EventDestinationName -> DeleteConfigurationSetEventDestinationRequest
newDeleteConfigurationSetEventDestinationRequest _ConfigurationSetName _EventDestinationName = DeleteConfigurationSetEventDestinationRequest { "ConfigurationSetName": _ConfigurationSetName, "EventDestinationName": _EventDestinationName }

-- | Constructs DeleteConfigurationSetEventDestinationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteConfigurationSetEventDestinationRequest' :: ConfigurationSetName -> EventDestinationName -> ( { "ConfigurationSetName" :: (ConfigurationSetName) , "EventDestinationName" :: (EventDestinationName) } -> {"ConfigurationSetName" :: (ConfigurationSetName) , "EventDestinationName" :: (EventDestinationName) } ) -> DeleteConfigurationSetEventDestinationRequest
newDeleteConfigurationSetEventDestinationRequest' _ConfigurationSetName _EventDestinationName customize = (DeleteConfigurationSetEventDestinationRequest <<< customize) { "ConfigurationSetName": _ConfigurationSetName, "EventDestinationName": _EventDestinationName }



-- | <p>An empty element returned on a successful request.</p>
newtype DeleteConfigurationSetEventDestinationResponse = DeleteConfigurationSetEventDestinationResponse Types.NoArguments
derive instance newtypeDeleteConfigurationSetEventDestinationResponse :: Newtype DeleteConfigurationSetEventDestinationResponse _
derive instance repGenericDeleteConfigurationSetEventDestinationResponse :: Generic DeleteConfigurationSetEventDestinationResponse _
instance showDeleteConfigurationSetEventDestinationResponse :: Show DeleteConfigurationSetEventDestinationResponse where show = genericShow
instance decodeDeleteConfigurationSetEventDestinationResponse :: Decode DeleteConfigurationSetEventDestinationResponse where decode = genericDecode options
instance encodeDeleteConfigurationSetEventDestinationResponse :: Encode DeleteConfigurationSetEventDestinationResponse where encode = genericEncode options



-- | <p>Represents a request to delete a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype DeleteConfigurationSetRequest = DeleteConfigurationSetRequest 
  { "ConfigurationSetName" :: (ConfigurationSetName)
  }
derive instance newtypeDeleteConfigurationSetRequest :: Newtype DeleteConfigurationSetRequest _
derive instance repGenericDeleteConfigurationSetRequest :: Generic DeleteConfigurationSetRequest _
instance showDeleteConfigurationSetRequest :: Show DeleteConfigurationSetRequest where show = genericShow
instance decodeDeleteConfigurationSetRequest :: Decode DeleteConfigurationSetRequest where decode = genericDecode options
instance encodeDeleteConfigurationSetRequest :: Encode DeleteConfigurationSetRequest where encode = genericEncode options

-- | Constructs DeleteConfigurationSetRequest from required parameters
newDeleteConfigurationSetRequest :: ConfigurationSetName -> DeleteConfigurationSetRequest
newDeleteConfigurationSetRequest _ConfigurationSetName = DeleteConfigurationSetRequest { "ConfigurationSetName": _ConfigurationSetName }

-- | Constructs DeleteConfigurationSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteConfigurationSetRequest' :: ConfigurationSetName -> ( { "ConfigurationSetName" :: (ConfigurationSetName) } -> {"ConfigurationSetName" :: (ConfigurationSetName) } ) -> DeleteConfigurationSetRequest
newDeleteConfigurationSetRequest' _ConfigurationSetName customize = (DeleteConfigurationSetRequest <<< customize) { "ConfigurationSetName": _ConfigurationSetName }



-- | <p>An empty element returned on a successful request.</p>
newtype DeleteConfigurationSetResponse = DeleteConfigurationSetResponse Types.NoArguments
derive instance newtypeDeleteConfigurationSetResponse :: Newtype DeleteConfigurationSetResponse _
derive instance repGenericDeleteConfigurationSetResponse :: Generic DeleteConfigurationSetResponse _
instance showDeleteConfigurationSetResponse :: Show DeleteConfigurationSetResponse where show = genericShow
instance decodeDeleteConfigurationSetResponse :: Decode DeleteConfigurationSetResponse where decode = genericDecode options
instance encodeDeleteConfigurationSetResponse :: Encode DeleteConfigurationSetResponse where encode = genericEncode options



-- | <p>Represents a request to delete open and click tracking options in a configuration set. </p>
newtype DeleteConfigurationSetTrackingOptionsRequest = DeleteConfigurationSetTrackingOptionsRequest 
  { "ConfigurationSetName" :: (ConfigurationSetName)
  }
derive instance newtypeDeleteConfigurationSetTrackingOptionsRequest :: Newtype DeleteConfigurationSetTrackingOptionsRequest _
derive instance repGenericDeleteConfigurationSetTrackingOptionsRequest :: Generic DeleteConfigurationSetTrackingOptionsRequest _
instance showDeleteConfigurationSetTrackingOptionsRequest :: Show DeleteConfigurationSetTrackingOptionsRequest where show = genericShow
instance decodeDeleteConfigurationSetTrackingOptionsRequest :: Decode DeleteConfigurationSetTrackingOptionsRequest where decode = genericDecode options
instance encodeDeleteConfigurationSetTrackingOptionsRequest :: Encode DeleteConfigurationSetTrackingOptionsRequest where encode = genericEncode options

-- | Constructs DeleteConfigurationSetTrackingOptionsRequest from required parameters
newDeleteConfigurationSetTrackingOptionsRequest :: ConfigurationSetName -> DeleteConfigurationSetTrackingOptionsRequest
newDeleteConfigurationSetTrackingOptionsRequest _ConfigurationSetName = DeleteConfigurationSetTrackingOptionsRequest { "ConfigurationSetName": _ConfigurationSetName }

-- | Constructs DeleteConfigurationSetTrackingOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteConfigurationSetTrackingOptionsRequest' :: ConfigurationSetName -> ( { "ConfigurationSetName" :: (ConfigurationSetName) } -> {"ConfigurationSetName" :: (ConfigurationSetName) } ) -> DeleteConfigurationSetTrackingOptionsRequest
newDeleteConfigurationSetTrackingOptionsRequest' _ConfigurationSetName customize = (DeleteConfigurationSetTrackingOptionsRequest <<< customize) { "ConfigurationSetName": _ConfigurationSetName }



-- | <p>An empty element returned on a successful request.</p>
newtype DeleteConfigurationSetTrackingOptionsResponse = DeleteConfigurationSetTrackingOptionsResponse Types.NoArguments
derive instance newtypeDeleteConfigurationSetTrackingOptionsResponse :: Newtype DeleteConfigurationSetTrackingOptionsResponse _
derive instance repGenericDeleteConfigurationSetTrackingOptionsResponse :: Generic DeleteConfigurationSetTrackingOptionsResponse _
instance showDeleteConfigurationSetTrackingOptionsResponse :: Show DeleteConfigurationSetTrackingOptionsResponse where show = genericShow
instance decodeDeleteConfigurationSetTrackingOptionsResponse :: Decode DeleteConfigurationSetTrackingOptionsResponse where decode = genericDecode options
instance encodeDeleteConfigurationSetTrackingOptionsResponse :: Encode DeleteConfigurationSetTrackingOptionsResponse where encode = genericEncode options



-- | <p>Represents a request to delete an existing custom verification email template.</p>
newtype DeleteCustomVerificationEmailTemplateRequest = DeleteCustomVerificationEmailTemplateRequest 
  { "TemplateName" :: (TemplateName)
  }
derive instance newtypeDeleteCustomVerificationEmailTemplateRequest :: Newtype DeleteCustomVerificationEmailTemplateRequest _
derive instance repGenericDeleteCustomVerificationEmailTemplateRequest :: Generic DeleteCustomVerificationEmailTemplateRequest _
instance showDeleteCustomVerificationEmailTemplateRequest :: Show DeleteCustomVerificationEmailTemplateRequest where show = genericShow
instance decodeDeleteCustomVerificationEmailTemplateRequest :: Decode DeleteCustomVerificationEmailTemplateRequest where decode = genericDecode options
instance encodeDeleteCustomVerificationEmailTemplateRequest :: Encode DeleteCustomVerificationEmailTemplateRequest where encode = genericEncode options

-- | Constructs DeleteCustomVerificationEmailTemplateRequest from required parameters
newDeleteCustomVerificationEmailTemplateRequest :: TemplateName -> DeleteCustomVerificationEmailTemplateRequest
newDeleteCustomVerificationEmailTemplateRequest _TemplateName = DeleteCustomVerificationEmailTemplateRequest { "TemplateName": _TemplateName }

-- | Constructs DeleteCustomVerificationEmailTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteCustomVerificationEmailTemplateRequest' :: TemplateName -> ( { "TemplateName" :: (TemplateName) } -> {"TemplateName" :: (TemplateName) } ) -> DeleteCustomVerificationEmailTemplateRequest
newDeleteCustomVerificationEmailTemplateRequest' _TemplateName customize = (DeleteCustomVerificationEmailTemplateRequest <<< customize) { "TemplateName": _TemplateName }



-- | <p>Represents a request to delete a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
newtype DeleteIdentityPolicyRequest = DeleteIdentityPolicyRequest 
  { "Identity" :: (Identity)
  , "PolicyName" :: (PolicyName)
  }
derive instance newtypeDeleteIdentityPolicyRequest :: Newtype DeleteIdentityPolicyRequest _
derive instance repGenericDeleteIdentityPolicyRequest :: Generic DeleteIdentityPolicyRequest _
instance showDeleteIdentityPolicyRequest :: Show DeleteIdentityPolicyRequest where show = genericShow
instance decodeDeleteIdentityPolicyRequest :: Decode DeleteIdentityPolicyRequest where decode = genericDecode options
instance encodeDeleteIdentityPolicyRequest :: Encode DeleteIdentityPolicyRequest where encode = genericEncode options

-- | Constructs DeleteIdentityPolicyRequest from required parameters
newDeleteIdentityPolicyRequest :: Identity -> PolicyName -> DeleteIdentityPolicyRequest
newDeleteIdentityPolicyRequest _Identity _PolicyName = DeleteIdentityPolicyRequest { "Identity": _Identity, "PolicyName": _PolicyName }

-- | Constructs DeleteIdentityPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIdentityPolicyRequest' :: Identity -> PolicyName -> ( { "Identity" :: (Identity) , "PolicyName" :: (PolicyName) } -> {"Identity" :: (Identity) , "PolicyName" :: (PolicyName) } ) -> DeleteIdentityPolicyRequest
newDeleteIdentityPolicyRequest' _Identity _PolicyName customize = (DeleteIdentityPolicyRequest <<< customize) { "Identity": _Identity, "PolicyName": _PolicyName }



-- | <p>An empty element returned on a successful request.</p>
newtype DeleteIdentityPolicyResponse = DeleteIdentityPolicyResponse Types.NoArguments
derive instance newtypeDeleteIdentityPolicyResponse :: Newtype DeleteIdentityPolicyResponse _
derive instance repGenericDeleteIdentityPolicyResponse :: Generic DeleteIdentityPolicyResponse _
instance showDeleteIdentityPolicyResponse :: Show DeleteIdentityPolicyResponse where show = genericShow
instance decodeDeleteIdentityPolicyResponse :: Decode DeleteIdentityPolicyResponse where decode = genericDecode options
instance encodeDeleteIdentityPolicyResponse :: Encode DeleteIdentityPolicyResponse where encode = genericEncode options



-- | <p>Represents a request to delete one of your Amazon SES identities (an email address or domain).</p>
newtype DeleteIdentityRequest = DeleteIdentityRequest 
  { "Identity" :: (Identity)
  }
derive instance newtypeDeleteIdentityRequest :: Newtype DeleteIdentityRequest _
derive instance repGenericDeleteIdentityRequest :: Generic DeleteIdentityRequest _
instance showDeleteIdentityRequest :: Show DeleteIdentityRequest where show = genericShow
instance decodeDeleteIdentityRequest :: Decode DeleteIdentityRequest where decode = genericDecode options
instance encodeDeleteIdentityRequest :: Encode DeleteIdentityRequest where encode = genericEncode options

-- | Constructs DeleteIdentityRequest from required parameters
newDeleteIdentityRequest :: Identity -> DeleteIdentityRequest
newDeleteIdentityRequest _Identity = DeleteIdentityRequest { "Identity": _Identity }

-- | Constructs DeleteIdentityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIdentityRequest' :: Identity -> ( { "Identity" :: (Identity) } -> {"Identity" :: (Identity) } ) -> DeleteIdentityRequest
newDeleteIdentityRequest' _Identity customize = (DeleteIdentityRequest <<< customize) { "Identity": _Identity }



-- | <p>An empty element returned on a successful request.</p>
newtype DeleteIdentityResponse = DeleteIdentityResponse Types.NoArguments
derive instance newtypeDeleteIdentityResponse :: Newtype DeleteIdentityResponse _
derive instance repGenericDeleteIdentityResponse :: Generic DeleteIdentityResponse _
instance showDeleteIdentityResponse :: Show DeleteIdentityResponse where show = genericShow
instance decodeDeleteIdentityResponse :: Decode DeleteIdentityResponse where decode = genericDecode options
instance encodeDeleteIdentityResponse :: Encode DeleteIdentityResponse where encode = genericEncode options



-- | <p>Represents a request to delete an IP address filter. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype DeleteReceiptFilterRequest = DeleteReceiptFilterRequest 
  { "FilterName" :: (ReceiptFilterName)
  }
derive instance newtypeDeleteReceiptFilterRequest :: Newtype DeleteReceiptFilterRequest _
derive instance repGenericDeleteReceiptFilterRequest :: Generic DeleteReceiptFilterRequest _
instance showDeleteReceiptFilterRequest :: Show DeleteReceiptFilterRequest where show = genericShow
instance decodeDeleteReceiptFilterRequest :: Decode DeleteReceiptFilterRequest where decode = genericDecode options
instance encodeDeleteReceiptFilterRequest :: Encode DeleteReceiptFilterRequest where encode = genericEncode options

-- | Constructs DeleteReceiptFilterRequest from required parameters
newDeleteReceiptFilterRequest :: ReceiptFilterName -> DeleteReceiptFilterRequest
newDeleteReceiptFilterRequest _FilterName = DeleteReceiptFilterRequest { "FilterName": _FilterName }

-- | Constructs DeleteReceiptFilterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteReceiptFilterRequest' :: ReceiptFilterName -> ( { "FilterName" :: (ReceiptFilterName) } -> {"FilterName" :: (ReceiptFilterName) } ) -> DeleteReceiptFilterRequest
newDeleteReceiptFilterRequest' _FilterName customize = (DeleteReceiptFilterRequest <<< customize) { "FilterName": _FilterName }



-- | <p>An empty element returned on a successful request.</p>
newtype DeleteReceiptFilterResponse = DeleteReceiptFilterResponse Types.NoArguments
derive instance newtypeDeleteReceiptFilterResponse :: Newtype DeleteReceiptFilterResponse _
derive instance repGenericDeleteReceiptFilterResponse :: Generic DeleteReceiptFilterResponse _
instance showDeleteReceiptFilterResponse :: Show DeleteReceiptFilterResponse where show = genericShow
instance decodeDeleteReceiptFilterResponse :: Decode DeleteReceiptFilterResponse where decode = genericDecode options
instance encodeDeleteReceiptFilterResponse :: Encode DeleteReceiptFilterResponse where encode = genericEncode options



-- | <p>Represents a request to delete a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype DeleteReceiptRuleRequest = DeleteReceiptRuleRequest 
  { "RuleSetName" :: (ReceiptRuleSetName)
  , "RuleName" :: (ReceiptRuleName)
  }
derive instance newtypeDeleteReceiptRuleRequest :: Newtype DeleteReceiptRuleRequest _
derive instance repGenericDeleteReceiptRuleRequest :: Generic DeleteReceiptRuleRequest _
instance showDeleteReceiptRuleRequest :: Show DeleteReceiptRuleRequest where show = genericShow
instance decodeDeleteReceiptRuleRequest :: Decode DeleteReceiptRuleRequest where decode = genericDecode options
instance encodeDeleteReceiptRuleRequest :: Encode DeleteReceiptRuleRequest where encode = genericEncode options

-- | Constructs DeleteReceiptRuleRequest from required parameters
newDeleteReceiptRuleRequest :: ReceiptRuleName -> ReceiptRuleSetName -> DeleteReceiptRuleRequest
newDeleteReceiptRuleRequest _RuleName _RuleSetName = DeleteReceiptRuleRequest { "RuleName": _RuleName, "RuleSetName": _RuleSetName }

-- | Constructs DeleteReceiptRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteReceiptRuleRequest' :: ReceiptRuleName -> ReceiptRuleSetName -> ( { "RuleSetName" :: (ReceiptRuleSetName) , "RuleName" :: (ReceiptRuleName) } -> {"RuleSetName" :: (ReceiptRuleSetName) , "RuleName" :: (ReceiptRuleName) } ) -> DeleteReceiptRuleRequest
newDeleteReceiptRuleRequest' _RuleName _RuleSetName customize = (DeleteReceiptRuleRequest <<< customize) { "RuleName": _RuleName, "RuleSetName": _RuleSetName }



-- | <p>An empty element returned on a successful request.</p>
newtype DeleteReceiptRuleResponse = DeleteReceiptRuleResponse Types.NoArguments
derive instance newtypeDeleteReceiptRuleResponse :: Newtype DeleteReceiptRuleResponse _
derive instance repGenericDeleteReceiptRuleResponse :: Generic DeleteReceiptRuleResponse _
instance showDeleteReceiptRuleResponse :: Show DeleteReceiptRuleResponse where show = genericShow
instance decodeDeleteReceiptRuleResponse :: Decode DeleteReceiptRuleResponse where decode = genericDecode options
instance encodeDeleteReceiptRuleResponse :: Encode DeleteReceiptRuleResponse where encode = genericEncode options



-- | <p>Represents a request to delete a receipt rule set and all of the receipt rules it contains. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype DeleteReceiptRuleSetRequest = DeleteReceiptRuleSetRequest 
  { "RuleSetName" :: (ReceiptRuleSetName)
  }
derive instance newtypeDeleteReceiptRuleSetRequest :: Newtype DeleteReceiptRuleSetRequest _
derive instance repGenericDeleteReceiptRuleSetRequest :: Generic DeleteReceiptRuleSetRequest _
instance showDeleteReceiptRuleSetRequest :: Show DeleteReceiptRuleSetRequest where show = genericShow
instance decodeDeleteReceiptRuleSetRequest :: Decode DeleteReceiptRuleSetRequest where decode = genericDecode options
instance encodeDeleteReceiptRuleSetRequest :: Encode DeleteReceiptRuleSetRequest where encode = genericEncode options

-- | Constructs DeleteReceiptRuleSetRequest from required parameters
newDeleteReceiptRuleSetRequest :: ReceiptRuleSetName -> DeleteReceiptRuleSetRequest
newDeleteReceiptRuleSetRequest _RuleSetName = DeleteReceiptRuleSetRequest { "RuleSetName": _RuleSetName }

-- | Constructs DeleteReceiptRuleSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteReceiptRuleSetRequest' :: ReceiptRuleSetName -> ( { "RuleSetName" :: (ReceiptRuleSetName) } -> {"RuleSetName" :: (ReceiptRuleSetName) } ) -> DeleteReceiptRuleSetRequest
newDeleteReceiptRuleSetRequest' _RuleSetName customize = (DeleteReceiptRuleSetRequest <<< customize) { "RuleSetName": _RuleSetName }



-- | <p>An empty element returned on a successful request.</p>
newtype DeleteReceiptRuleSetResponse = DeleteReceiptRuleSetResponse Types.NoArguments
derive instance newtypeDeleteReceiptRuleSetResponse :: Newtype DeleteReceiptRuleSetResponse _
derive instance repGenericDeleteReceiptRuleSetResponse :: Generic DeleteReceiptRuleSetResponse _
instance showDeleteReceiptRuleSetResponse :: Show DeleteReceiptRuleSetResponse where show = genericShow
instance decodeDeleteReceiptRuleSetResponse :: Decode DeleteReceiptRuleSetResponse where decode = genericDecode options
instance encodeDeleteReceiptRuleSetResponse :: Encode DeleteReceiptRuleSetResponse where encode = genericEncode options



-- | <p>Represents a request to delete an email template. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>
newtype DeleteTemplateRequest = DeleteTemplateRequest 
  { "TemplateName" :: (TemplateName)
  }
derive instance newtypeDeleteTemplateRequest :: Newtype DeleteTemplateRequest _
derive instance repGenericDeleteTemplateRequest :: Generic DeleteTemplateRequest _
instance showDeleteTemplateRequest :: Show DeleteTemplateRequest where show = genericShow
instance decodeDeleteTemplateRequest :: Decode DeleteTemplateRequest where decode = genericDecode options
instance encodeDeleteTemplateRequest :: Encode DeleteTemplateRequest where encode = genericEncode options

-- | Constructs DeleteTemplateRequest from required parameters
newDeleteTemplateRequest :: TemplateName -> DeleteTemplateRequest
newDeleteTemplateRequest _TemplateName = DeleteTemplateRequest { "TemplateName": _TemplateName }

-- | Constructs DeleteTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTemplateRequest' :: TemplateName -> ( { "TemplateName" :: (TemplateName) } -> {"TemplateName" :: (TemplateName) } ) -> DeleteTemplateRequest
newDeleteTemplateRequest' _TemplateName customize = (DeleteTemplateRequest <<< customize) { "TemplateName": _TemplateName }



newtype DeleteTemplateResponse = DeleteTemplateResponse Types.NoArguments
derive instance newtypeDeleteTemplateResponse :: Newtype DeleteTemplateResponse _
derive instance repGenericDeleteTemplateResponse :: Generic DeleteTemplateResponse _
instance showDeleteTemplateResponse :: Show DeleteTemplateResponse where show = genericShow
instance decodeDeleteTemplateResponse :: Decode DeleteTemplateResponse where decode = genericDecode options
instance encodeDeleteTemplateResponse :: Encode DeleteTemplateResponse where encode = genericEncode options



-- | <p>Represents a request to delete an email address from the list of email addresses you have attempted to verify under your AWS account.</p>
newtype DeleteVerifiedEmailAddressRequest = DeleteVerifiedEmailAddressRequest 
  { "EmailAddress" :: (Address)
  }
derive instance newtypeDeleteVerifiedEmailAddressRequest :: Newtype DeleteVerifiedEmailAddressRequest _
derive instance repGenericDeleteVerifiedEmailAddressRequest :: Generic DeleteVerifiedEmailAddressRequest _
instance showDeleteVerifiedEmailAddressRequest :: Show DeleteVerifiedEmailAddressRequest where show = genericShow
instance decodeDeleteVerifiedEmailAddressRequest :: Decode DeleteVerifiedEmailAddressRequest where decode = genericDecode options
instance encodeDeleteVerifiedEmailAddressRequest :: Encode DeleteVerifiedEmailAddressRequest where encode = genericEncode options

-- | Constructs DeleteVerifiedEmailAddressRequest from required parameters
newDeleteVerifiedEmailAddressRequest :: Address -> DeleteVerifiedEmailAddressRequest
newDeleteVerifiedEmailAddressRequest _EmailAddress = DeleteVerifiedEmailAddressRequest { "EmailAddress": _EmailAddress }

-- | Constructs DeleteVerifiedEmailAddressRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteVerifiedEmailAddressRequest' :: Address -> ( { "EmailAddress" :: (Address) } -> {"EmailAddress" :: (Address) } ) -> DeleteVerifiedEmailAddressRequest
newDeleteVerifiedEmailAddressRequest' _EmailAddress customize = (DeleteVerifiedEmailAddressRequest <<< customize) { "EmailAddress": _EmailAddress }



-- | <p>Represents a request to return the metadata and receipt rules for the receipt rule set that is currently active. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype DescribeActiveReceiptRuleSetRequest = DescribeActiveReceiptRuleSetRequest Types.NoArguments
derive instance newtypeDescribeActiveReceiptRuleSetRequest :: Newtype DescribeActiveReceiptRuleSetRequest _
derive instance repGenericDescribeActiveReceiptRuleSetRequest :: Generic DescribeActiveReceiptRuleSetRequest _
instance showDescribeActiveReceiptRuleSetRequest :: Show DescribeActiveReceiptRuleSetRequest where show = genericShow
instance decodeDescribeActiveReceiptRuleSetRequest :: Decode DescribeActiveReceiptRuleSetRequest where decode = genericDecode options
instance encodeDescribeActiveReceiptRuleSetRequest :: Encode DescribeActiveReceiptRuleSetRequest where encode = genericEncode options



-- | <p>Represents the metadata and receipt rules for the receipt rule set that is currently active.</p>
newtype DescribeActiveReceiptRuleSetResponse = DescribeActiveReceiptRuleSetResponse 
  { "Metadata" :: Maybe (ReceiptRuleSetMetadata)
  , "Rules" :: Maybe (ReceiptRulesList)
  }
derive instance newtypeDescribeActiveReceiptRuleSetResponse :: Newtype DescribeActiveReceiptRuleSetResponse _
derive instance repGenericDescribeActiveReceiptRuleSetResponse :: Generic DescribeActiveReceiptRuleSetResponse _
instance showDescribeActiveReceiptRuleSetResponse :: Show DescribeActiveReceiptRuleSetResponse where show = genericShow
instance decodeDescribeActiveReceiptRuleSetResponse :: Decode DescribeActiveReceiptRuleSetResponse where decode = genericDecode options
instance encodeDescribeActiveReceiptRuleSetResponse :: Encode DescribeActiveReceiptRuleSetResponse where encode = genericEncode options

-- | Constructs DescribeActiveReceiptRuleSetResponse from required parameters
newDescribeActiveReceiptRuleSetResponse :: DescribeActiveReceiptRuleSetResponse
newDescribeActiveReceiptRuleSetResponse  = DescribeActiveReceiptRuleSetResponse { "Metadata": Nothing, "Rules": Nothing }

-- | Constructs DescribeActiveReceiptRuleSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeActiveReceiptRuleSetResponse' :: ( { "Metadata" :: Maybe (ReceiptRuleSetMetadata) , "Rules" :: Maybe (ReceiptRulesList) } -> {"Metadata" :: Maybe (ReceiptRuleSetMetadata) , "Rules" :: Maybe (ReceiptRulesList) } ) -> DescribeActiveReceiptRuleSetResponse
newDescribeActiveReceiptRuleSetResponse'  customize = (DescribeActiveReceiptRuleSetResponse <<< customize) { "Metadata": Nothing, "Rules": Nothing }



-- | <p>Represents a request to return the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype DescribeConfigurationSetRequest = DescribeConfigurationSetRequest 
  { "ConfigurationSetName" :: (ConfigurationSetName)
  , "ConfigurationSetAttributeNames" :: Maybe (ConfigurationSetAttributeList)
  }
derive instance newtypeDescribeConfigurationSetRequest :: Newtype DescribeConfigurationSetRequest _
derive instance repGenericDescribeConfigurationSetRequest :: Generic DescribeConfigurationSetRequest _
instance showDescribeConfigurationSetRequest :: Show DescribeConfigurationSetRequest where show = genericShow
instance decodeDescribeConfigurationSetRequest :: Decode DescribeConfigurationSetRequest where decode = genericDecode options
instance encodeDescribeConfigurationSetRequest :: Encode DescribeConfigurationSetRequest where encode = genericEncode options

-- | Constructs DescribeConfigurationSetRequest from required parameters
newDescribeConfigurationSetRequest :: ConfigurationSetName -> DescribeConfigurationSetRequest
newDescribeConfigurationSetRequest _ConfigurationSetName = DescribeConfigurationSetRequest { "ConfigurationSetName": _ConfigurationSetName, "ConfigurationSetAttributeNames": Nothing }

-- | Constructs DescribeConfigurationSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigurationSetRequest' :: ConfigurationSetName -> ( { "ConfigurationSetName" :: (ConfigurationSetName) , "ConfigurationSetAttributeNames" :: Maybe (ConfigurationSetAttributeList) } -> {"ConfigurationSetName" :: (ConfigurationSetName) , "ConfigurationSetAttributeNames" :: Maybe (ConfigurationSetAttributeList) } ) -> DescribeConfigurationSetRequest
newDescribeConfigurationSetRequest' _ConfigurationSetName customize = (DescribeConfigurationSetRequest <<< customize) { "ConfigurationSetName": _ConfigurationSetName, "ConfigurationSetAttributeNames": Nothing }



-- | <p>Represents the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype DescribeConfigurationSetResponse = DescribeConfigurationSetResponse 
  { "ConfigurationSet" :: Maybe (ConfigurationSet)
  , "EventDestinations" :: Maybe (EventDestinations)
  , "TrackingOptions" :: Maybe (TrackingOptions)
  , "ReputationOptions" :: Maybe (ReputationOptions)
  }
derive instance newtypeDescribeConfigurationSetResponse :: Newtype DescribeConfigurationSetResponse _
derive instance repGenericDescribeConfigurationSetResponse :: Generic DescribeConfigurationSetResponse _
instance showDescribeConfigurationSetResponse :: Show DescribeConfigurationSetResponse where show = genericShow
instance decodeDescribeConfigurationSetResponse :: Decode DescribeConfigurationSetResponse where decode = genericDecode options
instance encodeDescribeConfigurationSetResponse :: Encode DescribeConfigurationSetResponse where encode = genericEncode options

-- | Constructs DescribeConfigurationSetResponse from required parameters
newDescribeConfigurationSetResponse :: DescribeConfigurationSetResponse
newDescribeConfigurationSetResponse  = DescribeConfigurationSetResponse { "ConfigurationSet": Nothing, "EventDestinations": Nothing, "ReputationOptions": Nothing, "TrackingOptions": Nothing }

-- | Constructs DescribeConfigurationSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigurationSetResponse' :: ( { "ConfigurationSet" :: Maybe (ConfigurationSet) , "EventDestinations" :: Maybe (EventDestinations) , "TrackingOptions" :: Maybe (TrackingOptions) , "ReputationOptions" :: Maybe (ReputationOptions) } -> {"ConfigurationSet" :: Maybe (ConfigurationSet) , "EventDestinations" :: Maybe (EventDestinations) , "TrackingOptions" :: Maybe (TrackingOptions) , "ReputationOptions" :: Maybe (ReputationOptions) } ) -> DescribeConfigurationSetResponse
newDescribeConfigurationSetResponse'  customize = (DescribeConfigurationSetResponse <<< customize) { "ConfigurationSet": Nothing, "EventDestinations": Nothing, "ReputationOptions": Nothing, "TrackingOptions": Nothing }



-- | <p>Represents a request to return the details of a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype DescribeReceiptRuleRequest = DescribeReceiptRuleRequest 
  { "RuleSetName" :: (ReceiptRuleSetName)
  , "RuleName" :: (ReceiptRuleName)
  }
derive instance newtypeDescribeReceiptRuleRequest :: Newtype DescribeReceiptRuleRequest _
derive instance repGenericDescribeReceiptRuleRequest :: Generic DescribeReceiptRuleRequest _
instance showDescribeReceiptRuleRequest :: Show DescribeReceiptRuleRequest where show = genericShow
instance decodeDescribeReceiptRuleRequest :: Decode DescribeReceiptRuleRequest where decode = genericDecode options
instance encodeDescribeReceiptRuleRequest :: Encode DescribeReceiptRuleRequest where encode = genericEncode options

-- | Constructs DescribeReceiptRuleRequest from required parameters
newDescribeReceiptRuleRequest :: ReceiptRuleName -> ReceiptRuleSetName -> DescribeReceiptRuleRequest
newDescribeReceiptRuleRequest _RuleName _RuleSetName = DescribeReceiptRuleRequest { "RuleName": _RuleName, "RuleSetName": _RuleSetName }

-- | Constructs DescribeReceiptRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeReceiptRuleRequest' :: ReceiptRuleName -> ReceiptRuleSetName -> ( { "RuleSetName" :: (ReceiptRuleSetName) , "RuleName" :: (ReceiptRuleName) } -> {"RuleSetName" :: (ReceiptRuleSetName) , "RuleName" :: (ReceiptRuleName) } ) -> DescribeReceiptRuleRequest
newDescribeReceiptRuleRequest' _RuleName _RuleSetName customize = (DescribeReceiptRuleRequest <<< customize) { "RuleName": _RuleName, "RuleSetName": _RuleSetName }



-- | <p>Represents the details of a receipt rule.</p>
newtype DescribeReceiptRuleResponse = DescribeReceiptRuleResponse 
  { "Rule" :: Maybe (ReceiptRule)
  }
derive instance newtypeDescribeReceiptRuleResponse :: Newtype DescribeReceiptRuleResponse _
derive instance repGenericDescribeReceiptRuleResponse :: Generic DescribeReceiptRuleResponse _
instance showDescribeReceiptRuleResponse :: Show DescribeReceiptRuleResponse where show = genericShow
instance decodeDescribeReceiptRuleResponse :: Decode DescribeReceiptRuleResponse where decode = genericDecode options
instance encodeDescribeReceiptRuleResponse :: Encode DescribeReceiptRuleResponse where encode = genericEncode options

-- | Constructs DescribeReceiptRuleResponse from required parameters
newDescribeReceiptRuleResponse :: DescribeReceiptRuleResponse
newDescribeReceiptRuleResponse  = DescribeReceiptRuleResponse { "Rule": Nothing }

-- | Constructs DescribeReceiptRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeReceiptRuleResponse' :: ( { "Rule" :: Maybe (ReceiptRule) } -> {"Rule" :: Maybe (ReceiptRule) } ) -> DescribeReceiptRuleResponse
newDescribeReceiptRuleResponse'  customize = (DescribeReceiptRuleResponse <<< customize) { "Rule": Nothing }



-- | <p>Represents a request to return the details of a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype DescribeReceiptRuleSetRequest = DescribeReceiptRuleSetRequest 
  { "RuleSetName" :: (ReceiptRuleSetName)
  }
derive instance newtypeDescribeReceiptRuleSetRequest :: Newtype DescribeReceiptRuleSetRequest _
derive instance repGenericDescribeReceiptRuleSetRequest :: Generic DescribeReceiptRuleSetRequest _
instance showDescribeReceiptRuleSetRequest :: Show DescribeReceiptRuleSetRequest where show = genericShow
instance decodeDescribeReceiptRuleSetRequest :: Decode DescribeReceiptRuleSetRequest where decode = genericDecode options
instance encodeDescribeReceiptRuleSetRequest :: Encode DescribeReceiptRuleSetRequest where encode = genericEncode options

-- | Constructs DescribeReceiptRuleSetRequest from required parameters
newDescribeReceiptRuleSetRequest :: ReceiptRuleSetName -> DescribeReceiptRuleSetRequest
newDescribeReceiptRuleSetRequest _RuleSetName = DescribeReceiptRuleSetRequest { "RuleSetName": _RuleSetName }

-- | Constructs DescribeReceiptRuleSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeReceiptRuleSetRequest' :: ReceiptRuleSetName -> ( { "RuleSetName" :: (ReceiptRuleSetName) } -> {"RuleSetName" :: (ReceiptRuleSetName) } ) -> DescribeReceiptRuleSetRequest
newDescribeReceiptRuleSetRequest' _RuleSetName customize = (DescribeReceiptRuleSetRequest <<< customize) { "RuleSetName": _RuleSetName }



-- | <p>Represents the details of the specified receipt rule set.</p>
newtype DescribeReceiptRuleSetResponse = DescribeReceiptRuleSetResponse 
  { "Metadata" :: Maybe (ReceiptRuleSetMetadata)
  , "Rules" :: Maybe (ReceiptRulesList)
  }
derive instance newtypeDescribeReceiptRuleSetResponse :: Newtype DescribeReceiptRuleSetResponse _
derive instance repGenericDescribeReceiptRuleSetResponse :: Generic DescribeReceiptRuleSetResponse _
instance showDescribeReceiptRuleSetResponse :: Show DescribeReceiptRuleSetResponse where show = genericShow
instance decodeDescribeReceiptRuleSetResponse :: Decode DescribeReceiptRuleSetResponse where decode = genericDecode options
instance encodeDescribeReceiptRuleSetResponse :: Encode DescribeReceiptRuleSetResponse where encode = genericEncode options

-- | Constructs DescribeReceiptRuleSetResponse from required parameters
newDescribeReceiptRuleSetResponse :: DescribeReceiptRuleSetResponse
newDescribeReceiptRuleSetResponse  = DescribeReceiptRuleSetResponse { "Metadata": Nothing, "Rules": Nothing }

-- | Constructs DescribeReceiptRuleSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeReceiptRuleSetResponse' :: ( { "Metadata" :: Maybe (ReceiptRuleSetMetadata) , "Rules" :: Maybe (ReceiptRulesList) } -> {"Metadata" :: Maybe (ReceiptRuleSetMetadata) , "Rules" :: Maybe (ReceiptRulesList) } ) -> DescribeReceiptRuleSetResponse
newDescribeReceiptRuleSetResponse'  customize = (DescribeReceiptRuleSetResponse <<< customize) { "Metadata": Nothing, "Rules": Nothing }



-- | <p>Represents the destination of the message, consisting of To:, CC:, and BCC: fields.</p> <note> <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the <i>local part</i> of a destination email address (the part of the email address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII characters</a>. If the <i>domain part</i> of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>.</p> </note>
newtype Destination = Destination 
  { "ToAddresses" :: Maybe (AddressList)
  , "CcAddresses" :: Maybe (AddressList)
  , "BccAddresses" :: Maybe (AddressList)
  }
derive instance newtypeDestination :: Newtype Destination _
derive instance repGenericDestination :: Generic Destination _
instance showDestination :: Show Destination where show = genericShow
instance decodeDestination :: Decode Destination where decode = genericDecode options
instance encodeDestination :: Encode Destination where encode = genericEncode options

-- | Constructs Destination from required parameters
newDestination :: Destination
newDestination  = Destination { "BccAddresses": Nothing, "CcAddresses": Nothing, "ToAddresses": Nothing }

-- | Constructs Destination's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDestination' :: ( { "ToAddresses" :: Maybe (AddressList) , "CcAddresses" :: Maybe (AddressList) , "BccAddresses" :: Maybe (AddressList) } -> {"ToAddresses" :: Maybe (AddressList) , "CcAddresses" :: Maybe (AddressList) , "BccAddresses" :: Maybe (AddressList) } ) -> Destination
newDestination'  customize = (Destination <<< customize) { "BccAddresses": Nothing, "CcAddresses": Nothing, "ToAddresses": Nothing }



newtype DiagnosticCode = DiagnosticCode String
derive instance newtypeDiagnosticCode :: Newtype DiagnosticCode _
derive instance repGenericDiagnosticCode :: Generic DiagnosticCode _
instance showDiagnosticCode :: Show DiagnosticCode where show = genericShow
instance decodeDiagnosticCode :: Decode DiagnosticCode where decode = genericDecode options
instance encodeDiagnosticCode :: Encode DiagnosticCode where encode = genericEncode options



newtype DimensionName = DimensionName String
derive instance newtypeDimensionName :: Newtype DimensionName _
derive instance repGenericDimensionName :: Generic DimensionName _
instance showDimensionName :: Show DimensionName where show = genericShow
instance decodeDimensionName :: Decode DimensionName where decode = genericDecode options
instance encodeDimensionName :: Encode DimensionName where encode = genericEncode options



newtype DimensionValueSource = DimensionValueSource String
derive instance newtypeDimensionValueSource :: Newtype DimensionValueSource _
derive instance repGenericDimensionValueSource :: Generic DimensionValueSource _
instance showDimensionValueSource :: Show DimensionValueSource where show = genericShow
instance decodeDimensionValueSource :: Decode DimensionValueSource where decode = genericDecode options
instance encodeDimensionValueSource :: Encode DimensionValueSource where encode = genericEncode options



newtype DkimAttributes = DkimAttributes (StrMap.StrMap IdentityDkimAttributes)
derive instance newtypeDkimAttributes :: Newtype DkimAttributes _
derive instance repGenericDkimAttributes :: Generic DkimAttributes _
instance showDkimAttributes :: Show DkimAttributes where show = genericShow
instance decodeDkimAttributes :: Decode DkimAttributes where decode = genericDecode options
instance encodeDkimAttributes :: Encode DkimAttributes where encode = genericEncode options



newtype Domain = Domain String
derive instance newtypeDomain :: Newtype Domain _
derive instance repGenericDomain :: Generic Domain _
instance showDomain :: Show Domain where show = genericShow
instance decodeDomain :: Decode Domain where decode = genericDecode options
instance encodeDomain :: Encode Domain where encode = genericEncode options



newtype DsnAction = DsnAction String
derive instance newtypeDsnAction :: Newtype DsnAction _
derive instance repGenericDsnAction :: Generic DsnAction _
instance showDsnAction :: Show DsnAction where show = genericShow
instance decodeDsnAction :: Decode DsnAction where decode = genericDecode options
instance encodeDsnAction :: Encode DsnAction where encode = genericEncode options



newtype DsnStatus = DsnStatus String
derive instance newtypeDsnStatus :: Newtype DsnStatus _
derive instance repGenericDsnStatus :: Generic DsnStatus _
instance showDsnStatus :: Show DsnStatus where show = genericShow
instance decodeDsnStatus :: Decode DsnStatus where decode = genericDecode options
instance encodeDsnStatus :: Encode DsnStatus where encode = genericEncode options



newtype Enabled = Enabled Boolean
derive instance newtypeEnabled :: Newtype Enabled _
derive instance repGenericEnabled :: Generic Enabled _
instance showEnabled :: Show Enabled where show = genericShow
instance decodeEnabled :: Decode Enabled where decode = genericDecode options
instance encodeEnabled :: Encode Enabled where encode = genericEncode options



newtype Error = Error String
derive instance newtypeError :: Newtype Error _
derive instance repGenericError :: Generic Error _
instance showError :: Show Error where show = genericShow
instance decodeError :: Decode Error where decode = genericDecode options
instance encodeError :: Encode Error where encode = genericEncode options



-- | <p>Contains information about the event destination that the specified email sending events will be published to.</p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose or Amazon Simple Notification Service (Amazon SNS).</p> </note> <p>Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype EventDestination = EventDestination 
  { "Name" :: (EventDestinationName)
  , "Enabled" :: Maybe (Enabled)
  , "MatchingEventTypes" :: (EventTypes)
  , "KinesisFirehoseDestination" :: Maybe (KinesisFirehoseDestination)
  , "CloudWatchDestination" :: Maybe (CloudWatchDestination)
  , "SNSDestination" :: Maybe (SNSDestination)
  }
derive instance newtypeEventDestination :: Newtype EventDestination _
derive instance repGenericEventDestination :: Generic EventDestination _
instance showEventDestination :: Show EventDestination where show = genericShow
instance decodeEventDestination :: Decode EventDestination where decode = genericDecode options
instance encodeEventDestination :: Encode EventDestination where encode = genericEncode options

-- | Constructs EventDestination from required parameters
newEventDestination :: EventTypes -> EventDestinationName -> EventDestination
newEventDestination _MatchingEventTypes _Name = EventDestination { "MatchingEventTypes": _MatchingEventTypes, "Name": _Name, "CloudWatchDestination": Nothing, "Enabled": Nothing, "KinesisFirehoseDestination": Nothing, "SNSDestination": Nothing }

-- | Constructs EventDestination's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventDestination' :: EventTypes -> EventDestinationName -> ( { "Name" :: (EventDestinationName) , "Enabled" :: Maybe (Enabled) , "MatchingEventTypes" :: (EventTypes) , "KinesisFirehoseDestination" :: Maybe (KinesisFirehoseDestination) , "CloudWatchDestination" :: Maybe (CloudWatchDestination) , "SNSDestination" :: Maybe (SNSDestination) } -> {"Name" :: (EventDestinationName) , "Enabled" :: Maybe (Enabled) , "MatchingEventTypes" :: (EventTypes) , "KinesisFirehoseDestination" :: Maybe (KinesisFirehoseDestination) , "CloudWatchDestination" :: Maybe (CloudWatchDestination) , "SNSDestination" :: Maybe (SNSDestination) } ) -> EventDestination
newEventDestination' _MatchingEventTypes _Name customize = (EventDestination <<< customize) { "MatchingEventTypes": _MatchingEventTypes, "Name": _Name, "CloudWatchDestination": Nothing, "Enabled": Nothing, "KinesisFirehoseDestination": Nothing, "SNSDestination": Nothing }



-- | <p>Indicates that the event destination could not be created because of a naming conflict.</p>
newtype EventDestinationAlreadyExistsException = EventDestinationAlreadyExistsException 
  { "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  , "EventDestinationName" :: Maybe (EventDestinationName)
  }
derive instance newtypeEventDestinationAlreadyExistsException :: Newtype EventDestinationAlreadyExistsException _
derive instance repGenericEventDestinationAlreadyExistsException :: Generic EventDestinationAlreadyExistsException _
instance showEventDestinationAlreadyExistsException :: Show EventDestinationAlreadyExistsException where show = genericShow
instance decodeEventDestinationAlreadyExistsException :: Decode EventDestinationAlreadyExistsException where decode = genericDecode options
instance encodeEventDestinationAlreadyExistsException :: Encode EventDestinationAlreadyExistsException where encode = genericEncode options

-- | Constructs EventDestinationAlreadyExistsException from required parameters
newEventDestinationAlreadyExistsException :: EventDestinationAlreadyExistsException
newEventDestinationAlreadyExistsException  = EventDestinationAlreadyExistsException { "ConfigurationSetName": Nothing, "EventDestinationName": Nothing }

-- | Constructs EventDestinationAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventDestinationAlreadyExistsException' :: ( { "ConfigurationSetName" :: Maybe (ConfigurationSetName) , "EventDestinationName" :: Maybe (EventDestinationName) } -> {"ConfigurationSetName" :: Maybe (ConfigurationSetName) , "EventDestinationName" :: Maybe (EventDestinationName) } ) -> EventDestinationAlreadyExistsException
newEventDestinationAlreadyExistsException'  customize = (EventDestinationAlreadyExistsException <<< customize) { "ConfigurationSetName": Nothing, "EventDestinationName": Nothing }



-- | <p>Indicates that the event destination does not exist.</p>
newtype EventDestinationDoesNotExistException = EventDestinationDoesNotExistException 
  { "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  , "EventDestinationName" :: Maybe (EventDestinationName)
  }
derive instance newtypeEventDestinationDoesNotExistException :: Newtype EventDestinationDoesNotExistException _
derive instance repGenericEventDestinationDoesNotExistException :: Generic EventDestinationDoesNotExistException _
instance showEventDestinationDoesNotExistException :: Show EventDestinationDoesNotExistException where show = genericShow
instance decodeEventDestinationDoesNotExistException :: Decode EventDestinationDoesNotExistException where decode = genericDecode options
instance encodeEventDestinationDoesNotExistException :: Encode EventDestinationDoesNotExistException where encode = genericEncode options

-- | Constructs EventDestinationDoesNotExistException from required parameters
newEventDestinationDoesNotExistException :: EventDestinationDoesNotExistException
newEventDestinationDoesNotExistException  = EventDestinationDoesNotExistException { "ConfigurationSetName": Nothing, "EventDestinationName": Nothing }

-- | Constructs EventDestinationDoesNotExistException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventDestinationDoesNotExistException' :: ( { "ConfigurationSetName" :: Maybe (ConfigurationSetName) , "EventDestinationName" :: Maybe (EventDestinationName) } -> {"ConfigurationSetName" :: Maybe (ConfigurationSetName) , "EventDestinationName" :: Maybe (EventDestinationName) } ) -> EventDestinationDoesNotExistException
newEventDestinationDoesNotExistException'  customize = (EventDestinationDoesNotExistException <<< customize) { "ConfigurationSetName": Nothing, "EventDestinationName": Nothing }



newtype EventDestinationName = EventDestinationName String
derive instance newtypeEventDestinationName :: Newtype EventDestinationName _
derive instance repGenericEventDestinationName :: Generic EventDestinationName _
instance showEventDestinationName :: Show EventDestinationName where show = genericShow
instance decodeEventDestinationName :: Decode EventDestinationName where decode = genericDecode options
instance encodeEventDestinationName :: Encode EventDestinationName where encode = genericEncode options



newtype EventDestinations = EventDestinations (Array EventDestination)
derive instance newtypeEventDestinations :: Newtype EventDestinations _
derive instance repGenericEventDestinations :: Generic EventDestinations _
instance showEventDestinations :: Show EventDestinations where show = genericShow
instance decodeEventDestinations :: Decode EventDestinations where decode = genericDecode options
instance encodeEventDestinations :: Encode EventDestinations where encode = genericEncode options



newtype EventType = EventType String
derive instance newtypeEventType :: Newtype EventType _
derive instance repGenericEventType :: Generic EventType _
instance showEventType :: Show EventType where show = genericShow
instance decodeEventType :: Decode EventType where decode = genericDecode options
instance encodeEventType :: Encode EventType where encode = genericEncode options



newtype EventTypes = EventTypes (Array EventType)
derive instance newtypeEventTypes :: Newtype EventTypes _
derive instance repGenericEventTypes :: Generic EventTypes _
instance showEventTypes :: Show EventTypes where show = genericShow
instance decodeEventTypes :: Decode EventTypes where decode = genericDecode options
instance encodeEventTypes :: Encode EventTypes where encode = genericEncode options



newtype Explanation = Explanation String
derive instance newtypeExplanation :: Newtype Explanation _
derive instance repGenericExplanation :: Generic Explanation _
instance showExplanation :: Show Explanation where show = genericShow
instance decodeExplanation :: Decode Explanation where decode = genericDecode options
instance encodeExplanation :: Encode Explanation where encode = genericEncode options



-- | <p>Additional X-headers to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
newtype ExtensionField = ExtensionField 
  { "Name" :: (ExtensionFieldName)
  , "Value" :: (ExtensionFieldValue)
  }
derive instance newtypeExtensionField :: Newtype ExtensionField _
derive instance repGenericExtensionField :: Generic ExtensionField _
instance showExtensionField :: Show ExtensionField where show = genericShow
instance decodeExtensionField :: Decode ExtensionField where decode = genericDecode options
instance encodeExtensionField :: Encode ExtensionField where encode = genericEncode options

-- | Constructs ExtensionField from required parameters
newExtensionField :: ExtensionFieldName -> ExtensionFieldValue -> ExtensionField
newExtensionField _Name _Value = ExtensionField { "Name": _Name, "Value": _Value }

-- | Constructs ExtensionField's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExtensionField' :: ExtensionFieldName -> ExtensionFieldValue -> ( { "Name" :: (ExtensionFieldName) , "Value" :: (ExtensionFieldValue) } -> {"Name" :: (ExtensionFieldName) , "Value" :: (ExtensionFieldValue) } ) -> ExtensionField
newExtensionField' _Name _Value customize = (ExtensionField <<< customize) { "Name": _Name, "Value": _Value }



newtype ExtensionFieldList = ExtensionFieldList (Array ExtensionField)
derive instance newtypeExtensionFieldList :: Newtype ExtensionFieldList _
derive instance repGenericExtensionFieldList :: Generic ExtensionFieldList _
instance showExtensionFieldList :: Show ExtensionFieldList where show = genericShow
instance decodeExtensionFieldList :: Decode ExtensionFieldList where decode = genericDecode options
instance encodeExtensionFieldList :: Encode ExtensionFieldList where encode = genericEncode options



newtype ExtensionFieldName = ExtensionFieldName String
derive instance newtypeExtensionFieldName :: Newtype ExtensionFieldName _
derive instance repGenericExtensionFieldName :: Generic ExtensionFieldName _
instance showExtensionFieldName :: Show ExtensionFieldName where show = genericShow
instance decodeExtensionFieldName :: Decode ExtensionFieldName where decode = genericDecode options
instance encodeExtensionFieldName :: Encode ExtensionFieldName where encode = genericEncode options



newtype ExtensionFieldValue = ExtensionFieldValue String
derive instance newtypeExtensionFieldValue :: Newtype ExtensionFieldValue _
derive instance repGenericExtensionFieldValue :: Generic ExtensionFieldValue _
instance showExtensionFieldValue :: Show ExtensionFieldValue where show = genericShow
instance decodeExtensionFieldValue :: Decode ExtensionFieldValue where decode = genericDecode options
instance encodeExtensionFieldValue :: Encode ExtensionFieldValue where encode = genericEncode options



newtype FailureRedirectionURL = FailureRedirectionURL String
derive instance newtypeFailureRedirectionURL :: Newtype FailureRedirectionURL _
derive instance repGenericFailureRedirectionURL :: Generic FailureRedirectionURL _
instance showFailureRedirectionURL :: Show FailureRedirectionURL where show = genericShow
instance decodeFailureRedirectionURL :: Decode FailureRedirectionURL where decode = genericDecode options
instance encodeFailureRedirectionURL :: Encode FailureRedirectionURL where encode = genericEncode options



newtype FromAddress = FromAddress String
derive instance newtypeFromAddress :: Newtype FromAddress _
derive instance repGenericFromAddress :: Generic FromAddress _
instance showFromAddress :: Show FromAddress where show = genericShow
instance decodeFromAddress :: Decode FromAddress where decode = genericDecode options
instance encodeFromAddress :: Encode FromAddress where encode = genericEncode options



-- | <p>Indicates that the sender address specified for a custom verification email is not verified, and is therefore not eligible to send the custom verification email. </p>
newtype FromEmailAddressNotVerifiedException = FromEmailAddressNotVerifiedException 
  { "FromEmailAddress" :: Maybe (FromAddress)
  }
derive instance newtypeFromEmailAddressNotVerifiedException :: Newtype FromEmailAddressNotVerifiedException _
derive instance repGenericFromEmailAddressNotVerifiedException :: Generic FromEmailAddressNotVerifiedException _
instance showFromEmailAddressNotVerifiedException :: Show FromEmailAddressNotVerifiedException where show = genericShow
instance decodeFromEmailAddressNotVerifiedException :: Decode FromEmailAddressNotVerifiedException where decode = genericDecode options
instance encodeFromEmailAddressNotVerifiedException :: Encode FromEmailAddressNotVerifiedException where encode = genericEncode options

-- | Constructs FromEmailAddressNotVerifiedException from required parameters
newFromEmailAddressNotVerifiedException :: FromEmailAddressNotVerifiedException
newFromEmailAddressNotVerifiedException  = FromEmailAddressNotVerifiedException { "FromEmailAddress": Nothing }

-- | Constructs FromEmailAddressNotVerifiedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFromEmailAddressNotVerifiedException' :: ( { "FromEmailAddress" :: Maybe (FromAddress) } -> {"FromEmailAddress" :: Maybe (FromAddress) } ) -> FromEmailAddressNotVerifiedException
newFromEmailAddressNotVerifiedException'  customize = (FromEmailAddressNotVerifiedException <<< customize) { "FromEmailAddress": Nothing }



-- | <p>Represents a request to return the email sending status for your Amazon SES account.</p>
newtype GetAccountSendingEnabledResponse = GetAccountSendingEnabledResponse 
  { "Enabled" :: Maybe (Enabled)
  }
derive instance newtypeGetAccountSendingEnabledResponse :: Newtype GetAccountSendingEnabledResponse _
derive instance repGenericGetAccountSendingEnabledResponse :: Generic GetAccountSendingEnabledResponse _
instance showGetAccountSendingEnabledResponse :: Show GetAccountSendingEnabledResponse where show = genericShow
instance decodeGetAccountSendingEnabledResponse :: Decode GetAccountSendingEnabledResponse where decode = genericDecode options
instance encodeGetAccountSendingEnabledResponse :: Encode GetAccountSendingEnabledResponse where encode = genericEncode options

-- | Constructs GetAccountSendingEnabledResponse from required parameters
newGetAccountSendingEnabledResponse :: GetAccountSendingEnabledResponse
newGetAccountSendingEnabledResponse  = GetAccountSendingEnabledResponse { "Enabled": Nothing }

-- | Constructs GetAccountSendingEnabledResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountSendingEnabledResponse' :: ( { "Enabled" :: Maybe (Enabled) } -> {"Enabled" :: Maybe (Enabled) } ) -> GetAccountSendingEnabledResponse
newGetAccountSendingEnabledResponse'  customize = (GetAccountSendingEnabledResponse <<< customize) { "Enabled": Nothing }



-- | <p>Represents a request to retrieve an existing custom verification email template.</p>
newtype GetCustomVerificationEmailTemplateRequest = GetCustomVerificationEmailTemplateRequest 
  { "TemplateName" :: (TemplateName)
  }
derive instance newtypeGetCustomVerificationEmailTemplateRequest :: Newtype GetCustomVerificationEmailTemplateRequest _
derive instance repGenericGetCustomVerificationEmailTemplateRequest :: Generic GetCustomVerificationEmailTemplateRequest _
instance showGetCustomVerificationEmailTemplateRequest :: Show GetCustomVerificationEmailTemplateRequest where show = genericShow
instance decodeGetCustomVerificationEmailTemplateRequest :: Decode GetCustomVerificationEmailTemplateRequest where decode = genericDecode options
instance encodeGetCustomVerificationEmailTemplateRequest :: Encode GetCustomVerificationEmailTemplateRequest where encode = genericEncode options

-- | Constructs GetCustomVerificationEmailTemplateRequest from required parameters
newGetCustomVerificationEmailTemplateRequest :: TemplateName -> GetCustomVerificationEmailTemplateRequest
newGetCustomVerificationEmailTemplateRequest _TemplateName = GetCustomVerificationEmailTemplateRequest { "TemplateName": _TemplateName }

-- | Constructs GetCustomVerificationEmailTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCustomVerificationEmailTemplateRequest' :: TemplateName -> ( { "TemplateName" :: (TemplateName) } -> {"TemplateName" :: (TemplateName) } ) -> GetCustomVerificationEmailTemplateRequest
newGetCustomVerificationEmailTemplateRequest' _TemplateName customize = (GetCustomVerificationEmailTemplateRequest <<< customize) { "TemplateName": _TemplateName }



-- | <p>The content of the custom verification email template.</p>
newtype GetCustomVerificationEmailTemplateResponse = GetCustomVerificationEmailTemplateResponse 
  { "TemplateName" :: Maybe (TemplateName)
  , "FromEmailAddress" :: Maybe (FromAddress)
  , "TemplateSubject" :: Maybe (Subject)
  , "TemplateContent" :: Maybe (TemplateContent)
  , "SuccessRedirectionURL" :: Maybe (SuccessRedirectionURL)
  , "FailureRedirectionURL" :: Maybe (FailureRedirectionURL)
  }
derive instance newtypeGetCustomVerificationEmailTemplateResponse :: Newtype GetCustomVerificationEmailTemplateResponse _
derive instance repGenericGetCustomVerificationEmailTemplateResponse :: Generic GetCustomVerificationEmailTemplateResponse _
instance showGetCustomVerificationEmailTemplateResponse :: Show GetCustomVerificationEmailTemplateResponse where show = genericShow
instance decodeGetCustomVerificationEmailTemplateResponse :: Decode GetCustomVerificationEmailTemplateResponse where decode = genericDecode options
instance encodeGetCustomVerificationEmailTemplateResponse :: Encode GetCustomVerificationEmailTemplateResponse where encode = genericEncode options

-- | Constructs GetCustomVerificationEmailTemplateResponse from required parameters
newGetCustomVerificationEmailTemplateResponse :: GetCustomVerificationEmailTemplateResponse
newGetCustomVerificationEmailTemplateResponse  = GetCustomVerificationEmailTemplateResponse { "FailureRedirectionURL": Nothing, "FromEmailAddress": Nothing, "SuccessRedirectionURL": Nothing, "TemplateContent": Nothing, "TemplateName": Nothing, "TemplateSubject": Nothing }

-- | Constructs GetCustomVerificationEmailTemplateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCustomVerificationEmailTemplateResponse' :: ( { "TemplateName" :: Maybe (TemplateName) , "FromEmailAddress" :: Maybe (FromAddress) , "TemplateSubject" :: Maybe (Subject) , "TemplateContent" :: Maybe (TemplateContent) , "SuccessRedirectionURL" :: Maybe (SuccessRedirectionURL) , "FailureRedirectionURL" :: Maybe (FailureRedirectionURL) } -> {"TemplateName" :: Maybe (TemplateName) , "FromEmailAddress" :: Maybe (FromAddress) , "TemplateSubject" :: Maybe (Subject) , "TemplateContent" :: Maybe (TemplateContent) , "SuccessRedirectionURL" :: Maybe (SuccessRedirectionURL) , "FailureRedirectionURL" :: Maybe (FailureRedirectionURL) } ) -> GetCustomVerificationEmailTemplateResponse
newGetCustomVerificationEmailTemplateResponse'  customize = (GetCustomVerificationEmailTemplateResponse <<< customize) { "FailureRedirectionURL": Nothing, "FromEmailAddress": Nothing, "SuccessRedirectionURL": Nothing, "TemplateContent": Nothing, "TemplateName": Nothing, "TemplateSubject": Nothing }



-- | <p>Represents a request for the status of Amazon SES Easy DKIM signing for an identity. For domain identities, this request also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES successfully verified that these tokens were published. For more information about Easy DKIM, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>
newtype GetIdentityDkimAttributesRequest = GetIdentityDkimAttributesRequest 
  { "Identities" :: (IdentityList)
  }
derive instance newtypeGetIdentityDkimAttributesRequest :: Newtype GetIdentityDkimAttributesRequest _
derive instance repGenericGetIdentityDkimAttributesRequest :: Generic GetIdentityDkimAttributesRequest _
instance showGetIdentityDkimAttributesRequest :: Show GetIdentityDkimAttributesRequest where show = genericShow
instance decodeGetIdentityDkimAttributesRequest :: Decode GetIdentityDkimAttributesRequest where decode = genericDecode options
instance encodeGetIdentityDkimAttributesRequest :: Encode GetIdentityDkimAttributesRequest where encode = genericEncode options

-- | Constructs GetIdentityDkimAttributesRequest from required parameters
newGetIdentityDkimAttributesRequest :: IdentityList -> GetIdentityDkimAttributesRequest
newGetIdentityDkimAttributesRequest _Identities = GetIdentityDkimAttributesRequest { "Identities": _Identities }

-- | Constructs GetIdentityDkimAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityDkimAttributesRequest' :: IdentityList -> ( { "Identities" :: (IdentityList) } -> {"Identities" :: (IdentityList) } ) -> GetIdentityDkimAttributesRequest
newGetIdentityDkimAttributesRequest' _Identities customize = (GetIdentityDkimAttributesRequest <<< customize) { "Identities": _Identities }



-- | <p>Represents the status of Amazon SES Easy DKIM signing for an identity. For domain identities, this response also contains the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES successfully verified that these tokens were published.</p>
newtype GetIdentityDkimAttributesResponse = GetIdentityDkimAttributesResponse 
  { "DkimAttributes" :: (DkimAttributes)
  }
derive instance newtypeGetIdentityDkimAttributesResponse :: Newtype GetIdentityDkimAttributesResponse _
derive instance repGenericGetIdentityDkimAttributesResponse :: Generic GetIdentityDkimAttributesResponse _
instance showGetIdentityDkimAttributesResponse :: Show GetIdentityDkimAttributesResponse where show = genericShow
instance decodeGetIdentityDkimAttributesResponse :: Decode GetIdentityDkimAttributesResponse where decode = genericDecode options
instance encodeGetIdentityDkimAttributesResponse :: Encode GetIdentityDkimAttributesResponse where encode = genericEncode options

-- | Constructs GetIdentityDkimAttributesResponse from required parameters
newGetIdentityDkimAttributesResponse :: DkimAttributes -> GetIdentityDkimAttributesResponse
newGetIdentityDkimAttributesResponse _DkimAttributes = GetIdentityDkimAttributesResponse { "DkimAttributes": _DkimAttributes }

-- | Constructs GetIdentityDkimAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityDkimAttributesResponse' :: DkimAttributes -> ( { "DkimAttributes" :: (DkimAttributes) } -> {"DkimAttributes" :: (DkimAttributes) } ) -> GetIdentityDkimAttributesResponse
newGetIdentityDkimAttributesResponse' _DkimAttributes customize = (GetIdentityDkimAttributesResponse <<< customize) { "DkimAttributes": _DkimAttributes }



-- | <p>Represents a request to return the Amazon SES custom MAIL FROM attributes for a list of identities. For information about using a custom MAIL FROM domain, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>.</p>
newtype GetIdentityMailFromDomainAttributesRequest = GetIdentityMailFromDomainAttributesRequest 
  { "Identities" :: (IdentityList)
  }
derive instance newtypeGetIdentityMailFromDomainAttributesRequest :: Newtype GetIdentityMailFromDomainAttributesRequest _
derive instance repGenericGetIdentityMailFromDomainAttributesRequest :: Generic GetIdentityMailFromDomainAttributesRequest _
instance showGetIdentityMailFromDomainAttributesRequest :: Show GetIdentityMailFromDomainAttributesRequest where show = genericShow
instance decodeGetIdentityMailFromDomainAttributesRequest :: Decode GetIdentityMailFromDomainAttributesRequest where decode = genericDecode options
instance encodeGetIdentityMailFromDomainAttributesRequest :: Encode GetIdentityMailFromDomainAttributesRequest where encode = genericEncode options

-- | Constructs GetIdentityMailFromDomainAttributesRequest from required parameters
newGetIdentityMailFromDomainAttributesRequest :: IdentityList -> GetIdentityMailFromDomainAttributesRequest
newGetIdentityMailFromDomainAttributesRequest _Identities = GetIdentityMailFromDomainAttributesRequest { "Identities": _Identities }

-- | Constructs GetIdentityMailFromDomainAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityMailFromDomainAttributesRequest' :: IdentityList -> ( { "Identities" :: (IdentityList) } -> {"Identities" :: (IdentityList) } ) -> GetIdentityMailFromDomainAttributesRequest
newGetIdentityMailFromDomainAttributesRequest' _Identities customize = (GetIdentityMailFromDomainAttributesRequest <<< customize) { "Identities": _Identities }



-- | <p>Represents the custom MAIL FROM attributes for a list of identities.</p>
newtype GetIdentityMailFromDomainAttributesResponse = GetIdentityMailFromDomainAttributesResponse 
  { "MailFromDomainAttributes" :: (MailFromDomainAttributes)
  }
derive instance newtypeGetIdentityMailFromDomainAttributesResponse :: Newtype GetIdentityMailFromDomainAttributesResponse _
derive instance repGenericGetIdentityMailFromDomainAttributesResponse :: Generic GetIdentityMailFromDomainAttributesResponse _
instance showGetIdentityMailFromDomainAttributesResponse :: Show GetIdentityMailFromDomainAttributesResponse where show = genericShow
instance decodeGetIdentityMailFromDomainAttributesResponse :: Decode GetIdentityMailFromDomainAttributesResponse where decode = genericDecode options
instance encodeGetIdentityMailFromDomainAttributesResponse :: Encode GetIdentityMailFromDomainAttributesResponse where encode = genericEncode options

-- | Constructs GetIdentityMailFromDomainAttributesResponse from required parameters
newGetIdentityMailFromDomainAttributesResponse :: MailFromDomainAttributes -> GetIdentityMailFromDomainAttributesResponse
newGetIdentityMailFromDomainAttributesResponse _MailFromDomainAttributes = GetIdentityMailFromDomainAttributesResponse { "MailFromDomainAttributes": _MailFromDomainAttributes }

-- | Constructs GetIdentityMailFromDomainAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityMailFromDomainAttributesResponse' :: MailFromDomainAttributes -> ( { "MailFromDomainAttributes" :: (MailFromDomainAttributes) } -> {"MailFromDomainAttributes" :: (MailFromDomainAttributes) } ) -> GetIdentityMailFromDomainAttributesResponse
newGetIdentityMailFromDomainAttributesResponse' _MailFromDomainAttributes customize = (GetIdentityMailFromDomainAttributesResponse <<< customize) { "MailFromDomainAttributes": _MailFromDomainAttributes }



-- | <p>Represents a request to return the notification attributes for a list of identities you verified with Amazon SES. For information about Amazon SES notifications, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>
newtype GetIdentityNotificationAttributesRequest = GetIdentityNotificationAttributesRequest 
  { "Identities" :: (IdentityList)
  }
derive instance newtypeGetIdentityNotificationAttributesRequest :: Newtype GetIdentityNotificationAttributesRequest _
derive instance repGenericGetIdentityNotificationAttributesRequest :: Generic GetIdentityNotificationAttributesRequest _
instance showGetIdentityNotificationAttributesRequest :: Show GetIdentityNotificationAttributesRequest where show = genericShow
instance decodeGetIdentityNotificationAttributesRequest :: Decode GetIdentityNotificationAttributesRequest where decode = genericDecode options
instance encodeGetIdentityNotificationAttributesRequest :: Encode GetIdentityNotificationAttributesRequest where encode = genericEncode options

-- | Constructs GetIdentityNotificationAttributesRequest from required parameters
newGetIdentityNotificationAttributesRequest :: IdentityList -> GetIdentityNotificationAttributesRequest
newGetIdentityNotificationAttributesRequest _Identities = GetIdentityNotificationAttributesRequest { "Identities": _Identities }

-- | Constructs GetIdentityNotificationAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityNotificationAttributesRequest' :: IdentityList -> ( { "Identities" :: (IdentityList) } -> {"Identities" :: (IdentityList) } ) -> GetIdentityNotificationAttributesRequest
newGetIdentityNotificationAttributesRequest' _Identities customize = (GetIdentityNotificationAttributesRequest <<< customize) { "Identities": _Identities }



-- | <p>Represents the notification attributes for a list of identities.</p>
newtype GetIdentityNotificationAttributesResponse = GetIdentityNotificationAttributesResponse 
  { "NotificationAttributes" :: (NotificationAttributes)
  }
derive instance newtypeGetIdentityNotificationAttributesResponse :: Newtype GetIdentityNotificationAttributesResponse _
derive instance repGenericGetIdentityNotificationAttributesResponse :: Generic GetIdentityNotificationAttributesResponse _
instance showGetIdentityNotificationAttributesResponse :: Show GetIdentityNotificationAttributesResponse where show = genericShow
instance decodeGetIdentityNotificationAttributesResponse :: Decode GetIdentityNotificationAttributesResponse where decode = genericDecode options
instance encodeGetIdentityNotificationAttributesResponse :: Encode GetIdentityNotificationAttributesResponse where encode = genericEncode options

-- | Constructs GetIdentityNotificationAttributesResponse from required parameters
newGetIdentityNotificationAttributesResponse :: NotificationAttributes -> GetIdentityNotificationAttributesResponse
newGetIdentityNotificationAttributesResponse _NotificationAttributes = GetIdentityNotificationAttributesResponse { "NotificationAttributes": _NotificationAttributes }

-- | Constructs GetIdentityNotificationAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityNotificationAttributesResponse' :: NotificationAttributes -> ( { "NotificationAttributes" :: (NotificationAttributes) } -> {"NotificationAttributes" :: (NotificationAttributes) } ) -> GetIdentityNotificationAttributesResponse
newGetIdentityNotificationAttributesResponse' _NotificationAttributes customize = (GetIdentityNotificationAttributesResponse <<< customize) { "NotificationAttributes": _NotificationAttributes }



-- | <p>Represents a request to return the requested sending authorization policies for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
newtype GetIdentityPoliciesRequest = GetIdentityPoliciesRequest 
  { "Identity" :: (Identity)
  , "PolicyNames" :: (PolicyNameList)
  }
derive instance newtypeGetIdentityPoliciesRequest :: Newtype GetIdentityPoliciesRequest _
derive instance repGenericGetIdentityPoliciesRequest :: Generic GetIdentityPoliciesRequest _
instance showGetIdentityPoliciesRequest :: Show GetIdentityPoliciesRequest where show = genericShow
instance decodeGetIdentityPoliciesRequest :: Decode GetIdentityPoliciesRequest where decode = genericDecode options
instance encodeGetIdentityPoliciesRequest :: Encode GetIdentityPoliciesRequest where encode = genericEncode options

-- | Constructs GetIdentityPoliciesRequest from required parameters
newGetIdentityPoliciesRequest :: Identity -> PolicyNameList -> GetIdentityPoliciesRequest
newGetIdentityPoliciesRequest _Identity _PolicyNames = GetIdentityPoliciesRequest { "Identity": _Identity, "PolicyNames": _PolicyNames }

-- | Constructs GetIdentityPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityPoliciesRequest' :: Identity -> PolicyNameList -> ( { "Identity" :: (Identity) , "PolicyNames" :: (PolicyNameList) } -> {"Identity" :: (Identity) , "PolicyNames" :: (PolicyNameList) } ) -> GetIdentityPoliciesRequest
newGetIdentityPoliciesRequest' _Identity _PolicyNames customize = (GetIdentityPoliciesRequest <<< customize) { "Identity": _Identity, "PolicyNames": _PolicyNames }



-- | <p>Represents the requested sending authorization policies.</p>
newtype GetIdentityPoliciesResponse = GetIdentityPoliciesResponse 
  { "Policies" :: (PolicyMap)
  }
derive instance newtypeGetIdentityPoliciesResponse :: Newtype GetIdentityPoliciesResponse _
derive instance repGenericGetIdentityPoliciesResponse :: Generic GetIdentityPoliciesResponse _
instance showGetIdentityPoliciesResponse :: Show GetIdentityPoliciesResponse where show = genericShow
instance decodeGetIdentityPoliciesResponse :: Decode GetIdentityPoliciesResponse where decode = genericDecode options
instance encodeGetIdentityPoliciesResponse :: Encode GetIdentityPoliciesResponse where encode = genericEncode options

-- | Constructs GetIdentityPoliciesResponse from required parameters
newGetIdentityPoliciesResponse :: PolicyMap -> GetIdentityPoliciesResponse
newGetIdentityPoliciesResponse _Policies = GetIdentityPoliciesResponse { "Policies": _Policies }

-- | Constructs GetIdentityPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityPoliciesResponse' :: PolicyMap -> ( { "Policies" :: (PolicyMap) } -> {"Policies" :: (PolicyMap) } ) -> GetIdentityPoliciesResponse
newGetIdentityPoliciesResponse' _Policies customize = (GetIdentityPoliciesResponse <<< customize) { "Policies": _Policies }



-- | <p>Represents a request to return the Amazon SES verification status of a list of identities. For domain identities, this request also returns the verification token. For information about verifying identities with Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer Guide</a>.</p>
newtype GetIdentityVerificationAttributesRequest = GetIdentityVerificationAttributesRequest 
  { "Identities" :: (IdentityList)
  }
derive instance newtypeGetIdentityVerificationAttributesRequest :: Newtype GetIdentityVerificationAttributesRequest _
derive instance repGenericGetIdentityVerificationAttributesRequest :: Generic GetIdentityVerificationAttributesRequest _
instance showGetIdentityVerificationAttributesRequest :: Show GetIdentityVerificationAttributesRequest where show = genericShow
instance decodeGetIdentityVerificationAttributesRequest :: Decode GetIdentityVerificationAttributesRequest where decode = genericDecode options
instance encodeGetIdentityVerificationAttributesRequest :: Encode GetIdentityVerificationAttributesRequest where encode = genericEncode options

-- | Constructs GetIdentityVerificationAttributesRequest from required parameters
newGetIdentityVerificationAttributesRequest :: IdentityList -> GetIdentityVerificationAttributesRequest
newGetIdentityVerificationAttributesRequest _Identities = GetIdentityVerificationAttributesRequest { "Identities": _Identities }

-- | Constructs GetIdentityVerificationAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityVerificationAttributesRequest' :: IdentityList -> ( { "Identities" :: (IdentityList) } -> {"Identities" :: (IdentityList) } ) -> GetIdentityVerificationAttributesRequest
newGetIdentityVerificationAttributesRequest' _Identities customize = (GetIdentityVerificationAttributesRequest <<< customize) { "Identities": _Identities }



-- | <p>The Amazon SES verification status of a list of identities. For domain identities, this response also contains the verification token.</p>
newtype GetIdentityVerificationAttributesResponse = GetIdentityVerificationAttributesResponse 
  { "VerificationAttributes" :: (VerificationAttributes)
  }
derive instance newtypeGetIdentityVerificationAttributesResponse :: Newtype GetIdentityVerificationAttributesResponse _
derive instance repGenericGetIdentityVerificationAttributesResponse :: Generic GetIdentityVerificationAttributesResponse _
instance showGetIdentityVerificationAttributesResponse :: Show GetIdentityVerificationAttributesResponse where show = genericShow
instance decodeGetIdentityVerificationAttributesResponse :: Decode GetIdentityVerificationAttributesResponse where decode = genericDecode options
instance encodeGetIdentityVerificationAttributesResponse :: Encode GetIdentityVerificationAttributesResponse where encode = genericEncode options

-- | Constructs GetIdentityVerificationAttributesResponse from required parameters
newGetIdentityVerificationAttributesResponse :: VerificationAttributes -> GetIdentityVerificationAttributesResponse
newGetIdentityVerificationAttributesResponse _VerificationAttributes = GetIdentityVerificationAttributesResponse { "VerificationAttributes": _VerificationAttributes }

-- | Constructs GetIdentityVerificationAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityVerificationAttributesResponse' :: VerificationAttributes -> ( { "VerificationAttributes" :: (VerificationAttributes) } -> {"VerificationAttributes" :: (VerificationAttributes) } ) -> GetIdentityVerificationAttributesResponse
newGetIdentityVerificationAttributesResponse' _VerificationAttributes customize = (GetIdentityVerificationAttributesResponse <<< customize) { "VerificationAttributes": _VerificationAttributes }



-- | <p>Represents your Amazon SES daily sending quota, maximum send rate, and the number of emails you have sent in the last 24 hours.</p>
newtype GetSendQuotaResponse = GetSendQuotaResponse 
  { "Max24HourSend" :: Maybe (Max24HourSend)
  , "MaxSendRate" :: Maybe (MaxSendRate)
  , "SentLast24Hours" :: Maybe (SentLast24Hours)
  }
derive instance newtypeGetSendQuotaResponse :: Newtype GetSendQuotaResponse _
derive instance repGenericGetSendQuotaResponse :: Generic GetSendQuotaResponse _
instance showGetSendQuotaResponse :: Show GetSendQuotaResponse where show = genericShow
instance decodeGetSendQuotaResponse :: Decode GetSendQuotaResponse where decode = genericDecode options
instance encodeGetSendQuotaResponse :: Encode GetSendQuotaResponse where encode = genericEncode options

-- | Constructs GetSendQuotaResponse from required parameters
newGetSendQuotaResponse :: GetSendQuotaResponse
newGetSendQuotaResponse  = GetSendQuotaResponse { "Max24HourSend": Nothing, "MaxSendRate": Nothing, "SentLast24Hours": Nothing }

-- | Constructs GetSendQuotaResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSendQuotaResponse' :: ( { "Max24HourSend" :: Maybe (Max24HourSend) , "MaxSendRate" :: Maybe (MaxSendRate) , "SentLast24Hours" :: Maybe (SentLast24Hours) } -> {"Max24HourSend" :: Maybe (Max24HourSend) , "MaxSendRate" :: Maybe (MaxSendRate) , "SentLast24Hours" :: Maybe (SentLast24Hours) } ) -> GetSendQuotaResponse
newGetSendQuotaResponse'  customize = (GetSendQuotaResponse <<< customize) { "Max24HourSend": Nothing, "MaxSendRate": Nothing, "SentLast24Hours": Nothing }



-- | <p>Represents a list of data points. This list contains aggregated data from the previous two weeks of your sending activity with Amazon SES.</p>
newtype GetSendStatisticsResponse = GetSendStatisticsResponse 
  { "SendDataPoints" :: Maybe (SendDataPointList)
  }
derive instance newtypeGetSendStatisticsResponse :: Newtype GetSendStatisticsResponse _
derive instance repGenericGetSendStatisticsResponse :: Generic GetSendStatisticsResponse _
instance showGetSendStatisticsResponse :: Show GetSendStatisticsResponse where show = genericShow
instance decodeGetSendStatisticsResponse :: Decode GetSendStatisticsResponse where decode = genericDecode options
instance encodeGetSendStatisticsResponse :: Encode GetSendStatisticsResponse where encode = genericEncode options

-- | Constructs GetSendStatisticsResponse from required parameters
newGetSendStatisticsResponse :: GetSendStatisticsResponse
newGetSendStatisticsResponse  = GetSendStatisticsResponse { "SendDataPoints": Nothing }

-- | Constructs GetSendStatisticsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSendStatisticsResponse' :: ( { "SendDataPoints" :: Maybe (SendDataPointList) } -> {"SendDataPoints" :: Maybe (SendDataPointList) } ) -> GetSendStatisticsResponse
newGetSendStatisticsResponse'  customize = (GetSendStatisticsResponse <<< customize) { "SendDataPoints": Nothing }



newtype GetTemplateRequest = GetTemplateRequest 
  { "TemplateName" :: (TemplateName)
  }
derive instance newtypeGetTemplateRequest :: Newtype GetTemplateRequest _
derive instance repGenericGetTemplateRequest :: Generic GetTemplateRequest _
instance showGetTemplateRequest :: Show GetTemplateRequest where show = genericShow
instance decodeGetTemplateRequest :: Decode GetTemplateRequest where decode = genericDecode options
instance encodeGetTemplateRequest :: Encode GetTemplateRequest where encode = genericEncode options

-- | Constructs GetTemplateRequest from required parameters
newGetTemplateRequest :: TemplateName -> GetTemplateRequest
newGetTemplateRequest _TemplateName = GetTemplateRequest { "TemplateName": _TemplateName }

-- | Constructs GetTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTemplateRequest' :: TemplateName -> ( { "TemplateName" :: (TemplateName) } -> {"TemplateName" :: (TemplateName) } ) -> GetTemplateRequest
newGetTemplateRequest' _TemplateName customize = (GetTemplateRequest <<< customize) { "TemplateName": _TemplateName }



newtype GetTemplateResponse = GetTemplateResponse 
  { "Template" :: Maybe (Template)
  }
derive instance newtypeGetTemplateResponse :: Newtype GetTemplateResponse _
derive instance repGenericGetTemplateResponse :: Generic GetTemplateResponse _
instance showGetTemplateResponse :: Show GetTemplateResponse where show = genericShow
instance decodeGetTemplateResponse :: Decode GetTemplateResponse where decode = genericDecode options
instance encodeGetTemplateResponse :: Encode GetTemplateResponse where encode = genericEncode options

-- | Constructs GetTemplateResponse from required parameters
newGetTemplateResponse :: GetTemplateResponse
newGetTemplateResponse  = GetTemplateResponse { "Template": Nothing }

-- | Constructs GetTemplateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTemplateResponse' :: ( { "Template" :: Maybe (Template) } -> {"Template" :: Maybe (Template) } ) -> GetTemplateResponse
newGetTemplateResponse'  customize = (GetTemplateResponse <<< customize) { "Template": Nothing }



newtype HeaderName = HeaderName String
derive instance newtypeHeaderName :: Newtype HeaderName _
derive instance repGenericHeaderName :: Generic HeaderName _
instance showHeaderName :: Show HeaderName where show = genericShow
instance decodeHeaderName :: Decode HeaderName where decode = genericDecode options
instance encodeHeaderName :: Encode HeaderName where encode = genericEncode options



newtype HeaderValue = HeaderValue String
derive instance newtypeHeaderValue :: Newtype HeaderValue _
derive instance repGenericHeaderValue :: Generic HeaderValue _
instance showHeaderValue :: Show HeaderValue where show = genericShow
instance decodeHeaderValue :: Decode HeaderValue where decode = genericDecode options
instance encodeHeaderValue :: Encode HeaderValue where encode = genericEncode options



newtype HtmlPart = HtmlPart String
derive instance newtypeHtmlPart :: Newtype HtmlPart _
derive instance repGenericHtmlPart :: Generic HtmlPart _
instance showHtmlPart :: Show HtmlPart where show = genericShow
instance decodeHtmlPart :: Decode HtmlPart where decode = genericDecode options
instance encodeHtmlPart :: Encode HtmlPart where encode = genericEncode options



newtype Identity = Identity String
derive instance newtypeIdentity :: Newtype Identity _
derive instance repGenericIdentity :: Generic Identity _
instance showIdentity :: Show Identity where show = genericShow
instance decodeIdentity :: Decode Identity where decode = genericDecode options
instance encodeIdentity :: Encode Identity where encode = genericEncode options



-- | <p>Represents the DKIM attributes of a verified email address or a domain.</p>
newtype IdentityDkimAttributes = IdentityDkimAttributes 
  { "DkimEnabled" :: (Enabled)
  , "DkimVerificationStatus" :: (VerificationStatus)
  , "DkimTokens" :: Maybe (VerificationTokenList)
  }
derive instance newtypeIdentityDkimAttributes :: Newtype IdentityDkimAttributes _
derive instance repGenericIdentityDkimAttributes :: Generic IdentityDkimAttributes _
instance showIdentityDkimAttributes :: Show IdentityDkimAttributes where show = genericShow
instance decodeIdentityDkimAttributes :: Decode IdentityDkimAttributes where decode = genericDecode options
instance encodeIdentityDkimAttributes :: Encode IdentityDkimAttributes where encode = genericEncode options

-- | Constructs IdentityDkimAttributes from required parameters
newIdentityDkimAttributes :: Enabled -> VerificationStatus -> IdentityDkimAttributes
newIdentityDkimAttributes _DkimEnabled _DkimVerificationStatus = IdentityDkimAttributes { "DkimEnabled": _DkimEnabled, "DkimVerificationStatus": _DkimVerificationStatus, "DkimTokens": Nothing }

-- | Constructs IdentityDkimAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdentityDkimAttributes' :: Enabled -> VerificationStatus -> ( { "DkimEnabled" :: (Enabled) , "DkimVerificationStatus" :: (VerificationStatus) , "DkimTokens" :: Maybe (VerificationTokenList) } -> {"DkimEnabled" :: (Enabled) , "DkimVerificationStatus" :: (VerificationStatus) , "DkimTokens" :: Maybe (VerificationTokenList) } ) -> IdentityDkimAttributes
newIdentityDkimAttributes' _DkimEnabled _DkimVerificationStatus customize = (IdentityDkimAttributes <<< customize) { "DkimEnabled": _DkimEnabled, "DkimVerificationStatus": _DkimVerificationStatus, "DkimTokens": Nothing }



newtype IdentityList = IdentityList (Array Identity)
derive instance newtypeIdentityList :: Newtype IdentityList _
derive instance repGenericIdentityList :: Generic IdentityList _
instance showIdentityList :: Show IdentityList where show = genericShow
instance decodeIdentityList :: Decode IdentityList where decode = genericDecode options
instance encodeIdentityList :: Encode IdentityList where encode = genericEncode options



-- | <p>Represents the custom MAIL FROM domain attributes of a verified identity (email address or domain).</p>
newtype IdentityMailFromDomainAttributes = IdentityMailFromDomainAttributes 
  { "MailFromDomain" :: (MailFromDomainName)
  , "MailFromDomainStatus" :: (CustomMailFromStatus)
  , "BehaviorOnMXFailure" :: (BehaviorOnMXFailure)
  }
derive instance newtypeIdentityMailFromDomainAttributes :: Newtype IdentityMailFromDomainAttributes _
derive instance repGenericIdentityMailFromDomainAttributes :: Generic IdentityMailFromDomainAttributes _
instance showIdentityMailFromDomainAttributes :: Show IdentityMailFromDomainAttributes where show = genericShow
instance decodeIdentityMailFromDomainAttributes :: Decode IdentityMailFromDomainAttributes where decode = genericDecode options
instance encodeIdentityMailFromDomainAttributes :: Encode IdentityMailFromDomainAttributes where encode = genericEncode options

-- | Constructs IdentityMailFromDomainAttributes from required parameters
newIdentityMailFromDomainAttributes :: BehaviorOnMXFailure -> MailFromDomainName -> CustomMailFromStatus -> IdentityMailFromDomainAttributes
newIdentityMailFromDomainAttributes _BehaviorOnMXFailure _MailFromDomain _MailFromDomainStatus = IdentityMailFromDomainAttributes { "BehaviorOnMXFailure": _BehaviorOnMXFailure, "MailFromDomain": _MailFromDomain, "MailFromDomainStatus": _MailFromDomainStatus }

-- | Constructs IdentityMailFromDomainAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdentityMailFromDomainAttributes' :: BehaviorOnMXFailure -> MailFromDomainName -> CustomMailFromStatus -> ( { "MailFromDomain" :: (MailFromDomainName) , "MailFromDomainStatus" :: (CustomMailFromStatus) , "BehaviorOnMXFailure" :: (BehaviorOnMXFailure) } -> {"MailFromDomain" :: (MailFromDomainName) , "MailFromDomainStatus" :: (CustomMailFromStatus) , "BehaviorOnMXFailure" :: (BehaviorOnMXFailure) } ) -> IdentityMailFromDomainAttributes
newIdentityMailFromDomainAttributes' _BehaviorOnMXFailure _MailFromDomain _MailFromDomainStatus customize = (IdentityMailFromDomainAttributes <<< customize) { "BehaviorOnMXFailure": _BehaviorOnMXFailure, "MailFromDomain": _MailFromDomain, "MailFromDomainStatus": _MailFromDomainStatus }



-- | <p>Represents the notification attributes of an identity, including whether an identity has Amazon Simple Notification Service (Amazon SNS) topics set for bounce, complaint, and/or delivery notifications, and whether feedback forwarding is enabled for bounce and complaint notifications.</p>
newtype IdentityNotificationAttributes = IdentityNotificationAttributes 
  { "BounceTopic" :: (NotificationTopic)
  , "ComplaintTopic" :: (NotificationTopic)
  , "DeliveryTopic" :: (NotificationTopic)
  , "ForwardingEnabled" :: (Enabled)
  , "HeadersInBounceNotificationsEnabled" :: Maybe (Enabled)
  , "HeadersInComplaintNotificationsEnabled" :: Maybe (Enabled)
  , "HeadersInDeliveryNotificationsEnabled" :: Maybe (Enabled)
  }
derive instance newtypeIdentityNotificationAttributes :: Newtype IdentityNotificationAttributes _
derive instance repGenericIdentityNotificationAttributes :: Generic IdentityNotificationAttributes _
instance showIdentityNotificationAttributes :: Show IdentityNotificationAttributes where show = genericShow
instance decodeIdentityNotificationAttributes :: Decode IdentityNotificationAttributes where decode = genericDecode options
instance encodeIdentityNotificationAttributes :: Encode IdentityNotificationAttributes where encode = genericEncode options

-- | Constructs IdentityNotificationAttributes from required parameters
newIdentityNotificationAttributes :: NotificationTopic -> NotificationTopic -> NotificationTopic -> Enabled -> IdentityNotificationAttributes
newIdentityNotificationAttributes _BounceTopic _ComplaintTopic _DeliveryTopic _ForwardingEnabled = IdentityNotificationAttributes { "BounceTopic": _BounceTopic, "ComplaintTopic": _ComplaintTopic, "DeliveryTopic": _DeliveryTopic, "ForwardingEnabled": _ForwardingEnabled, "HeadersInBounceNotificationsEnabled": Nothing, "HeadersInComplaintNotificationsEnabled": Nothing, "HeadersInDeliveryNotificationsEnabled": Nothing }

-- | Constructs IdentityNotificationAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdentityNotificationAttributes' :: NotificationTopic -> NotificationTopic -> NotificationTopic -> Enabled -> ( { "BounceTopic" :: (NotificationTopic) , "ComplaintTopic" :: (NotificationTopic) , "DeliveryTopic" :: (NotificationTopic) , "ForwardingEnabled" :: (Enabled) , "HeadersInBounceNotificationsEnabled" :: Maybe (Enabled) , "HeadersInComplaintNotificationsEnabled" :: Maybe (Enabled) , "HeadersInDeliveryNotificationsEnabled" :: Maybe (Enabled) } -> {"BounceTopic" :: (NotificationTopic) , "ComplaintTopic" :: (NotificationTopic) , "DeliveryTopic" :: (NotificationTopic) , "ForwardingEnabled" :: (Enabled) , "HeadersInBounceNotificationsEnabled" :: Maybe (Enabled) , "HeadersInComplaintNotificationsEnabled" :: Maybe (Enabled) , "HeadersInDeliveryNotificationsEnabled" :: Maybe (Enabled) } ) -> IdentityNotificationAttributes
newIdentityNotificationAttributes' _BounceTopic _ComplaintTopic _DeliveryTopic _ForwardingEnabled customize = (IdentityNotificationAttributes <<< customize) { "BounceTopic": _BounceTopic, "ComplaintTopic": _ComplaintTopic, "DeliveryTopic": _DeliveryTopic, "ForwardingEnabled": _ForwardingEnabled, "HeadersInBounceNotificationsEnabled": Nothing, "HeadersInComplaintNotificationsEnabled": Nothing, "HeadersInDeliveryNotificationsEnabled": Nothing }



newtype IdentityType = IdentityType String
derive instance newtypeIdentityType :: Newtype IdentityType _
derive instance repGenericIdentityType :: Generic IdentityType _
instance showIdentityType :: Show IdentityType where show = genericShow
instance decodeIdentityType :: Decode IdentityType where decode = genericDecode options
instance encodeIdentityType :: Encode IdentityType where encode = genericEncode options



-- | <p>Represents the verification attributes of a single identity.</p>
newtype IdentityVerificationAttributes = IdentityVerificationAttributes 
  { "VerificationStatus" :: (VerificationStatus)
  , "VerificationToken" :: Maybe (VerificationToken)
  }
derive instance newtypeIdentityVerificationAttributes :: Newtype IdentityVerificationAttributes _
derive instance repGenericIdentityVerificationAttributes :: Generic IdentityVerificationAttributes _
instance showIdentityVerificationAttributes :: Show IdentityVerificationAttributes where show = genericShow
instance decodeIdentityVerificationAttributes :: Decode IdentityVerificationAttributes where decode = genericDecode options
instance encodeIdentityVerificationAttributes :: Encode IdentityVerificationAttributes where encode = genericEncode options

-- | Constructs IdentityVerificationAttributes from required parameters
newIdentityVerificationAttributes :: VerificationStatus -> IdentityVerificationAttributes
newIdentityVerificationAttributes _VerificationStatus = IdentityVerificationAttributes { "VerificationStatus": _VerificationStatus, "VerificationToken": Nothing }

-- | Constructs IdentityVerificationAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdentityVerificationAttributes' :: VerificationStatus -> ( { "VerificationStatus" :: (VerificationStatus) , "VerificationToken" :: Maybe (VerificationToken) } -> {"VerificationStatus" :: (VerificationStatus) , "VerificationToken" :: Maybe (VerificationToken) } ) -> IdentityVerificationAttributes
newIdentityVerificationAttributes' _VerificationStatus customize = (IdentityVerificationAttributes <<< customize) { "VerificationStatus": _VerificationStatus, "VerificationToken": Nothing }



-- | <p>Indicates that the Amazon CloudWatch destination is invalid. See the error message for details.</p>
newtype InvalidCloudWatchDestinationException = InvalidCloudWatchDestinationException 
  { "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  , "EventDestinationName" :: Maybe (EventDestinationName)
  }
derive instance newtypeInvalidCloudWatchDestinationException :: Newtype InvalidCloudWatchDestinationException _
derive instance repGenericInvalidCloudWatchDestinationException :: Generic InvalidCloudWatchDestinationException _
instance showInvalidCloudWatchDestinationException :: Show InvalidCloudWatchDestinationException where show = genericShow
instance decodeInvalidCloudWatchDestinationException :: Decode InvalidCloudWatchDestinationException where decode = genericDecode options
instance encodeInvalidCloudWatchDestinationException :: Encode InvalidCloudWatchDestinationException where encode = genericEncode options

-- | Constructs InvalidCloudWatchDestinationException from required parameters
newInvalidCloudWatchDestinationException :: InvalidCloudWatchDestinationException
newInvalidCloudWatchDestinationException  = InvalidCloudWatchDestinationException { "ConfigurationSetName": Nothing, "EventDestinationName": Nothing }

-- | Constructs InvalidCloudWatchDestinationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidCloudWatchDestinationException' :: ( { "ConfigurationSetName" :: Maybe (ConfigurationSetName) , "EventDestinationName" :: Maybe (EventDestinationName) } -> {"ConfigurationSetName" :: Maybe (ConfigurationSetName) , "EventDestinationName" :: Maybe (EventDestinationName) } ) -> InvalidCloudWatchDestinationException
newInvalidCloudWatchDestinationException'  customize = (InvalidCloudWatchDestinationException <<< customize) { "ConfigurationSetName": Nothing, "EventDestinationName": Nothing }



-- | <p>Indicates that the configuration set is invalid. See the error message for details.</p>
newtype InvalidConfigurationSetException = InvalidConfigurationSetException Types.NoArguments
derive instance newtypeInvalidConfigurationSetException :: Newtype InvalidConfigurationSetException _
derive instance repGenericInvalidConfigurationSetException :: Generic InvalidConfigurationSetException _
instance showInvalidConfigurationSetException :: Show InvalidConfigurationSetException where show = genericShow
instance decodeInvalidConfigurationSetException :: Decode InvalidConfigurationSetException where decode = genericDecode options
instance encodeInvalidConfigurationSetException :: Encode InvalidConfigurationSetException where encode = genericEncode options



-- | <p>Indicates that the Amazon Kinesis Firehose destination is invalid. See the error message for details.</p>
newtype InvalidFirehoseDestinationException = InvalidFirehoseDestinationException 
  { "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  , "EventDestinationName" :: Maybe (EventDestinationName)
  }
derive instance newtypeInvalidFirehoseDestinationException :: Newtype InvalidFirehoseDestinationException _
derive instance repGenericInvalidFirehoseDestinationException :: Generic InvalidFirehoseDestinationException _
instance showInvalidFirehoseDestinationException :: Show InvalidFirehoseDestinationException where show = genericShow
instance decodeInvalidFirehoseDestinationException :: Decode InvalidFirehoseDestinationException where decode = genericDecode options
instance encodeInvalidFirehoseDestinationException :: Encode InvalidFirehoseDestinationException where encode = genericEncode options

-- | Constructs InvalidFirehoseDestinationException from required parameters
newInvalidFirehoseDestinationException :: InvalidFirehoseDestinationException
newInvalidFirehoseDestinationException  = InvalidFirehoseDestinationException { "ConfigurationSetName": Nothing, "EventDestinationName": Nothing }

-- | Constructs InvalidFirehoseDestinationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidFirehoseDestinationException' :: ( { "ConfigurationSetName" :: Maybe (ConfigurationSetName) , "EventDestinationName" :: Maybe (EventDestinationName) } -> {"ConfigurationSetName" :: Maybe (ConfigurationSetName) , "EventDestinationName" :: Maybe (EventDestinationName) } ) -> InvalidFirehoseDestinationException
newInvalidFirehoseDestinationException'  customize = (InvalidFirehoseDestinationException <<< customize) { "ConfigurationSetName": Nothing, "EventDestinationName": Nothing }



-- | <p>Indicates that the provided AWS Lambda function is invalid, or that Amazon SES could not execute the provided function, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>
newtype InvalidLambdaFunctionException = InvalidLambdaFunctionException 
  { "FunctionArn" :: Maybe (AmazonResourceName)
  }
derive instance newtypeInvalidLambdaFunctionException :: Newtype InvalidLambdaFunctionException _
derive instance repGenericInvalidLambdaFunctionException :: Generic InvalidLambdaFunctionException _
instance showInvalidLambdaFunctionException :: Show InvalidLambdaFunctionException where show = genericShow
instance decodeInvalidLambdaFunctionException :: Decode InvalidLambdaFunctionException where decode = genericDecode options
instance encodeInvalidLambdaFunctionException :: Encode InvalidLambdaFunctionException where encode = genericEncode options

-- | Constructs InvalidLambdaFunctionException from required parameters
newInvalidLambdaFunctionException :: InvalidLambdaFunctionException
newInvalidLambdaFunctionException  = InvalidLambdaFunctionException { "FunctionArn": Nothing }

-- | Constructs InvalidLambdaFunctionException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidLambdaFunctionException' :: ( { "FunctionArn" :: Maybe (AmazonResourceName) } -> {"FunctionArn" :: Maybe (AmazonResourceName) } ) -> InvalidLambdaFunctionException
newInvalidLambdaFunctionException'  customize = (InvalidLambdaFunctionException <<< customize) { "FunctionArn": Nothing }



-- | <p>Indicates that the provided policy is invalid. Check the error stack for more information about what caused the error.</p>
newtype InvalidPolicyException = InvalidPolicyException Types.NoArguments
derive instance newtypeInvalidPolicyException :: Newtype InvalidPolicyException _
derive instance repGenericInvalidPolicyException :: Generic InvalidPolicyException _
instance showInvalidPolicyException :: Show InvalidPolicyException where show = genericShow
instance decodeInvalidPolicyException :: Decode InvalidPolicyException where decode = genericDecode options
instance encodeInvalidPolicyException :: Encode InvalidPolicyException where encode = genericEncode options



-- | <p>Indicates that one or more of the replacement values you provided is invalid. This error may occur when the TemplateData object contains invalid JSON.</p>
newtype InvalidRenderingParameterException = InvalidRenderingParameterException 
  { "TemplateName" :: Maybe (TemplateName)
  }
derive instance newtypeInvalidRenderingParameterException :: Newtype InvalidRenderingParameterException _
derive instance repGenericInvalidRenderingParameterException :: Generic InvalidRenderingParameterException _
instance showInvalidRenderingParameterException :: Show InvalidRenderingParameterException where show = genericShow
instance decodeInvalidRenderingParameterException :: Decode InvalidRenderingParameterException where decode = genericDecode options
instance encodeInvalidRenderingParameterException :: Encode InvalidRenderingParameterException where encode = genericEncode options

-- | Constructs InvalidRenderingParameterException from required parameters
newInvalidRenderingParameterException :: InvalidRenderingParameterException
newInvalidRenderingParameterException  = InvalidRenderingParameterException { "TemplateName": Nothing }

-- | Constructs InvalidRenderingParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRenderingParameterException' :: ( { "TemplateName" :: Maybe (TemplateName) } -> {"TemplateName" :: Maybe (TemplateName) } ) -> InvalidRenderingParameterException
newInvalidRenderingParameterException'  customize = (InvalidRenderingParameterException <<< customize) { "TemplateName": Nothing }



-- | <p>Indicates that the provided Amazon S3 bucket or AWS KMS encryption key is invalid, or that Amazon SES could not publish to the bucket, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>
newtype InvalidS3ConfigurationException = InvalidS3ConfigurationException 
  { "Bucket" :: Maybe (S3BucketName)
  }
derive instance newtypeInvalidS3ConfigurationException :: Newtype InvalidS3ConfigurationException _
derive instance repGenericInvalidS3ConfigurationException :: Generic InvalidS3ConfigurationException _
instance showInvalidS3ConfigurationException :: Show InvalidS3ConfigurationException where show = genericShow
instance decodeInvalidS3ConfigurationException :: Decode InvalidS3ConfigurationException where decode = genericDecode options
instance encodeInvalidS3ConfigurationException :: Encode InvalidS3ConfigurationException where encode = genericEncode options

-- | Constructs InvalidS3ConfigurationException from required parameters
newInvalidS3ConfigurationException :: InvalidS3ConfigurationException
newInvalidS3ConfigurationException  = InvalidS3ConfigurationException { "Bucket": Nothing }

-- | Constructs InvalidS3ConfigurationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidS3ConfigurationException' :: ( { "Bucket" :: Maybe (S3BucketName) } -> {"Bucket" :: Maybe (S3BucketName) } ) -> InvalidS3ConfigurationException
newInvalidS3ConfigurationException'  customize = (InvalidS3ConfigurationException <<< customize) { "Bucket": Nothing }



-- | <p>Indicates that the Amazon Simple Notification Service (Amazon SNS) destination is invalid. See the error message for details.</p>
newtype InvalidSNSDestinationException = InvalidSNSDestinationException 
  { "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  , "EventDestinationName" :: Maybe (EventDestinationName)
  }
derive instance newtypeInvalidSNSDestinationException :: Newtype InvalidSNSDestinationException _
derive instance repGenericInvalidSNSDestinationException :: Generic InvalidSNSDestinationException _
instance showInvalidSNSDestinationException :: Show InvalidSNSDestinationException where show = genericShow
instance decodeInvalidSNSDestinationException :: Decode InvalidSNSDestinationException where decode = genericDecode options
instance encodeInvalidSNSDestinationException :: Encode InvalidSNSDestinationException where encode = genericEncode options

-- | Constructs InvalidSNSDestinationException from required parameters
newInvalidSNSDestinationException :: InvalidSNSDestinationException
newInvalidSNSDestinationException  = InvalidSNSDestinationException { "ConfigurationSetName": Nothing, "EventDestinationName": Nothing }

-- | Constructs InvalidSNSDestinationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidSNSDestinationException' :: ( { "ConfigurationSetName" :: Maybe (ConfigurationSetName) , "EventDestinationName" :: Maybe (EventDestinationName) } -> {"ConfigurationSetName" :: Maybe (ConfigurationSetName) , "EventDestinationName" :: Maybe (EventDestinationName) } ) -> InvalidSNSDestinationException
newInvalidSNSDestinationException'  customize = (InvalidSNSDestinationException <<< customize) { "ConfigurationSetName": Nothing, "EventDestinationName": Nothing }



-- | <p>Indicates that the provided Amazon SNS topic is invalid, or that Amazon SES could not publish to the topic, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>
newtype InvalidSnsTopicException = InvalidSnsTopicException 
  { "Topic" :: Maybe (AmazonResourceName)
  }
derive instance newtypeInvalidSnsTopicException :: Newtype InvalidSnsTopicException _
derive instance repGenericInvalidSnsTopicException :: Generic InvalidSnsTopicException _
instance showInvalidSnsTopicException :: Show InvalidSnsTopicException where show = genericShow
instance decodeInvalidSnsTopicException :: Decode InvalidSnsTopicException where decode = genericDecode options
instance encodeInvalidSnsTopicException :: Encode InvalidSnsTopicException where encode = genericEncode options

-- | Constructs InvalidSnsTopicException from required parameters
newInvalidSnsTopicException :: InvalidSnsTopicException
newInvalidSnsTopicException  = InvalidSnsTopicException { "Topic": Nothing }

-- | Constructs InvalidSnsTopicException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidSnsTopicException' :: ( { "Topic" :: Maybe (AmazonResourceName) } -> {"Topic" :: Maybe (AmazonResourceName) } ) -> InvalidSnsTopicException
newInvalidSnsTopicException'  customize = (InvalidSnsTopicException <<< customize) { "Topic": Nothing }



-- | <p>Indicates that a template could not be created because it contained invalid JSON.</p>
newtype InvalidTemplateException = InvalidTemplateException 
  { "TemplateName" :: Maybe (TemplateName)
  }
derive instance newtypeInvalidTemplateException :: Newtype InvalidTemplateException _
derive instance repGenericInvalidTemplateException :: Generic InvalidTemplateException _
instance showInvalidTemplateException :: Show InvalidTemplateException where show = genericShow
instance decodeInvalidTemplateException :: Decode InvalidTemplateException where decode = genericDecode options
instance encodeInvalidTemplateException :: Encode InvalidTemplateException where encode = genericEncode options

-- | Constructs InvalidTemplateException from required parameters
newInvalidTemplateException :: InvalidTemplateException
newInvalidTemplateException  = InvalidTemplateException { "TemplateName": Nothing }

-- | Constructs InvalidTemplateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidTemplateException' :: ( { "TemplateName" :: Maybe (TemplateName) } -> {"TemplateName" :: Maybe (TemplateName) } ) -> InvalidTemplateException
newInvalidTemplateException'  customize = (InvalidTemplateException <<< customize) { "TemplateName": Nothing }



-- | <p>Indicates that the custom domain to be used for open and click tracking redirects is invalid. This error appears most often in the following situations:</p> <ul> <li> <p>When the tracking domain you specified is not verified in Amazon SES.</p> </li> <li> <p>When the tracking domain you specified is not a valid domain or subdomain.</p> </li> </ul>
newtype InvalidTrackingOptionsException = InvalidTrackingOptionsException Types.NoArguments
derive instance newtypeInvalidTrackingOptionsException :: Newtype InvalidTrackingOptionsException _
derive instance repGenericInvalidTrackingOptionsException :: Generic InvalidTrackingOptionsException _
instance showInvalidTrackingOptionsException :: Show InvalidTrackingOptionsException where show = genericShow
instance decodeInvalidTrackingOptionsException :: Decode InvalidTrackingOptionsException where decode = genericDecode options
instance encodeInvalidTrackingOptionsException :: Encode InvalidTrackingOptionsException where encode = genericEncode options



newtype InvocationType = InvocationType String
derive instance newtypeInvocationType :: Newtype InvocationType _
derive instance repGenericInvocationType :: Generic InvocationType _
instance showInvocationType :: Show InvocationType where show = genericShow
instance decodeInvocationType :: Decode InvocationType where decode = genericDecode options
instance encodeInvocationType :: Encode InvocationType where encode = genericEncode options



-- | <p>Contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event destination.</p> <p>Event destinations, such as Amazon Kinesis Firehose, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype KinesisFirehoseDestination = KinesisFirehoseDestination 
  { "IAMRoleARN" :: (AmazonResourceName)
  , "DeliveryStreamARN" :: (AmazonResourceName)
  }
derive instance newtypeKinesisFirehoseDestination :: Newtype KinesisFirehoseDestination _
derive instance repGenericKinesisFirehoseDestination :: Generic KinesisFirehoseDestination _
instance showKinesisFirehoseDestination :: Show KinesisFirehoseDestination where show = genericShow
instance decodeKinesisFirehoseDestination :: Decode KinesisFirehoseDestination where decode = genericDecode options
instance encodeKinesisFirehoseDestination :: Encode KinesisFirehoseDestination where encode = genericEncode options

-- | Constructs KinesisFirehoseDestination from required parameters
newKinesisFirehoseDestination :: AmazonResourceName -> AmazonResourceName -> KinesisFirehoseDestination
newKinesisFirehoseDestination _DeliveryStreamARN _IAMRoleARN = KinesisFirehoseDestination { "DeliveryStreamARN": _DeliveryStreamARN, "IAMRoleARN": _IAMRoleARN }

-- | Constructs KinesisFirehoseDestination's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKinesisFirehoseDestination' :: AmazonResourceName -> AmazonResourceName -> ( { "IAMRoleARN" :: (AmazonResourceName) , "DeliveryStreamARN" :: (AmazonResourceName) } -> {"IAMRoleARN" :: (AmazonResourceName) , "DeliveryStreamARN" :: (AmazonResourceName) } ) -> KinesisFirehoseDestination
newKinesisFirehoseDestination' _DeliveryStreamARN _IAMRoleARN customize = (KinesisFirehoseDestination <<< customize) { "DeliveryStreamARN": _DeliveryStreamARN, "IAMRoleARN": _IAMRoleARN }



-- | <p>When included in a receipt rule, this action calls an AWS Lambda function and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>To enable Amazon SES to call your AWS Lambda function or to publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <p>For information about using AWS Lambda actions in receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html">Amazon SES Developer Guide</a>.</p>
newtype LambdaAction = LambdaAction 
  { "TopicArn" :: Maybe (AmazonResourceName)
  , "FunctionArn" :: (AmazonResourceName)
  , "InvocationType" :: Maybe (InvocationType)
  }
derive instance newtypeLambdaAction :: Newtype LambdaAction _
derive instance repGenericLambdaAction :: Generic LambdaAction _
instance showLambdaAction :: Show LambdaAction where show = genericShow
instance decodeLambdaAction :: Decode LambdaAction where decode = genericDecode options
instance encodeLambdaAction :: Encode LambdaAction where encode = genericEncode options

-- | Constructs LambdaAction from required parameters
newLambdaAction :: AmazonResourceName -> LambdaAction
newLambdaAction _FunctionArn = LambdaAction { "FunctionArn": _FunctionArn, "InvocationType": Nothing, "TopicArn": Nothing }

-- | Constructs LambdaAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaAction' :: AmazonResourceName -> ( { "TopicArn" :: Maybe (AmazonResourceName) , "FunctionArn" :: (AmazonResourceName) , "InvocationType" :: Maybe (InvocationType) } -> {"TopicArn" :: Maybe (AmazonResourceName) , "FunctionArn" :: (AmazonResourceName) , "InvocationType" :: Maybe (InvocationType) } ) -> LambdaAction
newLambdaAction' _FunctionArn customize = (LambdaAction <<< customize) { "FunctionArn": _FunctionArn, "InvocationType": Nothing, "TopicArn": Nothing }



newtype LastAttemptDate = LastAttemptDate Types.Timestamp
derive instance newtypeLastAttemptDate :: Newtype LastAttemptDate _
derive instance repGenericLastAttemptDate :: Generic LastAttemptDate _
instance showLastAttemptDate :: Show LastAttemptDate where show = genericShow
instance decodeLastAttemptDate :: Decode LastAttemptDate where decode = genericDecode options
instance encodeLastAttemptDate :: Encode LastAttemptDate where encode = genericEncode options



newtype LastFreshStart = LastFreshStart Types.Timestamp
derive instance newtypeLastFreshStart :: Newtype LastFreshStart _
derive instance repGenericLastFreshStart :: Generic LastFreshStart _
instance showLastFreshStart :: Show LastFreshStart where show = genericShow
instance decodeLastFreshStart :: Decode LastFreshStart where decode = genericDecode options
instance encodeLastFreshStart :: Encode LastFreshStart where encode = genericEncode options



-- | <p>Indicates that a resource could not be created because of service limits. For a list of Amazon SES limits, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/limits.html">Amazon SES Developer Guide</a>.</p>
newtype LimitExceededException = LimitExceededException Types.NoArguments
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options



-- | <p>Represents a request to list the configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype ListConfigurationSetsRequest = ListConfigurationSetsRequest 
  { "NextToken" :: Maybe (NextToken)
  , "MaxItems" :: Maybe (MaxItems)
  }
derive instance newtypeListConfigurationSetsRequest :: Newtype ListConfigurationSetsRequest _
derive instance repGenericListConfigurationSetsRequest :: Generic ListConfigurationSetsRequest _
instance showListConfigurationSetsRequest :: Show ListConfigurationSetsRequest where show = genericShow
instance decodeListConfigurationSetsRequest :: Decode ListConfigurationSetsRequest where decode = genericDecode options
instance encodeListConfigurationSetsRequest :: Encode ListConfigurationSetsRequest where encode = genericEncode options

-- | Constructs ListConfigurationSetsRequest from required parameters
newListConfigurationSetsRequest :: ListConfigurationSetsRequest
newListConfigurationSetsRequest  = ListConfigurationSetsRequest { "MaxItems": Nothing, "NextToken": Nothing }

-- | Constructs ListConfigurationSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListConfigurationSetsRequest' :: ( { "NextToken" :: Maybe (NextToken) , "MaxItems" :: Maybe (MaxItems) } -> {"NextToken" :: Maybe (NextToken) , "MaxItems" :: Maybe (MaxItems) } ) -> ListConfigurationSetsRequest
newListConfigurationSetsRequest'  customize = (ListConfigurationSetsRequest <<< customize) { "MaxItems": Nothing, "NextToken": Nothing }



-- | <p>A list of configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype ListConfigurationSetsResponse = ListConfigurationSetsResponse 
  { "ConfigurationSets" :: Maybe (ConfigurationSets)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListConfigurationSetsResponse :: Newtype ListConfigurationSetsResponse _
derive instance repGenericListConfigurationSetsResponse :: Generic ListConfigurationSetsResponse _
instance showListConfigurationSetsResponse :: Show ListConfigurationSetsResponse where show = genericShow
instance decodeListConfigurationSetsResponse :: Decode ListConfigurationSetsResponse where decode = genericDecode options
instance encodeListConfigurationSetsResponse :: Encode ListConfigurationSetsResponse where encode = genericEncode options

-- | Constructs ListConfigurationSetsResponse from required parameters
newListConfigurationSetsResponse :: ListConfigurationSetsResponse
newListConfigurationSetsResponse  = ListConfigurationSetsResponse { "ConfigurationSets": Nothing, "NextToken": Nothing }

-- | Constructs ListConfigurationSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListConfigurationSetsResponse' :: ( { "ConfigurationSets" :: Maybe (ConfigurationSets) , "NextToken" :: Maybe (NextToken) } -> {"ConfigurationSets" :: Maybe (ConfigurationSets) , "NextToken" :: Maybe (NextToken) } ) -> ListConfigurationSetsResponse
newListConfigurationSetsResponse'  customize = (ListConfigurationSetsResponse <<< customize) { "ConfigurationSets": Nothing, "NextToken": Nothing }



-- | <p>Represents a request to list the existing custom verification email templates for your account.</p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p>
newtype ListCustomVerificationEmailTemplatesRequest = ListCustomVerificationEmailTemplatesRequest 
  { "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListCustomVerificationEmailTemplatesRequest :: Newtype ListCustomVerificationEmailTemplatesRequest _
derive instance repGenericListCustomVerificationEmailTemplatesRequest :: Generic ListCustomVerificationEmailTemplatesRequest _
instance showListCustomVerificationEmailTemplatesRequest :: Show ListCustomVerificationEmailTemplatesRequest where show = genericShow
instance decodeListCustomVerificationEmailTemplatesRequest :: Decode ListCustomVerificationEmailTemplatesRequest where decode = genericDecode options
instance encodeListCustomVerificationEmailTemplatesRequest :: Encode ListCustomVerificationEmailTemplatesRequest where encode = genericEncode options

-- | Constructs ListCustomVerificationEmailTemplatesRequest from required parameters
newListCustomVerificationEmailTemplatesRequest :: ListCustomVerificationEmailTemplatesRequest
newListCustomVerificationEmailTemplatesRequest  = ListCustomVerificationEmailTemplatesRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListCustomVerificationEmailTemplatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCustomVerificationEmailTemplatesRequest' :: ( { "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListCustomVerificationEmailTemplatesRequest
newListCustomVerificationEmailTemplatesRequest'  customize = (ListCustomVerificationEmailTemplatesRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



-- | <p>A paginated list of custom verification email templates.</p>
newtype ListCustomVerificationEmailTemplatesResponse = ListCustomVerificationEmailTemplatesResponse 
  { "CustomVerificationEmailTemplates" :: Maybe (CustomVerificationEmailTemplates)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListCustomVerificationEmailTemplatesResponse :: Newtype ListCustomVerificationEmailTemplatesResponse _
derive instance repGenericListCustomVerificationEmailTemplatesResponse :: Generic ListCustomVerificationEmailTemplatesResponse _
instance showListCustomVerificationEmailTemplatesResponse :: Show ListCustomVerificationEmailTemplatesResponse where show = genericShow
instance decodeListCustomVerificationEmailTemplatesResponse :: Decode ListCustomVerificationEmailTemplatesResponse where decode = genericDecode options
instance encodeListCustomVerificationEmailTemplatesResponse :: Encode ListCustomVerificationEmailTemplatesResponse where encode = genericEncode options

-- | Constructs ListCustomVerificationEmailTemplatesResponse from required parameters
newListCustomVerificationEmailTemplatesResponse :: ListCustomVerificationEmailTemplatesResponse
newListCustomVerificationEmailTemplatesResponse  = ListCustomVerificationEmailTemplatesResponse { "CustomVerificationEmailTemplates": Nothing, "NextToken": Nothing }

-- | Constructs ListCustomVerificationEmailTemplatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCustomVerificationEmailTemplatesResponse' :: ( { "CustomVerificationEmailTemplates" :: Maybe (CustomVerificationEmailTemplates) , "NextToken" :: Maybe (NextToken) } -> {"CustomVerificationEmailTemplates" :: Maybe (CustomVerificationEmailTemplates) , "NextToken" :: Maybe (NextToken) } ) -> ListCustomVerificationEmailTemplatesResponse
newListCustomVerificationEmailTemplatesResponse'  customize = (ListCustomVerificationEmailTemplatesResponse <<< customize) { "CustomVerificationEmailTemplates": Nothing, "NextToken": Nothing }



-- | <p>Represents a request to return a list of all identities (email addresses and domains) that you have attempted to verify under your AWS account, regardless of verification status.</p>
newtype ListIdentitiesRequest = ListIdentitiesRequest 
  { "IdentityType" :: Maybe (IdentityType)
  , "NextToken" :: Maybe (NextToken)
  , "MaxItems" :: Maybe (MaxItems)
  }
derive instance newtypeListIdentitiesRequest :: Newtype ListIdentitiesRequest _
derive instance repGenericListIdentitiesRequest :: Generic ListIdentitiesRequest _
instance showListIdentitiesRequest :: Show ListIdentitiesRequest where show = genericShow
instance decodeListIdentitiesRequest :: Decode ListIdentitiesRequest where decode = genericDecode options
instance encodeListIdentitiesRequest :: Encode ListIdentitiesRequest where encode = genericEncode options

-- | Constructs ListIdentitiesRequest from required parameters
newListIdentitiesRequest :: ListIdentitiesRequest
newListIdentitiesRequest  = ListIdentitiesRequest { "IdentityType": Nothing, "MaxItems": Nothing, "NextToken": Nothing }

-- | Constructs ListIdentitiesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentitiesRequest' :: ( { "IdentityType" :: Maybe (IdentityType) , "NextToken" :: Maybe (NextToken) , "MaxItems" :: Maybe (MaxItems) } -> {"IdentityType" :: Maybe (IdentityType) , "NextToken" :: Maybe (NextToken) , "MaxItems" :: Maybe (MaxItems) } ) -> ListIdentitiesRequest
newListIdentitiesRequest'  customize = (ListIdentitiesRequest <<< customize) { "IdentityType": Nothing, "MaxItems": Nothing, "NextToken": Nothing }



-- | <p>A list of all identities that you have attempted to verify under your AWS account, regardless of verification status.</p>
newtype ListIdentitiesResponse = ListIdentitiesResponse 
  { "Identities" :: (IdentityList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListIdentitiesResponse :: Newtype ListIdentitiesResponse _
derive instance repGenericListIdentitiesResponse :: Generic ListIdentitiesResponse _
instance showListIdentitiesResponse :: Show ListIdentitiesResponse where show = genericShow
instance decodeListIdentitiesResponse :: Decode ListIdentitiesResponse where decode = genericDecode options
instance encodeListIdentitiesResponse :: Encode ListIdentitiesResponse where encode = genericEncode options

-- | Constructs ListIdentitiesResponse from required parameters
newListIdentitiesResponse :: IdentityList -> ListIdentitiesResponse
newListIdentitiesResponse _Identities = ListIdentitiesResponse { "Identities": _Identities, "NextToken": Nothing }

-- | Constructs ListIdentitiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentitiesResponse' :: IdentityList -> ( { "Identities" :: (IdentityList) , "NextToken" :: Maybe (NextToken) } -> {"Identities" :: (IdentityList) , "NextToken" :: Maybe (NextToken) } ) -> ListIdentitiesResponse
newListIdentitiesResponse' _Identities customize = (ListIdentitiesResponse <<< customize) { "Identities": _Identities, "NextToken": Nothing }



-- | <p>Represents a request to return a list of sending authorization policies that are attached to an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
newtype ListIdentityPoliciesRequest = ListIdentityPoliciesRequest 
  { "Identity" :: (Identity)
  }
derive instance newtypeListIdentityPoliciesRequest :: Newtype ListIdentityPoliciesRequest _
derive instance repGenericListIdentityPoliciesRequest :: Generic ListIdentityPoliciesRequest _
instance showListIdentityPoliciesRequest :: Show ListIdentityPoliciesRequest where show = genericShow
instance decodeListIdentityPoliciesRequest :: Decode ListIdentityPoliciesRequest where decode = genericDecode options
instance encodeListIdentityPoliciesRequest :: Encode ListIdentityPoliciesRequest where encode = genericEncode options

-- | Constructs ListIdentityPoliciesRequest from required parameters
newListIdentityPoliciesRequest :: Identity -> ListIdentityPoliciesRequest
newListIdentityPoliciesRequest _Identity = ListIdentityPoliciesRequest { "Identity": _Identity }

-- | Constructs ListIdentityPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentityPoliciesRequest' :: Identity -> ( { "Identity" :: (Identity) } -> {"Identity" :: (Identity) } ) -> ListIdentityPoliciesRequest
newListIdentityPoliciesRequest' _Identity customize = (ListIdentityPoliciesRequest <<< customize) { "Identity": _Identity }



-- | <p>A list of names of sending authorization policies that apply to an identity.</p>
newtype ListIdentityPoliciesResponse = ListIdentityPoliciesResponse 
  { "PolicyNames" :: (PolicyNameList)
  }
derive instance newtypeListIdentityPoliciesResponse :: Newtype ListIdentityPoliciesResponse _
derive instance repGenericListIdentityPoliciesResponse :: Generic ListIdentityPoliciesResponse _
instance showListIdentityPoliciesResponse :: Show ListIdentityPoliciesResponse where show = genericShow
instance decodeListIdentityPoliciesResponse :: Decode ListIdentityPoliciesResponse where decode = genericDecode options
instance encodeListIdentityPoliciesResponse :: Encode ListIdentityPoliciesResponse where encode = genericEncode options

-- | Constructs ListIdentityPoliciesResponse from required parameters
newListIdentityPoliciesResponse :: PolicyNameList -> ListIdentityPoliciesResponse
newListIdentityPoliciesResponse _PolicyNames = ListIdentityPoliciesResponse { "PolicyNames": _PolicyNames }

-- | Constructs ListIdentityPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentityPoliciesResponse' :: PolicyNameList -> ( { "PolicyNames" :: (PolicyNameList) } -> {"PolicyNames" :: (PolicyNameList) } ) -> ListIdentityPoliciesResponse
newListIdentityPoliciesResponse' _PolicyNames customize = (ListIdentityPoliciesResponse <<< customize) { "PolicyNames": _PolicyNames }



-- | <p>Represents a request to list the IP address filters that exist under your AWS account. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype ListReceiptFiltersRequest = ListReceiptFiltersRequest Types.NoArguments
derive instance newtypeListReceiptFiltersRequest :: Newtype ListReceiptFiltersRequest _
derive instance repGenericListReceiptFiltersRequest :: Generic ListReceiptFiltersRequest _
instance showListReceiptFiltersRequest :: Show ListReceiptFiltersRequest where show = genericShow
instance decodeListReceiptFiltersRequest :: Decode ListReceiptFiltersRequest where decode = genericDecode options
instance encodeListReceiptFiltersRequest :: Encode ListReceiptFiltersRequest where encode = genericEncode options



-- | <p>A list of IP address filters that exist under your AWS account.</p>
newtype ListReceiptFiltersResponse = ListReceiptFiltersResponse 
  { "Filters" :: Maybe (ReceiptFilterList)
  }
derive instance newtypeListReceiptFiltersResponse :: Newtype ListReceiptFiltersResponse _
derive instance repGenericListReceiptFiltersResponse :: Generic ListReceiptFiltersResponse _
instance showListReceiptFiltersResponse :: Show ListReceiptFiltersResponse where show = genericShow
instance decodeListReceiptFiltersResponse :: Decode ListReceiptFiltersResponse where decode = genericDecode options
instance encodeListReceiptFiltersResponse :: Encode ListReceiptFiltersResponse where encode = genericEncode options

-- | Constructs ListReceiptFiltersResponse from required parameters
newListReceiptFiltersResponse :: ListReceiptFiltersResponse
newListReceiptFiltersResponse  = ListReceiptFiltersResponse { "Filters": Nothing }

-- | Constructs ListReceiptFiltersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReceiptFiltersResponse' :: ( { "Filters" :: Maybe (ReceiptFilterList) } -> {"Filters" :: Maybe (ReceiptFilterList) } ) -> ListReceiptFiltersResponse
newListReceiptFiltersResponse'  customize = (ListReceiptFiltersResponse <<< customize) { "Filters": Nothing }



-- | <p>Represents a request to list the receipt rule sets that exist under your AWS account. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype ListReceiptRuleSetsRequest = ListReceiptRuleSetsRequest 
  { "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListReceiptRuleSetsRequest :: Newtype ListReceiptRuleSetsRequest _
derive instance repGenericListReceiptRuleSetsRequest :: Generic ListReceiptRuleSetsRequest _
instance showListReceiptRuleSetsRequest :: Show ListReceiptRuleSetsRequest where show = genericShow
instance decodeListReceiptRuleSetsRequest :: Decode ListReceiptRuleSetsRequest where decode = genericDecode options
instance encodeListReceiptRuleSetsRequest :: Encode ListReceiptRuleSetsRequest where encode = genericEncode options

-- | Constructs ListReceiptRuleSetsRequest from required parameters
newListReceiptRuleSetsRequest :: ListReceiptRuleSetsRequest
newListReceiptRuleSetsRequest  = ListReceiptRuleSetsRequest { "NextToken": Nothing }

-- | Constructs ListReceiptRuleSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReceiptRuleSetsRequest' :: ( { "NextToken" :: Maybe (NextToken) } -> {"NextToken" :: Maybe (NextToken) } ) -> ListReceiptRuleSetsRequest
newListReceiptRuleSetsRequest'  customize = (ListReceiptRuleSetsRequest <<< customize) { "NextToken": Nothing }



-- | <p>A list of receipt rule sets that exist under your AWS account.</p>
newtype ListReceiptRuleSetsResponse = ListReceiptRuleSetsResponse 
  { "RuleSets" :: Maybe (ReceiptRuleSetsLists)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListReceiptRuleSetsResponse :: Newtype ListReceiptRuleSetsResponse _
derive instance repGenericListReceiptRuleSetsResponse :: Generic ListReceiptRuleSetsResponse _
instance showListReceiptRuleSetsResponse :: Show ListReceiptRuleSetsResponse where show = genericShow
instance decodeListReceiptRuleSetsResponse :: Decode ListReceiptRuleSetsResponse where decode = genericDecode options
instance encodeListReceiptRuleSetsResponse :: Encode ListReceiptRuleSetsResponse where encode = genericEncode options

-- | Constructs ListReceiptRuleSetsResponse from required parameters
newListReceiptRuleSetsResponse :: ListReceiptRuleSetsResponse
newListReceiptRuleSetsResponse  = ListReceiptRuleSetsResponse { "NextToken": Nothing, "RuleSets": Nothing }

-- | Constructs ListReceiptRuleSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReceiptRuleSetsResponse' :: ( { "RuleSets" :: Maybe (ReceiptRuleSetsLists) , "NextToken" :: Maybe (NextToken) } -> {"RuleSets" :: Maybe (ReceiptRuleSetsLists) , "NextToken" :: Maybe (NextToken) } ) -> ListReceiptRuleSetsResponse
newListReceiptRuleSetsResponse'  customize = (ListReceiptRuleSetsResponse <<< customize) { "NextToken": Nothing, "RuleSets": Nothing }



newtype ListTemplatesRequest = ListTemplatesRequest 
  { "NextToken" :: Maybe (NextToken)
  , "MaxItems" :: Maybe (MaxItems)
  }
derive instance newtypeListTemplatesRequest :: Newtype ListTemplatesRequest _
derive instance repGenericListTemplatesRequest :: Generic ListTemplatesRequest _
instance showListTemplatesRequest :: Show ListTemplatesRequest where show = genericShow
instance decodeListTemplatesRequest :: Decode ListTemplatesRequest where decode = genericDecode options
instance encodeListTemplatesRequest :: Encode ListTemplatesRequest where encode = genericEncode options

-- | Constructs ListTemplatesRequest from required parameters
newListTemplatesRequest :: ListTemplatesRequest
newListTemplatesRequest  = ListTemplatesRequest { "MaxItems": Nothing, "NextToken": Nothing }

-- | Constructs ListTemplatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTemplatesRequest' :: ( { "NextToken" :: Maybe (NextToken) , "MaxItems" :: Maybe (MaxItems) } -> {"NextToken" :: Maybe (NextToken) , "MaxItems" :: Maybe (MaxItems) } ) -> ListTemplatesRequest
newListTemplatesRequest'  customize = (ListTemplatesRequest <<< customize) { "MaxItems": Nothing, "NextToken": Nothing }



newtype ListTemplatesResponse = ListTemplatesResponse 
  { "TemplatesMetadata" :: Maybe (TemplateMetadataList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListTemplatesResponse :: Newtype ListTemplatesResponse _
derive instance repGenericListTemplatesResponse :: Generic ListTemplatesResponse _
instance showListTemplatesResponse :: Show ListTemplatesResponse where show = genericShow
instance decodeListTemplatesResponse :: Decode ListTemplatesResponse where decode = genericDecode options
instance encodeListTemplatesResponse :: Encode ListTemplatesResponse where encode = genericEncode options

-- | Constructs ListTemplatesResponse from required parameters
newListTemplatesResponse :: ListTemplatesResponse
newListTemplatesResponse  = ListTemplatesResponse { "NextToken": Nothing, "TemplatesMetadata": Nothing }

-- | Constructs ListTemplatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTemplatesResponse' :: ( { "TemplatesMetadata" :: Maybe (TemplateMetadataList) , "NextToken" :: Maybe (NextToken) } -> {"TemplatesMetadata" :: Maybe (TemplateMetadataList) , "NextToken" :: Maybe (NextToken) } ) -> ListTemplatesResponse
newListTemplatesResponse'  customize = (ListTemplatesResponse <<< customize) { "NextToken": Nothing, "TemplatesMetadata": Nothing }



-- | <p>A list of email addresses that you have verified with Amazon SES under your AWS account.</p>
newtype ListVerifiedEmailAddressesResponse = ListVerifiedEmailAddressesResponse 
  { "VerifiedEmailAddresses" :: Maybe (AddressList)
  }
derive instance newtypeListVerifiedEmailAddressesResponse :: Newtype ListVerifiedEmailAddressesResponse _
derive instance repGenericListVerifiedEmailAddressesResponse :: Generic ListVerifiedEmailAddressesResponse _
instance showListVerifiedEmailAddressesResponse :: Show ListVerifiedEmailAddressesResponse where show = genericShow
instance decodeListVerifiedEmailAddressesResponse :: Decode ListVerifiedEmailAddressesResponse where decode = genericDecode options
instance encodeListVerifiedEmailAddressesResponse :: Encode ListVerifiedEmailAddressesResponse where encode = genericEncode options

-- | Constructs ListVerifiedEmailAddressesResponse from required parameters
newListVerifiedEmailAddressesResponse :: ListVerifiedEmailAddressesResponse
newListVerifiedEmailAddressesResponse  = ListVerifiedEmailAddressesResponse { "VerifiedEmailAddresses": Nothing }

-- | Constructs ListVerifiedEmailAddressesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVerifiedEmailAddressesResponse' :: ( { "VerifiedEmailAddresses" :: Maybe (AddressList) } -> {"VerifiedEmailAddresses" :: Maybe (AddressList) } ) -> ListVerifiedEmailAddressesResponse
newListVerifiedEmailAddressesResponse'  customize = (ListVerifiedEmailAddressesResponse <<< customize) { "VerifiedEmailAddresses": Nothing }



newtype MailFromDomainAttributes = MailFromDomainAttributes (StrMap.StrMap IdentityMailFromDomainAttributes)
derive instance newtypeMailFromDomainAttributes :: Newtype MailFromDomainAttributes _
derive instance repGenericMailFromDomainAttributes :: Generic MailFromDomainAttributes _
instance showMailFromDomainAttributes :: Show MailFromDomainAttributes where show = genericShow
instance decodeMailFromDomainAttributes :: Decode MailFromDomainAttributes where decode = genericDecode options
instance encodeMailFromDomainAttributes :: Encode MailFromDomainAttributes where encode = genericEncode options



newtype MailFromDomainName = MailFromDomainName String
derive instance newtypeMailFromDomainName :: Newtype MailFromDomainName _
derive instance repGenericMailFromDomainName :: Generic MailFromDomainName _
instance showMailFromDomainName :: Show MailFromDomainName where show = genericShow
instance decodeMailFromDomainName :: Decode MailFromDomainName where decode = genericDecode options
instance encodeMailFromDomainName :: Encode MailFromDomainName where encode = genericEncode options



-- | <p> Indicates that the message could not be sent because Amazon SES could not read the MX record required to use the specified MAIL FROM domain. For information about editing the custom MAIL FROM domain settings for an identity, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-edit.html">Amazon SES Developer Guide</a>.</p>
newtype MailFromDomainNotVerifiedException = MailFromDomainNotVerifiedException Types.NoArguments
derive instance newtypeMailFromDomainNotVerifiedException :: Newtype MailFromDomainNotVerifiedException _
derive instance repGenericMailFromDomainNotVerifiedException :: Generic MailFromDomainNotVerifiedException _
instance showMailFromDomainNotVerifiedException :: Show MailFromDomainNotVerifiedException where show = genericShow
instance decodeMailFromDomainNotVerifiedException :: Decode MailFromDomainNotVerifiedException where decode = genericDecode options
instance encodeMailFromDomainNotVerifiedException :: Encode MailFromDomainNotVerifiedException where encode = genericEncode options



newtype Max24HourSend = Max24HourSend Number
derive instance newtypeMax24HourSend :: Newtype Max24HourSend _
derive instance repGenericMax24HourSend :: Generic Max24HourSend _
instance showMax24HourSend :: Show Max24HourSend where show = genericShow
instance decodeMax24HourSend :: Decode Max24HourSend where decode = genericDecode options
instance encodeMax24HourSend :: Encode Max24HourSend where encode = genericEncode options



newtype MaxItems = MaxItems Int
derive instance newtypeMaxItems :: Newtype MaxItems _
derive instance repGenericMaxItems :: Generic MaxItems _
instance showMaxItems :: Show MaxItems where show = genericShow
instance decodeMaxItems :: Decode MaxItems where decode = genericDecode options
instance encodeMaxItems :: Encode MaxItems where encode = genericEncode options



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype MaxSendRate = MaxSendRate Number
derive instance newtypeMaxSendRate :: Newtype MaxSendRate _
derive instance repGenericMaxSendRate :: Generic MaxSendRate _
instance showMaxSendRate :: Show MaxSendRate where show = genericShow
instance decodeMaxSendRate :: Decode MaxSendRate where decode = genericDecode options
instance encodeMaxSendRate :: Encode MaxSendRate where encode = genericEncode options



-- | <p>Represents the message to be sent, composed of a subject and a body.</p>
newtype Message = Message 
  { "Subject" :: (Content)
  , "Body" :: (Body)
  }
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where show = genericShow
instance decodeMessage :: Decode Message where decode = genericDecode options
instance encodeMessage :: Encode Message where encode = genericEncode options

-- | Constructs Message from required parameters
newMessage :: Body -> Content -> Message
newMessage _Body _Subject = Message { "Body": _Body, "Subject": _Subject }

-- | Constructs Message's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMessage' :: Body -> Content -> ( { "Subject" :: (Content) , "Body" :: (Body) } -> {"Subject" :: (Content) , "Body" :: (Body) } ) -> Message
newMessage' _Body _Subject customize = (Message <<< customize) { "Body": _Body, "Subject": _Subject }



newtype MessageData = MessageData String
derive instance newtypeMessageData :: Newtype MessageData _
derive instance repGenericMessageData :: Generic MessageData _
instance showMessageData :: Show MessageData where show = genericShow
instance decodeMessageData :: Decode MessageData where decode = genericDecode options
instance encodeMessageData :: Encode MessageData where encode = genericEncode options



-- | <p>Message-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
newtype MessageDsn = MessageDsn 
  { "ReportingMta" :: (ReportingMta)
  , "ArrivalDate" :: Maybe (ArrivalDate)
  , "ExtensionFields" :: Maybe (ExtensionFieldList)
  }
derive instance newtypeMessageDsn :: Newtype MessageDsn _
derive instance repGenericMessageDsn :: Generic MessageDsn _
instance showMessageDsn :: Show MessageDsn where show = genericShow
instance decodeMessageDsn :: Decode MessageDsn where decode = genericDecode options
instance encodeMessageDsn :: Encode MessageDsn where encode = genericEncode options

-- | Constructs MessageDsn from required parameters
newMessageDsn :: ReportingMta -> MessageDsn
newMessageDsn _ReportingMta = MessageDsn { "ReportingMta": _ReportingMta, "ArrivalDate": Nothing, "ExtensionFields": Nothing }

-- | Constructs MessageDsn's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMessageDsn' :: ReportingMta -> ( { "ReportingMta" :: (ReportingMta) , "ArrivalDate" :: Maybe (ArrivalDate) , "ExtensionFields" :: Maybe (ExtensionFieldList) } -> {"ReportingMta" :: (ReportingMta) , "ArrivalDate" :: Maybe (ArrivalDate) , "ExtensionFields" :: Maybe (ExtensionFieldList) } ) -> MessageDsn
newMessageDsn' _ReportingMta customize = (MessageDsn <<< customize) { "ReportingMta": _ReportingMta, "ArrivalDate": Nothing, "ExtensionFields": Nothing }



newtype MessageId = MessageId String
derive instance newtypeMessageId :: Newtype MessageId _
derive instance repGenericMessageId :: Generic MessageId _
instance showMessageId :: Show MessageId where show = genericShow
instance decodeMessageId :: Decode MessageId where decode = genericDecode options
instance encodeMessageId :: Encode MessageId where encode = genericEncode options



-- | <p>Indicates that the action failed, and the message could not be sent. Check the error stack for more information about what caused the error.</p>
newtype MessageRejected = MessageRejected Types.NoArguments
derive instance newtypeMessageRejected :: Newtype MessageRejected _
derive instance repGenericMessageRejected :: Generic MessageRejected _
instance showMessageRejected :: Show MessageRejected where show = genericShow
instance decodeMessageRejected :: Decode MessageRejected where decode = genericDecode options
instance encodeMessageRejected :: Encode MessageRejected where encode = genericEncode options



-- | <p>Contains the name and value of a tag that you can provide to <code>SendEmail</code> or <code>SendRawEmail</code> to apply to an email.</p> <p>Message tags, which you use with configuration sets, enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype MessageTag = MessageTag 
  { "Name" :: (MessageTagName)
  , "Value" :: (MessageTagValue)
  }
derive instance newtypeMessageTag :: Newtype MessageTag _
derive instance repGenericMessageTag :: Generic MessageTag _
instance showMessageTag :: Show MessageTag where show = genericShow
instance decodeMessageTag :: Decode MessageTag where decode = genericDecode options
instance encodeMessageTag :: Encode MessageTag where encode = genericEncode options

-- | Constructs MessageTag from required parameters
newMessageTag :: MessageTagName -> MessageTagValue -> MessageTag
newMessageTag _Name _Value = MessageTag { "Name": _Name, "Value": _Value }

-- | Constructs MessageTag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMessageTag' :: MessageTagName -> MessageTagValue -> ( { "Name" :: (MessageTagName) , "Value" :: (MessageTagValue) } -> {"Name" :: (MessageTagName) , "Value" :: (MessageTagValue) } ) -> MessageTag
newMessageTag' _Name _Value customize = (MessageTag <<< customize) { "Name": _Name, "Value": _Value }



newtype MessageTagList = MessageTagList (Array MessageTag)
derive instance newtypeMessageTagList :: Newtype MessageTagList _
derive instance repGenericMessageTagList :: Generic MessageTagList _
instance showMessageTagList :: Show MessageTagList where show = genericShow
instance decodeMessageTagList :: Decode MessageTagList where decode = genericDecode options
instance encodeMessageTagList :: Encode MessageTagList where encode = genericEncode options



newtype MessageTagName = MessageTagName String
derive instance newtypeMessageTagName :: Newtype MessageTagName _
derive instance repGenericMessageTagName :: Generic MessageTagName _
instance showMessageTagName :: Show MessageTagName where show = genericShow
instance decodeMessageTagName :: Decode MessageTagName where decode = genericDecode options
instance encodeMessageTagName :: Encode MessageTagName where encode = genericEncode options



newtype MessageTagValue = MessageTagValue String
derive instance newtypeMessageTagValue :: Newtype MessageTagValue _
derive instance repGenericMessageTagValue :: Generic MessageTagValue _
instance showMessageTagValue :: Show MessageTagValue where show = genericShow
instance decodeMessageTagValue :: Decode MessageTagValue where decode = genericDecode options
instance encodeMessageTagValue :: Encode MessageTagValue where encode = genericEncode options



-- | <p>Indicates that one or more of the replacement values for the specified template was not specified. Ensure that the TemplateData object contains references to all of the replacement tags in the specified template.</p>
newtype MissingRenderingAttributeException = MissingRenderingAttributeException 
  { "TemplateName" :: Maybe (TemplateName)
  }
derive instance newtypeMissingRenderingAttributeException :: Newtype MissingRenderingAttributeException _
derive instance repGenericMissingRenderingAttributeException :: Generic MissingRenderingAttributeException _
instance showMissingRenderingAttributeException :: Show MissingRenderingAttributeException where show = genericShow
instance decodeMissingRenderingAttributeException :: Decode MissingRenderingAttributeException where decode = genericDecode options
instance encodeMissingRenderingAttributeException :: Encode MissingRenderingAttributeException where encode = genericEncode options

-- | Constructs MissingRenderingAttributeException from required parameters
newMissingRenderingAttributeException :: MissingRenderingAttributeException
newMissingRenderingAttributeException  = MissingRenderingAttributeException { "TemplateName": Nothing }

-- | Constructs MissingRenderingAttributeException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMissingRenderingAttributeException' :: ( { "TemplateName" :: Maybe (TemplateName) } -> {"TemplateName" :: Maybe (TemplateName) } ) -> MissingRenderingAttributeException
newMissingRenderingAttributeException'  customize = (MissingRenderingAttributeException <<< customize) { "TemplateName": Nothing }



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



newtype NotificationAttributes = NotificationAttributes (StrMap.StrMap IdentityNotificationAttributes)
derive instance newtypeNotificationAttributes :: Newtype NotificationAttributes _
derive instance repGenericNotificationAttributes :: Generic NotificationAttributes _
instance showNotificationAttributes :: Show NotificationAttributes where show = genericShow
instance decodeNotificationAttributes :: Decode NotificationAttributes where decode = genericDecode options
instance encodeNotificationAttributes :: Encode NotificationAttributes where encode = genericEncode options



newtype NotificationTopic = NotificationTopic String
derive instance newtypeNotificationTopic :: Newtype NotificationTopic _
derive instance repGenericNotificationTopic :: Generic NotificationTopic _
instance showNotificationTopic :: Show NotificationTopic where show = genericShow
instance decodeNotificationTopic :: Decode NotificationTopic where decode = genericDecode options
instance encodeNotificationTopic :: Encode NotificationTopic where encode = genericEncode options



newtype NotificationType = NotificationType String
derive instance newtypeNotificationType :: Newtype NotificationType _
derive instance repGenericNotificationType :: Generic NotificationType _
instance showNotificationType :: Show NotificationType where show = genericShow
instance decodeNotificationType :: Decode NotificationType where decode = genericDecode options
instance encodeNotificationType :: Encode NotificationType where encode = genericEncode options



newtype Policy = Policy String
derive instance newtypePolicy :: Newtype Policy _
derive instance repGenericPolicy :: Generic Policy _
instance showPolicy :: Show Policy where show = genericShow
instance decodePolicy :: Decode Policy where decode = genericDecode options
instance encodePolicy :: Encode Policy where encode = genericEncode options



newtype PolicyMap = PolicyMap (StrMap.StrMap Policy)
derive instance newtypePolicyMap :: Newtype PolicyMap _
derive instance repGenericPolicyMap :: Generic PolicyMap _
instance showPolicyMap :: Show PolicyMap where show = genericShow
instance decodePolicyMap :: Decode PolicyMap where decode = genericDecode options
instance encodePolicyMap :: Encode PolicyMap where encode = genericEncode options



newtype PolicyName = PolicyName String
derive instance newtypePolicyName :: Newtype PolicyName _
derive instance repGenericPolicyName :: Generic PolicyName _
instance showPolicyName :: Show PolicyName where show = genericShow
instance decodePolicyName :: Decode PolicyName where decode = genericDecode options
instance encodePolicyName :: Encode PolicyName where encode = genericEncode options



newtype PolicyNameList = PolicyNameList (Array PolicyName)
derive instance newtypePolicyNameList :: Newtype PolicyNameList _
derive instance repGenericPolicyNameList :: Generic PolicyNameList _
instance showPolicyNameList :: Show PolicyNameList where show = genericShow
instance decodePolicyNameList :: Decode PolicyNameList where decode = genericDecode options
instance encodePolicyNameList :: Encode PolicyNameList where encode = genericEncode options



-- | <p>Indicates that the account has not been granted production access.</p>
newtype ProductionAccessNotGrantedException = ProductionAccessNotGrantedException Types.NoArguments
derive instance newtypeProductionAccessNotGrantedException :: Newtype ProductionAccessNotGrantedException _
derive instance repGenericProductionAccessNotGrantedException :: Generic ProductionAccessNotGrantedException _
instance showProductionAccessNotGrantedException :: Show ProductionAccessNotGrantedException where show = genericShow
instance decodeProductionAccessNotGrantedException :: Decode ProductionAccessNotGrantedException where decode = genericDecode options
instance encodeProductionAccessNotGrantedException :: Encode ProductionAccessNotGrantedException where encode = genericEncode options



-- | <p>Represents a request to add or update a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
newtype PutIdentityPolicyRequest = PutIdentityPolicyRequest 
  { "Identity" :: (Identity)
  , "PolicyName" :: (PolicyName)
  , "Policy" :: (Policy)
  }
derive instance newtypePutIdentityPolicyRequest :: Newtype PutIdentityPolicyRequest _
derive instance repGenericPutIdentityPolicyRequest :: Generic PutIdentityPolicyRequest _
instance showPutIdentityPolicyRequest :: Show PutIdentityPolicyRequest where show = genericShow
instance decodePutIdentityPolicyRequest :: Decode PutIdentityPolicyRequest where decode = genericDecode options
instance encodePutIdentityPolicyRequest :: Encode PutIdentityPolicyRequest where encode = genericEncode options

-- | Constructs PutIdentityPolicyRequest from required parameters
newPutIdentityPolicyRequest :: Identity -> Policy -> PolicyName -> PutIdentityPolicyRequest
newPutIdentityPolicyRequest _Identity _Policy _PolicyName = PutIdentityPolicyRequest { "Identity": _Identity, "Policy": _Policy, "PolicyName": _PolicyName }

-- | Constructs PutIdentityPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutIdentityPolicyRequest' :: Identity -> Policy -> PolicyName -> ( { "Identity" :: (Identity) , "PolicyName" :: (PolicyName) , "Policy" :: (Policy) } -> {"Identity" :: (Identity) , "PolicyName" :: (PolicyName) , "Policy" :: (Policy) } ) -> PutIdentityPolicyRequest
newPutIdentityPolicyRequest' _Identity _Policy _PolicyName customize = (PutIdentityPolicyRequest <<< customize) { "Identity": _Identity, "Policy": _Policy, "PolicyName": _PolicyName }



-- | <p>An empty element returned on a successful request.</p>
newtype PutIdentityPolicyResponse = PutIdentityPolicyResponse Types.NoArguments
derive instance newtypePutIdentityPolicyResponse :: Newtype PutIdentityPolicyResponse _
derive instance repGenericPutIdentityPolicyResponse :: Generic PutIdentityPolicyResponse _
instance showPutIdentityPolicyResponse :: Show PutIdentityPolicyResponse where show = genericShow
instance decodePutIdentityPolicyResponse :: Decode PutIdentityPolicyResponse where decode = genericDecode options
instance encodePutIdentityPolicyResponse :: Encode PutIdentityPolicyResponse where encode = genericEncode options



-- | <p>Represents the raw data of the message.</p>
newtype RawMessage = RawMessage 
  { "Data" :: (RawMessageData)
  }
derive instance newtypeRawMessage :: Newtype RawMessage _
derive instance repGenericRawMessage :: Generic RawMessage _
instance showRawMessage :: Show RawMessage where show = genericShow
instance decodeRawMessage :: Decode RawMessage where decode = genericDecode options
instance encodeRawMessage :: Encode RawMessage where encode = genericEncode options

-- | Constructs RawMessage from required parameters
newRawMessage :: RawMessageData -> RawMessage
newRawMessage _Data = RawMessage { "Data": _Data }

-- | Constructs RawMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRawMessage' :: RawMessageData -> ( { "Data" :: (RawMessageData) } -> {"Data" :: (RawMessageData) } ) -> RawMessage
newRawMessage' _Data customize = (RawMessage <<< customize) { "Data": _Data }



newtype RawMessageData = RawMessageData String
derive instance newtypeRawMessageData :: Newtype RawMessageData _
derive instance repGenericRawMessageData :: Generic RawMessageData _
instance showRawMessageData :: Show RawMessageData where show = genericShow
instance decodeRawMessageData :: Decode RawMessageData where decode = genericDecode options
instance encodeRawMessageData :: Encode RawMessageData where encode = genericEncode options



-- | <p>An action that Amazon SES can take when it receives an email on behalf of one or more email addresses or domains that you own. An instance of this data type can represent only one action.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p>
newtype ReceiptAction = ReceiptAction 
  { "S3Action" :: Maybe (S3Action)
  , "BounceAction" :: Maybe (BounceAction)
  , "WorkmailAction" :: Maybe (WorkmailAction)
  , "LambdaAction" :: Maybe (LambdaAction)
  , "StopAction" :: Maybe (StopAction)
  , "AddHeaderAction" :: Maybe (AddHeaderAction)
  , "SNSAction" :: Maybe (SNSAction)
  }
derive instance newtypeReceiptAction :: Newtype ReceiptAction _
derive instance repGenericReceiptAction :: Generic ReceiptAction _
instance showReceiptAction :: Show ReceiptAction where show = genericShow
instance decodeReceiptAction :: Decode ReceiptAction where decode = genericDecode options
instance encodeReceiptAction :: Encode ReceiptAction where encode = genericEncode options

-- | Constructs ReceiptAction from required parameters
newReceiptAction :: ReceiptAction
newReceiptAction  = ReceiptAction { "AddHeaderAction": Nothing, "BounceAction": Nothing, "LambdaAction": Nothing, "S3Action": Nothing, "SNSAction": Nothing, "StopAction": Nothing, "WorkmailAction": Nothing }

-- | Constructs ReceiptAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReceiptAction' :: ( { "S3Action" :: Maybe (S3Action) , "BounceAction" :: Maybe (BounceAction) , "WorkmailAction" :: Maybe (WorkmailAction) , "LambdaAction" :: Maybe (LambdaAction) , "StopAction" :: Maybe (StopAction) , "AddHeaderAction" :: Maybe (AddHeaderAction) , "SNSAction" :: Maybe (SNSAction) } -> {"S3Action" :: Maybe (S3Action) , "BounceAction" :: Maybe (BounceAction) , "WorkmailAction" :: Maybe (WorkmailAction) , "LambdaAction" :: Maybe (LambdaAction) , "StopAction" :: Maybe (StopAction) , "AddHeaderAction" :: Maybe (AddHeaderAction) , "SNSAction" :: Maybe (SNSAction) } ) -> ReceiptAction
newReceiptAction'  customize = (ReceiptAction <<< customize) { "AddHeaderAction": Nothing, "BounceAction": Nothing, "LambdaAction": Nothing, "S3Action": Nothing, "SNSAction": Nothing, "StopAction": Nothing, "WorkmailAction": Nothing }



newtype ReceiptActionsList = ReceiptActionsList (Array ReceiptAction)
derive instance newtypeReceiptActionsList :: Newtype ReceiptActionsList _
derive instance repGenericReceiptActionsList :: Generic ReceiptActionsList _
instance showReceiptActionsList :: Show ReceiptActionsList where show = genericShow
instance decodeReceiptActionsList :: Decode ReceiptActionsList where decode = genericDecode options
instance encodeReceiptActionsList :: Encode ReceiptActionsList where encode = genericEncode options



-- | <p>A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.</p> <p>For information about setting up IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>
newtype ReceiptFilter = ReceiptFilter 
  { "Name" :: (ReceiptFilterName)
  , "IpFilter" :: (ReceiptIpFilter)
  }
derive instance newtypeReceiptFilter :: Newtype ReceiptFilter _
derive instance repGenericReceiptFilter :: Generic ReceiptFilter _
instance showReceiptFilter :: Show ReceiptFilter where show = genericShow
instance decodeReceiptFilter :: Decode ReceiptFilter where decode = genericDecode options
instance encodeReceiptFilter :: Encode ReceiptFilter where encode = genericEncode options

-- | Constructs ReceiptFilter from required parameters
newReceiptFilter :: ReceiptIpFilter -> ReceiptFilterName -> ReceiptFilter
newReceiptFilter _IpFilter _Name = ReceiptFilter { "IpFilter": _IpFilter, "Name": _Name }

-- | Constructs ReceiptFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReceiptFilter' :: ReceiptIpFilter -> ReceiptFilterName -> ( { "Name" :: (ReceiptFilterName) , "IpFilter" :: (ReceiptIpFilter) } -> {"Name" :: (ReceiptFilterName) , "IpFilter" :: (ReceiptIpFilter) } ) -> ReceiptFilter
newReceiptFilter' _IpFilter _Name customize = (ReceiptFilter <<< customize) { "IpFilter": _IpFilter, "Name": _Name }



newtype ReceiptFilterList = ReceiptFilterList (Array ReceiptFilter)
derive instance newtypeReceiptFilterList :: Newtype ReceiptFilterList _
derive instance repGenericReceiptFilterList :: Generic ReceiptFilterList _
instance showReceiptFilterList :: Show ReceiptFilterList where show = genericShow
instance decodeReceiptFilterList :: Decode ReceiptFilterList where decode = genericDecode options
instance encodeReceiptFilterList :: Encode ReceiptFilterList where encode = genericEncode options



newtype ReceiptFilterName = ReceiptFilterName String
derive instance newtypeReceiptFilterName :: Newtype ReceiptFilterName _
derive instance repGenericReceiptFilterName :: Generic ReceiptFilterName _
instance showReceiptFilterName :: Show ReceiptFilterName where show = genericShow
instance decodeReceiptFilterName :: Decode ReceiptFilterName where decode = genericDecode options
instance encodeReceiptFilterName :: Encode ReceiptFilterName where encode = genericEncode options



newtype ReceiptFilterPolicy = ReceiptFilterPolicy String
derive instance newtypeReceiptFilterPolicy :: Newtype ReceiptFilterPolicy _
derive instance repGenericReceiptFilterPolicy :: Generic ReceiptFilterPolicy _
instance showReceiptFilterPolicy :: Show ReceiptFilterPolicy where show = genericShow
instance decodeReceiptFilterPolicy :: Decode ReceiptFilterPolicy where decode = genericDecode options
instance encodeReceiptFilterPolicy :: Encode ReceiptFilterPolicy where encode = genericEncode options



-- | <p>A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.</p> <p>For information about setting up IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>
newtype ReceiptIpFilter = ReceiptIpFilter 
  { "Policy" :: (ReceiptFilterPolicy)
  , "Cidr" :: (Cidr)
  }
derive instance newtypeReceiptIpFilter :: Newtype ReceiptIpFilter _
derive instance repGenericReceiptIpFilter :: Generic ReceiptIpFilter _
instance showReceiptIpFilter :: Show ReceiptIpFilter where show = genericShow
instance decodeReceiptIpFilter :: Decode ReceiptIpFilter where decode = genericDecode options
instance encodeReceiptIpFilter :: Encode ReceiptIpFilter where encode = genericEncode options

-- | Constructs ReceiptIpFilter from required parameters
newReceiptIpFilter :: Cidr -> ReceiptFilterPolicy -> ReceiptIpFilter
newReceiptIpFilter _Cidr _Policy = ReceiptIpFilter { "Cidr": _Cidr, "Policy": _Policy }

-- | Constructs ReceiptIpFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReceiptIpFilter' :: Cidr -> ReceiptFilterPolicy -> ( { "Policy" :: (ReceiptFilterPolicy) , "Cidr" :: (Cidr) } -> {"Policy" :: (ReceiptFilterPolicy) , "Cidr" :: (Cidr) } ) -> ReceiptIpFilter
newReceiptIpFilter' _Cidr _Policy customize = (ReceiptIpFilter <<< customize) { "Cidr": _Cidr, "Policy": _Policy }



-- | <p>Receipt rules enable you to specify which actions Amazon SES should take when it receives mail on behalf of one or more email addresses or domains that you own.</p> <p>Each receipt rule defines a set of email addresses or domains that it applies to. If the email addresses or domains match at least one recipient address of the message, Amazon SES executes all of the receipt rule's actions on the message.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p>
newtype ReceiptRule = ReceiptRule 
  { "Name" :: (ReceiptRuleName)
  , "Enabled" :: Maybe (Enabled)
  , "TlsPolicy" :: Maybe (TlsPolicy)
  , "Recipients" :: Maybe (RecipientsList)
  , "Actions" :: Maybe (ReceiptActionsList)
  , "ScanEnabled" :: Maybe (Enabled)
  }
derive instance newtypeReceiptRule :: Newtype ReceiptRule _
derive instance repGenericReceiptRule :: Generic ReceiptRule _
instance showReceiptRule :: Show ReceiptRule where show = genericShow
instance decodeReceiptRule :: Decode ReceiptRule where decode = genericDecode options
instance encodeReceiptRule :: Encode ReceiptRule where encode = genericEncode options

-- | Constructs ReceiptRule from required parameters
newReceiptRule :: ReceiptRuleName -> ReceiptRule
newReceiptRule _Name = ReceiptRule { "Name": _Name, "Actions": Nothing, "Enabled": Nothing, "Recipients": Nothing, "ScanEnabled": Nothing, "TlsPolicy": Nothing }

-- | Constructs ReceiptRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReceiptRule' :: ReceiptRuleName -> ( { "Name" :: (ReceiptRuleName) , "Enabled" :: Maybe (Enabled) , "TlsPolicy" :: Maybe (TlsPolicy) , "Recipients" :: Maybe (RecipientsList) , "Actions" :: Maybe (ReceiptActionsList) , "ScanEnabled" :: Maybe (Enabled) } -> {"Name" :: (ReceiptRuleName) , "Enabled" :: Maybe (Enabled) , "TlsPolicy" :: Maybe (TlsPolicy) , "Recipients" :: Maybe (RecipientsList) , "Actions" :: Maybe (ReceiptActionsList) , "ScanEnabled" :: Maybe (Enabled) } ) -> ReceiptRule
newReceiptRule' _Name customize = (ReceiptRule <<< customize) { "Name": _Name, "Actions": Nothing, "Enabled": Nothing, "Recipients": Nothing, "ScanEnabled": Nothing, "TlsPolicy": Nothing }



newtype ReceiptRuleName = ReceiptRuleName String
derive instance newtypeReceiptRuleName :: Newtype ReceiptRuleName _
derive instance repGenericReceiptRuleName :: Generic ReceiptRuleName _
instance showReceiptRuleName :: Show ReceiptRuleName where show = genericShow
instance decodeReceiptRuleName :: Decode ReceiptRuleName where decode = genericDecode options
instance encodeReceiptRuleName :: Encode ReceiptRuleName where encode = genericEncode options



newtype ReceiptRuleNamesList = ReceiptRuleNamesList (Array ReceiptRuleName)
derive instance newtypeReceiptRuleNamesList :: Newtype ReceiptRuleNamesList _
derive instance repGenericReceiptRuleNamesList :: Generic ReceiptRuleNamesList _
instance showReceiptRuleNamesList :: Show ReceiptRuleNamesList where show = genericShow
instance decodeReceiptRuleNamesList :: Decode ReceiptRuleNamesList where decode = genericDecode options
instance encodeReceiptRuleNamesList :: Encode ReceiptRuleNamesList where encode = genericEncode options



-- | <p>Information about a receipt rule set.</p> <p>A receipt rule set is a collection of rules that specify what Amazon SES should do with mail it receives on behalf of your account's verified domains.</p> <p>For information about setting up receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p>
newtype ReceiptRuleSetMetadata = ReceiptRuleSetMetadata 
  { "Name" :: Maybe (ReceiptRuleSetName)
  , "CreatedTimestamp" :: Maybe (Types.Timestamp)
  }
derive instance newtypeReceiptRuleSetMetadata :: Newtype ReceiptRuleSetMetadata _
derive instance repGenericReceiptRuleSetMetadata :: Generic ReceiptRuleSetMetadata _
instance showReceiptRuleSetMetadata :: Show ReceiptRuleSetMetadata where show = genericShow
instance decodeReceiptRuleSetMetadata :: Decode ReceiptRuleSetMetadata where decode = genericDecode options
instance encodeReceiptRuleSetMetadata :: Encode ReceiptRuleSetMetadata where encode = genericEncode options

-- | Constructs ReceiptRuleSetMetadata from required parameters
newReceiptRuleSetMetadata :: ReceiptRuleSetMetadata
newReceiptRuleSetMetadata  = ReceiptRuleSetMetadata { "CreatedTimestamp": Nothing, "Name": Nothing }

-- | Constructs ReceiptRuleSetMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReceiptRuleSetMetadata' :: ( { "Name" :: Maybe (ReceiptRuleSetName) , "CreatedTimestamp" :: Maybe (Types.Timestamp) } -> {"Name" :: Maybe (ReceiptRuleSetName) , "CreatedTimestamp" :: Maybe (Types.Timestamp) } ) -> ReceiptRuleSetMetadata
newReceiptRuleSetMetadata'  customize = (ReceiptRuleSetMetadata <<< customize) { "CreatedTimestamp": Nothing, "Name": Nothing }



newtype ReceiptRuleSetName = ReceiptRuleSetName String
derive instance newtypeReceiptRuleSetName :: Newtype ReceiptRuleSetName _
derive instance repGenericReceiptRuleSetName :: Generic ReceiptRuleSetName _
instance showReceiptRuleSetName :: Show ReceiptRuleSetName where show = genericShow
instance decodeReceiptRuleSetName :: Decode ReceiptRuleSetName where decode = genericDecode options
instance encodeReceiptRuleSetName :: Encode ReceiptRuleSetName where encode = genericEncode options



newtype ReceiptRuleSetsLists = ReceiptRuleSetsLists (Array ReceiptRuleSetMetadata)
derive instance newtypeReceiptRuleSetsLists :: Newtype ReceiptRuleSetsLists _
derive instance repGenericReceiptRuleSetsLists :: Generic ReceiptRuleSetsLists _
instance showReceiptRuleSetsLists :: Show ReceiptRuleSetsLists where show = genericShow
instance decodeReceiptRuleSetsLists :: Decode ReceiptRuleSetsLists where decode = genericDecode options
instance encodeReceiptRuleSetsLists :: Encode ReceiptRuleSetsLists where encode = genericEncode options



newtype ReceiptRulesList = ReceiptRulesList (Array ReceiptRule)
derive instance newtypeReceiptRulesList :: Newtype ReceiptRulesList _
derive instance repGenericReceiptRulesList :: Generic ReceiptRulesList _
instance showReceiptRulesList :: Show ReceiptRulesList where show = genericShow
instance decodeReceiptRulesList :: Decode ReceiptRulesList where decode = genericDecode options
instance encodeReceiptRulesList :: Encode ReceiptRulesList where encode = genericEncode options



newtype Recipient = Recipient String
derive instance newtypeRecipient :: Newtype Recipient _
derive instance repGenericRecipient :: Generic Recipient _
instance showRecipient :: Show Recipient where show = genericShow
instance decodeRecipient :: Decode Recipient where decode = genericDecode options
instance encodeRecipient :: Encode Recipient where encode = genericEncode options



-- | <p>Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
newtype RecipientDsnFields = RecipientDsnFields 
  { "FinalRecipient" :: Maybe (Address)
  , "Action" :: (DsnAction)
  , "RemoteMta" :: Maybe (RemoteMta)
  , "Status" :: (DsnStatus)
  , "DiagnosticCode" :: Maybe (DiagnosticCode)
  , "LastAttemptDate" :: Maybe (LastAttemptDate)
  , "ExtensionFields" :: Maybe (ExtensionFieldList)
  }
derive instance newtypeRecipientDsnFields :: Newtype RecipientDsnFields _
derive instance repGenericRecipientDsnFields :: Generic RecipientDsnFields _
instance showRecipientDsnFields :: Show RecipientDsnFields where show = genericShow
instance decodeRecipientDsnFields :: Decode RecipientDsnFields where decode = genericDecode options
instance encodeRecipientDsnFields :: Encode RecipientDsnFields where encode = genericEncode options

-- | Constructs RecipientDsnFields from required parameters
newRecipientDsnFields :: DsnAction -> DsnStatus -> RecipientDsnFields
newRecipientDsnFields _Action _Status = RecipientDsnFields { "Action": _Action, "Status": _Status, "DiagnosticCode": Nothing, "ExtensionFields": Nothing, "FinalRecipient": Nothing, "LastAttemptDate": Nothing, "RemoteMta": Nothing }

-- | Constructs RecipientDsnFields's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecipientDsnFields' :: DsnAction -> DsnStatus -> ( { "FinalRecipient" :: Maybe (Address) , "Action" :: (DsnAction) , "RemoteMta" :: Maybe (RemoteMta) , "Status" :: (DsnStatus) , "DiagnosticCode" :: Maybe (DiagnosticCode) , "LastAttemptDate" :: Maybe (LastAttemptDate) , "ExtensionFields" :: Maybe (ExtensionFieldList) } -> {"FinalRecipient" :: Maybe (Address) , "Action" :: (DsnAction) , "RemoteMta" :: Maybe (RemoteMta) , "Status" :: (DsnStatus) , "DiagnosticCode" :: Maybe (DiagnosticCode) , "LastAttemptDate" :: Maybe (LastAttemptDate) , "ExtensionFields" :: Maybe (ExtensionFieldList) } ) -> RecipientDsnFields
newRecipientDsnFields' _Action _Status customize = (RecipientDsnFields <<< customize) { "Action": _Action, "Status": _Status, "DiagnosticCode": Nothing, "ExtensionFields": Nothing, "FinalRecipient": Nothing, "LastAttemptDate": Nothing, "RemoteMta": Nothing }



newtype RecipientsList = RecipientsList (Array Recipient)
derive instance newtypeRecipientsList :: Newtype RecipientsList _
derive instance repGenericRecipientsList :: Generic RecipientsList _
instance showRecipientsList :: Show RecipientsList where show = genericShow
instance decodeRecipientsList :: Decode RecipientsList where decode = genericDecode options
instance encodeRecipientsList :: Encode RecipientsList where encode = genericEncode options



newtype RemoteMta = RemoteMta String
derive instance newtypeRemoteMta :: Newtype RemoteMta _
derive instance repGenericRemoteMta :: Generic RemoteMta _
instance showRemoteMta :: Show RemoteMta where show = genericShow
instance decodeRemoteMta :: Decode RemoteMta where decode = genericDecode options
instance encodeRemoteMta :: Encode RemoteMta where encode = genericEncode options



newtype RenderedTemplate = RenderedTemplate String
derive instance newtypeRenderedTemplate :: Newtype RenderedTemplate _
derive instance repGenericRenderedTemplate :: Generic RenderedTemplate _
instance showRenderedTemplate :: Show RenderedTemplate where show = genericShow
instance decodeRenderedTemplate :: Decode RenderedTemplate where decode = genericDecode options
instance encodeRenderedTemplate :: Encode RenderedTemplate where encode = genericEncode options



-- | <p>Represents a request to reorder the receipt rules within a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype ReorderReceiptRuleSetRequest = ReorderReceiptRuleSetRequest 
  { "RuleSetName" :: (ReceiptRuleSetName)
  , "RuleNames" :: (ReceiptRuleNamesList)
  }
derive instance newtypeReorderReceiptRuleSetRequest :: Newtype ReorderReceiptRuleSetRequest _
derive instance repGenericReorderReceiptRuleSetRequest :: Generic ReorderReceiptRuleSetRequest _
instance showReorderReceiptRuleSetRequest :: Show ReorderReceiptRuleSetRequest where show = genericShow
instance decodeReorderReceiptRuleSetRequest :: Decode ReorderReceiptRuleSetRequest where decode = genericDecode options
instance encodeReorderReceiptRuleSetRequest :: Encode ReorderReceiptRuleSetRequest where encode = genericEncode options

-- | Constructs ReorderReceiptRuleSetRequest from required parameters
newReorderReceiptRuleSetRequest :: ReceiptRuleNamesList -> ReceiptRuleSetName -> ReorderReceiptRuleSetRequest
newReorderReceiptRuleSetRequest _RuleNames _RuleSetName = ReorderReceiptRuleSetRequest { "RuleNames": _RuleNames, "RuleSetName": _RuleSetName }

-- | Constructs ReorderReceiptRuleSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReorderReceiptRuleSetRequest' :: ReceiptRuleNamesList -> ReceiptRuleSetName -> ( { "RuleSetName" :: (ReceiptRuleSetName) , "RuleNames" :: (ReceiptRuleNamesList) } -> {"RuleSetName" :: (ReceiptRuleSetName) , "RuleNames" :: (ReceiptRuleNamesList) } ) -> ReorderReceiptRuleSetRequest
newReorderReceiptRuleSetRequest' _RuleNames _RuleSetName customize = (ReorderReceiptRuleSetRequest <<< customize) { "RuleNames": _RuleNames, "RuleSetName": _RuleSetName }



-- | <p>An empty element returned on a successful request.</p>
newtype ReorderReceiptRuleSetResponse = ReorderReceiptRuleSetResponse Types.NoArguments
derive instance newtypeReorderReceiptRuleSetResponse :: Newtype ReorderReceiptRuleSetResponse _
derive instance repGenericReorderReceiptRuleSetResponse :: Generic ReorderReceiptRuleSetResponse _
instance showReorderReceiptRuleSetResponse :: Show ReorderReceiptRuleSetResponse where show = genericShow
instance decodeReorderReceiptRuleSetResponse :: Decode ReorderReceiptRuleSetResponse where decode = genericDecode options
instance encodeReorderReceiptRuleSetResponse :: Encode ReorderReceiptRuleSetResponse where encode = genericEncode options



newtype ReportingMta = ReportingMta String
derive instance newtypeReportingMta :: Newtype ReportingMta _
derive instance repGenericReportingMta :: Generic ReportingMta _
instance showReportingMta :: Show ReportingMta where show = genericShow
instance decodeReportingMta :: Decode ReportingMta where decode = genericDecode options
instance encodeReportingMta :: Encode ReportingMta where encode = genericEncode options



-- | <p>Contains information about the reputation settings for a configuration set.</p>
newtype ReputationOptions = ReputationOptions 
  { "SendingEnabled" :: Maybe (Enabled)
  , "ReputationMetricsEnabled" :: Maybe (Enabled)
  , "LastFreshStart" :: Maybe (LastFreshStart)
  }
derive instance newtypeReputationOptions :: Newtype ReputationOptions _
derive instance repGenericReputationOptions :: Generic ReputationOptions _
instance showReputationOptions :: Show ReputationOptions where show = genericShow
instance decodeReputationOptions :: Decode ReputationOptions where decode = genericDecode options
instance encodeReputationOptions :: Encode ReputationOptions where encode = genericEncode options

-- | Constructs ReputationOptions from required parameters
newReputationOptions :: ReputationOptions
newReputationOptions  = ReputationOptions { "LastFreshStart": Nothing, "ReputationMetricsEnabled": Nothing, "SendingEnabled": Nothing }

-- | Constructs ReputationOptions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReputationOptions' :: ( { "SendingEnabled" :: Maybe (Enabled) , "ReputationMetricsEnabled" :: Maybe (Enabled) , "LastFreshStart" :: Maybe (LastFreshStart) } -> {"SendingEnabled" :: Maybe (Enabled) , "ReputationMetricsEnabled" :: Maybe (Enabled) , "LastFreshStart" :: Maybe (LastFreshStart) } ) -> ReputationOptions
newReputationOptions'  customize = (ReputationOptions <<< customize) { "LastFreshStart": Nothing, "ReputationMetricsEnabled": Nothing, "SendingEnabled": Nothing }



-- | <p>Indicates that the provided receipt rule does not exist.</p>
newtype RuleDoesNotExistException = RuleDoesNotExistException 
  { "Name" :: Maybe (RuleOrRuleSetName)
  }
derive instance newtypeRuleDoesNotExistException :: Newtype RuleDoesNotExistException _
derive instance repGenericRuleDoesNotExistException :: Generic RuleDoesNotExistException _
instance showRuleDoesNotExistException :: Show RuleDoesNotExistException where show = genericShow
instance decodeRuleDoesNotExistException :: Decode RuleDoesNotExistException where decode = genericDecode options
instance encodeRuleDoesNotExistException :: Encode RuleDoesNotExistException where encode = genericEncode options

-- | Constructs RuleDoesNotExistException from required parameters
newRuleDoesNotExistException :: RuleDoesNotExistException
newRuleDoesNotExistException  = RuleDoesNotExistException { "Name": Nothing }

-- | Constructs RuleDoesNotExistException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRuleDoesNotExistException' :: ( { "Name" :: Maybe (RuleOrRuleSetName) } -> {"Name" :: Maybe (RuleOrRuleSetName) } ) -> RuleDoesNotExistException
newRuleDoesNotExistException'  customize = (RuleDoesNotExistException <<< customize) { "Name": Nothing }



newtype RuleOrRuleSetName = RuleOrRuleSetName String
derive instance newtypeRuleOrRuleSetName :: Newtype RuleOrRuleSetName _
derive instance repGenericRuleOrRuleSetName :: Generic RuleOrRuleSetName _
instance showRuleOrRuleSetName :: Show RuleOrRuleSetName where show = genericShow
instance decodeRuleOrRuleSetName :: Decode RuleOrRuleSetName where decode = genericDecode options
instance encodeRuleOrRuleSetName :: Encode RuleOrRuleSetName where encode = genericEncode options



-- | <p>Indicates that the provided receipt rule set does not exist.</p>
newtype RuleSetDoesNotExistException = RuleSetDoesNotExistException 
  { "Name" :: Maybe (RuleOrRuleSetName)
  }
derive instance newtypeRuleSetDoesNotExistException :: Newtype RuleSetDoesNotExistException _
derive instance repGenericRuleSetDoesNotExistException :: Generic RuleSetDoesNotExistException _
instance showRuleSetDoesNotExistException :: Show RuleSetDoesNotExistException where show = genericShow
instance decodeRuleSetDoesNotExistException :: Decode RuleSetDoesNotExistException where decode = genericDecode options
instance encodeRuleSetDoesNotExistException :: Encode RuleSetDoesNotExistException where encode = genericEncode options

-- | Constructs RuleSetDoesNotExistException from required parameters
newRuleSetDoesNotExistException :: RuleSetDoesNotExistException
newRuleSetDoesNotExistException  = RuleSetDoesNotExistException { "Name": Nothing }

-- | Constructs RuleSetDoesNotExistException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRuleSetDoesNotExistException' :: ( { "Name" :: Maybe (RuleOrRuleSetName) } -> {"Name" :: Maybe (RuleOrRuleSetName) } ) -> RuleSetDoesNotExistException
newRuleSetDoesNotExistException'  customize = (RuleSetDoesNotExistException <<< customize) { "Name": Nothing }



-- | <p>When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>To enable Amazon SES to write emails to your Amazon S3 bucket, use an AWS KMS key to encrypt your emails, or publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <note> <p>When you save your emails to an Amazon S3 bucket, the maximum email size (including headers) is 30 MB. Emails larger than that will bounce.</p> </note> <p>For information about specifying Amazon S3 actions in receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html">Amazon SES Developer Guide</a>.</p>
newtype S3Action = S3Action 
  { "TopicArn" :: Maybe (AmazonResourceName)
  , "BucketName" :: (S3BucketName)
  , "ObjectKeyPrefix" :: Maybe (S3KeyPrefix)
  , "KmsKeyArn" :: Maybe (AmazonResourceName)
  }
derive instance newtypeS3Action :: Newtype S3Action _
derive instance repGenericS3Action :: Generic S3Action _
instance showS3Action :: Show S3Action where show = genericShow
instance decodeS3Action :: Decode S3Action where decode = genericDecode options
instance encodeS3Action :: Encode S3Action where encode = genericEncode options

-- | Constructs S3Action from required parameters
newS3Action :: S3BucketName -> S3Action
newS3Action _BucketName = S3Action { "BucketName": _BucketName, "KmsKeyArn": Nothing, "ObjectKeyPrefix": Nothing, "TopicArn": Nothing }

-- | Constructs S3Action's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3Action' :: S3BucketName -> ( { "TopicArn" :: Maybe (AmazonResourceName) , "BucketName" :: (S3BucketName) , "ObjectKeyPrefix" :: Maybe (S3KeyPrefix) , "KmsKeyArn" :: Maybe (AmazonResourceName) } -> {"TopicArn" :: Maybe (AmazonResourceName) , "BucketName" :: (S3BucketName) , "ObjectKeyPrefix" :: Maybe (S3KeyPrefix) , "KmsKeyArn" :: Maybe (AmazonResourceName) } ) -> S3Action
newS3Action' _BucketName customize = (S3Action <<< customize) { "BucketName": _BucketName, "KmsKeyArn": Nothing, "ObjectKeyPrefix": Nothing, "TopicArn": Nothing }



newtype S3BucketName = S3BucketName String
derive instance newtypeS3BucketName :: Newtype S3BucketName _
derive instance repGenericS3BucketName :: Generic S3BucketName _
instance showS3BucketName :: Show S3BucketName where show = genericShow
instance decodeS3BucketName :: Decode S3BucketName where decode = genericDecode options
instance encodeS3BucketName :: Encode S3BucketName where encode = genericEncode options



newtype S3KeyPrefix = S3KeyPrefix String
derive instance newtypeS3KeyPrefix :: Newtype S3KeyPrefix _
derive instance repGenericS3KeyPrefix :: Generic S3KeyPrefix _
instance showS3KeyPrefix :: Show S3KeyPrefix where show = genericShow
instance decodeS3KeyPrefix :: Decode S3KeyPrefix where decode = genericDecode options
instance encodeS3KeyPrefix :: Encode S3KeyPrefix where encode = genericEncode options



-- | <p>When included in a receipt rule, this action publishes a notification to Amazon Simple Notification Service (Amazon SNS). This action includes a complete copy of the email content in the Amazon SNS notifications. Amazon SNS notifications for all other actions simply provide information about the email. They do not include the email content itself.</p> <p>If you own the Amazon SNS topic, you don't need to do anything to give Amazon SES permission to publish emails to it. However, if you don't own the Amazon SNS topic, you need to attach a policy to the topic to give Amazon SES permissions to access it. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <important> <p>You can only publish emails that are 150 KB or less (including the header) to Amazon SNS. Larger emails will bounce. If you anticipate emails larger than 150 KB, use the S3 action instead.</p> </important> <p>For information about using a receipt rule to publish an Amazon SNS notification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-sns.html">Amazon SES Developer Guide</a>.</p>
newtype SNSAction = SNSAction 
  { "TopicArn" :: (AmazonResourceName)
  , "Encoding" :: Maybe (SNSActionEncoding)
  }
derive instance newtypeSNSAction :: Newtype SNSAction _
derive instance repGenericSNSAction :: Generic SNSAction _
instance showSNSAction :: Show SNSAction where show = genericShow
instance decodeSNSAction :: Decode SNSAction where decode = genericDecode options
instance encodeSNSAction :: Encode SNSAction where encode = genericEncode options

-- | Constructs SNSAction from required parameters
newSNSAction :: AmazonResourceName -> SNSAction
newSNSAction _TopicArn = SNSAction { "TopicArn": _TopicArn, "Encoding": Nothing }

-- | Constructs SNSAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSNSAction' :: AmazonResourceName -> ( { "TopicArn" :: (AmazonResourceName) , "Encoding" :: Maybe (SNSActionEncoding) } -> {"TopicArn" :: (AmazonResourceName) , "Encoding" :: Maybe (SNSActionEncoding) } ) -> SNSAction
newSNSAction' _TopicArn customize = (SNSAction <<< customize) { "TopicArn": _TopicArn, "Encoding": Nothing }



newtype SNSActionEncoding = SNSActionEncoding String
derive instance newtypeSNSActionEncoding :: Newtype SNSActionEncoding _
derive instance repGenericSNSActionEncoding :: Generic SNSActionEncoding _
instance showSNSActionEncoding :: Show SNSActionEncoding where show = genericShow
instance decodeSNSActionEncoding :: Decode SNSActionEncoding where decode = genericDecode options
instance encodeSNSActionEncoding :: Encode SNSActionEncoding where encode = genericEncode options



-- | <p>Contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event destination.</p> <p>Event destinations, such as Amazon SNS, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype SNSDestination = SNSDestination 
  { "TopicARN" :: (AmazonResourceName)
  }
derive instance newtypeSNSDestination :: Newtype SNSDestination _
derive instance repGenericSNSDestination :: Generic SNSDestination _
instance showSNSDestination :: Show SNSDestination where show = genericShow
instance decodeSNSDestination :: Decode SNSDestination where decode = genericDecode options
instance encodeSNSDestination :: Encode SNSDestination where encode = genericEncode options

-- | Constructs SNSDestination from required parameters
newSNSDestination :: AmazonResourceName -> SNSDestination
newSNSDestination _TopicARN = SNSDestination { "TopicARN": _TopicARN }

-- | Constructs SNSDestination's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSNSDestination' :: AmazonResourceName -> ( { "TopicARN" :: (AmazonResourceName) } -> {"TopicARN" :: (AmazonResourceName) } ) -> SNSDestination
newSNSDestination' _TopicARN customize = (SNSDestination <<< customize) { "TopicARN": _TopicARN }



-- | <p>Represents a request to send a bounce message to the sender of an email you received through Amazon SES.</p>
newtype SendBounceRequest = SendBounceRequest 
  { "OriginalMessageId" :: (MessageId)
  , "BounceSender" :: (Address)
  , "Explanation" :: Maybe (Explanation)
  , "MessageDsn" :: Maybe (MessageDsn)
  , "BouncedRecipientInfoList" :: (BouncedRecipientInfoList)
  , "BounceSenderArn" :: Maybe (AmazonResourceName)
  }
derive instance newtypeSendBounceRequest :: Newtype SendBounceRequest _
derive instance repGenericSendBounceRequest :: Generic SendBounceRequest _
instance showSendBounceRequest :: Show SendBounceRequest where show = genericShow
instance decodeSendBounceRequest :: Decode SendBounceRequest where decode = genericDecode options
instance encodeSendBounceRequest :: Encode SendBounceRequest where encode = genericEncode options

-- | Constructs SendBounceRequest from required parameters
newSendBounceRequest :: Address -> BouncedRecipientInfoList -> MessageId -> SendBounceRequest
newSendBounceRequest _BounceSender _BouncedRecipientInfoList _OriginalMessageId = SendBounceRequest { "BounceSender": _BounceSender, "BouncedRecipientInfoList": _BouncedRecipientInfoList, "OriginalMessageId": _OriginalMessageId, "BounceSenderArn": Nothing, "Explanation": Nothing, "MessageDsn": Nothing }

-- | Constructs SendBounceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendBounceRequest' :: Address -> BouncedRecipientInfoList -> MessageId -> ( { "OriginalMessageId" :: (MessageId) , "BounceSender" :: (Address) , "Explanation" :: Maybe (Explanation) , "MessageDsn" :: Maybe (MessageDsn) , "BouncedRecipientInfoList" :: (BouncedRecipientInfoList) , "BounceSenderArn" :: Maybe (AmazonResourceName) } -> {"OriginalMessageId" :: (MessageId) , "BounceSender" :: (Address) , "Explanation" :: Maybe (Explanation) , "MessageDsn" :: Maybe (MessageDsn) , "BouncedRecipientInfoList" :: (BouncedRecipientInfoList) , "BounceSenderArn" :: Maybe (AmazonResourceName) } ) -> SendBounceRequest
newSendBounceRequest' _BounceSender _BouncedRecipientInfoList _OriginalMessageId customize = (SendBounceRequest <<< customize) { "BounceSender": _BounceSender, "BouncedRecipientInfoList": _BouncedRecipientInfoList, "OriginalMessageId": _OriginalMessageId, "BounceSenderArn": Nothing, "Explanation": Nothing, "MessageDsn": Nothing }



-- | <p>Represents a unique message ID.</p>
newtype SendBounceResponse = SendBounceResponse 
  { "MessageId" :: Maybe (MessageId)
  }
derive instance newtypeSendBounceResponse :: Newtype SendBounceResponse _
derive instance repGenericSendBounceResponse :: Generic SendBounceResponse _
instance showSendBounceResponse :: Show SendBounceResponse where show = genericShow
instance decodeSendBounceResponse :: Decode SendBounceResponse where decode = genericDecode options
instance encodeSendBounceResponse :: Encode SendBounceResponse where encode = genericEncode options

-- | Constructs SendBounceResponse from required parameters
newSendBounceResponse :: SendBounceResponse
newSendBounceResponse  = SendBounceResponse { "MessageId": Nothing }

-- | Constructs SendBounceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendBounceResponse' :: ( { "MessageId" :: Maybe (MessageId) } -> {"MessageId" :: Maybe (MessageId) } ) -> SendBounceResponse
newSendBounceResponse'  customize = (SendBounceResponse <<< customize) { "MessageId": Nothing }



-- | <p>Represents a request to send a templated email to multiple destinations using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>
newtype SendBulkTemplatedEmailRequest = SendBulkTemplatedEmailRequest 
  { "Source" :: (Address)
  , "SourceArn" :: Maybe (AmazonResourceName)
  , "ReplyToAddresses" :: Maybe (AddressList)
  , "ReturnPath" :: Maybe (Address)
  , "ReturnPathArn" :: Maybe (AmazonResourceName)
  , "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  , "DefaultTags" :: Maybe (MessageTagList)
  , "Template" :: (TemplateName)
  , "TemplateArn" :: Maybe (AmazonResourceName)
  , "DefaultTemplateData" :: Maybe (TemplateData)
  , "Destinations" :: (BulkEmailDestinationList)
  }
derive instance newtypeSendBulkTemplatedEmailRequest :: Newtype SendBulkTemplatedEmailRequest _
derive instance repGenericSendBulkTemplatedEmailRequest :: Generic SendBulkTemplatedEmailRequest _
instance showSendBulkTemplatedEmailRequest :: Show SendBulkTemplatedEmailRequest where show = genericShow
instance decodeSendBulkTemplatedEmailRequest :: Decode SendBulkTemplatedEmailRequest where decode = genericDecode options
instance encodeSendBulkTemplatedEmailRequest :: Encode SendBulkTemplatedEmailRequest where encode = genericEncode options

-- | Constructs SendBulkTemplatedEmailRequest from required parameters
newSendBulkTemplatedEmailRequest :: BulkEmailDestinationList -> Address -> TemplateName -> SendBulkTemplatedEmailRequest
newSendBulkTemplatedEmailRequest _Destinations _Source _Template = SendBulkTemplatedEmailRequest { "Destinations": _Destinations, "Source": _Source, "Template": _Template, "ConfigurationSetName": Nothing, "DefaultTags": Nothing, "DefaultTemplateData": Nothing, "ReplyToAddresses": Nothing, "ReturnPath": Nothing, "ReturnPathArn": Nothing, "SourceArn": Nothing, "TemplateArn": Nothing }

-- | Constructs SendBulkTemplatedEmailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendBulkTemplatedEmailRequest' :: BulkEmailDestinationList -> Address -> TemplateName -> ( { "Source" :: (Address) , "SourceArn" :: Maybe (AmazonResourceName) , "ReplyToAddresses" :: Maybe (AddressList) , "ReturnPath" :: Maybe (Address) , "ReturnPathArn" :: Maybe (AmazonResourceName) , "ConfigurationSetName" :: Maybe (ConfigurationSetName) , "DefaultTags" :: Maybe (MessageTagList) , "Template" :: (TemplateName) , "TemplateArn" :: Maybe (AmazonResourceName) , "DefaultTemplateData" :: Maybe (TemplateData) , "Destinations" :: (BulkEmailDestinationList) } -> {"Source" :: (Address) , "SourceArn" :: Maybe (AmazonResourceName) , "ReplyToAddresses" :: Maybe (AddressList) , "ReturnPath" :: Maybe (Address) , "ReturnPathArn" :: Maybe (AmazonResourceName) , "ConfigurationSetName" :: Maybe (ConfigurationSetName) , "DefaultTags" :: Maybe (MessageTagList) , "Template" :: (TemplateName) , "TemplateArn" :: Maybe (AmazonResourceName) , "DefaultTemplateData" :: Maybe (TemplateData) , "Destinations" :: (BulkEmailDestinationList) } ) -> SendBulkTemplatedEmailRequest
newSendBulkTemplatedEmailRequest' _Destinations _Source _Template customize = (SendBulkTemplatedEmailRequest <<< customize) { "Destinations": _Destinations, "Source": _Source, "Template": _Template, "ConfigurationSetName": Nothing, "DefaultTags": Nothing, "DefaultTemplateData": Nothing, "ReplyToAddresses": Nothing, "ReturnPath": Nothing, "ReturnPathArn": Nothing, "SourceArn": Nothing, "TemplateArn": Nothing }



newtype SendBulkTemplatedEmailResponse = SendBulkTemplatedEmailResponse 
  { "Status" :: (BulkEmailDestinationStatusList)
  }
derive instance newtypeSendBulkTemplatedEmailResponse :: Newtype SendBulkTemplatedEmailResponse _
derive instance repGenericSendBulkTemplatedEmailResponse :: Generic SendBulkTemplatedEmailResponse _
instance showSendBulkTemplatedEmailResponse :: Show SendBulkTemplatedEmailResponse where show = genericShow
instance decodeSendBulkTemplatedEmailResponse :: Decode SendBulkTemplatedEmailResponse where decode = genericDecode options
instance encodeSendBulkTemplatedEmailResponse :: Encode SendBulkTemplatedEmailResponse where encode = genericEncode options

-- | Constructs SendBulkTemplatedEmailResponse from required parameters
newSendBulkTemplatedEmailResponse :: BulkEmailDestinationStatusList -> SendBulkTemplatedEmailResponse
newSendBulkTemplatedEmailResponse _Status = SendBulkTemplatedEmailResponse { "Status": _Status }

-- | Constructs SendBulkTemplatedEmailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendBulkTemplatedEmailResponse' :: BulkEmailDestinationStatusList -> ( { "Status" :: (BulkEmailDestinationStatusList) } -> {"Status" :: (BulkEmailDestinationStatusList) } ) -> SendBulkTemplatedEmailResponse
newSendBulkTemplatedEmailResponse' _Status customize = (SendBulkTemplatedEmailResponse <<< customize) { "Status": _Status }



-- | <p>Represents a request to send a custom verification email to a specified recipient.</p>
newtype SendCustomVerificationEmailRequest = SendCustomVerificationEmailRequest 
  { "EmailAddress" :: (Address)
  , "TemplateName" :: (TemplateName)
  , "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  }
derive instance newtypeSendCustomVerificationEmailRequest :: Newtype SendCustomVerificationEmailRequest _
derive instance repGenericSendCustomVerificationEmailRequest :: Generic SendCustomVerificationEmailRequest _
instance showSendCustomVerificationEmailRequest :: Show SendCustomVerificationEmailRequest where show = genericShow
instance decodeSendCustomVerificationEmailRequest :: Decode SendCustomVerificationEmailRequest where decode = genericDecode options
instance encodeSendCustomVerificationEmailRequest :: Encode SendCustomVerificationEmailRequest where encode = genericEncode options

-- | Constructs SendCustomVerificationEmailRequest from required parameters
newSendCustomVerificationEmailRequest :: Address -> TemplateName -> SendCustomVerificationEmailRequest
newSendCustomVerificationEmailRequest _EmailAddress _TemplateName = SendCustomVerificationEmailRequest { "EmailAddress": _EmailAddress, "TemplateName": _TemplateName, "ConfigurationSetName": Nothing }

-- | Constructs SendCustomVerificationEmailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendCustomVerificationEmailRequest' :: Address -> TemplateName -> ( { "EmailAddress" :: (Address) , "TemplateName" :: (TemplateName) , "ConfigurationSetName" :: Maybe (ConfigurationSetName) } -> {"EmailAddress" :: (Address) , "TemplateName" :: (TemplateName) , "ConfigurationSetName" :: Maybe (ConfigurationSetName) } ) -> SendCustomVerificationEmailRequest
newSendCustomVerificationEmailRequest' _EmailAddress _TemplateName customize = (SendCustomVerificationEmailRequest <<< customize) { "EmailAddress": _EmailAddress, "TemplateName": _TemplateName, "ConfigurationSetName": Nothing }



-- | <p>The response received when attempting to send the custom verification email.</p>
newtype SendCustomVerificationEmailResponse = SendCustomVerificationEmailResponse 
  { "MessageId" :: Maybe (MessageId)
  }
derive instance newtypeSendCustomVerificationEmailResponse :: Newtype SendCustomVerificationEmailResponse _
derive instance repGenericSendCustomVerificationEmailResponse :: Generic SendCustomVerificationEmailResponse _
instance showSendCustomVerificationEmailResponse :: Show SendCustomVerificationEmailResponse where show = genericShow
instance decodeSendCustomVerificationEmailResponse :: Decode SendCustomVerificationEmailResponse where decode = genericDecode options
instance encodeSendCustomVerificationEmailResponse :: Encode SendCustomVerificationEmailResponse where encode = genericEncode options

-- | Constructs SendCustomVerificationEmailResponse from required parameters
newSendCustomVerificationEmailResponse :: SendCustomVerificationEmailResponse
newSendCustomVerificationEmailResponse  = SendCustomVerificationEmailResponse { "MessageId": Nothing }

-- | Constructs SendCustomVerificationEmailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendCustomVerificationEmailResponse' :: ( { "MessageId" :: Maybe (MessageId) } -> {"MessageId" :: Maybe (MessageId) } ) -> SendCustomVerificationEmailResponse
newSendCustomVerificationEmailResponse'  customize = (SendCustomVerificationEmailResponse <<< customize) { "MessageId": Nothing }



-- | <p>Represents sending statistics data. Each <code>SendDataPoint</code> contains statistics for a 15-minute period of sending activity. </p>
newtype SendDataPoint = SendDataPoint 
  { "Timestamp" :: Maybe (Types.Timestamp)
  , "DeliveryAttempts" :: Maybe (Counter)
  , "Bounces" :: Maybe (Counter)
  , "Complaints" :: Maybe (Counter)
  , "Rejects" :: Maybe (Counter)
  }
derive instance newtypeSendDataPoint :: Newtype SendDataPoint _
derive instance repGenericSendDataPoint :: Generic SendDataPoint _
instance showSendDataPoint :: Show SendDataPoint where show = genericShow
instance decodeSendDataPoint :: Decode SendDataPoint where decode = genericDecode options
instance encodeSendDataPoint :: Encode SendDataPoint where encode = genericEncode options

-- | Constructs SendDataPoint from required parameters
newSendDataPoint :: SendDataPoint
newSendDataPoint  = SendDataPoint { "Bounces": Nothing, "Complaints": Nothing, "DeliveryAttempts": Nothing, "Rejects": Nothing, "Timestamp": Nothing }

-- | Constructs SendDataPoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendDataPoint' :: ( { "Timestamp" :: Maybe (Types.Timestamp) , "DeliveryAttempts" :: Maybe (Counter) , "Bounces" :: Maybe (Counter) , "Complaints" :: Maybe (Counter) , "Rejects" :: Maybe (Counter) } -> {"Timestamp" :: Maybe (Types.Timestamp) , "DeliveryAttempts" :: Maybe (Counter) , "Bounces" :: Maybe (Counter) , "Complaints" :: Maybe (Counter) , "Rejects" :: Maybe (Counter) } ) -> SendDataPoint
newSendDataPoint'  customize = (SendDataPoint <<< customize) { "Bounces": Nothing, "Complaints": Nothing, "DeliveryAttempts": Nothing, "Rejects": Nothing, "Timestamp": Nothing }



newtype SendDataPointList = SendDataPointList (Array SendDataPoint)
derive instance newtypeSendDataPointList :: Newtype SendDataPointList _
derive instance repGenericSendDataPointList :: Generic SendDataPointList _
instance showSendDataPointList :: Show SendDataPointList where show = genericShow
instance decodeSendDataPointList :: Decode SendDataPointList where decode = genericDecode options
instance encodeSendDataPointList :: Encode SendDataPointList where encode = genericEncode options



-- | <p>Represents a request to send a single formatted email using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-formatted.html">Amazon SES Developer Guide</a>.</p>
newtype SendEmailRequest = SendEmailRequest 
  { "Source" :: (Address)
  , "Destination" :: (Destination)
  , "Message" :: (Message)
  , "ReplyToAddresses" :: Maybe (AddressList)
  , "ReturnPath" :: Maybe (Address)
  , "SourceArn" :: Maybe (AmazonResourceName)
  , "ReturnPathArn" :: Maybe (AmazonResourceName)
  , "Tags" :: Maybe (MessageTagList)
  , "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  }
derive instance newtypeSendEmailRequest :: Newtype SendEmailRequest _
derive instance repGenericSendEmailRequest :: Generic SendEmailRequest _
instance showSendEmailRequest :: Show SendEmailRequest where show = genericShow
instance decodeSendEmailRequest :: Decode SendEmailRequest where decode = genericDecode options
instance encodeSendEmailRequest :: Encode SendEmailRequest where encode = genericEncode options

-- | Constructs SendEmailRequest from required parameters
newSendEmailRequest :: Destination -> Message -> Address -> SendEmailRequest
newSendEmailRequest _Destination _Message _Source = SendEmailRequest { "Destination": _Destination, "Message": _Message, "Source": _Source, "ConfigurationSetName": Nothing, "ReplyToAddresses": Nothing, "ReturnPath": Nothing, "ReturnPathArn": Nothing, "SourceArn": Nothing, "Tags": Nothing }

-- | Constructs SendEmailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendEmailRequest' :: Destination -> Message -> Address -> ( { "Source" :: (Address) , "Destination" :: (Destination) , "Message" :: (Message) , "ReplyToAddresses" :: Maybe (AddressList) , "ReturnPath" :: Maybe (Address) , "SourceArn" :: Maybe (AmazonResourceName) , "ReturnPathArn" :: Maybe (AmazonResourceName) , "Tags" :: Maybe (MessageTagList) , "ConfigurationSetName" :: Maybe (ConfigurationSetName) } -> {"Source" :: (Address) , "Destination" :: (Destination) , "Message" :: (Message) , "ReplyToAddresses" :: Maybe (AddressList) , "ReturnPath" :: Maybe (Address) , "SourceArn" :: Maybe (AmazonResourceName) , "ReturnPathArn" :: Maybe (AmazonResourceName) , "Tags" :: Maybe (MessageTagList) , "ConfigurationSetName" :: Maybe (ConfigurationSetName) } ) -> SendEmailRequest
newSendEmailRequest' _Destination _Message _Source customize = (SendEmailRequest <<< customize) { "Destination": _Destination, "Message": _Message, "Source": _Source, "ConfigurationSetName": Nothing, "ReplyToAddresses": Nothing, "ReturnPath": Nothing, "ReturnPathArn": Nothing, "SourceArn": Nothing, "Tags": Nothing }



-- | <p>Represents a unique message ID.</p>
newtype SendEmailResponse = SendEmailResponse 
  { "MessageId" :: (MessageId)
  }
derive instance newtypeSendEmailResponse :: Newtype SendEmailResponse _
derive instance repGenericSendEmailResponse :: Generic SendEmailResponse _
instance showSendEmailResponse :: Show SendEmailResponse where show = genericShow
instance decodeSendEmailResponse :: Decode SendEmailResponse where decode = genericDecode options
instance encodeSendEmailResponse :: Encode SendEmailResponse where encode = genericEncode options

-- | Constructs SendEmailResponse from required parameters
newSendEmailResponse :: MessageId -> SendEmailResponse
newSendEmailResponse _MessageId = SendEmailResponse { "MessageId": _MessageId }

-- | Constructs SendEmailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendEmailResponse' :: MessageId -> ( { "MessageId" :: (MessageId) } -> {"MessageId" :: (MessageId) } ) -> SendEmailResponse
newSendEmailResponse' _MessageId customize = (SendEmailResponse <<< customize) { "MessageId": _MessageId }



-- | <p>Represents a request to send a single raw email using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html">Amazon SES Developer Guide</a>.</p>
newtype SendRawEmailRequest = SendRawEmailRequest 
  { "Source" :: Maybe (Address)
  , "Destinations" :: Maybe (AddressList)
  , "RawMessage" :: (RawMessage)
  , "FromArn" :: Maybe (AmazonResourceName)
  , "SourceArn" :: Maybe (AmazonResourceName)
  , "ReturnPathArn" :: Maybe (AmazonResourceName)
  , "Tags" :: Maybe (MessageTagList)
  , "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  }
derive instance newtypeSendRawEmailRequest :: Newtype SendRawEmailRequest _
derive instance repGenericSendRawEmailRequest :: Generic SendRawEmailRequest _
instance showSendRawEmailRequest :: Show SendRawEmailRequest where show = genericShow
instance decodeSendRawEmailRequest :: Decode SendRawEmailRequest where decode = genericDecode options
instance encodeSendRawEmailRequest :: Encode SendRawEmailRequest where encode = genericEncode options

-- | Constructs SendRawEmailRequest from required parameters
newSendRawEmailRequest :: RawMessage -> SendRawEmailRequest
newSendRawEmailRequest _RawMessage = SendRawEmailRequest { "RawMessage": _RawMessage, "ConfigurationSetName": Nothing, "Destinations": Nothing, "FromArn": Nothing, "ReturnPathArn": Nothing, "Source": Nothing, "SourceArn": Nothing, "Tags": Nothing }

-- | Constructs SendRawEmailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendRawEmailRequest' :: RawMessage -> ( { "Source" :: Maybe (Address) , "Destinations" :: Maybe (AddressList) , "RawMessage" :: (RawMessage) , "FromArn" :: Maybe (AmazonResourceName) , "SourceArn" :: Maybe (AmazonResourceName) , "ReturnPathArn" :: Maybe (AmazonResourceName) , "Tags" :: Maybe (MessageTagList) , "ConfigurationSetName" :: Maybe (ConfigurationSetName) } -> {"Source" :: Maybe (Address) , "Destinations" :: Maybe (AddressList) , "RawMessage" :: (RawMessage) , "FromArn" :: Maybe (AmazonResourceName) , "SourceArn" :: Maybe (AmazonResourceName) , "ReturnPathArn" :: Maybe (AmazonResourceName) , "Tags" :: Maybe (MessageTagList) , "ConfigurationSetName" :: Maybe (ConfigurationSetName) } ) -> SendRawEmailRequest
newSendRawEmailRequest' _RawMessage customize = (SendRawEmailRequest <<< customize) { "RawMessage": _RawMessage, "ConfigurationSetName": Nothing, "Destinations": Nothing, "FromArn": Nothing, "ReturnPathArn": Nothing, "Source": Nothing, "SourceArn": Nothing, "Tags": Nothing }



-- | <p>Represents a unique message ID.</p>
newtype SendRawEmailResponse = SendRawEmailResponse 
  { "MessageId" :: (MessageId)
  }
derive instance newtypeSendRawEmailResponse :: Newtype SendRawEmailResponse _
derive instance repGenericSendRawEmailResponse :: Generic SendRawEmailResponse _
instance showSendRawEmailResponse :: Show SendRawEmailResponse where show = genericShow
instance decodeSendRawEmailResponse :: Decode SendRawEmailResponse where decode = genericDecode options
instance encodeSendRawEmailResponse :: Encode SendRawEmailResponse where encode = genericEncode options

-- | Constructs SendRawEmailResponse from required parameters
newSendRawEmailResponse :: MessageId -> SendRawEmailResponse
newSendRawEmailResponse _MessageId = SendRawEmailResponse { "MessageId": _MessageId }

-- | Constructs SendRawEmailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendRawEmailResponse' :: MessageId -> ( { "MessageId" :: (MessageId) } -> {"MessageId" :: (MessageId) } ) -> SendRawEmailResponse
newSendRawEmailResponse' _MessageId customize = (SendRawEmailResponse <<< customize) { "MessageId": _MessageId }



-- | <p>Represents a request to send a templated email using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>
newtype SendTemplatedEmailRequest = SendTemplatedEmailRequest 
  { "Source" :: (Address)
  , "Destination" :: (Destination)
  , "ReplyToAddresses" :: Maybe (AddressList)
  , "ReturnPath" :: Maybe (Address)
  , "SourceArn" :: Maybe (AmazonResourceName)
  , "ReturnPathArn" :: Maybe (AmazonResourceName)
  , "Tags" :: Maybe (MessageTagList)
  , "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  , "Template" :: (TemplateName)
  , "TemplateArn" :: Maybe (AmazonResourceName)
  , "TemplateData" :: (TemplateData)
  }
derive instance newtypeSendTemplatedEmailRequest :: Newtype SendTemplatedEmailRequest _
derive instance repGenericSendTemplatedEmailRequest :: Generic SendTemplatedEmailRequest _
instance showSendTemplatedEmailRequest :: Show SendTemplatedEmailRequest where show = genericShow
instance decodeSendTemplatedEmailRequest :: Decode SendTemplatedEmailRequest where decode = genericDecode options
instance encodeSendTemplatedEmailRequest :: Encode SendTemplatedEmailRequest where encode = genericEncode options

-- | Constructs SendTemplatedEmailRequest from required parameters
newSendTemplatedEmailRequest :: Destination -> Address -> TemplateName -> TemplateData -> SendTemplatedEmailRequest
newSendTemplatedEmailRequest _Destination _Source _Template _TemplateData = SendTemplatedEmailRequest { "Destination": _Destination, "Source": _Source, "Template": _Template, "TemplateData": _TemplateData, "ConfigurationSetName": Nothing, "ReplyToAddresses": Nothing, "ReturnPath": Nothing, "ReturnPathArn": Nothing, "SourceArn": Nothing, "Tags": Nothing, "TemplateArn": Nothing }

-- | Constructs SendTemplatedEmailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendTemplatedEmailRequest' :: Destination -> Address -> TemplateName -> TemplateData -> ( { "Source" :: (Address) , "Destination" :: (Destination) , "ReplyToAddresses" :: Maybe (AddressList) , "ReturnPath" :: Maybe (Address) , "SourceArn" :: Maybe (AmazonResourceName) , "ReturnPathArn" :: Maybe (AmazonResourceName) , "Tags" :: Maybe (MessageTagList) , "ConfigurationSetName" :: Maybe (ConfigurationSetName) , "Template" :: (TemplateName) , "TemplateArn" :: Maybe (AmazonResourceName) , "TemplateData" :: (TemplateData) } -> {"Source" :: (Address) , "Destination" :: (Destination) , "ReplyToAddresses" :: Maybe (AddressList) , "ReturnPath" :: Maybe (Address) , "SourceArn" :: Maybe (AmazonResourceName) , "ReturnPathArn" :: Maybe (AmazonResourceName) , "Tags" :: Maybe (MessageTagList) , "ConfigurationSetName" :: Maybe (ConfigurationSetName) , "Template" :: (TemplateName) , "TemplateArn" :: Maybe (AmazonResourceName) , "TemplateData" :: (TemplateData) } ) -> SendTemplatedEmailRequest
newSendTemplatedEmailRequest' _Destination _Source _Template _TemplateData customize = (SendTemplatedEmailRequest <<< customize) { "Destination": _Destination, "Source": _Source, "Template": _Template, "TemplateData": _TemplateData, "ConfigurationSetName": Nothing, "ReplyToAddresses": Nothing, "ReturnPath": Nothing, "ReturnPathArn": Nothing, "SourceArn": Nothing, "Tags": Nothing, "TemplateArn": Nothing }



newtype SendTemplatedEmailResponse = SendTemplatedEmailResponse 
  { "MessageId" :: (MessageId)
  }
derive instance newtypeSendTemplatedEmailResponse :: Newtype SendTemplatedEmailResponse _
derive instance repGenericSendTemplatedEmailResponse :: Generic SendTemplatedEmailResponse _
instance showSendTemplatedEmailResponse :: Show SendTemplatedEmailResponse where show = genericShow
instance decodeSendTemplatedEmailResponse :: Decode SendTemplatedEmailResponse where decode = genericDecode options
instance encodeSendTemplatedEmailResponse :: Encode SendTemplatedEmailResponse where encode = genericEncode options

-- | Constructs SendTemplatedEmailResponse from required parameters
newSendTemplatedEmailResponse :: MessageId -> SendTemplatedEmailResponse
newSendTemplatedEmailResponse _MessageId = SendTemplatedEmailResponse { "MessageId": _MessageId }

-- | Constructs SendTemplatedEmailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendTemplatedEmailResponse' :: MessageId -> ( { "MessageId" :: (MessageId) } -> {"MessageId" :: (MessageId) } ) -> SendTemplatedEmailResponse
newSendTemplatedEmailResponse' _MessageId customize = (SendTemplatedEmailResponse <<< customize) { "MessageId": _MessageId }



newtype SentLast24Hours = SentLast24Hours Number
derive instance newtypeSentLast24Hours :: Newtype SentLast24Hours _
derive instance repGenericSentLast24Hours :: Generic SentLast24Hours _
instance showSentLast24Hours :: Show SentLast24Hours where show = genericShow
instance decodeSentLast24Hours :: Decode SentLast24Hours where decode = genericDecode options
instance encodeSentLast24Hours :: Encode SentLast24Hours where encode = genericEncode options



-- | <p>Represents a request to set a receipt rule set as the active receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype SetActiveReceiptRuleSetRequest = SetActiveReceiptRuleSetRequest 
  { "RuleSetName" :: Maybe (ReceiptRuleSetName)
  }
derive instance newtypeSetActiveReceiptRuleSetRequest :: Newtype SetActiveReceiptRuleSetRequest _
derive instance repGenericSetActiveReceiptRuleSetRequest :: Generic SetActiveReceiptRuleSetRequest _
instance showSetActiveReceiptRuleSetRequest :: Show SetActiveReceiptRuleSetRequest where show = genericShow
instance decodeSetActiveReceiptRuleSetRequest :: Decode SetActiveReceiptRuleSetRequest where decode = genericDecode options
instance encodeSetActiveReceiptRuleSetRequest :: Encode SetActiveReceiptRuleSetRequest where encode = genericEncode options

-- | Constructs SetActiveReceiptRuleSetRequest from required parameters
newSetActiveReceiptRuleSetRequest :: SetActiveReceiptRuleSetRequest
newSetActiveReceiptRuleSetRequest  = SetActiveReceiptRuleSetRequest { "RuleSetName": Nothing }

-- | Constructs SetActiveReceiptRuleSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetActiveReceiptRuleSetRequest' :: ( { "RuleSetName" :: Maybe (ReceiptRuleSetName) } -> {"RuleSetName" :: Maybe (ReceiptRuleSetName) } ) -> SetActiveReceiptRuleSetRequest
newSetActiveReceiptRuleSetRequest'  customize = (SetActiveReceiptRuleSetRequest <<< customize) { "RuleSetName": Nothing }



-- | <p>An empty element returned on a successful request.</p>
newtype SetActiveReceiptRuleSetResponse = SetActiveReceiptRuleSetResponse Types.NoArguments
derive instance newtypeSetActiveReceiptRuleSetResponse :: Newtype SetActiveReceiptRuleSetResponse _
derive instance repGenericSetActiveReceiptRuleSetResponse :: Generic SetActiveReceiptRuleSetResponse _
instance showSetActiveReceiptRuleSetResponse :: Show SetActiveReceiptRuleSetResponse where show = genericShow
instance decodeSetActiveReceiptRuleSetResponse :: Decode SetActiveReceiptRuleSetResponse where decode = genericDecode options
instance encodeSetActiveReceiptRuleSetResponse :: Encode SetActiveReceiptRuleSetResponse where encode = genericEncode options



-- | <p>Represents a request to enable or disable Amazon SES Easy DKIM signing for an identity. For more information about setting up Easy DKIM, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>
newtype SetIdentityDkimEnabledRequest = SetIdentityDkimEnabledRequest 
  { "Identity" :: (Identity)
  , "DkimEnabled" :: (Enabled)
  }
derive instance newtypeSetIdentityDkimEnabledRequest :: Newtype SetIdentityDkimEnabledRequest _
derive instance repGenericSetIdentityDkimEnabledRequest :: Generic SetIdentityDkimEnabledRequest _
instance showSetIdentityDkimEnabledRequest :: Show SetIdentityDkimEnabledRequest where show = genericShow
instance decodeSetIdentityDkimEnabledRequest :: Decode SetIdentityDkimEnabledRequest where decode = genericDecode options
instance encodeSetIdentityDkimEnabledRequest :: Encode SetIdentityDkimEnabledRequest where encode = genericEncode options

-- | Constructs SetIdentityDkimEnabledRequest from required parameters
newSetIdentityDkimEnabledRequest :: Enabled -> Identity -> SetIdentityDkimEnabledRequest
newSetIdentityDkimEnabledRequest _DkimEnabled _Identity = SetIdentityDkimEnabledRequest { "DkimEnabled": _DkimEnabled, "Identity": _Identity }

-- | Constructs SetIdentityDkimEnabledRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetIdentityDkimEnabledRequest' :: Enabled -> Identity -> ( { "Identity" :: (Identity) , "DkimEnabled" :: (Enabled) } -> {"Identity" :: (Identity) , "DkimEnabled" :: (Enabled) } ) -> SetIdentityDkimEnabledRequest
newSetIdentityDkimEnabledRequest' _DkimEnabled _Identity customize = (SetIdentityDkimEnabledRequest <<< customize) { "DkimEnabled": _DkimEnabled, "Identity": _Identity }



-- | <p>An empty element returned on a successful request.</p>
newtype SetIdentityDkimEnabledResponse = SetIdentityDkimEnabledResponse Types.NoArguments
derive instance newtypeSetIdentityDkimEnabledResponse :: Newtype SetIdentityDkimEnabledResponse _
derive instance repGenericSetIdentityDkimEnabledResponse :: Generic SetIdentityDkimEnabledResponse _
instance showSetIdentityDkimEnabledResponse :: Show SetIdentityDkimEnabledResponse where show = genericShow
instance decodeSetIdentityDkimEnabledResponse :: Decode SetIdentityDkimEnabledResponse where decode = genericDecode options
instance encodeSetIdentityDkimEnabledResponse :: Encode SetIdentityDkimEnabledResponse where encode = genericEncode options



-- | <p>Represents a request to enable or disable whether Amazon SES forwards you bounce and complaint notifications through email. For information about email feedback forwarding, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-email.html">Amazon SES Developer Guide</a>.</p>
newtype SetIdentityFeedbackForwardingEnabledRequest = SetIdentityFeedbackForwardingEnabledRequest 
  { "Identity" :: (Identity)
  , "ForwardingEnabled" :: (Enabled)
  }
derive instance newtypeSetIdentityFeedbackForwardingEnabledRequest :: Newtype SetIdentityFeedbackForwardingEnabledRequest _
derive instance repGenericSetIdentityFeedbackForwardingEnabledRequest :: Generic SetIdentityFeedbackForwardingEnabledRequest _
instance showSetIdentityFeedbackForwardingEnabledRequest :: Show SetIdentityFeedbackForwardingEnabledRequest where show = genericShow
instance decodeSetIdentityFeedbackForwardingEnabledRequest :: Decode SetIdentityFeedbackForwardingEnabledRequest where decode = genericDecode options
instance encodeSetIdentityFeedbackForwardingEnabledRequest :: Encode SetIdentityFeedbackForwardingEnabledRequest where encode = genericEncode options

-- | Constructs SetIdentityFeedbackForwardingEnabledRequest from required parameters
newSetIdentityFeedbackForwardingEnabledRequest :: Enabled -> Identity -> SetIdentityFeedbackForwardingEnabledRequest
newSetIdentityFeedbackForwardingEnabledRequest _ForwardingEnabled _Identity = SetIdentityFeedbackForwardingEnabledRequest { "ForwardingEnabled": _ForwardingEnabled, "Identity": _Identity }

-- | Constructs SetIdentityFeedbackForwardingEnabledRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetIdentityFeedbackForwardingEnabledRequest' :: Enabled -> Identity -> ( { "Identity" :: (Identity) , "ForwardingEnabled" :: (Enabled) } -> {"Identity" :: (Identity) , "ForwardingEnabled" :: (Enabled) } ) -> SetIdentityFeedbackForwardingEnabledRequest
newSetIdentityFeedbackForwardingEnabledRequest' _ForwardingEnabled _Identity customize = (SetIdentityFeedbackForwardingEnabledRequest <<< customize) { "ForwardingEnabled": _ForwardingEnabled, "Identity": _Identity }



-- | <p>An empty element returned on a successful request.</p>
newtype SetIdentityFeedbackForwardingEnabledResponse = SetIdentityFeedbackForwardingEnabledResponse Types.NoArguments
derive instance newtypeSetIdentityFeedbackForwardingEnabledResponse :: Newtype SetIdentityFeedbackForwardingEnabledResponse _
derive instance repGenericSetIdentityFeedbackForwardingEnabledResponse :: Generic SetIdentityFeedbackForwardingEnabledResponse _
instance showSetIdentityFeedbackForwardingEnabledResponse :: Show SetIdentityFeedbackForwardingEnabledResponse where show = genericShow
instance decodeSetIdentityFeedbackForwardingEnabledResponse :: Decode SetIdentityFeedbackForwardingEnabledResponse where decode = genericDecode options
instance encodeSetIdentityFeedbackForwardingEnabledResponse :: Encode SetIdentityFeedbackForwardingEnabledResponse where encode = genericEncode options



-- | <p>Represents a request to set whether Amazon SES includes the original email headers in the Amazon SNS notifications of a specified type. For information about notifications, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html">Amazon SES Developer Guide</a>.</p>
newtype SetIdentityHeadersInNotificationsEnabledRequest = SetIdentityHeadersInNotificationsEnabledRequest 
  { "Identity" :: (Identity)
  , "NotificationType" :: (NotificationType)
  , "Enabled" :: (Enabled)
  }
derive instance newtypeSetIdentityHeadersInNotificationsEnabledRequest :: Newtype SetIdentityHeadersInNotificationsEnabledRequest _
derive instance repGenericSetIdentityHeadersInNotificationsEnabledRequest :: Generic SetIdentityHeadersInNotificationsEnabledRequest _
instance showSetIdentityHeadersInNotificationsEnabledRequest :: Show SetIdentityHeadersInNotificationsEnabledRequest where show = genericShow
instance decodeSetIdentityHeadersInNotificationsEnabledRequest :: Decode SetIdentityHeadersInNotificationsEnabledRequest where decode = genericDecode options
instance encodeSetIdentityHeadersInNotificationsEnabledRequest :: Encode SetIdentityHeadersInNotificationsEnabledRequest where encode = genericEncode options

-- | Constructs SetIdentityHeadersInNotificationsEnabledRequest from required parameters
newSetIdentityHeadersInNotificationsEnabledRequest :: Enabled -> Identity -> NotificationType -> SetIdentityHeadersInNotificationsEnabledRequest
newSetIdentityHeadersInNotificationsEnabledRequest _Enabled _Identity _NotificationType = SetIdentityHeadersInNotificationsEnabledRequest { "Enabled": _Enabled, "Identity": _Identity, "NotificationType": _NotificationType }

-- | Constructs SetIdentityHeadersInNotificationsEnabledRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetIdentityHeadersInNotificationsEnabledRequest' :: Enabled -> Identity -> NotificationType -> ( { "Identity" :: (Identity) , "NotificationType" :: (NotificationType) , "Enabled" :: (Enabled) } -> {"Identity" :: (Identity) , "NotificationType" :: (NotificationType) , "Enabled" :: (Enabled) } ) -> SetIdentityHeadersInNotificationsEnabledRequest
newSetIdentityHeadersInNotificationsEnabledRequest' _Enabled _Identity _NotificationType customize = (SetIdentityHeadersInNotificationsEnabledRequest <<< customize) { "Enabled": _Enabled, "Identity": _Identity, "NotificationType": _NotificationType }



-- | <p>An empty element returned on a successful request.</p>
newtype SetIdentityHeadersInNotificationsEnabledResponse = SetIdentityHeadersInNotificationsEnabledResponse Types.NoArguments
derive instance newtypeSetIdentityHeadersInNotificationsEnabledResponse :: Newtype SetIdentityHeadersInNotificationsEnabledResponse _
derive instance repGenericSetIdentityHeadersInNotificationsEnabledResponse :: Generic SetIdentityHeadersInNotificationsEnabledResponse _
instance showSetIdentityHeadersInNotificationsEnabledResponse :: Show SetIdentityHeadersInNotificationsEnabledResponse where show = genericShow
instance decodeSetIdentityHeadersInNotificationsEnabledResponse :: Decode SetIdentityHeadersInNotificationsEnabledResponse where decode = genericDecode options
instance encodeSetIdentityHeadersInNotificationsEnabledResponse :: Encode SetIdentityHeadersInNotificationsEnabledResponse where encode = genericEncode options



-- | <p>Represents a request to enable or disable the Amazon SES custom MAIL FROM domain setup for a verified identity. For information about using a custom MAIL FROM domain, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>.</p>
newtype SetIdentityMailFromDomainRequest = SetIdentityMailFromDomainRequest 
  { "Identity" :: (Identity)
  , "MailFromDomain" :: Maybe (MailFromDomainName)
  , "BehaviorOnMXFailure" :: Maybe (BehaviorOnMXFailure)
  }
derive instance newtypeSetIdentityMailFromDomainRequest :: Newtype SetIdentityMailFromDomainRequest _
derive instance repGenericSetIdentityMailFromDomainRequest :: Generic SetIdentityMailFromDomainRequest _
instance showSetIdentityMailFromDomainRequest :: Show SetIdentityMailFromDomainRequest where show = genericShow
instance decodeSetIdentityMailFromDomainRequest :: Decode SetIdentityMailFromDomainRequest where decode = genericDecode options
instance encodeSetIdentityMailFromDomainRequest :: Encode SetIdentityMailFromDomainRequest where encode = genericEncode options

-- | Constructs SetIdentityMailFromDomainRequest from required parameters
newSetIdentityMailFromDomainRequest :: Identity -> SetIdentityMailFromDomainRequest
newSetIdentityMailFromDomainRequest _Identity = SetIdentityMailFromDomainRequest { "Identity": _Identity, "BehaviorOnMXFailure": Nothing, "MailFromDomain": Nothing }

-- | Constructs SetIdentityMailFromDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetIdentityMailFromDomainRequest' :: Identity -> ( { "Identity" :: (Identity) , "MailFromDomain" :: Maybe (MailFromDomainName) , "BehaviorOnMXFailure" :: Maybe (BehaviorOnMXFailure) } -> {"Identity" :: (Identity) , "MailFromDomain" :: Maybe (MailFromDomainName) , "BehaviorOnMXFailure" :: Maybe (BehaviorOnMXFailure) } ) -> SetIdentityMailFromDomainRequest
newSetIdentityMailFromDomainRequest' _Identity customize = (SetIdentityMailFromDomainRequest <<< customize) { "Identity": _Identity, "BehaviorOnMXFailure": Nothing, "MailFromDomain": Nothing }



-- | <p>An empty element returned on a successful request.</p>
newtype SetIdentityMailFromDomainResponse = SetIdentityMailFromDomainResponse Types.NoArguments
derive instance newtypeSetIdentityMailFromDomainResponse :: Newtype SetIdentityMailFromDomainResponse _
derive instance repGenericSetIdentityMailFromDomainResponse :: Generic SetIdentityMailFromDomainResponse _
instance showSetIdentityMailFromDomainResponse :: Show SetIdentityMailFromDomainResponse where show = genericShow
instance decodeSetIdentityMailFromDomainResponse :: Decode SetIdentityMailFromDomainResponse where decode = genericDecode options
instance encodeSetIdentityMailFromDomainResponse :: Encode SetIdentityMailFromDomainResponse where encode = genericEncode options



-- | <p>Represents a request to specify the Amazon SNS topic to which Amazon SES will publish bounce, complaint, or delivery notifications for emails sent with that identity as the Source. For information about Amazon SES notifications, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html">Amazon SES Developer Guide</a>.</p>
newtype SetIdentityNotificationTopicRequest = SetIdentityNotificationTopicRequest 
  { "Identity" :: (Identity)
  , "NotificationType" :: (NotificationType)
  , "SnsTopic" :: Maybe (NotificationTopic)
  }
derive instance newtypeSetIdentityNotificationTopicRequest :: Newtype SetIdentityNotificationTopicRequest _
derive instance repGenericSetIdentityNotificationTopicRequest :: Generic SetIdentityNotificationTopicRequest _
instance showSetIdentityNotificationTopicRequest :: Show SetIdentityNotificationTopicRequest where show = genericShow
instance decodeSetIdentityNotificationTopicRequest :: Decode SetIdentityNotificationTopicRequest where decode = genericDecode options
instance encodeSetIdentityNotificationTopicRequest :: Encode SetIdentityNotificationTopicRequest where encode = genericEncode options

-- | Constructs SetIdentityNotificationTopicRequest from required parameters
newSetIdentityNotificationTopicRequest :: Identity -> NotificationType -> SetIdentityNotificationTopicRequest
newSetIdentityNotificationTopicRequest _Identity _NotificationType = SetIdentityNotificationTopicRequest { "Identity": _Identity, "NotificationType": _NotificationType, "SnsTopic": Nothing }

-- | Constructs SetIdentityNotificationTopicRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetIdentityNotificationTopicRequest' :: Identity -> NotificationType -> ( { "Identity" :: (Identity) , "NotificationType" :: (NotificationType) , "SnsTopic" :: Maybe (NotificationTopic) } -> {"Identity" :: (Identity) , "NotificationType" :: (NotificationType) , "SnsTopic" :: Maybe (NotificationTopic) } ) -> SetIdentityNotificationTopicRequest
newSetIdentityNotificationTopicRequest' _Identity _NotificationType customize = (SetIdentityNotificationTopicRequest <<< customize) { "Identity": _Identity, "NotificationType": _NotificationType, "SnsTopic": Nothing }



-- | <p>An empty element returned on a successful request.</p>
newtype SetIdentityNotificationTopicResponse = SetIdentityNotificationTopicResponse Types.NoArguments
derive instance newtypeSetIdentityNotificationTopicResponse :: Newtype SetIdentityNotificationTopicResponse _
derive instance repGenericSetIdentityNotificationTopicResponse :: Generic SetIdentityNotificationTopicResponse _
instance showSetIdentityNotificationTopicResponse :: Show SetIdentityNotificationTopicResponse where show = genericShow
instance decodeSetIdentityNotificationTopicResponse :: Decode SetIdentityNotificationTopicResponse where decode = genericDecode options
instance encodeSetIdentityNotificationTopicResponse :: Encode SetIdentityNotificationTopicResponse where encode = genericEncode options



-- | <p>Represents a request to set the position of a receipt rule in a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype SetReceiptRulePositionRequest = SetReceiptRulePositionRequest 
  { "RuleSetName" :: (ReceiptRuleSetName)
  , "RuleName" :: (ReceiptRuleName)
  , "After" :: Maybe (ReceiptRuleName)
  }
derive instance newtypeSetReceiptRulePositionRequest :: Newtype SetReceiptRulePositionRequest _
derive instance repGenericSetReceiptRulePositionRequest :: Generic SetReceiptRulePositionRequest _
instance showSetReceiptRulePositionRequest :: Show SetReceiptRulePositionRequest where show = genericShow
instance decodeSetReceiptRulePositionRequest :: Decode SetReceiptRulePositionRequest where decode = genericDecode options
instance encodeSetReceiptRulePositionRequest :: Encode SetReceiptRulePositionRequest where encode = genericEncode options

-- | Constructs SetReceiptRulePositionRequest from required parameters
newSetReceiptRulePositionRequest :: ReceiptRuleName -> ReceiptRuleSetName -> SetReceiptRulePositionRequest
newSetReceiptRulePositionRequest _RuleName _RuleSetName = SetReceiptRulePositionRequest { "RuleName": _RuleName, "RuleSetName": _RuleSetName, "After": Nothing }

-- | Constructs SetReceiptRulePositionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetReceiptRulePositionRequest' :: ReceiptRuleName -> ReceiptRuleSetName -> ( { "RuleSetName" :: (ReceiptRuleSetName) , "RuleName" :: (ReceiptRuleName) , "After" :: Maybe (ReceiptRuleName) } -> {"RuleSetName" :: (ReceiptRuleSetName) , "RuleName" :: (ReceiptRuleName) , "After" :: Maybe (ReceiptRuleName) } ) -> SetReceiptRulePositionRequest
newSetReceiptRulePositionRequest' _RuleName _RuleSetName customize = (SetReceiptRulePositionRequest <<< customize) { "RuleName": _RuleName, "RuleSetName": _RuleSetName, "After": Nothing }



-- | <p>An empty element returned on a successful request.</p>
newtype SetReceiptRulePositionResponse = SetReceiptRulePositionResponse Types.NoArguments
derive instance newtypeSetReceiptRulePositionResponse :: Newtype SetReceiptRulePositionResponse _
derive instance repGenericSetReceiptRulePositionResponse :: Generic SetReceiptRulePositionResponse _
instance showSetReceiptRulePositionResponse :: Show SetReceiptRulePositionResponse where show = genericShow
instance decodeSetReceiptRulePositionResponse :: Decode SetReceiptRulePositionResponse where decode = genericDecode options
instance encodeSetReceiptRulePositionResponse :: Encode SetReceiptRulePositionResponse where encode = genericEncode options



-- | <p>When included in a receipt rule, this action terminates the evaluation of the receipt rule set and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>For information about setting a stop action in a receipt rule, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html">Amazon SES Developer Guide</a>.</p>
newtype StopAction = StopAction 
  { "Scope" :: (StopScope)
  , "TopicArn" :: Maybe (AmazonResourceName)
  }
derive instance newtypeStopAction :: Newtype StopAction _
derive instance repGenericStopAction :: Generic StopAction _
instance showStopAction :: Show StopAction where show = genericShow
instance decodeStopAction :: Decode StopAction where decode = genericDecode options
instance encodeStopAction :: Encode StopAction where encode = genericEncode options

-- | Constructs StopAction from required parameters
newStopAction :: StopScope -> StopAction
newStopAction _Scope = StopAction { "Scope": _Scope, "TopicArn": Nothing }

-- | Constructs StopAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopAction' :: StopScope -> ( { "Scope" :: (StopScope) , "TopicArn" :: Maybe (AmazonResourceName) } -> {"Scope" :: (StopScope) , "TopicArn" :: Maybe (AmazonResourceName) } ) -> StopAction
newStopAction' _Scope customize = (StopAction <<< customize) { "Scope": _Scope, "TopicArn": Nothing }



newtype StopScope = StopScope String
derive instance newtypeStopScope :: Newtype StopScope _
derive instance repGenericStopScope :: Generic StopScope _
instance showStopScope :: Show StopScope where show = genericShow
instance decodeStopScope :: Decode StopScope where decode = genericDecode options
instance encodeStopScope :: Encode StopScope where encode = genericEncode options



newtype Subject = Subject String
derive instance newtypeSubject :: Newtype Subject _
derive instance repGenericSubject :: Generic Subject _
instance showSubject :: Show Subject where show = genericShow
instance decodeSubject :: Decode Subject where decode = genericDecode options
instance encodeSubject :: Encode Subject where encode = genericEncode options



newtype SubjectPart = SubjectPart String
derive instance newtypeSubjectPart :: Newtype SubjectPart _
derive instance repGenericSubjectPart :: Generic SubjectPart _
instance showSubjectPart :: Show SubjectPart where show = genericShow
instance decodeSubjectPart :: Decode SubjectPart where decode = genericDecode options
instance encodeSubjectPart :: Encode SubjectPart where encode = genericEncode options



newtype SuccessRedirectionURL = SuccessRedirectionURL String
derive instance newtypeSuccessRedirectionURL :: Newtype SuccessRedirectionURL _
derive instance repGenericSuccessRedirectionURL :: Generic SuccessRedirectionURL _
instance showSuccessRedirectionURL :: Show SuccessRedirectionURL where show = genericShow
instance decodeSuccessRedirectionURL :: Decode SuccessRedirectionURL where decode = genericDecode options
instance encodeSuccessRedirectionURL :: Encode SuccessRedirectionURL where encode = genericEncode options



-- | <p>The content of the email, composed of a subject line, an HTML part, and a text-only part.</p>
newtype Template = Template 
  { "TemplateName" :: (TemplateName)
  , "SubjectPart" :: Maybe (SubjectPart)
  , "TextPart" :: Maybe (TextPart)
  , "HtmlPart" :: Maybe (HtmlPart)
  }
derive instance newtypeTemplate :: Newtype Template _
derive instance repGenericTemplate :: Generic Template _
instance showTemplate :: Show Template where show = genericShow
instance decodeTemplate :: Decode Template where decode = genericDecode options
instance encodeTemplate :: Encode Template where encode = genericEncode options

-- | Constructs Template from required parameters
newTemplate :: TemplateName -> Template
newTemplate _TemplateName = Template { "TemplateName": _TemplateName, "HtmlPart": Nothing, "SubjectPart": Nothing, "TextPart": Nothing }

-- | Constructs Template's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTemplate' :: TemplateName -> ( { "TemplateName" :: (TemplateName) , "SubjectPart" :: Maybe (SubjectPart) , "TextPart" :: Maybe (TextPart) , "HtmlPart" :: Maybe (HtmlPart) } -> {"TemplateName" :: (TemplateName) , "SubjectPart" :: Maybe (SubjectPart) , "TextPart" :: Maybe (TextPart) , "HtmlPart" :: Maybe (HtmlPart) } ) -> Template
newTemplate' _TemplateName customize = (Template <<< customize) { "TemplateName": _TemplateName, "HtmlPart": Nothing, "SubjectPart": Nothing, "TextPart": Nothing }



newtype TemplateContent = TemplateContent String
derive instance newtypeTemplateContent :: Newtype TemplateContent _
derive instance repGenericTemplateContent :: Generic TemplateContent _
instance showTemplateContent :: Show TemplateContent where show = genericShow
instance decodeTemplateContent :: Decode TemplateContent where decode = genericDecode options
instance encodeTemplateContent :: Encode TemplateContent where encode = genericEncode options



newtype TemplateData = TemplateData String
derive instance newtypeTemplateData :: Newtype TemplateData _
derive instance repGenericTemplateData :: Generic TemplateData _
instance showTemplateData :: Show TemplateData where show = genericShow
instance decodeTemplateData :: Decode TemplateData where decode = genericDecode options
instance encodeTemplateData :: Encode TemplateData where encode = genericEncode options



-- | <p>Indicates that the Template object you specified does not exist in your Amazon SES account.</p>
newtype TemplateDoesNotExistException = TemplateDoesNotExistException 
  { "TemplateName" :: Maybe (TemplateName)
  }
derive instance newtypeTemplateDoesNotExistException :: Newtype TemplateDoesNotExistException _
derive instance repGenericTemplateDoesNotExistException :: Generic TemplateDoesNotExistException _
instance showTemplateDoesNotExistException :: Show TemplateDoesNotExistException where show = genericShow
instance decodeTemplateDoesNotExistException :: Decode TemplateDoesNotExistException where decode = genericDecode options
instance encodeTemplateDoesNotExistException :: Encode TemplateDoesNotExistException where encode = genericEncode options

-- | Constructs TemplateDoesNotExistException from required parameters
newTemplateDoesNotExistException :: TemplateDoesNotExistException
newTemplateDoesNotExistException  = TemplateDoesNotExistException { "TemplateName": Nothing }

-- | Constructs TemplateDoesNotExistException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTemplateDoesNotExistException' :: ( { "TemplateName" :: Maybe (TemplateName) } -> {"TemplateName" :: Maybe (TemplateName) } ) -> TemplateDoesNotExistException
newTemplateDoesNotExistException'  customize = (TemplateDoesNotExistException <<< customize) { "TemplateName": Nothing }



-- | <p>Contains information about an email template.</p>
newtype TemplateMetadata = TemplateMetadata 
  { "Name" :: Maybe (TemplateName)
  , "CreatedTimestamp" :: Maybe (Types.Timestamp)
  }
derive instance newtypeTemplateMetadata :: Newtype TemplateMetadata _
derive instance repGenericTemplateMetadata :: Generic TemplateMetadata _
instance showTemplateMetadata :: Show TemplateMetadata where show = genericShow
instance decodeTemplateMetadata :: Decode TemplateMetadata where decode = genericDecode options
instance encodeTemplateMetadata :: Encode TemplateMetadata where encode = genericEncode options

-- | Constructs TemplateMetadata from required parameters
newTemplateMetadata :: TemplateMetadata
newTemplateMetadata  = TemplateMetadata { "CreatedTimestamp": Nothing, "Name": Nothing }

-- | Constructs TemplateMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTemplateMetadata' :: ( { "Name" :: Maybe (TemplateName) , "CreatedTimestamp" :: Maybe (Types.Timestamp) } -> {"Name" :: Maybe (TemplateName) , "CreatedTimestamp" :: Maybe (Types.Timestamp) } ) -> TemplateMetadata
newTemplateMetadata'  customize = (TemplateMetadata <<< customize) { "CreatedTimestamp": Nothing, "Name": Nothing }



newtype TemplateMetadataList = TemplateMetadataList (Array TemplateMetadata)
derive instance newtypeTemplateMetadataList :: Newtype TemplateMetadataList _
derive instance repGenericTemplateMetadataList :: Generic TemplateMetadataList _
instance showTemplateMetadataList :: Show TemplateMetadataList where show = genericShow
instance decodeTemplateMetadataList :: Decode TemplateMetadataList where decode = genericDecode options
instance encodeTemplateMetadataList :: Encode TemplateMetadataList where encode = genericEncode options



newtype TemplateName = TemplateName String
derive instance newtypeTemplateName :: Newtype TemplateName _
derive instance repGenericTemplateName :: Generic TemplateName _
instance showTemplateName :: Show TemplateName where show = genericShow
instance decodeTemplateName :: Decode TemplateName where decode = genericDecode options
instance encodeTemplateName :: Encode TemplateName where encode = genericEncode options



newtype TestRenderTemplateRequest = TestRenderTemplateRequest 
  { "TemplateName" :: (TemplateName)
  , "TemplateData" :: (TemplateData)
  }
derive instance newtypeTestRenderTemplateRequest :: Newtype TestRenderTemplateRequest _
derive instance repGenericTestRenderTemplateRequest :: Generic TestRenderTemplateRequest _
instance showTestRenderTemplateRequest :: Show TestRenderTemplateRequest where show = genericShow
instance decodeTestRenderTemplateRequest :: Decode TestRenderTemplateRequest where decode = genericDecode options
instance encodeTestRenderTemplateRequest :: Encode TestRenderTemplateRequest where encode = genericEncode options

-- | Constructs TestRenderTemplateRequest from required parameters
newTestRenderTemplateRequest :: TemplateData -> TemplateName -> TestRenderTemplateRequest
newTestRenderTemplateRequest _TemplateData _TemplateName = TestRenderTemplateRequest { "TemplateData": _TemplateData, "TemplateName": _TemplateName }

-- | Constructs TestRenderTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTestRenderTemplateRequest' :: TemplateData -> TemplateName -> ( { "TemplateName" :: (TemplateName) , "TemplateData" :: (TemplateData) } -> {"TemplateName" :: (TemplateName) , "TemplateData" :: (TemplateData) } ) -> TestRenderTemplateRequest
newTestRenderTemplateRequest' _TemplateData _TemplateName customize = (TestRenderTemplateRequest <<< customize) { "TemplateData": _TemplateData, "TemplateName": _TemplateName }



newtype TestRenderTemplateResponse = TestRenderTemplateResponse 
  { "RenderedTemplate" :: Maybe (RenderedTemplate)
  }
derive instance newtypeTestRenderTemplateResponse :: Newtype TestRenderTemplateResponse _
derive instance repGenericTestRenderTemplateResponse :: Generic TestRenderTemplateResponse _
instance showTestRenderTemplateResponse :: Show TestRenderTemplateResponse where show = genericShow
instance decodeTestRenderTemplateResponse :: Decode TestRenderTemplateResponse where decode = genericDecode options
instance encodeTestRenderTemplateResponse :: Encode TestRenderTemplateResponse where encode = genericEncode options

-- | Constructs TestRenderTemplateResponse from required parameters
newTestRenderTemplateResponse :: TestRenderTemplateResponse
newTestRenderTemplateResponse  = TestRenderTemplateResponse { "RenderedTemplate": Nothing }

-- | Constructs TestRenderTemplateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTestRenderTemplateResponse' :: ( { "RenderedTemplate" :: Maybe (RenderedTemplate) } -> {"RenderedTemplate" :: Maybe (RenderedTemplate) } ) -> TestRenderTemplateResponse
newTestRenderTemplateResponse'  customize = (TestRenderTemplateResponse <<< customize) { "RenderedTemplate": Nothing }



newtype TextPart = TextPart String
derive instance newtypeTextPart :: Newtype TextPart _
derive instance repGenericTextPart :: Generic TextPart _
instance showTextPart :: Show TextPart where show = genericShow
instance decodeTextPart :: Decode TextPart where decode = genericDecode options
instance encodeTextPart :: Encode TextPart where encode = genericEncode options



newtype TlsPolicy = TlsPolicy String
derive instance newtypeTlsPolicy :: Newtype TlsPolicy _
derive instance repGenericTlsPolicy :: Generic TlsPolicy _
instance showTlsPolicy :: Show TlsPolicy where show = genericShow
instance decodeTlsPolicy :: Decode TlsPolicy where decode = genericDecode options
instance encodeTlsPolicy :: Encode TlsPolicy where encode = genericEncode options



-- | <p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This domain captures open and click events generated by Amazon SES emails.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring Custom Domains to Handle Open and Click Tracking</a> in the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer Guide</a>.</p>
newtype TrackingOptions = TrackingOptions 
  { "CustomRedirectDomain" :: Maybe (CustomRedirectDomain)
  }
derive instance newtypeTrackingOptions :: Newtype TrackingOptions _
derive instance repGenericTrackingOptions :: Generic TrackingOptions _
instance showTrackingOptions :: Show TrackingOptions where show = genericShow
instance decodeTrackingOptions :: Decode TrackingOptions where decode = genericDecode options
instance encodeTrackingOptions :: Encode TrackingOptions where encode = genericEncode options

-- | Constructs TrackingOptions from required parameters
newTrackingOptions :: TrackingOptions
newTrackingOptions  = TrackingOptions { "CustomRedirectDomain": Nothing }

-- | Constructs TrackingOptions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrackingOptions' :: ( { "CustomRedirectDomain" :: Maybe (CustomRedirectDomain) } -> {"CustomRedirectDomain" :: Maybe (CustomRedirectDomain) } ) -> TrackingOptions
newTrackingOptions'  customize = (TrackingOptions <<< customize) { "CustomRedirectDomain": Nothing }



-- | <p>Indicates that the configuration set you specified already contains a TrackingOptions object.</p>
newtype TrackingOptionsAlreadyExistsException = TrackingOptionsAlreadyExistsException 
  { "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  }
derive instance newtypeTrackingOptionsAlreadyExistsException :: Newtype TrackingOptionsAlreadyExistsException _
derive instance repGenericTrackingOptionsAlreadyExistsException :: Generic TrackingOptionsAlreadyExistsException _
instance showTrackingOptionsAlreadyExistsException :: Show TrackingOptionsAlreadyExistsException where show = genericShow
instance decodeTrackingOptionsAlreadyExistsException :: Decode TrackingOptionsAlreadyExistsException where decode = genericDecode options
instance encodeTrackingOptionsAlreadyExistsException :: Encode TrackingOptionsAlreadyExistsException where encode = genericEncode options

-- | Constructs TrackingOptionsAlreadyExistsException from required parameters
newTrackingOptionsAlreadyExistsException :: TrackingOptionsAlreadyExistsException
newTrackingOptionsAlreadyExistsException  = TrackingOptionsAlreadyExistsException { "ConfigurationSetName": Nothing }

-- | Constructs TrackingOptionsAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrackingOptionsAlreadyExistsException' :: ( { "ConfigurationSetName" :: Maybe (ConfigurationSetName) } -> {"ConfigurationSetName" :: Maybe (ConfigurationSetName) } ) -> TrackingOptionsAlreadyExistsException
newTrackingOptionsAlreadyExistsException'  customize = (TrackingOptionsAlreadyExistsException <<< customize) { "ConfigurationSetName": Nothing }



-- | <p>Indicates that the TrackingOptions object you specified does not exist.</p>
newtype TrackingOptionsDoesNotExistException = TrackingOptionsDoesNotExistException 
  { "ConfigurationSetName" :: Maybe (ConfigurationSetName)
  }
derive instance newtypeTrackingOptionsDoesNotExistException :: Newtype TrackingOptionsDoesNotExistException _
derive instance repGenericTrackingOptionsDoesNotExistException :: Generic TrackingOptionsDoesNotExistException _
instance showTrackingOptionsDoesNotExistException :: Show TrackingOptionsDoesNotExistException where show = genericShow
instance decodeTrackingOptionsDoesNotExistException :: Decode TrackingOptionsDoesNotExistException where decode = genericDecode options
instance encodeTrackingOptionsDoesNotExistException :: Encode TrackingOptionsDoesNotExistException where encode = genericEncode options

-- | Constructs TrackingOptionsDoesNotExistException from required parameters
newTrackingOptionsDoesNotExistException :: TrackingOptionsDoesNotExistException
newTrackingOptionsDoesNotExistException  = TrackingOptionsDoesNotExistException { "ConfigurationSetName": Nothing }

-- | Constructs TrackingOptionsDoesNotExistException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrackingOptionsDoesNotExistException' :: ( { "ConfigurationSetName" :: Maybe (ConfigurationSetName) } -> {"ConfigurationSetName" :: Maybe (ConfigurationSetName) } ) -> TrackingOptionsDoesNotExistException
newTrackingOptionsDoesNotExistException'  customize = (TrackingOptionsDoesNotExistException <<< customize) { "ConfigurationSetName": Nothing }



-- | <p>Represents a request to enable or disable the email sending capabilities for your entire Amazon SES account.</p>
newtype UpdateAccountSendingEnabledRequest = UpdateAccountSendingEnabledRequest 
  { "Enabled" :: Maybe (Enabled)
  }
derive instance newtypeUpdateAccountSendingEnabledRequest :: Newtype UpdateAccountSendingEnabledRequest _
derive instance repGenericUpdateAccountSendingEnabledRequest :: Generic UpdateAccountSendingEnabledRequest _
instance showUpdateAccountSendingEnabledRequest :: Show UpdateAccountSendingEnabledRequest where show = genericShow
instance decodeUpdateAccountSendingEnabledRequest :: Decode UpdateAccountSendingEnabledRequest where decode = genericDecode options
instance encodeUpdateAccountSendingEnabledRequest :: Encode UpdateAccountSendingEnabledRequest where encode = genericEncode options

-- | Constructs UpdateAccountSendingEnabledRequest from required parameters
newUpdateAccountSendingEnabledRequest :: UpdateAccountSendingEnabledRequest
newUpdateAccountSendingEnabledRequest  = UpdateAccountSendingEnabledRequest { "Enabled": Nothing }

-- | Constructs UpdateAccountSendingEnabledRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAccountSendingEnabledRequest' :: ( { "Enabled" :: Maybe (Enabled) } -> {"Enabled" :: Maybe (Enabled) } ) -> UpdateAccountSendingEnabledRequest
newUpdateAccountSendingEnabledRequest'  customize = (UpdateAccountSendingEnabledRequest <<< customize) { "Enabled": Nothing }



-- | <p>Represents a request to update the event destination of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
newtype UpdateConfigurationSetEventDestinationRequest = UpdateConfigurationSetEventDestinationRequest 
  { "ConfigurationSetName" :: (ConfigurationSetName)
  , "EventDestination" :: (EventDestination)
  }
derive instance newtypeUpdateConfigurationSetEventDestinationRequest :: Newtype UpdateConfigurationSetEventDestinationRequest _
derive instance repGenericUpdateConfigurationSetEventDestinationRequest :: Generic UpdateConfigurationSetEventDestinationRequest _
instance showUpdateConfigurationSetEventDestinationRequest :: Show UpdateConfigurationSetEventDestinationRequest where show = genericShow
instance decodeUpdateConfigurationSetEventDestinationRequest :: Decode UpdateConfigurationSetEventDestinationRequest where decode = genericDecode options
instance encodeUpdateConfigurationSetEventDestinationRequest :: Encode UpdateConfigurationSetEventDestinationRequest where encode = genericEncode options

-- | Constructs UpdateConfigurationSetEventDestinationRequest from required parameters
newUpdateConfigurationSetEventDestinationRequest :: ConfigurationSetName -> EventDestination -> UpdateConfigurationSetEventDestinationRequest
newUpdateConfigurationSetEventDestinationRequest _ConfigurationSetName _EventDestination = UpdateConfigurationSetEventDestinationRequest { "ConfigurationSetName": _ConfigurationSetName, "EventDestination": _EventDestination }

-- | Constructs UpdateConfigurationSetEventDestinationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateConfigurationSetEventDestinationRequest' :: ConfigurationSetName -> EventDestination -> ( { "ConfigurationSetName" :: (ConfigurationSetName) , "EventDestination" :: (EventDestination) } -> {"ConfigurationSetName" :: (ConfigurationSetName) , "EventDestination" :: (EventDestination) } ) -> UpdateConfigurationSetEventDestinationRequest
newUpdateConfigurationSetEventDestinationRequest' _ConfigurationSetName _EventDestination customize = (UpdateConfigurationSetEventDestinationRequest <<< customize) { "ConfigurationSetName": _ConfigurationSetName, "EventDestination": _EventDestination }



-- | <p>An empty element returned on a successful request.</p>
newtype UpdateConfigurationSetEventDestinationResponse = UpdateConfigurationSetEventDestinationResponse Types.NoArguments
derive instance newtypeUpdateConfigurationSetEventDestinationResponse :: Newtype UpdateConfigurationSetEventDestinationResponse _
derive instance repGenericUpdateConfigurationSetEventDestinationResponse :: Generic UpdateConfigurationSetEventDestinationResponse _
instance showUpdateConfigurationSetEventDestinationResponse :: Show UpdateConfigurationSetEventDestinationResponse where show = genericShow
instance decodeUpdateConfigurationSetEventDestinationResponse :: Decode UpdateConfigurationSetEventDestinationResponse where decode = genericDecode options
instance encodeUpdateConfigurationSetEventDestinationResponse :: Encode UpdateConfigurationSetEventDestinationResponse where encode = genericEncode options



-- | <p>Represents a request to modify the reputation metric publishing settings for a configuration set.</p>
newtype UpdateConfigurationSetReputationMetricsEnabledRequest = UpdateConfigurationSetReputationMetricsEnabledRequest 
  { "ConfigurationSetName" :: (ConfigurationSetName)
  , "Enabled" :: (Enabled)
  }
derive instance newtypeUpdateConfigurationSetReputationMetricsEnabledRequest :: Newtype UpdateConfigurationSetReputationMetricsEnabledRequest _
derive instance repGenericUpdateConfigurationSetReputationMetricsEnabledRequest :: Generic UpdateConfigurationSetReputationMetricsEnabledRequest _
instance showUpdateConfigurationSetReputationMetricsEnabledRequest :: Show UpdateConfigurationSetReputationMetricsEnabledRequest where show = genericShow
instance decodeUpdateConfigurationSetReputationMetricsEnabledRequest :: Decode UpdateConfigurationSetReputationMetricsEnabledRequest where decode = genericDecode options
instance encodeUpdateConfigurationSetReputationMetricsEnabledRequest :: Encode UpdateConfigurationSetReputationMetricsEnabledRequest where encode = genericEncode options

-- | Constructs UpdateConfigurationSetReputationMetricsEnabledRequest from required parameters
newUpdateConfigurationSetReputationMetricsEnabledRequest :: ConfigurationSetName -> Enabled -> UpdateConfigurationSetReputationMetricsEnabledRequest
newUpdateConfigurationSetReputationMetricsEnabledRequest _ConfigurationSetName _Enabled = UpdateConfigurationSetReputationMetricsEnabledRequest { "ConfigurationSetName": _ConfigurationSetName, "Enabled": _Enabled }

-- | Constructs UpdateConfigurationSetReputationMetricsEnabledRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateConfigurationSetReputationMetricsEnabledRequest' :: ConfigurationSetName -> Enabled -> ( { "ConfigurationSetName" :: (ConfigurationSetName) , "Enabled" :: (Enabled) } -> {"ConfigurationSetName" :: (ConfigurationSetName) , "Enabled" :: (Enabled) } ) -> UpdateConfigurationSetReputationMetricsEnabledRequest
newUpdateConfigurationSetReputationMetricsEnabledRequest' _ConfigurationSetName _Enabled customize = (UpdateConfigurationSetReputationMetricsEnabledRequest <<< customize) { "ConfigurationSetName": _ConfigurationSetName, "Enabled": _Enabled }



-- | <p>Represents a request to enable or disable the email sending capabilities for a specific configuration set.</p>
newtype UpdateConfigurationSetSendingEnabledRequest = UpdateConfigurationSetSendingEnabledRequest 
  { "ConfigurationSetName" :: (ConfigurationSetName)
  , "Enabled" :: (Enabled)
  }
derive instance newtypeUpdateConfigurationSetSendingEnabledRequest :: Newtype UpdateConfigurationSetSendingEnabledRequest _
derive instance repGenericUpdateConfigurationSetSendingEnabledRequest :: Generic UpdateConfigurationSetSendingEnabledRequest _
instance showUpdateConfigurationSetSendingEnabledRequest :: Show UpdateConfigurationSetSendingEnabledRequest where show = genericShow
instance decodeUpdateConfigurationSetSendingEnabledRequest :: Decode UpdateConfigurationSetSendingEnabledRequest where decode = genericDecode options
instance encodeUpdateConfigurationSetSendingEnabledRequest :: Encode UpdateConfigurationSetSendingEnabledRequest where encode = genericEncode options

-- | Constructs UpdateConfigurationSetSendingEnabledRequest from required parameters
newUpdateConfigurationSetSendingEnabledRequest :: ConfigurationSetName -> Enabled -> UpdateConfigurationSetSendingEnabledRequest
newUpdateConfigurationSetSendingEnabledRequest _ConfigurationSetName _Enabled = UpdateConfigurationSetSendingEnabledRequest { "ConfigurationSetName": _ConfigurationSetName, "Enabled": _Enabled }

-- | Constructs UpdateConfigurationSetSendingEnabledRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateConfigurationSetSendingEnabledRequest' :: ConfigurationSetName -> Enabled -> ( { "ConfigurationSetName" :: (ConfigurationSetName) , "Enabled" :: (Enabled) } -> {"ConfigurationSetName" :: (ConfigurationSetName) , "Enabled" :: (Enabled) } ) -> UpdateConfigurationSetSendingEnabledRequest
newUpdateConfigurationSetSendingEnabledRequest' _ConfigurationSetName _Enabled customize = (UpdateConfigurationSetSendingEnabledRequest <<< customize) { "ConfigurationSetName": _ConfigurationSetName, "Enabled": _Enabled }



-- | <p>Represents a request to update the tracking options for a configuration set. </p>
newtype UpdateConfigurationSetTrackingOptionsRequest = UpdateConfigurationSetTrackingOptionsRequest 
  { "ConfigurationSetName" :: (ConfigurationSetName)
  , "TrackingOptions" :: (TrackingOptions)
  }
derive instance newtypeUpdateConfigurationSetTrackingOptionsRequest :: Newtype UpdateConfigurationSetTrackingOptionsRequest _
derive instance repGenericUpdateConfigurationSetTrackingOptionsRequest :: Generic UpdateConfigurationSetTrackingOptionsRequest _
instance showUpdateConfigurationSetTrackingOptionsRequest :: Show UpdateConfigurationSetTrackingOptionsRequest where show = genericShow
instance decodeUpdateConfigurationSetTrackingOptionsRequest :: Decode UpdateConfigurationSetTrackingOptionsRequest where decode = genericDecode options
instance encodeUpdateConfigurationSetTrackingOptionsRequest :: Encode UpdateConfigurationSetTrackingOptionsRequest where encode = genericEncode options

-- | Constructs UpdateConfigurationSetTrackingOptionsRequest from required parameters
newUpdateConfigurationSetTrackingOptionsRequest :: ConfigurationSetName -> TrackingOptions -> UpdateConfigurationSetTrackingOptionsRequest
newUpdateConfigurationSetTrackingOptionsRequest _ConfigurationSetName _TrackingOptions = UpdateConfigurationSetTrackingOptionsRequest { "ConfigurationSetName": _ConfigurationSetName, "TrackingOptions": _TrackingOptions }

-- | Constructs UpdateConfigurationSetTrackingOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateConfigurationSetTrackingOptionsRequest' :: ConfigurationSetName -> TrackingOptions -> ( { "ConfigurationSetName" :: (ConfigurationSetName) , "TrackingOptions" :: (TrackingOptions) } -> {"ConfigurationSetName" :: (ConfigurationSetName) , "TrackingOptions" :: (TrackingOptions) } ) -> UpdateConfigurationSetTrackingOptionsRequest
newUpdateConfigurationSetTrackingOptionsRequest' _ConfigurationSetName _TrackingOptions customize = (UpdateConfigurationSetTrackingOptionsRequest <<< customize) { "ConfigurationSetName": _ConfigurationSetName, "TrackingOptions": _TrackingOptions }



-- | <p>An empty element returned on a successful request.</p>
newtype UpdateConfigurationSetTrackingOptionsResponse = UpdateConfigurationSetTrackingOptionsResponse Types.NoArguments
derive instance newtypeUpdateConfigurationSetTrackingOptionsResponse :: Newtype UpdateConfigurationSetTrackingOptionsResponse _
derive instance repGenericUpdateConfigurationSetTrackingOptionsResponse :: Generic UpdateConfigurationSetTrackingOptionsResponse _
instance showUpdateConfigurationSetTrackingOptionsResponse :: Show UpdateConfigurationSetTrackingOptionsResponse where show = genericShow
instance decodeUpdateConfigurationSetTrackingOptionsResponse :: Decode UpdateConfigurationSetTrackingOptionsResponse where decode = genericDecode options
instance encodeUpdateConfigurationSetTrackingOptionsResponse :: Encode UpdateConfigurationSetTrackingOptionsResponse where encode = genericEncode options



-- | <p>Represents a request to update an existing custom verification email template.</p>
newtype UpdateCustomVerificationEmailTemplateRequest = UpdateCustomVerificationEmailTemplateRequest 
  { "TemplateName" :: (TemplateName)
  , "FromEmailAddress" :: Maybe (FromAddress)
  , "TemplateSubject" :: Maybe (Subject)
  , "TemplateContent" :: Maybe (TemplateContent)
  , "SuccessRedirectionURL" :: Maybe (SuccessRedirectionURL)
  , "FailureRedirectionURL" :: Maybe (FailureRedirectionURL)
  }
derive instance newtypeUpdateCustomVerificationEmailTemplateRequest :: Newtype UpdateCustomVerificationEmailTemplateRequest _
derive instance repGenericUpdateCustomVerificationEmailTemplateRequest :: Generic UpdateCustomVerificationEmailTemplateRequest _
instance showUpdateCustomVerificationEmailTemplateRequest :: Show UpdateCustomVerificationEmailTemplateRequest where show = genericShow
instance decodeUpdateCustomVerificationEmailTemplateRequest :: Decode UpdateCustomVerificationEmailTemplateRequest where decode = genericDecode options
instance encodeUpdateCustomVerificationEmailTemplateRequest :: Encode UpdateCustomVerificationEmailTemplateRequest where encode = genericEncode options

-- | Constructs UpdateCustomVerificationEmailTemplateRequest from required parameters
newUpdateCustomVerificationEmailTemplateRequest :: TemplateName -> UpdateCustomVerificationEmailTemplateRequest
newUpdateCustomVerificationEmailTemplateRequest _TemplateName = UpdateCustomVerificationEmailTemplateRequest { "TemplateName": _TemplateName, "FailureRedirectionURL": Nothing, "FromEmailAddress": Nothing, "SuccessRedirectionURL": Nothing, "TemplateContent": Nothing, "TemplateSubject": Nothing }

-- | Constructs UpdateCustomVerificationEmailTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateCustomVerificationEmailTemplateRequest' :: TemplateName -> ( { "TemplateName" :: (TemplateName) , "FromEmailAddress" :: Maybe (FromAddress) , "TemplateSubject" :: Maybe (Subject) , "TemplateContent" :: Maybe (TemplateContent) , "SuccessRedirectionURL" :: Maybe (SuccessRedirectionURL) , "FailureRedirectionURL" :: Maybe (FailureRedirectionURL) } -> {"TemplateName" :: (TemplateName) , "FromEmailAddress" :: Maybe (FromAddress) , "TemplateSubject" :: Maybe (Subject) , "TemplateContent" :: Maybe (TemplateContent) , "SuccessRedirectionURL" :: Maybe (SuccessRedirectionURL) , "FailureRedirectionURL" :: Maybe (FailureRedirectionURL) } ) -> UpdateCustomVerificationEmailTemplateRequest
newUpdateCustomVerificationEmailTemplateRequest' _TemplateName customize = (UpdateCustomVerificationEmailTemplateRequest <<< customize) { "TemplateName": _TemplateName, "FailureRedirectionURL": Nothing, "FromEmailAddress": Nothing, "SuccessRedirectionURL": Nothing, "TemplateContent": Nothing, "TemplateSubject": Nothing }



-- | <p>Represents a request to update a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
newtype UpdateReceiptRuleRequest = UpdateReceiptRuleRequest 
  { "RuleSetName" :: (ReceiptRuleSetName)
  , "Rule" :: (ReceiptRule)
  }
derive instance newtypeUpdateReceiptRuleRequest :: Newtype UpdateReceiptRuleRequest _
derive instance repGenericUpdateReceiptRuleRequest :: Generic UpdateReceiptRuleRequest _
instance showUpdateReceiptRuleRequest :: Show UpdateReceiptRuleRequest where show = genericShow
instance decodeUpdateReceiptRuleRequest :: Decode UpdateReceiptRuleRequest where decode = genericDecode options
instance encodeUpdateReceiptRuleRequest :: Encode UpdateReceiptRuleRequest where encode = genericEncode options

-- | Constructs UpdateReceiptRuleRequest from required parameters
newUpdateReceiptRuleRequest :: ReceiptRule -> ReceiptRuleSetName -> UpdateReceiptRuleRequest
newUpdateReceiptRuleRequest _Rule _RuleSetName = UpdateReceiptRuleRequest { "Rule": _Rule, "RuleSetName": _RuleSetName }

-- | Constructs UpdateReceiptRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateReceiptRuleRequest' :: ReceiptRule -> ReceiptRuleSetName -> ( { "RuleSetName" :: (ReceiptRuleSetName) , "Rule" :: (ReceiptRule) } -> {"RuleSetName" :: (ReceiptRuleSetName) , "Rule" :: (ReceiptRule) } ) -> UpdateReceiptRuleRequest
newUpdateReceiptRuleRequest' _Rule _RuleSetName customize = (UpdateReceiptRuleRequest <<< customize) { "Rule": _Rule, "RuleSetName": _RuleSetName }



-- | <p>An empty element returned on a successful request.</p>
newtype UpdateReceiptRuleResponse = UpdateReceiptRuleResponse Types.NoArguments
derive instance newtypeUpdateReceiptRuleResponse :: Newtype UpdateReceiptRuleResponse _
derive instance repGenericUpdateReceiptRuleResponse :: Generic UpdateReceiptRuleResponse _
instance showUpdateReceiptRuleResponse :: Show UpdateReceiptRuleResponse where show = genericShow
instance decodeUpdateReceiptRuleResponse :: Decode UpdateReceiptRuleResponse where decode = genericDecode options
instance encodeUpdateReceiptRuleResponse :: Encode UpdateReceiptRuleResponse where encode = genericEncode options



newtype UpdateTemplateRequest = UpdateTemplateRequest 
  { "Template" :: (Template)
  }
derive instance newtypeUpdateTemplateRequest :: Newtype UpdateTemplateRequest _
derive instance repGenericUpdateTemplateRequest :: Generic UpdateTemplateRequest _
instance showUpdateTemplateRequest :: Show UpdateTemplateRequest where show = genericShow
instance decodeUpdateTemplateRequest :: Decode UpdateTemplateRequest where decode = genericDecode options
instance encodeUpdateTemplateRequest :: Encode UpdateTemplateRequest where encode = genericEncode options

-- | Constructs UpdateTemplateRequest from required parameters
newUpdateTemplateRequest :: Template -> UpdateTemplateRequest
newUpdateTemplateRequest _Template = UpdateTemplateRequest { "Template": _Template }

-- | Constructs UpdateTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTemplateRequest' :: Template -> ( { "Template" :: (Template) } -> {"Template" :: (Template) } ) -> UpdateTemplateRequest
newUpdateTemplateRequest' _Template customize = (UpdateTemplateRequest <<< customize) { "Template": _Template }



newtype UpdateTemplateResponse = UpdateTemplateResponse Types.NoArguments
derive instance newtypeUpdateTemplateResponse :: Newtype UpdateTemplateResponse _
derive instance repGenericUpdateTemplateResponse :: Generic UpdateTemplateResponse _
instance showUpdateTemplateResponse :: Show UpdateTemplateResponse where show = genericShow
instance decodeUpdateTemplateResponse :: Decode UpdateTemplateResponse where decode = genericDecode options
instance encodeUpdateTemplateResponse :: Encode UpdateTemplateResponse where encode = genericEncode options



newtype VerificationAttributes = VerificationAttributes (StrMap.StrMap IdentityVerificationAttributes)
derive instance newtypeVerificationAttributes :: Newtype VerificationAttributes _
derive instance repGenericVerificationAttributes :: Generic VerificationAttributes _
instance showVerificationAttributes :: Show VerificationAttributes where show = genericShow
instance decodeVerificationAttributes :: Decode VerificationAttributes where decode = genericDecode options
instance encodeVerificationAttributes :: Encode VerificationAttributes where encode = genericEncode options



newtype VerificationStatus = VerificationStatus String
derive instance newtypeVerificationStatus :: Newtype VerificationStatus _
derive instance repGenericVerificationStatus :: Generic VerificationStatus _
instance showVerificationStatus :: Show VerificationStatus where show = genericShow
instance decodeVerificationStatus :: Decode VerificationStatus where decode = genericDecode options
instance encodeVerificationStatus :: Encode VerificationStatus where encode = genericEncode options



newtype VerificationToken = VerificationToken String
derive instance newtypeVerificationToken :: Newtype VerificationToken _
derive instance repGenericVerificationToken :: Generic VerificationToken _
instance showVerificationToken :: Show VerificationToken where show = genericShow
instance decodeVerificationToken :: Decode VerificationToken where decode = genericDecode options
instance encodeVerificationToken :: Encode VerificationToken where encode = genericEncode options



newtype VerificationTokenList = VerificationTokenList (Array VerificationToken)
derive instance newtypeVerificationTokenList :: Newtype VerificationTokenList _
derive instance repGenericVerificationTokenList :: Generic VerificationTokenList _
instance showVerificationTokenList :: Show VerificationTokenList where show = genericShow
instance decodeVerificationTokenList :: Decode VerificationTokenList where decode = genericDecode options
instance encodeVerificationTokenList :: Encode VerificationTokenList where encode = genericEncode options



-- | <p>Represents a request to generate the CNAME records needed to set up Easy DKIM with Amazon SES. For more information about setting up Easy DKIM, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>
newtype VerifyDomainDkimRequest = VerifyDomainDkimRequest 
  { "Domain" :: (Domain)
  }
derive instance newtypeVerifyDomainDkimRequest :: Newtype VerifyDomainDkimRequest _
derive instance repGenericVerifyDomainDkimRequest :: Generic VerifyDomainDkimRequest _
instance showVerifyDomainDkimRequest :: Show VerifyDomainDkimRequest where show = genericShow
instance decodeVerifyDomainDkimRequest :: Decode VerifyDomainDkimRequest where decode = genericDecode options
instance encodeVerifyDomainDkimRequest :: Encode VerifyDomainDkimRequest where encode = genericEncode options

-- | Constructs VerifyDomainDkimRequest from required parameters
newVerifyDomainDkimRequest :: Domain -> VerifyDomainDkimRequest
newVerifyDomainDkimRequest _Domain = VerifyDomainDkimRequest { "Domain": _Domain }

-- | Constructs VerifyDomainDkimRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVerifyDomainDkimRequest' :: Domain -> ( { "Domain" :: (Domain) } -> {"Domain" :: (Domain) } ) -> VerifyDomainDkimRequest
newVerifyDomainDkimRequest' _Domain customize = (VerifyDomainDkimRequest <<< customize) { "Domain": _Domain }



-- | <p>Returns CNAME records that you must publish to the DNS server of your domain to set up Easy DKIM with Amazon SES.</p>
newtype VerifyDomainDkimResponse = VerifyDomainDkimResponse 
  { "DkimTokens" :: (VerificationTokenList)
  }
derive instance newtypeVerifyDomainDkimResponse :: Newtype VerifyDomainDkimResponse _
derive instance repGenericVerifyDomainDkimResponse :: Generic VerifyDomainDkimResponse _
instance showVerifyDomainDkimResponse :: Show VerifyDomainDkimResponse where show = genericShow
instance decodeVerifyDomainDkimResponse :: Decode VerifyDomainDkimResponse where decode = genericDecode options
instance encodeVerifyDomainDkimResponse :: Encode VerifyDomainDkimResponse where encode = genericEncode options

-- | Constructs VerifyDomainDkimResponse from required parameters
newVerifyDomainDkimResponse :: VerificationTokenList -> VerifyDomainDkimResponse
newVerifyDomainDkimResponse _DkimTokens = VerifyDomainDkimResponse { "DkimTokens": _DkimTokens }

-- | Constructs VerifyDomainDkimResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVerifyDomainDkimResponse' :: VerificationTokenList -> ( { "DkimTokens" :: (VerificationTokenList) } -> {"DkimTokens" :: (VerificationTokenList) } ) -> VerifyDomainDkimResponse
newVerifyDomainDkimResponse' _DkimTokens customize = (VerifyDomainDkimResponse <<< customize) { "DkimTokens": _DkimTokens }



-- | <p>Represents a request to begin Amazon SES domain verification and to generate the TXT records that you must publish to the DNS server of your domain to complete the verification. For information about domain verification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html">Amazon SES Developer Guide</a>.</p>
newtype VerifyDomainIdentityRequest = VerifyDomainIdentityRequest 
  { "Domain" :: (Domain)
  }
derive instance newtypeVerifyDomainIdentityRequest :: Newtype VerifyDomainIdentityRequest _
derive instance repGenericVerifyDomainIdentityRequest :: Generic VerifyDomainIdentityRequest _
instance showVerifyDomainIdentityRequest :: Show VerifyDomainIdentityRequest where show = genericShow
instance decodeVerifyDomainIdentityRequest :: Decode VerifyDomainIdentityRequest where decode = genericDecode options
instance encodeVerifyDomainIdentityRequest :: Encode VerifyDomainIdentityRequest where encode = genericEncode options

-- | Constructs VerifyDomainIdentityRequest from required parameters
newVerifyDomainIdentityRequest :: Domain -> VerifyDomainIdentityRequest
newVerifyDomainIdentityRequest _Domain = VerifyDomainIdentityRequest { "Domain": _Domain }

-- | Constructs VerifyDomainIdentityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVerifyDomainIdentityRequest' :: Domain -> ( { "Domain" :: (Domain) } -> {"Domain" :: (Domain) } ) -> VerifyDomainIdentityRequest
newVerifyDomainIdentityRequest' _Domain customize = (VerifyDomainIdentityRequest <<< customize) { "Domain": _Domain }



-- | <p>Returns a TXT record that you must publish to the DNS server of your domain to complete domain verification with Amazon SES.</p>
newtype VerifyDomainIdentityResponse = VerifyDomainIdentityResponse 
  { "VerificationToken" :: (VerificationToken)
  }
derive instance newtypeVerifyDomainIdentityResponse :: Newtype VerifyDomainIdentityResponse _
derive instance repGenericVerifyDomainIdentityResponse :: Generic VerifyDomainIdentityResponse _
instance showVerifyDomainIdentityResponse :: Show VerifyDomainIdentityResponse where show = genericShow
instance decodeVerifyDomainIdentityResponse :: Decode VerifyDomainIdentityResponse where decode = genericDecode options
instance encodeVerifyDomainIdentityResponse :: Encode VerifyDomainIdentityResponse where encode = genericEncode options

-- | Constructs VerifyDomainIdentityResponse from required parameters
newVerifyDomainIdentityResponse :: VerificationToken -> VerifyDomainIdentityResponse
newVerifyDomainIdentityResponse _VerificationToken = VerifyDomainIdentityResponse { "VerificationToken": _VerificationToken }

-- | Constructs VerifyDomainIdentityResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVerifyDomainIdentityResponse' :: VerificationToken -> ( { "VerificationToken" :: (VerificationToken) } -> {"VerificationToken" :: (VerificationToken) } ) -> VerifyDomainIdentityResponse
newVerifyDomainIdentityResponse' _VerificationToken customize = (VerifyDomainIdentityResponse <<< customize) { "VerificationToken": _VerificationToken }



-- | <p>Represents a request to begin email address verification with Amazon SES. For information about email address verification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">Amazon SES Developer Guide</a>.</p>
newtype VerifyEmailAddressRequest = VerifyEmailAddressRequest 
  { "EmailAddress" :: (Address)
  }
derive instance newtypeVerifyEmailAddressRequest :: Newtype VerifyEmailAddressRequest _
derive instance repGenericVerifyEmailAddressRequest :: Generic VerifyEmailAddressRequest _
instance showVerifyEmailAddressRequest :: Show VerifyEmailAddressRequest where show = genericShow
instance decodeVerifyEmailAddressRequest :: Decode VerifyEmailAddressRequest where decode = genericDecode options
instance encodeVerifyEmailAddressRequest :: Encode VerifyEmailAddressRequest where encode = genericEncode options

-- | Constructs VerifyEmailAddressRequest from required parameters
newVerifyEmailAddressRequest :: Address -> VerifyEmailAddressRequest
newVerifyEmailAddressRequest _EmailAddress = VerifyEmailAddressRequest { "EmailAddress": _EmailAddress }

-- | Constructs VerifyEmailAddressRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVerifyEmailAddressRequest' :: Address -> ( { "EmailAddress" :: (Address) } -> {"EmailAddress" :: (Address) } ) -> VerifyEmailAddressRequest
newVerifyEmailAddressRequest' _EmailAddress customize = (VerifyEmailAddressRequest <<< customize) { "EmailAddress": _EmailAddress }



-- | <p>Represents a request to begin email address verification with Amazon SES. For information about email address verification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">Amazon SES Developer Guide</a>.</p>
newtype VerifyEmailIdentityRequest = VerifyEmailIdentityRequest 
  { "EmailAddress" :: (Address)
  }
derive instance newtypeVerifyEmailIdentityRequest :: Newtype VerifyEmailIdentityRequest _
derive instance repGenericVerifyEmailIdentityRequest :: Generic VerifyEmailIdentityRequest _
instance showVerifyEmailIdentityRequest :: Show VerifyEmailIdentityRequest where show = genericShow
instance decodeVerifyEmailIdentityRequest :: Decode VerifyEmailIdentityRequest where decode = genericDecode options
instance encodeVerifyEmailIdentityRequest :: Encode VerifyEmailIdentityRequest where encode = genericEncode options

-- | Constructs VerifyEmailIdentityRequest from required parameters
newVerifyEmailIdentityRequest :: Address -> VerifyEmailIdentityRequest
newVerifyEmailIdentityRequest _EmailAddress = VerifyEmailIdentityRequest { "EmailAddress": _EmailAddress }

-- | Constructs VerifyEmailIdentityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVerifyEmailIdentityRequest' :: Address -> ( { "EmailAddress" :: (Address) } -> {"EmailAddress" :: (Address) } ) -> VerifyEmailIdentityRequest
newVerifyEmailIdentityRequest' _EmailAddress customize = (VerifyEmailIdentityRequest <<< customize) { "EmailAddress": _EmailAddress }



-- | <p>An empty element returned on a successful request.</p>
newtype VerifyEmailIdentityResponse = VerifyEmailIdentityResponse Types.NoArguments
derive instance newtypeVerifyEmailIdentityResponse :: Newtype VerifyEmailIdentityResponse _
derive instance repGenericVerifyEmailIdentityResponse :: Generic VerifyEmailIdentityResponse _
instance showVerifyEmailIdentityResponse :: Show VerifyEmailIdentityResponse where show = genericShow
instance decodeVerifyEmailIdentityResponse :: Decode VerifyEmailIdentityResponse where decode = genericDecode options
instance encodeVerifyEmailIdentityResponse :: Encode VerifyEmailIdentityResponse where encode = genericEncode options



-- | <p>When included in a receipt rule, this action calls Amazon WorkMail and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS). You will typically not use this action directly because Amazon WorkMail adds the rule automatically during its setup procedure.</p> <p>For information using a receipt rule to call Amazon WorkMail, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html">Amazon SES Developer Guide</a>.</p>
newtype WorkmailAction = WorkmailAction 
  { "TopicArn" :: Maybe (AmazonResourceName)
  , "OrganizationArn" :: (AmazonResourceName)
  }
derive instance newtypeWorkmailAction :: Newtype WorkmailAction _
derive instance repGenericWorkmailAction :: Generic WorkmailAction _
instance showWorkmailAction :: Show WorkmailAction where show = genericShow
instance decodeWorkmailAction :: Decode WorkmailAction where decode = genericDecode options
instance encodeWorkmailAction :: Encode WorkmailAction where encode = genericEncode options

-- | Constructs WorkmailAction from required parameters
newWorkmailAction :: AmazonResourceName -> WorkmailAction
newWorkmailAction _OrganizationArn = WorkmailAction { "OrganizationArn": _OrganizationArn, "TopicArn": Nothing }

-- | Constructs WorkmailAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkmailAction' :: AmazonResourceName -> ( { "TopicArn" :: Maybe (AmazonResourceName) , "OrganizationArn" :: (AmazonResourceName) } -> {"TopicArn" :: Maybe (AmazonResourceName) , "OrganizationArn" :: (AmazonResourceName) } ) -> WorkmailAction
newWorkmailAction' _OrganizationArn customize = (WorkmailAction <<< customize) { "OrganizationArn": _OrganizationArn, "TopicArn": Nothing }

