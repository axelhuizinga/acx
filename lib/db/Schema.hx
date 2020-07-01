package db;
/* - - - - Haxe / GraphQL compatibility types - - - - */
abstract ID(String) to String from String {
  // Relaxed safety -- allow implicit fromString
  //  TODO: optional strict safety -- require explicit fromString:
  //  public static inline function fromString(s:String) return cast s;
  //  public static inline function ofString(s:String) return cast s;
}

typedef _ExternalRelation = {
  nodeId : ID,
  id : BigInt,
  ?name : String,
  ?url : String,
  ?mandator : BigInt,
  ?detail : JSON,
  ?extraIds : Array<BigInt>,
  ?dataSource : String,
  ?sourceId : BigInt,
}

typedef _ExternalRelationCondition = {
  ?id : BigInt,
  ?name : String,
  ?url : String,
  ?mandator : BigInt,
  ?detail : JSON,
  ?extraIds : Array<BigInt>,
  ?dataSource : String,
  ?sourceId : BigInt,
}

typedef _ExternalRelationInput = {
  ?id : BigInt,
  ?name : String,
  ?url : String,
  ?mandator : BigInt,
  ?detail : JSON,
  ?extraIds : Array<BigInt>,
  ?dataSource : String,
  ?sourceId : BigInt,
}

typedef _ExternalRelationPatch = {
  ?id : BigInt,
  ?name : String,
  ?url : String,
  ?mandator : BigInt,
  ?detail : JSON,
  ?extraIds : Array<BigInt>,
  ?dataSource : String,
  ?sourceId : BigInt,
}

typedef _ExternalRelationsConnection = {
  nodes : Array<_ExternalRelation>,
  edges : Array<_ExternalRelationsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef _ExternalRelationsEdge = {
  ?cursor : Cursor,
  ?node : _ExternalRelation,
}

/* Enum type _ExternalRelationsOrderBy */
@:enum abstract _ExternalRelationsOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var NAME_ASC = "NAME_ASC";
  var NAME_DESC = "NAME_DESC";
  var URL_ASC = "URL_ASC";
  var URL_DESC = "URL_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
  var DETAIL_ASC = "DETAIL_ASC";
  var DETAIL_DESC = "DETAIL_DESC";
  var EXTRA_IDS_ASC = "EXTRA_IDS_ASC";
  var EXTRA_IDS_DESC = "EXTRA_IDS_DESC";
  var DATA_SOURCE_ASC = "DATA_SOURCE_ASC";
  var DATA_SOURCE_DESC = "DATA_SOURCE_DESC";
  var SOURCE_ID_ASC = "SOURCE_ID_ASC";
  var SOURCE_ID_DESC = "SOURCE_ID_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef Account = {
  nodeId : ID,
  id : BigInt,
  contact : BigInt,
  bankName : String,
  ?bic : String,
  ?account : String,
  ?blz : String,
  iban : String,
  creditor : BigInt,
  ?signDate : Date,
  ?state : AccountsState,
  ?creationDate : Datetime,
  editedBy : BigInt,
  ?lastLocktime : Datetime,
}

typedef AccountCondition = {
  ?id : BigInt,
  ?contact : BigInt,
  ?bankName : String,
  ?bic : String,
  ?account : String,
  ?blz : String,
  ?iban : String,
  ?creditor : BigInt,
  ?signDate : Date,
  ?state : AccountsState,
  ?creationDate : Datetime,
  ?editedBy : BigInt,
  ?lastLocktime : Datetime,
}

typedef AccountInput = {
  ?id : BigInt,
  contact : BigInt,
  bankName : String,
  ?bic : String,
  ?account : String,
  ?blz : String,
  iban : String,
  creditor : BigInt,
  ?signDate : Date,
  ?state : AccountsState,
  ?creationDate : Datetime,
  editedBy : BigInt,
  ?lastLocktime : Datetime,
}

typedef AccountPatch = {
  ?id : BigInt,
  ?contact : BigInt,
  ?bankName : String,
  ?bic : String,
  ?account : String,
  ?blz : String,
  ?iban : String,
  ?creditor : BigInt,
  ?signDate : Date,
  ?state : AccountsState,
  ?creationDate : Datetime,
  ?editedBy : BigInt,
  ?lastLocktime : Datetime,
}

typedef AccountsConnection = {
  nodes : Array<Account>,
  edges : Array<AccountsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef AccountsEdge = {
  ?cursor : Cursor,
  ?node : Account,
}

/* Enum type AccountsOrderBy */
@:enum abstract AccountsOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var CONTACT_ASC = "CONTACT_ASC";
  var CONTACT_DESC = "CONTACT_DESC";
  var BANK_NAME_ASC = "BANK_NAME_ASC";
  var BANK_NAME_DESC = "BANK_NAME_DESC";
  var BIC_ASC = "BIC_ASC";
  var BIC_DESC = "BIC_DESC";
  var ACCOUNT_ASC = "ACCOUNT_ASC";
  var ACCOUNT_DESC = "ACCOUNT_DESC";
  var BLZ_ASC = "BLZ_ASC";
  var BLZ_DESC = "BLZ_DESC";
  var IBAN_ASC = "IBAN_ASC";
  var IBAN_DESC = "IBAN_DESC";
  var CREDITOR_ASC = "CREDITOR_ASC";
  var CREDITOR_DESC = "CREDITOR_DESC";
  var SIGN_DATE_ASC = "SIGN_DATE_ASC";
  var SIGN_DATE_DESC = "SIGN_DATE_DESC";
  var STATE_ASC = "STATE_ASC";
  var STATE_DESC = "STATE_DESC";
  var CREATION_DATE_ASC = "CREATION_DATE_ASC";
  var CREATION_DATE_DESC = "CREATION_DATE_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var LAST_LOCKTIME_ASC = "LAST_LOCKTIME_ASC";
  var LAST_LOCKTIME_DESC = "LAST_LOCKTIME_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

/* Enum type AccountsState */
@:enum abstract AccountsState(String) {
  var ACTIVE = "ACTIVE";
  var NEW = "NEW";
  var PASSIVE = "PASSIVE";
}

typedef ActivitiesConnection = {
  nodes : Array<Activity>,
  edges : Array<ActivitiesEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef ActivitiesEdge = {
  ?cursor : Cursor,
  ?node : Activity,
}

/* Enum type ActivitiesOrderBy */
@:enum abstract ActivitiesOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var RESULT_ASC = "RESULT_ASC";
  var RESULT_DESC = "RESULT_DESC";
  var REQUEST_ASC = "REQUEST_ASC";
  var REQUEST_DESC = "REQUEST_DESC";
  var USER_ASC = "USER_ASC";
  var USER_DESC = "USER_DESC";
  var DATE_ASC = "DATE_ASC";
  var DATE_DESC = "DATE_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef Activity = {
  nodeId : ID,
  id : BigInt,
  ?result : String,
  request : String,
  user : BigInt,
  ?date : Datetime,
}

typedef ActivityCondition = {
  ?id : BigInt,
  ?result : String,
  ?request : String,
  ?user : BigInt,
  ?date : Datetime,
}

typedef ActivityInput = {
  ?id : BigInt,
  ?result : String,
  request : String,
  user : BigInt,
  ?date : Datetime,
}

typedef ActivityPatch = {
  ?id : BigInt,
  ?result : String,
  ?request : String,
  ?user : BigInt,
  ?date : Datetime,
}

typedef BankTransfer = {
  nodeId : ID,
  agName : String,
  agKontoOrIban : String,
  agBlzOrBic : String,
  zahlpflName : String,
  zahlpflName2 : String,
  zahlpflStrasse : String,
  zahlpflNameOrt : String,
  zahlpflNameKtoOrIban : String,
  zahlpflNameBlzOrBic : String,
  ?betrag : Float,
  ?currency : String,
  zahlart : String,
  termin : Date,
  ?vwz1 : String,
  ?vwz2 : String,
  ?vwz3 : String,
  ?vwz4 : String,
  ?vwz5 : String,
  ?vwz6 : String,
  ?vwz7 : String,
  ?vwz8 : String,
  ?vwz9 : String,
  baId : BigInt,
  trackingStatus : BankTransfersTrackingStatus,
  anforderungsDatum : Date,
  ?rueckDatum : Date,
  cycle : String,
  refId : String,
  mandatId : String,
  mandatDatum : Date,
  agCreditorId : String,
  sequenz : String,
  superAgName : String,
}

typedef BankTransferCondition = {
  ?agName : String,
  ?agKontoOrIban : String,
  ?agBlzOrBic : String,
  ?zahlpflName : String,
  ?zahlpflName2 : String,
  ?zahlpflStrasse : String,
  ?zahlpflNameOrt : String,
  ?zahlpflNameKtoOrIban : String,
  ?zahlpflNameBlzOrBic : String,
  ?betrag : Float,
  ?currency : String,
  ?zahlart : String,
  ?termin : Date,
  ?vwz1 : String,
  ?vwz2 : String,
  ?vwz3 : String,
  ?vwz4 : String,
  ?vwz5 : String,
  ?vwz6 : String,
  ?vwz7 : String,
  ?vwz8 : String,
  ?vwz9 : String,
  ?baId : BigInt,
  ?trackingStatus : BankTransfersTrackingStatus,
  ?anforderungsDatum : Date,
  ?rueckDatum : Date,
  ?cycle : String,
  ?refId : String,
  ?mandatId : String,
  ?mandatDatum : Date,
  ?agCreditorId : String,
  ?sequenz : String,
  ?superAgName : String,
}

typedef BankTransferInput = {
  agName : String,
  agKontoOrIban : String,
  agBlzOrBic : String,
  zahlpflName : String,
  ?zahlpflName2 : String,
  zahlpflStrasse : String,
  zahlpflNameOrt : String,
  zahlpflNameKtoOrIban : String,
  ?zahlpflNameBlzOrBic : String,
  ?betrag : Float,
  ?currency : String,
  ?zahlart : String,
  termin : Date,
  ?vwz1 : String,
  ?vwz2 : String,
  ?vwz3 : String,
  ?vwz4 : String,
  ?vwz5 : String,
  ?vwz6 : String,
  ?vwz7 : String,
  ?vwz8 : String,
  ?vwz9 : String,
  ?baId : BigInt,
  ?trackingStatus : BankTransfersTrackingStatus,
  anforderungsDatum : Date,
  ?rueckDatum : Date,
  cycle : String,
  refId : String,
  mandatId : String,
  mandatDatum : Date,
  agCreditorId : String,
  sequenz : String,
  superAgName : String,
}

typedef BankTransferPatch = {
  ?agName : String,
  ?agKontoOrIban : String,
  ?agBlzOrBic : String,
  ?zahlpflName : String,
  ?zahlpflName2 : String,
  ?zahlpflStrasse : String,
  ?zahlpflNameOrt : String,
  ?zahlpflNameKtoOrIban : String,
  ?zahlpflNameBlzOrBic : String,
  ?betrag : Float,
  ?currency : String,
  ?zahlart : String,
  ?termin : Date,
  ?vwz1 : String,
  ?vwz2 : String,
  ?vwz3 : String,
  ?vwz4 : String,
  ?vwz5 : String,
  ?vwz6 : String,
  ?vwz7 : String,
  ?vwz8 : String,
  ?vwz9 : String,
  ?baId : BigInt,
  ?trackingStatus : BankTransfersTrackingStatus,
  ?anforderungsDatum : Date,
  ?rueckDatum : Date,
  ?cycle : String,
  ?refId : String,
  ?mandatId : String,
  ?mandatDatum : Date,
  ?agCreditorId : String,
  ?sequenz : String,
  ?superAgName : String,
}

typedef BankTransfersConnection = {
  nodes : Array<BankTransfer>,
  edges : Array<BankTransfersEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef BankTransfersEdge = {
  ?cursor : Cursor,
  ?node : BankTransfer,
}

/* Enum type BankTransfersOrderBy */
@:enum abstract BankTransfersOrderBy(String) {
  var NATURAL = "NATURAL";
  var AG_NAME_ASC = "AG_NAME_ASC";
  var AG_NAME_DESC = "AG_NAME_DESC";
  var AG_KONTO_OR_IBAN_ASC = "AG_KONTO_OR_IBAN_ASC";
  var AG_KONTO_OR_IBAN_DESC = "AG_KONTO_OR_IBAN_DESC";
  var AG_BLZ_OR_BIC_ASC = "AG_BLZ_OR_BIC_ASC";
  var AG_BLZ_OR_BIC_DESC = "AG_BLZ_OR_BIC_DESC";
  var ZAHLPFL_NAME_ASC = "ZAHLPFL_NAME_ASC";
  var ZAHLPFL_NAME_DESC = "ZAHLPFL_NAME_DESC";
  var ZAHLPFL_NAME2_ASC = "ZAHLPFL_NAME2_ASC";
  var ZAHLPFL_NAME2_DESC = "ZAHLPFL_NAME2_DESC";
  var ZAHLPFL_STRASSE_ASC = "ZAHLPFL_STRASSE_ASC";
  var ZAHLPFL_STRASSE_DESC = "ZAHLPFL_STRASSE_DESC";
  var ZAHLPFL_NAME_ORT_ASC = "ZAHLPFL_NAME_ORT_ASC";
  var ZAHLPFL_NAME_ORT_DESC = "ZAHLPFL_NAME_ORT_DESC";
  var ZAHLPFL_NAME_KTO_OR_IBAN_ASC = "ZAHLPFL_NAME_KTO_OR_IBAN_ASC";
  var ZAHLPFL_NAME_KTO_OR_IBAN_DESC = "ZAHLPFL_NAME_KTO_OR_IBAN_DESC";
  var ZAHLPFL_NAME_BLZ_OR_BIC_ASC = "ZAHLPFL_NAME_BLZ_OR_BIC_ASC";
  var ZAHLPFL_NAME_BLZ_OR_BIC_DESC = "ZAHLPFL_NAME_BLZ_OR_BIC_DESC";
  var BETRAG_ASC = "BETRAG_ASC";
  var BETRAG_DESC = "BETRAG_DESC";
  var CURRENCY_ASC = "CURRENCY_ASC";
  var CURRENCY_DESC = "CURRENCY_DESC";
  var ZAHLART_ASC = "ZAHLART_ASC";
  var ZAHLART_DESC = "ZAHLART_DESC";
  var TERMIN_ASC = "TERMIN_ASC";
  var TERMIN_DESC = "TERMIN_DESC";
  var VWZ1_ASC = "VWZ1_ASC";
  var VWZ1_DESC = "VWZ1_DESC";
  var VWZ2_ASC = "VWZ2_ASC";
  var VWZ2_DESC = "VWZ2_DESC";
  var VWZ3_ASC = "VWZ3_ASC";
  var VWZ3_DESC = "VWZ3_DESC";
  var VWZ4_ASC = "VWZ4_ASC";
  var VWZ4_DESC = "VWZ4_DESC";
  var VWZ5_ASC = "VWZ5_ASC";
  var VWZ5_DESC = "VWZ5_DESC";
  var VWZ6_ASC = "VWZ6_ASC";
  var VWZ6_DESC = "VWZ6_DESC";
  var VWZ7_ASC = "VWZ7_ASC";
  var VWZ7_DESC = "VWZ7_DESC";
  var VWZ8_ASC = "VWZ8_ASC";
  var VWZ8_DESC = "VWZ8_DESC";
  var VWZ9_ASC = "VWZ9_ASC";
  var VWZ9_DESC = "VWZ9_DESC";
  var BA_ID_ASC = "BA_ID_ASC";
  var BA_ID_DESC = "BA_ID_DESC";
  var TRACKING_STATUS_ASC = "TRACKING_STATUS_ASC";
  var TRACKING_STATUS_DESC = "TRACKING_STATUS_DESC";
  var ANFORDERUNGS_DATUM_ASC = "ANFORDERUNGS_DATUM_ASC";
  var ANFORDERUNGS_DATUM_DESC = "ANFORDERUNGS_DATUM_DESC";
  var RUECK_DATUM_ASC = "RUECK_DATUM_ASC";
  var RUECK_DATUM_DESC = "RUECK_DATUM_DESC";
  var CYCLE_ASC = "CYCLE_ASC";
  var CYCLE_DESC = "CYCLE_DESC";
  var REF_ID_ASC = "REF_ID_ASC";
  var REF_ID_DESC = "REF_ID_DESC";
  var MANDAT_ID_ASC = "MANDAT_ID_ASC";
  var MANDAT_ID_DESC = "MANDAT_ID_DESC";
  var MANDAT_DATUM_ASC = "MANDAT_DATUM_ASC";
  var MANDAT_DATUM_DESC = "MANDAT_DATUM_DESC";
  var AG_CREDITOR_ID_ASC = "AG_CREDITOR_ID_ASC";
  var AG_CREDITOR_ID_DESC = "AG_CREDITOR_ID_DESC";
  var SEQUENZ_ASC = "SEQUENZ_ASC";
  var SEQUENZ_DESC = "SEQUENZ_DESC";
  var SUPER_AG_NAME_ASC = "SUPER_AG_NAME_ASC";
  var SUPER_AG_NAME_DESC = "SUPER_AG_NAME_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

/* Enum type BankTransfersTrackingStatus */
@:enum abstract BankTransfersTrackingStatus(String) {
  var NEU = "NEU";
  var EXPORTIERT = "EXPORTIERT";
  var AUSGEF_HRT = "AUSGEF_HRT";
  var NICHT_AUSGEF_HRT = "NICHT_AUSGEF_HRT";
  var R_CKLASTSCHRIFT = "R_CKLASTSCHRIFT";
  var VORSCHAU = "VORSCHAU";
}

/* Scalar type BigFloat */
abstract BigFloat(Dynamic) { }

/* Scalar type BigInt */
abstract BigInt(Dynamic) { }

typedef CloneSchemaInput = {
  ?clientMutationId : String,
  ?sourceSchema : String,
  ?destSchema : String,
  ?includeRecs : Bool,
}

typedef CloneSchemaPayload = {
  ?clientMutationId : String,
  ?query : Query,
}

typedef Contact = {
  nodeId : ID,
  id : BigInt,
  mandator : BigInt,
  ?creationDate : Datetime,
  ?state : String,
  ?useEmail : Bool,
  ?companyName : String,
  ?coField : String,
  ?phoneCode : String,
  ?phoneNumber : String,
  ?fax : String,
  ?title : String,
  ?titlePro : String,
  ?firstName : String,
  ?lastName : String,
  ?address : String,
  ?address2 : String,
  ?city : String,
  ?postalCode : String,
  ?countryCode : String,
  ?gender : String,
  ?dateOfBirth : Date,
  ?mobile : String,
  ?email : String,
  ?comments : String,
  editedBy : BigInt,
  ?merged : Array<BigInt>,
  ?lastLocktime : Datetime,
  ?owner : BigInt,
}

typedef ContactCondition = {
  ?id : BigInt,
  ?mandator : BigInt,
  ?creationDate : Datetime,
  ?state : String,
  ?useEmail : Bool,
  ?companyName : String,
  ?coField : String,
  ?phoneCode : String,
  ?phoneNumber : String,
  ?fax : String,
  ?title : String,
  ?titlePro : String,
  ?firstName : String,
  ?lastName : String,
  ?address : String,
  ?address2 : String,
  ?city : String,
  ?postalCode : String,
  ?countryCode : String,
  ?gender : String,
  ?dateOfBirth : Date,
  ?mobile : String,
  ?email : String,
  ?comments : String,
  ?editedBy : BigInt,
  ?merged : Array<BigInt>,
  ?lastLocktime : Datetime,
  ?owner : BigInt,
}

typedef ContactInput = {
  ?id : BigInt,
  ?mandator : BigInt,
  ?creationDate : Datetime,
  ?state : String,
  ?useEmail : Bool,
  ?companyName : String,
  ?coField : String,
  ?phoneCode : String,
  ?phoneNumber : String,
  ?fax : String,
  ?title : String,
  ?titlePro : String,
  ?firstName : String,
  ?lastName : String,
  ?address : String,
  ?address2 : String,
  ?city : String,
  ?postalCode : String,
  ?countryCode : String,
  ?gender : String,
  ?dateOfBirth : Date,
  ?mobile : String,
  ?email : String,
  ?comments : String,
  ?editedBy : BigInt,
  ?merged : Array<BigInt>,
  ?lastLocktime : Datetime,
  ?owner : BigInt,
}

typedef ContactPatch = {
  ?id : BigInt,
  ?mandator : BigInt,
  ?creationDate : Datetime,
  ?state : String,
  ?useEmail : Bool,
  ?companyName : String,
  ?coField : String,
  ?phoneCode : String,
  ?phoneNumber : String,
  ?fax : String,
  ?title : String,
  ?titlePro : String,
  ?firstName : String,
  ?lastName : String,
  ?address : String,
  ?address2 : String,
  ?city : String,
  ?postalCode : String,
  ?countryCode : String,
  ?gender : String,
  ?dateOfBirth : Date,
  ?mobile : String,
  ?email : String,
  ?comments : String,
  ?editedBy : BigInt,
  ?merged : Array<BigInt>,
  ?lastLocktime : Datetime,
  ?owner : BigInt,
}

typedef ContactsConnection = {
  nodes : Array<Contact>,
  edges : Array<ContactsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef ContactsEdge = {
  ?cursor : Cursor,
  ?node : Contact,
}

/* Enum type ContactsOrderBy */
@:enum abstract ContactsOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
  var CREATION_DATE_ASC = "CREATION_DATE_ASC";
  var CREATION_DATE_DESC = "CREATION_DATE_DESC";
  var STATE_ASC = "STATE_ASC";
  var STATE_DESC = "STATE_DESC";
  var USE_EMAIL_ASC = "USE_EMAIL_ASC";
  var USE_EMAIL_DESC = "USE_EMAIL_DESC";
  var COMPANY_NAME_ASC = "COMPANY_NAME_ASC";
  var COMPANY_NAME_DESC = "COMPANY_NAME_DESC";
  var CO_FIELD_ASC = "CO_FIELD_ASC";
  var CO_FIELD_DESC = "CO_FIELD_DESC";
  var PHONE_CODE_ASC = "PHONE_CODE_ASC";
  var PHONE_CODE_DESC = "PHONE_CODE_DESC";
  var PHONE_NUMBER_ASC = "PHONE_NUMBER_ASC";
  var PHONE_NUMBER_DESC = "PHONE_NUMBER_DESC";
  var FAX_ASC = "FAX_ASC";
  var FAX_DESC = "FAX_DESC";
  var TITLE_ASC = "TITLE_ASC";
  var TITLE_DESC = "TITLE_DESC";
  var TITLE_PRO_ASC = "TITLE_PRO_ASC";
  var TITLE_PRO_DESC = "TITLE_PRO_DESC";
  var FIRST_NAME_ASC = "FIRST_NAME_ASC";
  var FIRST_NAME_DESC = "FIRST_NAME_DESC";
  var LAST_NAME_ASC = "LAST_NAME_ASC";
  var LAST_NAME_DESC = "LAST_NAME_DESC";
  var ADDRESS_ASC = "ADDRESS_ASC";
  var ADDRESS_DESC = "ADDRESS_DESC";
  var ADDRESS_2_ASC = "ADDRESS_2_ASC";
  var ADDRESS_2_DESC = "ADDRESS_2_DESC";
  var CITY_ASC = "CITY_ASC";
  var CITY_DESC = "CITY_DESC";
  var POSTAL_CODE_ASC = "POSTAL_CODE_ASC";
  var POSTAL_CODE_DESC = "POSTAL_CODE_DESC";
  var COUNTRY_CODE_ASC = "COUNTRY_CODE_ASC";
  var COUNTRY_CODE_DESC = "COUNTRY_CODE_DESC";
  var GENDER_ASC = "GENDER_ASC";
  var GENDER_DESC = "GENDER_DESC";
  var DATE_OF_BIRTH_ASC = "DATE_OF_BIRTH_ASC";
  var DATE_OF_BIRTH_DESC = "DATE_OF_BIRTH_DESC";
  var MOBILE_ASC = "MOBILE_ASC";
  var MOBILE_DESC = "MOBILE_DESC";
  var EMAIL_ASC = "EMAIL_ASC";
  var EMAIL_DESC = "EMAIL_DESC";
  var COMMENTS_ASC = "COMMENTS_ASC";
  var COMMENTS_DESC = "COMMENTS_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var MERGED_ASC = "MERGED_ASC";
  var MERGED_DESC = "MERGED_DESC";
  var LAST_LOCKTIME_ASC = "LAST_LOCKTIME_ASC";
  var LAST_LOCKTIME_DESC = "LAST_LOCKTIME_DESC";
  var OWNER_ASC = "OWNER_ASC";
  var OWNER_DESC = "OWNER_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef CreateAccountInput = {
  ?clientMutationId : String,
  account : AccountInput,
}

typedef CreateAccountPayload = {
  ?clientMutationId : String,
  ?account : Account,
  ?query : Query,
  ?accountEdge : AccountsEdge,
}

typedef Args_CreateAccountPayload__accountEdge = {
  ?orderBy : Array<AccountsOrderBy>,
}

typedef CreateActivityInput = {
  ?clientMutationId : String,
  activity : ActivityInput,
}

typedef CreateActivityPayload = {
  ?clientMutationId : String,
  ?activity : Activity,
  ?query : Query,
  ?activityEdge : ActivitiesEdge,
}

typedef Args_CreateActivityPayload__activityEdge = {
  ?orderBy : Array<ActivitiesOrderBy>,
}

typedef CreateBankTransferInput = {
  ?clientMutationId : String,
  bankTransfer : BankTransferInput,
}

typedef CreateBankTransferPayload = {
  ?clientMutationId : String,
  ?bankTransfer : BankTransfer,
  ?query : Query,
  ?bankTransferEdge : BankTransfersEdge,
}

typedef Args_CreateBankTransferPayload__bankTransferEdge = {
  ?orderBy : Array<BankTransfersOrderBy>,
}

typedef CreateContactInput = {
  ?clientMutationId : String,
  contact : ContactInput,
}

typedef CreateContactPayload = {
  ?clientMutationId : String,
  ?contact : Contact,
  ?query : Query,
  ?contactEdge : ContactsEdge,
}

typedef Args_CreateContactPayload__contactEdge = {
  ?orderBy : Array<ContactsOrderBy>,
}

typedef CreateDealInput = {
  ?clientMutationId : String,
  deal : DealInput,
}

typedef CreateDealPayload = {
  ?clientMutationId : String,
  ?deal : Deal,
  ?query : Query,
  ?dealEdge : DealsEdge,
}

typedef Args_CreateDealPayload__dealEdge = {
  ?orderBy : Array<DealsOrderBy>,
}

typedef CreateEndReasonInput = {
  ?clientMutationId : String,
  endReason : EndReasonInput,
}

typedef CreateEndReasonPayload = {
  ?clientMutationId : String,
  ?endReason : EndReason,
  ?query : Query,
  ?endReasonEdge : EndReasonsEdge,
}

typedef Args_CreateEndReasonPayload__endReasonEdge = {
  ?orderBy : Array<EndReasonsOrderBy>,
}

typedef CreateExternalRelationInput = {
  ?clientMutationId : String,
  _externalRelation : _ExternalRelationInput,
}

typedef CreateExternalRelationPayload = {
  ?clientMutationId : String,
  ?_externalRelation : _ExternalRelation,
  ?query : Query,
  ?_externalRelationEdge : _ExternalRelationsEdge,
}

typedef Args_CreateExternalRelationPayload___externalRelationEdge = {
  ?orderBy : Array<_ExternalRelationsOrderBy>,
}

typedef CreateMandatorInput = {
  ?clientMutationId : String,
  mandator : MandatorInput,
}

typedef CreateMandatorPayload = {
  ?clientMutationId : String,
  ?mandator : Mandator,
  ?query : Query,
  ?mandatorEdge : MandatorsEdge,
}

typedef Args_CreateMandatorPayload__mandatorEdge = {
  ?orderBy : Array<MandatorsOrderBy>,
}

typedef CreateProductInput = {
  ?clientMutationId : String,
  product : ProductInput,
}

typedef CreateProductPayload = {
  ?clientMutationId : String,
  ?product : Product,
  ?query : Query,
  ?productEdge : ProductsEdge,
}

typedef Args_CreateProductPayload__productEdge = {
  ?orderBy : Array<ProductsOrderBy>,
}

typedef CreateProjectInput = {
  ?clientMutationId : String,
  project : ProjectInput,
}

typedef CreateProjectPayload = {
  ?clientMutationId : String,
  ?project : Project,
  ?query : Query,
  ?projectEdge : ProjectsEdge,
}

typedef Args_CreateProjectPayload__projectEdge = {
  ?orderBy : Array<ProjectsOrderBy>,
}

typedef CreateRoleInput = {
  ?clientMutationId : String,
  role : RoleInput,
}

typedef CreateRolePayload = {
  ?clientMutationId : String,
  ?role : Role,
  ?query : Query,
  ?roleEdge : RolesEdge,
}

typedef Args_CreateRolePayload__roleEdge = {
  ?orderBy : Array<RolesOrderBy>,
}

typedef CreateStatementInput = {
  ?clientMutationId : String,
  statement : StatementInput,
}

typedef CreateStatementPayload = {
  ?clientMutationId : String,
  ?statement : Statement,
  ?query : Query,
  ?statementEdge : StatementsEdge,
}

typedef Args_CreateStatementPayload__statementEdge = {
  ?orderBy : Array<StatementsOrderBy>,
}

typedef CreateTableFieldInput = {
  ?clientMutationId : String,
  tableField : TableFieldInput,
}

typedef CreateTableFieldPayload = {
  ?clientMutationId : String,
  ?tableField : TableField,
  ?query : Query,
  ?tableFieldEdge : TableFieldsEdge,
}

typedef Args_CreateTableFieldPayload__tableFieldEdge = {
  ?orderBy : Array<TableFieldsOrderBy>,
}

typedef CreateUiComponentInput = {
  ?clientMutationId : String,
  uiComponent : UiComponentInput,
}

typedef CreateUiComponentPayload = {
  ?clientMutationId : String,
  ?uiComponent : UiComponent,
  ?query : Query,
  ?uiComponentEdge : UiComponentsEdge,
}

typedef Args_CreateUiComponentPayload__uiComponentEdge = {
  ?orderBy : Array<UiComponentsOrderBy>,
}

typedef CreateUserGroupInput = {
  ?clientMutationId : String,
  userGroup : UserGroupInput,
}

typedef CreateUserGroupPayload = {
  ?clientMutationId : String,
  ?userGroup : UserGroup,
  ?query : Query,
  ?userGroupEdge : UserGroupsEdge,
}

typedef Args_CreateUserGroupPayload__userGroupEdge = {
  ?orderBy : Array<UserGroupsOrderBy>,
}

typedef CreateUserInput = {
  ?clientMutationId : String,
  user : UserInput,
}

typedef CreateUserPayload = {
  ?clientMutationId : String,
  ?user : User,
  ?query : Query,
  ?userEdge : UsersEdge,
}

typedef Args_CreateUserPayload__userEdge = {
  ?orderBy : Array<UsersOrderBy>,
}

/* Scalar type Cursor */
abstract Cursor(Dynamic) { }

/* Enum type DataType */
@:enum abstract DataType(String) {
  var NULL = "NULL";
  var INT = "INT";
  var DATE = "DATE";
  var FLOAT = "FLOAT";
  var STRING = "STRING";
}

/* Scalar type Date 
abstract Date(Dynamic) { }*/

/* Scalar type Datetime */
abstract Datetime(Dynamic) { }

typedef Deal = {
  nodeId : ID,
  id : BigInt,
  contact : BigInt,
  ?creationDate : Datetime,
  ?account : BigInt,
  targetAccount : BigInt,
  ?startDay : String,
  ?startDate : Date,
  cycle : DealsCycle,
  amount : BigFloat,
  product : BigInt,
  ?agent : BigInt,
  ?project : BigInt,
  ?status : String,
  ?payMethod : String,
  ?endDate : Date,
  ?endReason : BigInt,
  ?repeatDate : Date,
  editedBy : BigInt,
  ?mandator : BigInt,
  ?oldActive : Bool,
  ?cycleStartDate : Date,
  ?lastLocktime : Datetime,
}

typedef DealCondition = {
  ?id : BigInt,
  ?contact : BigInt,
  ?creationDate : Datetime,
  ?account : BigInt,
  ?targetAccount : BigInt,
  ?startDay : String,
  ?startDate : Date,
  ?cycle : DealsCycle,
  ?amount : BigFloat,
  ?product : BigInt,
  ?agent : BigInt,
  ?project : BigInt,
  ?status : String,
  ?payMethod : String,
  ?endDate : Date,
  ?endReason : BigInt,
  ?repeatDate : Date,
  ?editedBy : BigInt,
  ?mandator : BigInt,
  ?oldActive : Bool,
  ?cycleStartDate : Date,
  ?lastLocktime : Datetime,
}

typedef DealInput = {
  ?id : BigInt,
  contact : BigInt,
  ?creationDate : Datetime,
  ?account : BigInt,
  targetAccount : BigInt,
  ?startDay : String,
  ?startDate : Date,
  cycle : DealsCycle,
  amount : BigFloat,
  product : BigInt,
  ?agent : BigInt,
  ?project : BigInt,
  ?status : String,
  ?payMethod : String,
  ?endDate : Date,
  ?endReason : BigInt,
  ?repeatDate : Date,
  editedBy : BigInt,
  ?mandator : BigInt,
  ?oldActive : Bool,
  ?cycleStartDate : Date,
  ?lastLocktime : Datetime,
}

typedef DealPatch = {
  ?id : BigInt,
  ?contact : BigInt,
  ?creationDate : Datetime,
  ?account : BigInt,
  ?targetAccount : BigInt,
  ?startDay : String,
  ?startDate : Date,
  ?cycle : DealsCycle,
  ?amount : BigFloat,
  ?product : BigInt,
  ?agent : BigInt,
  ?project : BigInt,
  ?status : String,
  ?payMethod : String,
  ?endDate : Date,
  ?endReason : BigInt,
  ?repeatDate : Date,
  ?editedBy : BigInt,
  ?mandator : BigInt,
  ?oldActive : Bool,
  ?cycleStartDate : Date,
  ?lastLocktime : Datetime,
}

typedef DealsConnection = {
  nodes : Array<Deal>,
  edges : Array<DealsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

/* Enum type DealsCycle */
@:enum abstract DealsCycle(String) {
  var MONTHLY = "MONTHLY";
  var QUARTERLY = "QUARTERLY";
  var SEMIANNUAL = "SEMIANNUAL";
  var ANNUAL = "ANNUAL";
  var ONCE = "ONCE";
}

typedef DealsEdge = {
  ?cursor : Cursor,
  ?node : Deal,
}

/* Enum type DealsOrderBy */
@:enum abstract DealsOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var CONTACT_ASC = "CONTACT_ASC";
  var CONTACT_DESC = "CONTACT_DESC";
  var CREATION_DATE_ASC = "CREATION_DATE_ASC";
  var CREATION_DATE_DESC = "CREATION_DATE_DESC";
  var ACCOUNT_ASC = "ACCOUNT_ASC";
  var ACCOUNT_DESC = "ACCOUNT_DESC";
  var TARGET_ACCOUNT_ASC = "TARGET_ACCOUNT_ASC";
  var TARGET_ACCOUNT_DESC = "TARGET_ACCOUNT_DESC";
  var START_DAY_ASC = "START_DAY_ASC";
  var START_DAY_DESC = "START_DAY_DESC";
  var START_DATE_ASC = "START_DATE_ASC";
  var START_DATE_DESC = "START_DATE_DESC";
  var CYCLE_ASC = "CYCLE_ASC";
  var CYCLE_DESC = "CYCLE_DESC";
  var AMOUNT_ASC = "AMOUNT_ASC";
  var AMOUNT_DESC = "AMOUNT_DESC";
  var PRODUCT_ASC = "PRODUCT_ASC";
  var PRODUCT_DESC = "PRODUCT_DESC";
  var AGENT_ASC = "AGENT_ASC";
  var AGENT_DESC = "AGENT_DESC";
  var PROJECT_ASC = "PROJECT_ASC";
  var PROJECT_DESC = "PROJECT_DESC";
  var STATUS_ASC = "STATUS_ASC";
  var STATUS_DESC = "STATUS_DESC";
  var PAY_METHOD_ASC = "PAY_METHOD_ASC";
  var PAY_METHOD_DESC = "PAY_METHOD_DESC";
  var END_DATE_ASC = "END_DATE_ASC";
  var END_DATE_DESC = "END_DATE_DESC";
  var END_REASON_ASC = "END_REASON_ASC";
  var END_REASON_DESC = "END_REASON_DESC";
  var REPEAT_DATE_ASC = "REPEAT_DATE_ASC";
  var REPEAT_DATE_DESC = "REPEAT_DATE_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
  var OLD_ACTIVE_ASC = "OLD_ACTIVE_ASC";
  var OLD_ACTIVE_DESC = "OLD_ACTIVE_DESC";
  var CYCLE_START_DATE_ASC = "CYCLE_START_DATE_ASC";
  var CYCLE_START_DATE_DESC = "CYCLE_START_DATE_DESC";
  var LAST_LOCKTIME_ASC = "LAST_LOCKTIME_ASC";
  var LAST_LOCKTIME_DESC = "LAST_LOCKTIME_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef DeleteAccountByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteAccountInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteAccountPayload = {
  ?clientMutationId : String,
  ?account : Account,
  ?deletedAccountId : ID,
  ?query : Query,
  ?accountEdge : AccountsEdge,
}

typedef Args_DeleteAccountPayload__accountEdge = {
  ?orderBy : Array<AccountsOrderBy>,
}

typedef DeleteActivityByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteActivityInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteActivityPayload = {
  ?clientMutationId : String,
  ?activity : Activity,
  ?deletedActivityId : ID,
  ?query : Query,
  ?activityEdge : ActivitiesEdge,
}

typedef Args_DeleteActivityPayload__activityEdge = {
  ?orderBy : Array<ActivitiesOrderBy>,
}

typedef DeleteBankTransferByBaIdInput = {
  ?clientMutationId : String,
  baId : BigInt,
}

typedef DeleteBankTransferInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteBankTransferPayload = {
  ?clientMutationId : String,
  ?bankTransfer : BankTransfer,
  ?deletedBankTransferId : ID,
  ?query : Query,
  ?bankTransferEdge : BankTransfersEdge,
}

typedef Args_DeleteBankTransferPayload__bankTransferEdge = {
  ?orderBy : Array<BankTransfersOrderBy>,
}

typedef DeleteContactByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteContactInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteContactPayload = {
  ?clientMutationId : String,
  ?contact : Contact,
  ?deletedContactId : ID,
  ?query : Query,
  ?contactEdge : ContactsEdge,
}

typedef Args_DeleteContactPayload__contactEdge = {
  ?orderBy : Array<ContactsOrderBy>,
}

typedef DeleteDealByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteDealInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteDealPayload = {
  ?clientMutationId : String,
  ?deal : Deal,
  ?deletedDealId : ID,
  ?query : Query,
  ?dealEdge : DealsEdge,
}

typedef Args_DeleteDealPayload__dealEdge = {
  ?orderBy : Array<DealsOrderBy>,
}

typedef DeleteEndReasonByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteEndReasonPayload = {
  ?clientMutationId : String,
  ?endReason : EndReason,
  ?deletedEndReasonId : ID,
  ?query : Query,
  ?endReasonEdge : EndReasonsEdge,
}

typedef Args_DeleteEndReasonPayload__endReasonEdge = {
  ?orderBy : Array<EndReasonsOrderBy>,
}

typedef DeleteExternalRelationByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteExternalRelationByNameInput = {
  ?clientMutationId : String,
  name : String,
}

typedef DeleteExternalRelationInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteExternalRelationPayload = {
  ?clientMutationId : String,
  ?_externalRelation : _ExternalRelation,
  ?deletedExternalRelationId : ID,
  ?query : Query,
  ?_externalRelationEdge : _ExternalRelationsEdge,
}

typedef Args_DeleteExternalRelationPayload___externalRelationEdge = {
  ?orderBy : Array<_ExternalRelationsOrderBy>,
}

typedef DeleteMandatorByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteMandatorInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteMandatorPayload = {
  ?clientMutationId : String,
  ?mandator : Mandator,
  ?deletedMandatorId : ID,
  ?query : Query,
  ?mandatorEdge : MandatorsEdge,
}

typedef Args_DeleteMandatorPayload__mandatorEdge = {
  ?orderBy : Array<MandatorsOrderBy>,
}

typedef DeleteProductByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteProductInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteProductPayload = {
  ?clientMutationId : String,
  ?product : Product,
  ?deletedProductId : ID,
  ?query : Query,
  ?productEdge : ProductsEdge,
}

typedef Args_DeleteProductPayload__productEdge = {
  ?orderBy : Array<ProductsOrderBy>,
}

typedef DeleteProjectByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteProjectInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteProjectPayload = {
  ?clientMutationId : String,
  ?project : Project,
  ?deletedProjectId : ID,
  ?query : Query,
  ?projectEdge : ProjectsEdge,
}

typedef Args_DeleteProjectPayload__projectEdge = {
  ?orderBy : Array<ProjectsOrderBy>,
}

typedef DeleteRoleByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteRoleInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteRolePayload = {
  ?clientMutationId : String,
  ?role : Role,
  ?deletedRoleId : ID,
  ?query : Query,
  ?roleEdge : RolesEdge,
}

typedef Args_DeleteRolePayload__roleEdge = {
  ?orderBy : Array<RolesOrderBy>,
}

typedef DeleteStatementByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteStatementInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteStatementPayload = {
  ?clientMutationId : String,
  ?statement : Statement,
  ?deletedStatementId : ID,
  ?query : Query,
  ?statementEdge : StatementsEdge,
}

typedef Args_DeleteStatementPayload__statementEdge = {
  ?orderBy : Array<StatementsOrderBy>,
}

typedef DeleteTableFieldByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteTableFieldInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteTableFieldPayload = {
  ?clientMutationId : String,
  ?tableField : TableField,
  ?deletedTableFieldId : ID,
  ?query : Query,
  ?tableFieldEdge : TableFieldsEdge,
}

typedef Args_DeleteTableFieldPayload__tableFieldEdge = {
  ?orderBy : Array<TableFieldsOrderBy>,
}

typedef DeleteUiComponentByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteUiComponentInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteUiComponentPayload = {
  ?clientMutationId : String,
  ?uiComponent : UiComponent,
  ?deletedUiComponentId : ID,
  ?query : Query,
  ?uiComponentEdge : UiComponentsEdge,
}

typedef Args_DeleteUiComponentPayload__uiComponentEdge = {
  ?orderBy : Array<UiComponentsOrderBy>,
}

typedef DeleteUserByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteUserByUserNameAndMandatorInput = {
  ?clientMutationId : String,
  userName : String,
  mandator : BigInt,
}

typedef DeleteUserGroupByIdInput = {
  ?clientMutationId : String,
  id : BigInt,
}

typedef DeleteUserGroupInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteUserGroupPayload = {
  ?clientMutationId : String,
  ?userGroup : UserGroup,
  ?deletedUserGroupId : ID,
  ?query : Query,
  ?userGroupEdge : UserGroupsEdge,
}

typedef Args_DeleteUserGroupPayload__userGroupEdge = {
  ?orderBy : Array<UserGroupsOrderBy>,
}

typedef DeleteUserInput = {
  ?clientMutationId : String,
  nodeId : ID,
}

typedef DeleteUserPayload = {
  ?clientMutationId : String,
  ?user : User,
  ?deletedUserId : ID,
  ?query : Query,
  ?userEdge : UsersEdge,
}

typedef Args_DeleteUserPayload__userEdge = {
  ?orderBy : Array<UsersOrderBy>,
}

/* Enum type Element */
@:enum abstract Element(String) {
  var NONE = "NONE";
  var BUTTON = "BUTTON";
  var INPUT = "INPUT";
  var HIDDEN = "HIDDEN";
  var CHECKBOX = "CHECKBOX";
  var RADIO = "RADIO";
  var SELECT = "SELECT";
  var TEXTAREA = "TEXTAREA";
}

typedef EndReason = {
  ?id : BigInt,
  reason : String,
  editedBy : BigInt,
  mandator : BigInt,
}

typedef EndReasonCondition = {
  ?id : BigInt,
  ?reason : String,
  ?editedBy : BigInt,
  ?mandator : BigInt,
}

typedef EndReasonInput = {
  ?id : BigInt,
  reason : String,
  editedBy : BigInt,
  mandator : BigInt,
}

typedef EndReasonPatch = {
  ?id : BigInt,
  ?reason : String,
  ?editedBy : BigInt,
  ?mandator : BigInt,
}

typedef EndReasonsConnection = {
  nodes : Array<EndReason>,
  edges : Array<EndReasonsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef EndReasonsEdge = {
  ?cursor : Cursor,
  ?node : EndReason,
}

/* Enum type EndReasonsOrderBy */
@:enum abstract EndReasonsOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var REASON_ASC = "REASON_ASC";
  var REASON_DESC = "REASON_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
}

typedef GetPrimaryIdsInput = {
  ?clientMutationId : String,
}

typedef GetPrimaryIdsPayload = {
  ?clientMutationId : String,
  ?results : Array<GetPrimaryIdsRecord>,
  ?query : Query,
}

typedef GetPrimaryIdsRecord = {
  ?tableName : String,
  ?columnName : String,
}

/* Scalar type JSON */
abstract JSON(Dynamic) { }

typedef Mandator = {
  nodeId : ID,
  id : BigInt,
  contact : BigInt,
  name : String,
  ?description : String,
  ?any : JSON,
  editedBy : BigInt,
  ?parent : BigInt,
  ?lastLocktime : Datetime,
}

typedef MandatorCondition = {
  ?id : BigInt,
  ?contact : BigInt,
  ?name : String,
  ?description : String,
  ?any : JSON,
  ?editedBy : BigInt,
  ?parent : BigInt,
  ?lastLocktime : Datetime,
}

typedef MandatorInput = {
  ?id : BigInt,
  contact : BigInt,
  name : String,
  ?description : String,
  ?any : JSON,
  editedBy : BigInt,
  ?parent : BigInt,
  ?lastLocktime : Datetime,
}

typedef MandatorPatch = {
  ?id : BigInt,
  ?contact : BigInt,
  ?name : String,
  ?description : String,
  ?any : JSON,
  ?editedBy : BigInt,
  ?parent : BigInt,
  ?lastLocktime : Datetime,
}

typedef MandatorsConnection = {
  nodes : Array<Mandator>,
  edges : Array<MandatorsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef MandatorsEdge = {
  ?cursor : Cursor,
  ?node : Mandator,
}

/* Enum type MandatorsOrderBy */
@:enum abstract MandatorsOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var CONTACT_ASC = "CONTACT_ASC";
  var CONTACT_DESC = "CONTACT_DESC";
  var NAME_ASC = "NAME_ASC";
  var NAME_DESC = "NAME_DESC";
  var DESCRIPTION_ASC = "DESCRIPTION_ASC";
  var DESCRIPTION_DESC = "DESCRIPTION_DESC";
  var ANY_ASC = "ANY_ASC";
  var ANY_DESC = "ANY_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var PARENT_ASC = "PARENT_ASC";
  var PARENT_DESC = "PARENT_DESC";
  var LAST_LOCKTIME_ASC = "LAST_LOCKTIME_ASC";
  var LAST_LOCKTIME_DESC = "LAST_LOCKTIME_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef Mutation = {
  ?createExternalRelation : CreateExternalRelationPayload,
  ?createAccount : CreateAccountPayload,
  ?createActivity : CreateActivityPayload,
  ?createBankTransfer : CreateBankTransferPayload,
  ?createContact : CreateContactPayload,
  ?createDeal : CreateDealPayload,
  ?createEndReason : CreateEndReasonPayload,
  ?createMandator : CreateMandatorPayload,
  ?createProduct : CreateProductPayload,
  ?createProject : CreateProjectPayload,
  ?createRole : CreateRolePayload,
  ?createStatement : CreateStatementPayload,
  ?createTableField : CreateTableFieldPayload,
  ?createUiComponent : CreateUiComponentPayload,
  ?createUserGroup : CreateUserGroupPayload,
  ?createUser : CreateUserPayload,
  ?updateExternalRelation : UpdateExternalRelationPayload,
  ?updateExternalRelationById : UpdateExternalRelationPayload,
  ?updateExternalRelationByName : UpdateExternalRelationPayload,
  ?updateAccount : UpdateAccountPayload,
  ?updateAccountById : UpdateAccountPayload,
  ?updateActivity : UpdateActivityPayload,
  ?updateActivityById : UpdateActivityPayload,
  ?updateBankTransfer : UpdateBankTransferPayload,
  ?updateBankTransferByBaId : UpdateBankTransferPayload,
  ?updateContact : UpdateContactPayload,
  ?updateContactById : UpdateContactPayload,
  ?updateDeal : UpdateDealPayload,
  ?updateDealById : UpdateDealPayload,
  ?updateEndReasonById : UpdateEndReasonPayload,
  ?updateMandator : UpdateMandatorPayload,
  ?updateMandatorById : UpdateMandatorPayload,
  ?updateProduct : UpdateProductPayload,
  ?updateProductById : UpdateProductPayload,
  ?updateProject : UpdateProjectPayload,
  ?updateProjectById : UpdateProjectPayload,
  ?updateRole : UpdateRolePayload,
  ?updateRoleById : UpdateRolePayload,
  ?updateStatement : UpdateStatementPayload,
  ?updateStatementById : UpdateStatementPayload,
  ?updateTableField : UpdateTableFieldPayload,
  ?updateTableFieldById : UpdateTableFieldPayload,
  ?updateUiComponent : UpdateUiComponentPayload,
  ?updateUiComponentById : UpdateUiComponentPayload,
  ?updateUserGroup : UpdateUserGroupPayload,
  ?updateUserGroupById : UpdateUserGroupPayload,
  ?updateUser : UpdateUserPayload,
  ?updateUserById : UpdateUserPayload,
  ?updateUserByUserNameAndMandator : UpdateUserPayload,
  ?deleteExternalRelation : DeleteExternalRelationPayload,
  ?deleteExternalRelationById : DeleteExternalRelationPayload,
  ?deleteExternalRelationByName : DeleteExternalRelationPayload,
  ?deleteAccount : DeleteAccountPayload,
  ?deleteAccountById : DeleteAccountPayload,
  ?deleteActivity : DeleteActivityPayload,
  ?deleteActivityById : DeleteActivityPayload,
  ?deleteBankTransfer : DeleteBankTransferPayload,
  ?deleteBankTransferByBaId : DeleteBankTransferPayload,
  ?deleteContact : DeleteContactPayload,
  ?deleteContactById : DeleteContactPayload,
  ?deleteDeal : DeleteDealPayload,
  ?deleteDealById : DeleteDealPayload,
  ?deleteEndReasonById : DeleteEndReasonPayload,
  ?deleteMandator : DeleteMandatorPayload,
  ?deleteMandatorById : DeleteMandatorPayload,
  ?deleteProduct : DeleteProductPayload,
  ?deleteProductById : DeleteProductPayload,
  ?deleteProject : DeleteProjectPayload,
  ?deleteProjectById : DeleteProjectPayload,
  ?deleteRole : DeleteRolePayload,
  ?deleteRoleById : DeleteRolePayload,
  ?deleteStatement : DeleteStatementPayload,
  ?deleteStatementById : DeleteStatementPayload,
  ?deleteTableField : DeleteTableFieldPayload,
  ?deleteTableFieldById : DeleteTableFieldPayload,
  ?deleteUiComponent : DeleteUiComponentPayload,
  ?deleteUiComponentById : DeleteUiComponentPayload,
  ?deleteUserGroup : DeleteUserGroupPayload,
  ?deleteUserGroupById : DeleteUserGroupPayload,
  ?deleteUser : DeleteUserPayload,
  ?deleteUserById : DeleteUserPayload,
  ?deleteUserByUserNameAndMandator : DeleteUserPayload,
  ?cloneSchema : CloneSchemaPayload,
  ?getPrimaryIds : GetPrimaryIdsPayload,
}

typedef Args_Mutation__createExternalRelation = {
  input : CreateExternalRelationInput,
}

typedef Args_Mutation__createAccount = {
  input : CreateAccountInput,
}

typedef Args_Mutation__createActivity = {
  input : CreateActivityInput,
}

typedef Args_Mutation__createBankTransfer = {
  input : CreateBankTransferInput,
}

typedef Args_Mutation__createContact = {
  input : CreateContactInput,
}

typedef Args_Mutation__createDeal = {
  input : CreateDealInput,
}

typedef Args_Mutation__createEndReason = {
  input : CreateEndReasonInput,
}

typedef Args_Mutation__createMandator = {
  input : CreateMandatorInput,
}

typedef Args_Mutation__createProduct = {
  input : CreateProductInput,
}

typedef Args_Mutation__createProject = {
  input : CreateProjectInput,
}

typedef Args_Mutation__createRole = {
  input : CreateRoleInput,
}

typedef Args_Mutation__createStatement = {
  input : CreateStatementInput,
}

typedef Args_Mutation__createTableField = {
  input : CreateTableFieldInput,
}

typedef Args_Mutation__createUiComponent = {
  input : CreateUiComponentInput,
}

typedef Args_Mutation__createUserGroup = {
  input : CreateUserGroupInput,
}

typedef Args_Mutation__createUser = {
  input : CreateUserInput,
}

typedef Args_Mutation__updateExternalRelation = {
  input : UpdateExternalRelationInput,
}

typedef Args_Mutation__updateExternalRelationById = {
  input : UpdateExternalRelationByIdInput,
}

typedef Args_Mutation__updateExternalRelationByName = {
  input : UpdateExternalRelationByNameInput,
}

typedef Args_Mutation__updateAccount = {
  input : UpdateAccountInput,
}

typedef Args_Mutation__updateAccountById = {
  input : UpdateAccountByIdInput,
}

typedef Args_Mutation__updateActivity = {
  input : UpdateActivityInput,
}

typedef Args_Mutation__updateActivityById = {
  input : UpdateActivityByIdInput,
}

typedef Args_Mutation__updateBankTransfer = {
  input : UpdateBankTransferInput,
}

typedef Args_Mutation__updateBankTransferByBaId = {
  input : UpdateBankTransferByBaIdInput,
}

typedef Args_Mutation__updateContact = {
  input : UpdateContactInput,
}

typedef Args_Mutation__updateContactById = {
  input : UpdateContactByIdInput,
}

typedef Args_Mutation__updateDeal = {
  input : UpdateDealInput,
}

typedef Args_Mutation__updateDealById = {
  input : UpdateDealByIdInput,
}

typedef Args_Mutation__updateEndReasonById = {
  input : UpdateEndReasonByIdInput,
}

typedef Args_Mutation__updateMandator = {
  input : UpdateMandatorInput,
}

typedef Args_Mutation__updateMandatorById = {
  input : UpdateMandatorByIdInput,
}

typedef Args_Mutation__updateProduct = {
  input : UpdateProductInput,
}

typedef Args_Mutation__updateProductById = {
  input : UpdateProductByIdInput,
}

typedef Args_Mutation__updateProject = {
  input : UpdateProjectInput,
}

typedef Args_Mutation__updateProjectById = {
  input : UpdateProjectByIdInput,
}

typedef Args_Mutation__updateRole = {
  input : UpdateRoleInput,
}

typedef Args_Mutation__updateRoleById = {
  input : UpdateRoleByIdInput,
}

typedef Args_Mutation__updateStatement = {
  input : UpdateStatementInput,
}

typedef Args_Mutation__updateStatementById = {
  input : UpdateStatementByIdInput,
}

typedef Args_Mutation__updateTableField = {
  input : UpdateTableFieldInput,
}

typedef Args_Mutation__updateTableFieldById = {
  input : UpdateTableFieldByIdInput,
}

typedef Args_Mutation__updateUiComponent = {
  input : UpdateUiComponentInput,
}

typedef Args_Mutation__updateUiComponentById = {
  input : UpdateUiComponentByIdInput,
}

typedef Args_Mutation__updateUserGroup = {
  input : UpdateUserGroupInput,
}

typedef Args_Mutation__updateUserGroupById = {
  input : UpdateUserGroupByIdInput,
}

typedef Args_Mutation__updateUser = {
  input : UpdateUserInput,
}

typedef Args_Mutation__updateUserById = {
  input : UpdateUserByIdInput,
}

typedef Args_Mutation__updateUserByUserNameAndMandator = {
  input : UpdateUserByUserNameAndMandatorInput,
}

typedef Args_Mutation__deleteExternalRelation = {
  input : DeleteExternalRelationInput,
}

typedef Args_Mutation__deleteExternalRelationById = {
  input : DeleteExternalRelationByIdInput,
}

typedef Args_Mutation__deleteExternalRelationByName = {
  input : DeleteExternalRelationByNameInput,
}

typedef Args_Mutation__deleteAccount = {
  input : DeleteAccountInput,
}

typedef Args_Mutation__deleteAccountById = {
  input : DeleteAccountByIdInput,
}

typedef Args_Mutation__deleteActivity = {
  input : DeleteActivityInput,
}

typedef Args_Mutation__deleteActivityById = {
  input : DeleteActivityByIdInput,
}

typedef Args_Mutation__deleteBankTransfer = {
  input : DeleteBankTransferInput,
}

typedef Args_Mutation__deleteBankTransferByBaId = {
  input : DeleteBankTransferByBaIdInput,
}

typedef Args_Mutation__deleteContact = {
  input : DeleteContactInput,
}

typedef Args_Mutation__deleteContactById = {
  input : DeleteContactByIdInput,
}

typedef Args_Mutation__deleteDeal = {
  input : DeleteDealInput,
}

typedef Args_Mutation__deleteDealById = {
  input : DeleteDealByIdInput,
}

typedef Args_Mutation__deleteEndReasonById = {
  input : DeleteEndReasonByIdInput,
}

typedef Args_Mutation__deleteMandator = {
  input : DeleteMandatorInput,
}

typedef Args_Mutation__deleteMandatorById = {
  input : DeleteMandatorByIdInput,
}

typedef Args_Mutation__deleteProduct = {
  input : DeleteProductInput,
}

typedef Args_Mutation__deleteProductById = {
  input : DeleteProductByIdInput,
}

typedef Args_Mutation__deleteProject = {
  input : DeleteProjectInput,
}

typedef Args_Mutation__deleteProjectById = {
  input : DeleteProjectByIdInput,
}

typedef Args_Mutation__deleteRole = {
  input : DeleteRoleInput,
}

typedef Args_Mutation__deleteRoleById = {
  input : DeleteRoleByIdInput,
}

typedef Args_Mutation__deleteStatement = {
  input : DeleteStatementInput,
}

typedef Args_Mutation__deleteStatementById = {
  input : DeleteStatementByIdInput,
}

typedef Args_Mutation__deleteTableField = {
  input : DeleteTableFieldInput,
}

typedef Args_Mutation__deleteTableFieldById = {
  input : DeleteTableFieldByIdInput,
}

typedef Args_Mutation__deleteUiComponent = {
  input : DeleteUiComponentInput,
}

typedef Args_Mutation__deleteUiComponentById = {
  input : DeleteUiComponentByIdInput,
}

typedef Args_Mutation__deleteUserGroup = {
  input : DeleteUserGroupInput,
}

typedef Args_Mutation__deleteUserGroupById = {
  input : DeleteUserGroupByIdInput,
}

typedef Args_Mutation__deleteUser = {
  input : DeleteUserInput,
}

typedef Args_Mutation__deleteUserById = {
  input : DeleteUserByIdInput,
}

typedef Args_Mutation__deleteUserByUserNameAndMandator = {
  input : DeleteUserByUserNameAndMandatorInput,
}

typedef Args_Mutation__cloneSchema = {
  input : CloneSchemaInput,
}

typedef Args_Mutation__getPrimaryIds = {
  input : GetPrimaryIdsInput,
}

typedef Node = {
  nodeId : ID,
}

typedef PageInfo = {
  hasNextPage : Bool,
  hasPreviousPage : Bool,
  ?startCursor : Cursor,
  ?endCursor : Cursor,
}

typedef Product = {
  nodeId : ID,
  id : BigInt,
  name : String,
  ?description : String,
  ?value : BigFloat,
  ?attributes : JSON,
  mandator : BigInt,
  ?active : Bool,
  editedBy : BigInt,
}

typedef ProductCondition = {
  ?id : BigInt,
  ?name : String,
  ?description : String,
  ?value : BigFloat,
  ?attributes : JSON,
  ?mandator : BigInt,
  ?active : Bool,
  ?editedBy : BigInt,
}

typedef ProductInput = {
  ?id : BigInt,
  name : String,
  ?description : String,
  ?value : BigFloat,
  ?attributes : JSON,
  mandator : BigInt,
  ?active : Bool,
  editedBy : BigInt,
}

typedef ProductPatch = {
  ?id : BigInt,
  ?name : String,
  ?description : String,
  ?value : BigFloat,
  ?attributes : JSON,
  ?mandator : BigInt,
  ?active : Bool,
  ?editedBy : BigInt,
}

typedef ProductsConnection = {
  nodes : Array<Product>,
  edges : Array<ProductsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef ProductsEdge = {
  ?cursor : Cursor,
  ?node : Product,
}

/* Enum type ProductsOrderBy */
@:enum abstract ProductsOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var NAME_ASC = "NAME_ASC";
  var NAME_DESC = "NAME_DESC";
  var DESCRIPTION_ASC = "DESCRIPTION_ASC";
  var DESCRIPTION_DESC = "DESCRIPTION_DESC";
  var VALUE_ASC = "VALUE_ASC";
  var VALUE_DESC = "VALUE_DESC";
  var ATTRIBUTES_ASC = "ATTRIBUTES_ASC";
  var ATTRIBUTES_DESC = "ATTRIBUTES_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
  var ACTIVE_ASC = "ACTIVE_ASC";
  var ACTIVE_DESC = "ACTIVE_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef Project = {
  nodeId : ID,
  id : BigInt,
  mandator : BigInt,
  name : String,
  ?description : String,
  editedBy : BigInt,
  ?provisionPercent : Float,
  ?cancellationLiable : Int,
  targetAccount : BigInt,
}

typedef ProjectCondition = {
  ?id : BigInt,
  ?mandator : BigInt,
  ?name : String,
  ?description : String,
  ?editedBy : BigInt,
  ?provisionPercent : Float,
  ?cancellationLiable : Int,
  ?targetAccount : BigInt,
}

typedef ProjectInput = {
  ?id : BigInt,
  mandator : BigInt,
  name : String,
  ?description : String,
  editedBy : BigInt,
  ?provisionPercent : Float,
  ?cancellationLiable : Int,
  ?targetAccount : BigInt,
}

typedef ProjectPatch = {
  ?id : BigInt,
  ?mandator : BigInt,
  ?name : String,
  ?description : String,
  ?editedBy : BigInt,
  ?provisionPercent : Float,
  ?cancellationLiable : Int,
  ?targetAccount : BigInt,
}

typedef ProjectsConnection = {
  nodes : Array<Project>,
  edges : Array<ProjectsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef ProjectsEdge = {
  ?cursor : Cursor,
  ?node : Project,
}

/* Enum type ProjectsOrderBy */
@:enum abstract ProjectsOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
  var NAME_ASC = "NAME_ASC";
  var NAME_DESC = "NAME_DESC";
  var DESCRIPTION_ASC = "DESCRIPTION_ASC";
  var DESCRIPTION_DESC = "DESCRIPTION_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var PROVISION_PERCENT_ASC = "PROVISION_PERCENT_ASC";
  var PROVISION_PERCENT_DESC = "PROVISION_PERCENT_DESC";
  var CANCELLATION_LIABLE_ASC = "CANCELLATION_LIABLE_ASC";
  var CANCELLATION_LIABLE_DESC = "CANCELLATION_LIABLE_DESC";
  var TARGET_ACCOUNT_ASC = "TARGET_ACCOUNT_ASC";
  var TARGET_ACCOUNT_DESC = "TARGET_ACCOUNT_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef Query = {
  query : Query,
  nodeId : ID,
  ?node : Node,
  ?allExternalRelations : _ExternalRelationsConnection,
  ?allAccounts : AccountsConnection,
  ?allActivities : ActivitiesConnection,
  ?allBankTransfers : BankTransfersConnection,
  ?allContacts : ContactsConnection,
  ?allDeals : DealsConnection,
  ?allEndReasons : EndReasonsConnection,
  ?allMandators : MandatorsConnection,
  ?allProducts : ProductsConnection,
  ?allProjects : ProjectsConnection,
  ?allRoles : RolesConnection,
  ?allStatements : StatementsConnection,
  ?allTableFields : TableFieldsConnection,
  ?allUiComponents : UiComponentsConnection,
  ?allUserGroups : UserGroupsConnection,
  ?allUsers : UsersConnection,
  ?_externalRelationById : _ExternalRelation,
  ?_externalRelationByName : _ExternalRelation,
  ?accountById : Account,
  ?activityById : Activity,
  ?bankTransferByBaId : BankTransfer,
  ?contactById : Contact,
  ?dealById : Deal,
  ?endReasonById : EndReason,
  ?mandatorById : Mandator,
  ?productById : Product,
  ?projectById : Project,
  ?roleById : Role,
  ?statementById : Statement,
  ?tableFieldById : TableField,
  ?uiComponentById : UiComponent,
  ?userGroupById : UserGroup,
  ?userById : User,
  ?userByUserNameAndMandator : User,
  ?getPrimaryId : String,
  ?_externalRelation : _ExternalRelation,
  ?account : Account,
  ?activity : Activity,
  ?bankTransfer : BankTransfer,
  ?contact : Contact,
  ?deal : Deal,
  ?mandator : Mandator,
  ?product : Product,
  ?project : Project,
  ?role : Role,
  ?statement : Statement,
  ?tableField : TableField,
  ?uiComponent : UiComponent,
  ?userGroup : UserGroup,
  ?user : User,
}

typedef Args_Query__node = {
  nodeId : ID,
}

typedef Args_Query__allExternalRelations = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<_ExternalRelationsOrderBy>,
  ?condition : _ExternalRelationCondition,
}

typedef Args_Query__allAccounts = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<AccountsOrderBy>,
  ?condition : AccountCondition,
}

typedef Args_Query__allActivities = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<ActivitiesOrderBy>,
  ?condition : ActivityCondition,
}

typedef Args_Query__allBankTransfers = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<BankTransfersOrderBy>,
  ?condition : BankTransferCondition,
}

typedef Args_Query__allContacts = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<ContactsOrderBy>,
  ?condition : ContactCondition,
}

typedef Args_Query__allDeals = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<DealsOrderBy>,
  ?condition : DealCondition,
}

typedef Args_Query__allEndReasons = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<EndReasonsOrderBy>,
  ?condition : EndReasonCondition,
}

typedef Args_Query__allMandators = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<MandatorsOrderBy>,
  ?condition : MandatorCondition,
}

typedef Args_Query__allProducts = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<ProductsOrderBy>,
  ?condition : ProductCondition,
}

typedef Args_Query__allProjects = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<ProjectsOrderBy>,
  ?condition : ProjectCondition,
}

typedef Args_Query__allRoles = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<RolesOrderBy>,
  ?condition : RoleCondition,
}

typedef Args_Query__allStatements = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<StatementsOrderBy>,
  ?condition : StatementCondition,
}

typedef Args_Query__allTableFields = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<TableFieldsOrderBy>,
  ?condition : TableFieldCondition,
}

typedef Args_Query__allUiComponents = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<UiComponentsOrderBy>,
  ?condition : UiComponentCondition,
}

typedef Args_Query__allUserGroups = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<UserGroupsOrderBy>,
  ?condition : UserGroupCondition,
}

typedef Args_Query__allUsers = {
  ?first : Int,
  ?last : Int,
  ?offset : Int,
  ?before : Cursor,
  ?after : Cursor,
  ?orderBy : Array<UsersOrderBy>,
  ?condition : UserCondition,
}

typedef Args_Query___externalRelationById = {
  id : BigInt,
}

typedef Args_Query___externalRelationByName = {
  name : String,
}

typedef Args_Query__accountById = {
  id : BigInt,
}

typedef Args_Query__activityById = {
  id : BigInt,
}

typedef Args_Query__bankTransferByBaId = {
  baId : BigInt,
}

typedef Args_Query__contactById = {
  id : BigInt,
}

typedef Args_Query__dealById = {
  id : BigInt,
}

typedef Args_Query__endReasonById = {
  id : BigInt,
}

typedef Args_Query__mandatorById = {
  id : BigInt,
}

typedef Args_Query__productById = {
  id : BigInt,
}

typedef Args_Query__projectById = {
  id : BigInt,
}

typedef Args_Query__roleById = {
  id : BigInt,
}

typedef Args_Query__statementById = {
  id : BigInt,
}

typedef Args_Query__tableFieldById = {
  id : BigInt,
}

typedef Args_Query__uiComponentById = {
  id : BigInt,
}

typedef Args_Query__userGroupById = {
  id : BigInt,
}

typedef Args_Query__userById = {
  id : BigInt,
}

typedef Args_Query__userByUserNameAndMandator = {
  userName : String,
  mandator : BigInt,
}

typedef Args_Query__getPrimaryId = {
  ?table_ : String,
}

typedef Args_Query___externalRelation = {
  nodeId : ID,
}

typedef Args_Query__account = {
  nodeId : ID,
}

typedef Args_Query__activity = {
  nodeId : ID,
}

typedef Args_Query__bankTransfer = {
  nodeId : ID,
}

typedef Args_Query__contact = {
  nodeId : ID,
}

typedef Args_Query__deal = {
  nodeId : ID,
}

typedef Args_Query__mandator = {
  nodeId : ID,
}

typedef Args_Query__product = {
  nodeId : ID,
}

typedef Args_Query__project = {
  nodeId : ID,
}

typedef Args_Query__role = {
  nodeId : ID,
}

typedef Args_Query__statement = {
  nodeId : ID,
}

typedef Args_Query__tableField = {
  nodeId : ID,
}

typedef Args_Query__uiComponent = {
  nodeId : ID,
}

typedef Args_Query__userGroup = {
  nodeId : ID,
}

typedef Args_Query__user = {
  nodeId : ID,
}

typedef Role = {
  nodeId : ID,
  id : BigInt,
  name : String,
  ?description : String,
  permissions : JSON,
  editedBy : BigInt,
  mandator : BigInt,
}

typedef RoleCondition = {
  ?id : BigInt,
  ?name : String,
  ?description : String,
  ?permissions : JSON,
  ?editedBy : BigInt,
  ?mandator : BigInt,
}

typedef RoleInput = {
  ?id : BigInt,
  name : String,
  ?description : String,
  ?permissions : JSON,
  editedBy : BigInt,
  mandator : BigInt,
}

typedef RolePatch = {
  ?id : BigInt,
  ?name : String,
  ?description : String,
  ?permissions : JSON,
  ?editedBy : BigInt,
  ?mandator : BigInt,
}

typedef RolesConnection = {
  nodes : Array<Role>,
  edges : Array<RolesEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef RolesEdge = {
  ?cursor : Cursor,
  ?node : Role,
}

/* Enum type RolesOrderBy */
@:enum abstract RolesOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var NAME_ASC = "NAME_ASC";
  var NAME_DESC = "NAME_DESC";
  var DESCRIPTION_ASC = "DESCRIPTION_ASC";
  var DESCRIPTION_DESC = "DESCRIPTION_DESC";
  var PERMISSIONS_ASC = "PERMISSIONS_ASC";
  var PERMISSIONS_DESC = "PERMISSIONS_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef Statement = {
  nodeId : ID,
  a : BigInt,
  b : BigInt,
  c : Date,
  d : Date,
  e : Float,
  f : String,
  ?g : BigInt,
  h : String,
  i : String,
  j : String,
  k : String,
  l : String,
  m : String,
  n : String,
  o : String,
  p : String,
  q : String,
  r : String,
  s : String,
  t : String,
  u : String,
  v : String,
  w : String,
  x : String,
  y : String,
  z : String,
  ?aa : BigInt,
  processed : Int,
  id : BigInt,
  editedBy : BigInt,
  ?mandator : BigInt,
}

typedef StatementCondition = {
  ?a : BigInt,
  ?b : BigInt,
  ?c : Date,
  ?d : Date,
  ?e : Float,
  ?f : String,
  ?g : BigInt,
  ?h : String,
  ?i : String,
  ?j : String,
  ?k : String,
  ?l : String,
  ?m : String,
  ?n : String,
  ?o : String,
  ?p : String,
  ?q : String,
  ?r : String,
  ?s : String,
  ?t : String,
  ?u : String,
  ?v : String,
  ?w : String,
  ?x : String,
  ?y : String,
  ?z : String,
  ?aa : BigInt,
  ?processed : Int,
  ?id : BigInt,
  ?editedBy : BigInt,
  ?mandator : BigInt,
}

typedef StatementInput = {
  a : BigInt,
  b : BigInt,
  c : Date,
  d : Date,
  e : Float,
  ?f : String,
  ?g : BigInt,
  ?h : String,
  ?i : String,
  ?j : String,
  ?k : String,
  ?l : String,
  ?m : String,
  ?n : String,
  ?o : String,
  ?p : String,
  ?q : String,
  ?r : String,
  ?s : String,
  ?t : String,
  ?u : String,
  ?v : String,
  ?w : String,
  ?x : String,
  ?y : String,
  ?z : String,
  ?aa : BigInt,
  ?processed : Int,
  ?id : BigInt,
  editedBy : BigInt,
  ?mandator : BigInt,
}

typedef StatementPatch = {
  ?a : BigInt,
  ?b : BigInt,
  ?c : Date,
  ?d : Date,
  ?e : Float,
  ?f : String,
  ?g : BigInt,
  ?h : String,
  ?i : String,
  ?j : String,
  ?k : String,
  ?l : String,
  ?m : String,
  ?n : String,
  ?o : String,
  ?p : String,
  ?q : String,
  ?r : String,
  ?s : String,
  ?t : String,
  ?u : String,
  ?v : String,
  ?w : String,
  ?x : String,
  ?y : String,
  ?z : String,
  ?aa : BigInt,
  ?processed : Int,
  ?id : BigInt,
  ?editedBy : BigInt,
  ?mandator : BigInt,
}

typedef StatementsConnection = {
  nodes : Array<Statement>,
  edges : Array<StatementsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef StatementsEdge = {
  ?cursor : Cursor,
  ?node : Statement,
}

/* Enum type StatementsOrderBy */
@:enum abstract StatementsOrderBy(String) {
  var NATURAL = "NATURAL";
  var A_ASC = "A_ASC";
  var A_DESC = "A_DESC";
  var B_ASC = "B_ASC";
  var B_DESC = "B_DESC";
  var C_ASC = "C_ASC";
  var C_DESC = "C_DESC";
  var D_ASC = "D_ASC";
  var D_DESC = "D_DESC";
  var E_ASC = "E_ASC";
  var E_DESC = "E_DESC";
  var F_ASC = "F_ASC";
  var F_DESC = "F_DESC";
  var G_ASC = "G_ASC";
  var G_DESC = "G_DESC";
  var H_ASC = "H_ASC";
  var H_DESC = "H_DESC";
  var I_ASC = "I_ASC";
  var I_DESC = "I_DESC";
  var J_ASC = "J_ASC";
  var J_DESC = "J_DESC";
  var K_ASC = "K_ASC";
  var K_DESC = "K_DESC";
  var L_ASC = "L_ASC";
  var L_DESC = "L_DESC";
  var M_ASC = "M_ASC";
  var M_DESC = "M_DESC";
  var N_ASC = "N_ASC";
  var N_DESC = "N_DESC";
  var O_ASC = "O_ASC";
  var O_DESC = "O_DESC";
  var P_ASC = "P_ASC";
  var P_DESC = "P_DESC";
  var Q_ASC = "Q_ASC";
  var Q_DESC = "Q_DESC";
  var R_ASC = "R_ASC";
  var R_DESC = "R_DESC";
  var S_ASC = "S_ASC";
  var S_DESC = "S_DESC";
  var T_ASC = "T_ASC";
  var T_DESC = "T_DESC";
  var U_ASC = "U_ASC";
  var U_DESC = "U_DESC";
  var V_ASC = "V_ASC";
  var V_DESC = "V_DESC";
  var W_ASC = "W_ASC";
  var W_DESC = "W_DESC";
  var X_ASC = "X_ASC";
  var X_DESC = "X_DESC";
  var Y_ASC = "Y_ASC";
  var Y_DESC = "Y_DESC";
  var Z_ASC = "Z_ASC";
  var Z_DESC = "Z_DESC";
  var AA_ASC = "AA_ASC";
  var AA_DESC = "AA_DESC";
  var PROCESSED_ASC = "PROCESSED_ASC";
  var PROCESSED_DESC = "PROCESSED_DESC";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef TableField = {
  nodeId : ID,
  id : BigInt,
  tableName : String,
  ?mandator : BigInt,
  fieldName : String,
  ?readonly : Bool,
  ?element : Element,
  any : JSON,
  ?required : Bool,
  ?useAsIndex : Bool,
  ?adminOnly : Bool,
  ?fieldType : DataType,
}

typedef TableFieldCondition = {
  ?id : BigInt,
  ?tableName : String,
  ?mandator : BigInt,
  ?fieldName : String,
  ?readonly : Bool,
  ?element : Element,
  ?any : JSON,
  ?required : Bool,
  ?useAsIndex : Bool,
  ?adminOnly : Bool,
  ?fieldType : DataType,
}

typedef TableFieldInput = {
  ?id : BigInt,
  ?tableName : String,
  ?mandator : BigInt,
  ?fieldName : String,
  ?readonly : Bool,
  ?element : Element,
  ?any : JSON,
  ?required : Bool,
  ?useAsIndex : Bool,
  ?adminOnly : Bool,
  ?fieldType : DataType,
}

typedef TableFieldPatch = {
  ?id : BigInt,
  ?tableName : String,
  ?mandator : BigInt,
  ?fieldName : String,
  ?readonly : Bool,
  ?element : Element,
  ?any : JSON,
  ?required : Bool,
  ?useAsIndex : Bool,
  ?adminOnly : Bool,
  ?fieldType : DataType,
}

typedef TableFieldsConnection = {
  nodes : Array<TableField>,
  edges : Array<TableFieldsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef TableFieldsEdge = {
  ?cursor : Cursor,
  ?node : TableField,
}

/* Enum type TableFieldsOrderBy */
@:enum abstract TableFieldsOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var TABLE_NAME_ASC = "TABLE_NAME_ASC";
  var TABLE_NAME_DESC = "TABLE_NAME_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
  var FIELD_NAME_ASC = "FIELD_NAME_ASC";
  var FIELD_NAME_DESC = "FIELD_NAME_DESC";
  var READONLY_ASC = "READONLY_ASC";
  var READONLY_DESC = "READONLY_DESC";
  var ELEMENT_ASC = "ELEMENT_ASC";
  var ELEMENT_DESC = "ELEMENT_DESC";
  var ANY_ASC = "ANY_ASC";
  var ANY_DESC = "ANY_DESC";
  var REQUIRED_ASC = "REQUIRED_ASC";
  var REQUIRED_DESC = "REQUIRED_DESC";
  var USE_AS_INDEX_ASC = "USE_AS_INDEX_ASC";
  var USE_AS_INDEX_DESC = "USE_AS_INDEX_DESC";
  var ADMIN_ONLY_ASC = "ADMIN_ONLY_ASC";
  var ADMIN_ONLY_DESC = "ADMIN_ONLY_DESC";
  var FIELD_TYPE_ASC = "FIELD_TYPE_ASC";
  var FIELD_TYPE_DESC = "FIELD_TYPE_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef UiComponent = {
  nodeId : ID,
  id : BigInt,
  ?key : String,
  ?content : String,
  ?classPath : String,
  ?component : String,
  editedBy : Int,
  ?updatedAt : Datetime,
  ?locale : String,
  ?mandator : BigInt,
}

typedef UiComponentCondition = {
  ?id : BigInt,
  ?key : String,
  ?content : String,
  ?classPath : String,
  ?component : String,
  ?editedBy : Int,
  ?updatedAt : Datetime,
  ?locale : String,
  ?mandator : BigInt,
}

typedef UiComponentInput = {
  ?id : BigInt,
  ?key : String,
  ?content : String,
  ?classPath : String,
  ?component : String,
  editedBy : Int,
  ?updatedAt : Datetime,
  ?locale : String,
  ?mandator : BigInt,
}

typedef UiComponentPatch = {
  ?id : BigInt,
  ?key : String,
  ?content : String,
  ?classPath : String,
  ?component : String,
  ?editedBy : Int,
  ?updatedAt : Datetime,
  ?locale : String,
  ?mandator : BigInt,
}

typedef UiComponentsConnection = {
  nodes : Array<UiComponent>,
  edges : Array<UiComponentsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef UiComponentsEdge = {
  ?cursor : Cursor,
  ?node : UiComponent,
}

/* Enum type UiComponentsOrderBy */
@:enum abstract UiComponentsOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var KEY_ASC = "KEY_ASC";
  var KEY_DESC = "KEY_DESC";
  var CONTENT_ASC = "CONTENT_ASC";
  var CONTENT_DESC = "CONTENT_DESC";
  var CLASS_PATH_ASC = "CLASS_PATH_ASC";
  var CLASS_PATH_DESC = "CLASS_PATH_DESC";
  var COMPONENT_ASC = "COMPONENT_ASC";
  var COMPONENT_DESC = "COMPONENT_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var UPDATED_AT_ASC = "UPDATED_AT_ASC";
  var UPDATED_AT_DESC = "UPDATED_AT_DESC";
  var LOCALE_ASC = "LOCALE_ASC";
  var LOCALE_DESC = "LOCALE_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef UpdateAccountByIdInput = {
  ?clientMutationId : String,
  accountPatch : AccountPatch,
  id : BigInt,
}

typedef UpdateAccountInput = {
  ?clientMutationId : String,
  nodeId : ID,
  accountPatch : AccountPatch,
}

typedef UpdateAccountPayload = {
  ?clientMutationId : String,
  ?account : Account,
  ?query : Query,
  ?accountEdge : AccountsEdge,
}

typedef Args_UpdateAccountPayload__accountEdge = {
  ?orderBy : Array<AccountsOrderBy>,
}

typedef UpdateActivityByIdInput = {
  ?clientMutationId : String,
  activityPatch : ActivityPatch,
  id : BigInt,
}

typedef UpdateActivityInput = {
  ?clientMutationId : String,
  nodeId : ID,
  activityPatch : ActivityPatch,
}

typedef UpdateActivityPayload = {
  ?clientMutationId : String,
  ?activity : Activity,
  ?query : Query,
  ?activityEdge : ActivitiesEdge,
}

typedef Args_UpdateActivityPayload__activityEdge = {
  ?orderBy : Array<ActivitiesOrderBy>,
}

typedef UpdateBankTransferByBaIdInput = {
  ?clientMutationId : String,
  bankTransferPatch : BankTransferPatch,
  baId : BigInt,
}

typedef UpdateBankTransferInput = {
  ?clientMutationId : String,
  nodeId : ID,
  bankTransferPatch : BankTransferPatch,
}

typedef UpdateBankTransferPayload = {
  ?clientMutationId : String,
  ?bankTransfer : BankTransfer,
  ?query : Query,
  ?bankTransferEdge : BankTransfersEdge,
}

typedef Args_UpdateBankTransferPayload__bankTransferEdge = {
  ?orderBy : Array<BankTransfersOrderBy>,
}

typedef UpdateContactByIdInput = {
  ?clientMutationId : String,
  contactPatch : ContactPatch,
  id : BigInt,
}

typedef UpdateContactInput = {
  ?clientMutationId : String,
  nodeId : ID,
  contactPatch : ContactPatch,
}

typedef UpdateContactPayload = {
  ?clientMutationId : String,
  ?contact : Contact,
  ?query : Query,
  ?contactEdge : ContactsEdge,
}

typedef Args_UpdateContactPayload__contactEdge = {
  ?orderBy : Array<ContactsOrderBy>,
}

typedef UpdateDealByIdInput = {
  ?clientMutationId : String,
  dealPatch : DealPatch,
  id : BigInt,
}

typedef UpdateDealInput = {
  ?clientMutationId : String,
  nodeId : ID,
  dealPatch : DealPatch,
}

typedef UpdateDealPayload = {
  ?clientMutationId : String,
  ?deal : Deal,
  ?query : Query,
  ?dealEdge : DealsEdge,
}

typedef Args_UpdateDealPayload__dealEdge = {
  ?orderBy : Array<DealsOrderBy>,
}

typedef UpdateEndReasonByIdInput = {
  ?clientMutationId : String,
  endReasonPatch : EndReasonPatch,
  id : BigInt,
}

typedef UpdateEndReasonPayload = {
  ?clientMutationId : String,
  ?endReason : EndReason,
  ?query : Query,
  ?endReasonEdge : EndReasonsEdge,
}

typedef Args_UpdateEndReasonPayload__endReasonEdge = {
  ?orderBy : Array<EndReasonsOrderBy>,
}

typedef UpdateExternalRelationByIdInput = {
  ?clientMutationId : String,
  _externalRelationPatch : _ExternalRelationPatch,
  id : BigInt,
}

typedef UpdateExternalRelationByNameInput = {
  ?clientMutationId : String,
  _externalRelationPatch : _ExternalRelationPatch,
  name : String,
}

typedef UpdateExternalRelationInput = {
  ?clientMutationId : String,
  nodeId : ID,
  _externalRelationPatch : _ExternalRelationPatch,
}

typedef UpdateExternalRelationPayload = {
  ?clientMutationId : String,
  ?_externalRelation : _ExternalRelation,
  ?query : Query,
  ?_externalRelationEdge : _ExternalRelationsEdge,
}

typedef Args_UpdateExternalRelationPayload___externalRelationEdge = {
  ?orderBy : Array<_ExternalRelationsOrderBy>,
}

typedef UpdateMandatorByIdInput = {
  ?clientMutationId : String,
  mandatorPatch : MandatorPatch,
  id : BigInt,
}

typedef UpdateMandatorInput = {
  ?clientMutationId : String,
  nodeId : ID,
  mandatorPatch : MandatorPatch,
}

typedef UpdateMandatorPayload = {
  ?clientMutationId : String,
  ?mandator : Mandator,
  ?query : Query,
  ?mandatorEdge : MandatorsEdge,
}

typedef Args_UpdateMandatorPayload__mandatorEdge = {
  ?orderBy : Array<MandatorsOrderBy>,
}

typedef UpdateProductByIdInput = {
  ?clientMutationId : String,
  productPatch : ProductPatch,
  id : BigInt,
}

typedef UpdateProductInput = {
  ?clientMutationId : String,
  nodeId : ID,
  productPatch : ProductPatch,
}

typedef UpdateProductPayload = {
  ?clientMutationId : String,
  ?product : Product,
  ?query : Query,
  ?productEdge : ProductsEdge,
}

typedef Args_UpdateProductPayload__productEdge = {
  ?orderBy : Array<ProductsOrderBy>,
}

typedef UpdateProjectByIdInput = {
  ?clientMutationId : String,
  projectPatch : ProjectPatch,
  id : BigInt,
}

typedef UpdateProjectInput = {
  ?clientMutationId : String,
  nodeId : ID,
  projectPatch : ProjectPatch,
}

typedef UpdateProjectPayload = {
  ?clientMutationId : String,
  ?project : Project,
  ?query : Query,
  ?projectEdge : ProjectsEdge,
}

typedef Args_UpdateProjectPayload__projectEdge = {
  ?orderBy : Array<ProjectsOrderBy>,
}

typedef UpdateRoleByIdInput = {
  ?clientMutationId : String,
  rolePatch : RolePatch,
  id : BigInt,
}

typedef UpdateRoleInput = {
  ?clientMutationId : String,
  nodeId : ID,
  rolePatch : RolePatch,
}

typedef UpdateRolePayload = {
  ?clientMutationId : String,
  ?role : Role,
  ?query : Query,
  ?roleEdge : RolesEdge,
}

typedef Args_UpdateRolePayload__roleEdge = {
  ?orderBy : Array<RolesOrderBy>,
}

typedef UpdateStatementByIdInput = {
  ?clientMutationId : String,
  statementPatch : StatementPatch,
  id : BigInt,
}

typedef UpdateStatementInput = {
  ?clientMutationId : String,
  nodeId : ID,
  statementPatch : StatementPatch,
}

typedef UpdateStatementPayload = {
  ?clientMutationId : String,
  ?statement : Statement,
  ?query : Query,
  ?statementEdge : StatementsEdge,
}

typedef Args_UpdateStatementPayload__statementEdge = {
  ?orderBy : Array<StatementsOrderBy>,
}

typedef UpdateTableFieldByIdInput = {
  ?clientMutationId : String,
  tableFieldPatch : TableFieldPatch,
  id : BigInt,
}

typedef UpdateTableFieldInput = {
  ?clientMutationId : String,
  nodeId : ID,
  tableFieldPatch : TableFieldPatch,
}

typedef UpdateTableFieldPayload = {
  ?clientMutationId : String,
  ?tableField : TableField,
  ?query : Query,
  ?tableFieldEdge : TableFieldsEdge,
}

typedef Args_UpdateTableFieldPayload__tableFieldEdge = {
  ?orderBy : Array<TableFieldsOrderBy>,
}

typedef UpdateUiComponentByIdInput = {
  ?clientMutationId : String,
  uiComponentPatch : UiComponentPatch,
  id : BigInt,
}

typedef UpdateUiComponentInput = {
  ?clientMutationId : String,
  nodeId : ID,
  uiComponentPatch : UiComponentPatch,
}

typedef UpdateUiComponentPayload = {
  ?clientMutationId : String,
  ?uiComponent : UiComponent,
  ?query : Query,
  ?uiComponentEdge : UiComponentsEdge,
}

typedef Args_UpdateUiComponentPayload__uiComponentEdge = {
  ?orderBy : Array<UiComponentsOrderBy>,
}

typedef UpdateUserByIdInput = {
  ?clientMutationId : String,
  userPatch : UserPatch,
  id : BigInt,
}

typedef UpdateUserByUserNameAndMandatorInput = {
  ?clientMutationId : String,
  userPatch : UserPatch,
  userName : String,
  mandator : BigInt,
}

typedef UpdateUserGroupByIdInput = {
  ?clientMutationId : String,
  userGroupPatch : UserGroupPatch,
  id : BigInt,
}

typedef UpdateUserGroupInput = {
  ?clientMutationId : String,
  nodeId : ID,
  userGroupPatch : UserGroupPatch,
}

typedef UpdateUserGroupPayload = {
  ?clientMutationId : String,
  ?userGroup : UserGroup,
  ?query : Query,
  ?userGroupEdge : UserGroupsEdge,
}

typedef Args_UpdateUserGroupPayload__userGroupEdge = {
  ?orderBy : Array<UserGroupsOrderBy>,
}

typedef UpdateUserInput = {
  ?clientMutationId : String,
  nodeId : ID,
  userPatch : UserPatch,
}

typedef UpdateUserPayload = {
  ?clientMutationId : String,
  ?user : User,
  ?query : Query,
  ?userEdge : UsersEdge,
}

typedef Args_UpdateUserPayload__userEdge = {
  ?orderBy : Array<UsersOrderBy>,
}

typedef User = {
  nodeId : ID,
  id : BigInt,
  contact : BigInt,
  ?lastLogin : Datetime,
  ?password : String,
  userName : String,
  ?active : Bool,
  ?editedBy : BigInt,
  ?editing : JSON,
  ?settings : JSON,
  ?external : JSON,
  ?userGroup : BigInt,
  ?changePassRequired : Bool,
  ?online : Bool,
  ?lastRequestTime : Datetime,
  ?lastError : String,
  mandator : BigInt,
  ?lastLocktime : Datetime,
  ?phash : String,
}

typedef UserCondition = {
  ?id : BigInt,
  ?contact : BigInt,
  ?lastLogin : Datetime,
  ?password : String,
  ?userName : String,
  ?active : Bool,
  ?editedBy : BigInt,
  ?editing : JSON,
  ?settings : JSON,
  ?external : JSON,
  ?userGroup : BigInt,
  ?changePassRequired : Bool,
  ?online : Bool,
  ?lastRequestTime : Datetime,
  ?lastError : String,
  ?mandator : BigInt,
  ?lastLocktime : Datetime,
  ?phash : String,
}

typedef UserGroup = {
  nodeId : ID,
  id : BigInt,
  name : String,
  ?description : String,
  ?can : JSON,
  mandator : BigInt,
  editedBy : BigInt,
}

typedef UserGroupCondition = {
  ?id : BigInt,
  ?name : String,
  ?description : String,
  ?can : JSON,
  ?mandator : BigInt,
  ?editedBy : BigInt,
}

typedef UserGroupInput = {
  ?id : BigInt,
  name : String,
  ?description : String,
  ?can : JSON,
  mandator : BigInt,
  editedBy : BigInt,
}

typedef UserGroupPatch = {
  ?id : BigInt,
  ?name : String,
  ?description : String,
  ?can : JSON,
  ?mandator : BigInt,
  ?editedBy : BigInt,
}

typedef UserGroupsConnection = {
  nodes : Array<UserGroup>,
  edges : Array<UserGroupsEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef UserGroupsEdge = {
  ?cursor : Cursor,
  ?node : UserGroup,
}

/* Enum type UserGroupsOrderBy */
@:enum abstract UserGroupsOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var NAME_ASC = "NAME_ASC";
  var NAME_DESC = "NAME_DESC";
  var DESCRIPTION_ASC = "DESCRIPTION_ASC";
  var DESCRIPTION_DESC = "DESCRIPTION_DESC";
  var CAN_ASC = "CAN_ASC";
  var CAN_DESC = "CAN_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}

typedef UserInput = {
  ?id : BigInt,
  ?contact : BigInt,
  ?lastLogin : Datetime,
  ?password : String,
  userName : String,
  ?active : Bool,
  ?editedBy : BigInt,
  ?editing : JSON,
  ?settings : JSON,
  ?external : JSON,
  ?userGroup : BigInt,
  ?changePassRequired : Bool,
  ?online : Bool,
  ?lastRequestTime : Datetime,
  ?lastError : String,
  ?mandator : BigInt,
  ?lastLocktime : Datetime,
  ?phash : String,
}

typedef UserPatch = {
  ?id : BigInt,
  ?contact : BigInt,
  ?lastLogin : Datetime,
  ?password : String,
  ?userName : String,
  ?active : Bool,
  ?editedBy : BigInt,
  ?editing : JSON,
  ?settings : JSON,
  ?external : JSON,
  ?userGroup : BigInt,
  ?changePassRequired : Bool,
  ?online : Bool,
  ?lastRequestTime : Datetime,
  ?lastError : String,
  ?mandator : BigInt,
  ?lastLocktime : Datetime,
  ?phash : String,
}

typedef UsersConnection = {
  nodes : Array<User>,
  edges : Array<UsersEdge>,
  pageInfo : PageInfo,
  totalCount : Int,
}

typedef UsersEdge = {
  ?cursor : Cursor,
  ?node : User,
}

/* Enum type UsersOrderBy */
@:enum abstract UsersOrderBy(String) {
  var NATURAL = "NATURAL";
  var ID_ASC = "ID_ASC";
  var ID_DESC = "ID_DESC";
  var CONTACT_ASC = "CONTACT_ASC";
  var CONTACT_DESC = "CONTACT_DESC";
  var LAST_LOGIN_ASC = "LAST_LOGIN_ASC";
  var LAST_LOGIN_DESC = "LAST_LOGIN_DESC";
  var PASSWORD_ASC = "PASSWORD_ASC";
  var PASSWORD_DESC = "PASSWORD_DESC";
  var USER_NAME_ASC = "USER_NAME_ASC";
  var USER_NAME_DESC = "USER_NAME_DESC";
  var ACTIVE_ASC = "ACTIVE_ASC";
  var ACTIVE_DESC = "ACTIVE_DESC";
  var EDITED_BY_ASC = "EDITED_BY_ASC";
  var EDITED_BY_DESC = "EDITED_BY_DESC";
  var EDITING_ASC = "EDITING_ASC";
  var EDITING_DESC = "EDITING_DESC";
  var SETTINGS_ASC = "SETTINGS_ASC";
  var SETTINGS_DESC = "SETTINGS_DESC";
  var EXTERNAL_ASC = "EXTERNAL_ASC";
  var EXTERNAL_DESC = "EXTERNAL_DESC";
  var USER_GROUP_ASC = "USER_GROUP_ASC";
  var USER_GROUP_DESC = "USER_GROUP_DESC";
  var CHANGE_PASS_REQUIRED_ASC = "CHANGE_PASS_REQUIRED_ASC";
  var CHANGE_PASS_REQUIRED_DESC = "CHANGE_PASS_REQUIRED_DESC";
  var ONLINE_ASC = "ONLINE_ASC";
  var ONLINE_DESC = "ONLINE_DESC";
  var LAST_REQUEST_TIME_ASC = "LAST_REQUEST_TIME_ASC";
  var LAST_REQUEST_TIME_DESC = "LAST_REQUEST_TIME_DESC";
  var LAST_ERROR_ASC = "LAST_ERROR_ASC";
  var LAST_ERROR_DESC = "LAST_ERROR_DESC";
  var MANDATOR_ASC = "MANDATOR_ASC";
  var MANDATOR_DESC = "MANDATOR_DESC";
  var LAST_LOCKTIME_ASC = "LAST_LOCKTIME_ASC";
  var LAST_LOCKTIME_DESC = "LAST_LOCKTIME_DESC";
  var PHASH_ASC = "PHASH_ASC";
  var PHASH_DESC = "PHASH_DESC";
  var PRIMARY_KEY_ASC = "PRIMARY_KEY_ASC";
  var PRIMARY_KEY_DESC = "PRIMARY_KEY_DESC";
}



/* - - - - - - - - - - - - - - - - - - - - - - - - - */

