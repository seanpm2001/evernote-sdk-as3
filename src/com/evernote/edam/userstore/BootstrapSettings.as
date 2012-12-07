/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.userstore {

import org.apache.thrift.Set;
import org.apache.thrift.type.BigInteger;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


  /**
   *  This structure describes a collection of bootstrap settings.
   * <dl>
   *  <dt>serviceHost:</dt>
   *    <dd>
   *    The hostname and optional port for composing Evernote web service URLs.
   *    This URL can be used to access the UserStore and related services,
   *    but must not be used to compose the NoteStore URL. Client applications
   *    must handle serviceHost values that include only the hostname
   *    (e.g. www.evernote.com) or both the hostname and port (e.g. www.evernote.com:8080).
   *    If no port is specified, or if port 443 is specified, client applications must
   *    use the scheme "https" when composing URLs. Otherwise, a client must use the
   *    scheme "http".
   *  </dd>
   *  <dt>marketingUrl:</dt>
   *    <dd>
   *    The URL stem for the Evernote corporate marketing website, e.g. http://www.evernote.com.
   *    This stem can be used to compose website URLs. For example, the URL of the Evernote
   *    Trunk is composed by appending "/about/trunk/" to the value of marketingUrl.
   *    </dd>
   *  <dt>supportUrl:</dt>
   *    <dd>
   *    The full URL for the Evernote customer support website, e.g. https://support.evernote.com.
   *    </dd>
   *  <dt>accountEmailDomain:</dt>
   *    <dd>
   *    The domain used for an Evernote user's incoming email address, which allows notes to
   *    be emailed into an account. E.g. m.evernote.com.
   *    </dd>
   *  <dt>enableFacebookSharing:</dt>
   *    <dd>
   *    Whether the client application should enable sharing of notes on Facebook.
   *    </dd>
   *  <dt>enableGiftSubscriptions:</dt>
   *    <dd>
   *    Whether the client application should enable gift subscriptions.
   *    </dd>
   *  <dt>enableSupportTickets:</dt>
   *    <dd>
   *    Whether the client application should enable in-client creation of support tickets.
   *    </dd>
   *  <dt>enableSharedNotebooks:</dt>
   *    <dd>
   *    Whether the client application should enable shared notebooks.
   *    </dd>
   *  <dt>enableSingleNoteSharing:</dt>
   *    <dd>
   *    Whether the client application should enable single note sharing.
   *    </dd>
   *  <dt>enableSponsoredAccounts:</dt>
   *    <dd>
   *    Whether the client application should enable sponsored accounts.
   *    </dd>
   *  <dt>enableTwitterSharing:</dt>
   *    <dd>
   *    Whether the client application should enable sharing of notes on Twitter.
   *    </dd>
   *  </dl>
   */
  public class BootstrapSettings implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("BootstrapSettings");
    private static const SERVICE_HOST_FIELD_DESC:TField = new TField("serviceHost", TType.STRING, 1);
    private static const MARKETING_URL_FIELD_DESC:TField = new TField("marketingUrl", TType.STRING, 2);
    private static const SUPPORT_URL_FIELD_DESC:TField = new TField("supportUrl", TType.STRING, 3);
    private static const ACCOUNT_EMAIL_DOMAIN_FIELD_DESC:TField = new TField("accountEmailDomain", TType.STRING, 4);
    private static const ENABLE_FACEBOOK_SHARING_FIELD_DESC:TField = new TField("enableFacebookSharing", TType.BOOL, 5);
    private static const ENABLE_GIFT_SUBSCRIPTIONS_FIELD_DESC:TField = new TField("enableGiftSubscriptions", TType.BOOL, 6);
    private static const ENABLE_SUPPORT_TICKETS_FIELD_DESC:TField = new TField("enableSupportTickets", TType.BOOL, 7);
    private static const ENABLE_SHARED_NOTEBOOKS_FIELD_DESC:TField = new TField("enableSharedNotebooks", TType.BOOL, 8);
    private static const ENABLE_SINGLE_NOTE_SHARING_FIELD_DESC:TField = new TField("enableSingleNoteSharing", TType.BOOL, 9);
    private static const ENABLE_SPONSORED_ACCOUNTS_FIELD_DESC:TField = new TField("enableSponsoredAccounts", TType.BOOL, 10);
    private static const ENABLE_TWITTER_SHARING_FIELD_DESC:TField = new TField("enableTwitterSharing", TType.BOOL, 11);
    private static const ENABLE_LINKED_IN_SHARING_FIELD_DESC:TField = new TField("enableLinkedInSharing", TType.BOOL, 12);
    private static const ENABLE_PUBLIC_NOTEBOOKS_FIELD_DESC:TField = new TField("enablePublicNotebooks", TType.BOOL, 13);

    private var _serviceHost:String;
    public static const SERVICEHOST:int = 1;
    private var _marketingUrl:String;
    public static const MARKETINGURL:int = 2;
    private var _supportUrl:String;
    public static const SUPPORTURL:int = 3;
    private var _accountEmailDomain:String;
    public static const ACCOUNTEMAILDOMAIN:int = 4;
    private var _enableFacebookSharing:Boolean;
    public static const ENABLEFACEBOOKSHARING:int = 5;
    private var _enableGiftSubscriptions:Boolean;
    public static const ENABLEGIFTSUBSCRIPTIONS:int = 6;
    private var _enableSupportTickets:Boolean;
    public static const ENABLESUPPORTTICKETS:int = 7;
    private var _enableSharedNotebooks:Boolean;
    public static const ENABLESHAREDNOTEBOOKS:int = 8;
    private var _enableSingleNoteSharing:Boolean;
    public static const ENABLESINGLENOTESHARING:int = 9;
    private var _enableSponsoredAccounts:Boolean;
    public static const ENABLESPONSOREDACCOUNTS:int = 10;
    private var _enableTwitterSharing:Boolean;
    public static const ENABLETWITTERSHARING:int = 11;
    private var _enableLinkedInSharing:Boolean;
    public static const ENABLELINKEDINSHARING:int = 12;
    private var _enablePublicNotebooks:Boolean;
    public static const ENABLEPUBLICNOTEBOOKS:int = 13;

    private var __isset_enableFacebookSharing:Boolean = false;
    private var __isset_enableGiftSubscriptions:Boolean = false;
    private var __isset_enableSupportTickets:Boolean = false;
    private var __isset_enableSharedNotebooks:Boolean = false;
    private var __isset_enableSingleNoteSharing:Boolean = false;
    private var __isset_enableSponsoredAccounts:Boolean = false;
    private var __isset_enableTwitterSharing:Boolean = false;
    private var __isset_enableLinkedInSharing:Boolean = false;
    private var __isset_enablePublicNotebooks:Boolean = false;

    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[SERVICEHOST] = new FieldMetaData("serviceHost", TFieldRequirementType.REQUIRED, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[MARKETINGURL] = new FieldMetaData("marketingUrl", TFieldRequirementType.REQUIRED, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[SUPPORTURL] = new FieldMetaData("supportUrl", TFieldRequirementType.REQUIRED, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[ACCOUNTEMAILDOMAIN] = new FieldMetaData("accountEmailDomain", TFieldRequirementType.REQUIRED, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[ENABLEFACEBOOKSHARING] = new FieldMetaData("enableFacebookSharing", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[ENABLEGIFTSUBSCRIPTIONS] = new FieldMetaData("enableGiftSubscriptions", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[ENABLESUPPORTTICKETS] = new FieldMetaData("enableSupportTickets", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[ENABLESHAREDNOTEBOOKS] = new FieldMetaData("enableSharedNotebooks", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[ENABLESINGLENOTESHARING] = new FieldMetaData("enableSingleNoteSharing", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[ENABLESPONSOREDACCOUNTS] = new FieldMetaData("enableSponsoredAccounts", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[ENABLETWITTERSHARING] = new FieldMetaData("enableTwitterSharing", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[ENABLELINKEDINSHARING] = new FieldMetaData("enableLinkedInSharing", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[ENABLEPUBLICNOTEBOOKS] = new FieldMetaData("enablePublicNotebooks", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
    }
    {
      FieldMetaData.addStructMetaDataMap(BootstrapSettings, metaDataMap);
    }

    public function BootstrapSettings() {
    }

    public function get serviceHost():String {
      return this._serviceHost;
    }

    public function set serviceHost(serviceHost:String):void {
      this._serviceHost = serviceHost;
    }

    public function unsetServiceHost():void {
      this.serviceHost = null;
    }

    // Returns true if field serviceHost is set (has been assigned a value) and false otherwise
    public function isSetServiceHost():Boolean {
      return this.serviceHost != null;
    }

    public function get marketingUrl():String {
      return this._marketingUrl;
    }

    public function set marketingUrl(marketingUrl:String):void {
      this._marketingUrl = marketingUrl;
    }

    public function unsetMarketingUrl():void {
      this.marketingUrl = null;
    }

    // Returns true if field marketingUrl is set (has been assigned a value) and false otherwise
    public function isSetMarketingUrl():Boolean {
      return this.marketingUrl != null;
    }

    public function get supportUrl():String {
      return this._supportUrl;
    }

    public function set supportUrl(supportUrl:String):void {
      this._supportUrl = supportUrl;
    }

    public function unsetSupportUrl():void {
      this.supportUrl = null;
    }

    // Returns true if field supportUrl is set (has been assigned a value) and false otherwise
    public function isSetSupportUrl():Boolean {
      return this.supportUrl != null;
    }

    public function get accountEmailDomain():String {
      return this._accountEmailDomain;
    }

    public function set accountEmailDomain(accountEmailDomain:String):void {
      this._accountEmailDomain = accountEmailDomain;
    }

    public function unsetAccountEmailDomain():void {
      this.accountEmailDomain = null;
    }

    // Returns true if field accountEmailDomain is set (has been assigned a value) and false otherwise
    public function isSetAccountEmailDomain():Boolean {
      return this.accountEmailDomain != null;
    }

    public function get enableFacebookSharing():Boolean {
      return this._enableFacebookSharing;
    }

    public function set enableFacebookSharing(enableFacebookSharing:Boolean):void {
      this._enableFacebookSharing = enableFacebookSharing;
      this.__isset_enableFacebookSharing = true;
    }

    public function unsetEnableFacebookSharing():void {
      this.__isset_enableFacebookSharing = false;
    }

    // Returns true if field enableFacebookSharing is set (has been assigned a value) and false otherwise
    public function isSetEnableFacebookSharing():Boolean {
      return this.__isset_enableFacebookSharing;
    }

    public function get enableGiftSubscriptions():Boolean {
      return this._enableGiftSubscriptions;
    }

    public function set enableGiftSubscriptions(enableGiftSubscriptions:Boolean):void {
      this._enableGiftSubscriptions = enableGiftSubscriptions;
      this.__isset_enableGiftSubscriptions = true;
    }

    public function unsetEnableGiftSubscriptions():void {
      this.__isset_enableGiftSubscriptions = false;
    }

    // Returns true if field enableGiftSubscriptions is set (has been assigned a value) and false otherwise
    public function isSetEnableGiftSubscriptions():Boolean {
      return this.__isset_enableGiftSubscriptions;
    }

    public function get enableSupportTickets():Boolean {
      return this._enableSupportTickets;
    }

    public function set enableSupportTickets(enableSupportTickets:Boolean):void {
      this._enableSupportTickets = enableSupportTickets;
      this.__isset_enableSupportTickets = true;
    }

    public function unsetEnableSupportTickets():void {
      this.__isset_enableSupportTickets = false;
    }

    // Returns true if field enableSupportTickets is set (has been assigned a value) and false otherwise
    public function isSetEnableSupportTickets():Boolean {
      return this.__isset_enableSupportTickets;
    }

    public function get enableSharedNotebooks():Boolean {
      return this._enableSharedNotebooks;
    }

    public function set enableSharedNotebooks(enableSharedNotebooks:Boolean):void {
      this._enableSharedNotebooks = enableSharedNotebooks;
      this.__isset_enableSharedNotebooks = true;
    }

    public function unsetEnableSharedNotebooks():void {
      this.__isset_enableSharedNotebooks = false;
    }

    // Returns true if field enableSharedNotebooks is set (has been assigned a value) and false otherwise
    public function isSetEnableSharedNotebooks():Boolean {
      return this.__isset_enableSharedNotebooks;
    }

    public function get enableSingleNoteSharing():Boolean {
      return this._enableSingleNoteSharing;
    }

    public function set enableSingleNoteSharing(enableSingleNoteSharing:Boolean):void {
      this._enableSingleNoteSharing = enableSingleNoteSharing;
      this.__isset_enableSingleNoteSharing = true;
    }

    public function unsetEnableSingleNoteSharing():void {
      this.__isset_enableSingleNoteSharing = false;
    }

    // Returns true if field enableSingleNoteSharing is set (has been assigned a value) and false otherwise
    public function isSetEnableSingleNoteSharing():Boolean {
      return this.__isset_enableSingleNoteSharing;
    }

    public function get enableSponsoredAccounts():Boolean {
      return this._enableSponsoredAccounts;
    }

    public function set enableSponsoredAccounts(enableSponsoredAccounts:Boolean):void {
      this._enableSponsoredAccounts = enableSponsoredAccounts;
      this.__isset_enableSponsoredAccounts = true;
    }

    public function unsetEnableSponsoredAccounts():void {
      this.__isset_enableSponsoredAccounts = false;
    }

    // Returns true if field enableSponsoredAccounts is set (has been assigned a value) and false otherwise
    public function isSetEnableSponsoredAccounts():Boolean {
      return this.__isset_enableSponsoredAccounts;
    }

    public function get enableTwitterSharing():Boolean {
      return this._enableTwitterSharing;
    }

    public function set enableTwitterSharing(enableTwitterSharing:Boolean):void {
      this._enableTwitterSharing = enableTwitterSharing;
      this.__isset_enableTwitterSharing = true;
    }

    public function unsetEnableTwitterSharing():void {
      this.__isset_enableTwitterSharing = false;
    }

    // Returns true if field enableTwitterSharing is set (has been assigned a value) and false otherwise
    public function isSetEnableTwitterSharing():Boolean {
      return this.__isset_enableTwitterSharing;
    }

    public function get enableLinkedInSharing():Boolean {
      return this._enableLinkedInSharing;
    }

    public function set enableLinkedInSharing(enableLinkedInSharing:Boolean):void {
      this._enableLinkedInSharing = enableLinkedInSharing;
      this.__isset_enableLinkedInSharing = true;
    }

    public function unsetEnableLinkedInSharing():void {
      this.__isset_enableLinkedInSharing = false;
    }

    // Returns true if field enableLinkedInSharing is set (has been assigned a value) and false otherwise
    public function isSetEnableLinkedInSharing():Boolean {
      return this.__isset_enableLinkedInSharing;
    }

    public function get enablePublicNotebooks():Boolean {
      return this._enablePublicNotebooks;
    }

    public function set enablePublicNotebooks(enablePublicNotebooks:Boolean):void {
      this._enablePublicNotebooks = enablePublicNotebooks;
      this.__isset_enablePublicNotebooks = true;
    }

    public function unsetEnablePublicNotebooks():void {
      this.__isset_enablePublicNotebooks = false;
    }

    // Returns true if field enablePublicNotebooks is set (has been assigned a value) and false otherwise
    public function isSetEnablePublicNotebooks():Boolean {
      return this.__isset_enablePublicNotebooks;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case SERVICEHOST:
        if (value == null) {
          unsetServiceHost();
        } else {
          this.serviceHost = value;
        }
        break;

      case MARKETINGURL:
        if (value == null) {
          unsetMarketingUrl();
        } else {
          this.marketingUrl = value;
        }
        break;

      case SUPPORTURL:
        if (value == null) {
          unsetSupportUrl();
        } else {
          this.supportUrl = value;
        }
        break;

      case ACCOUNTEMAILDOMAIN:
        if (value == null) {
          unsetAccountEmailDomain();
        } else {
          this.accountEmailDomain = value;
        }
        break;

      case ENABLEFACEBOOKSHARING:
        if (value == null) {
          unsetEnableFacebookSharing();
        } else {
          this.enableFacebookSharing = value;
        }
        break;

      case ENABLEGIFTSUBSCRIPTIONS:
        if (value == null) {
          unsetEnableGiftSubscriptions();
        } else {
          this.enableGiftSubscriptions = value;
        }
        break;

      case ENABLESUPPORTTICKETS:
        if (value == null) {
          unsetEnableSupportTickets();
        } else {
          this.enableSupportTickets = value;
        }
        break;

      case ENABLESHAREDNOTEBOOKS:
        if (value == null) {
          unsetEnableSharedNotebooks();
        } else {
          this.enableSharedNotebooks = value;
        }
        break;

      case ENABLESINGLENOTESHARING:
        if (value == null) {
          unsetEnableSingleNoteSharing();
        } else {
          this.enableSingleNoteSharing = value;
        }
        break;

      case ENABLESPONSOREDACCOUNTS:
        if (value == null) {
          unsetEnableSponsoredAccounts();
        } else {
          this.enableSponsoredAccounts = value;
        }
        break;

      case ENABLETWITTERSHARING:
        if (value == null) {
          unsetEnableTwitterSharing();
        } else {
          this.enableTwitterSharing = value;
        }
        break;

      case ENABLELINKEDINSHARING:
        if (value == null) {
          unsetEnableLinkedInSharing();
        } else {
          this.enableLinkedInSharing = value;
        }
        break;

      case ENABLEPUBLICNOTEBOOKS:
        if (value == null) {
          unsetEnablePublicNotebooks();
        } else {
          this.enablePublicNotebooks = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case SERVICEHOST:
        return this.serviceHost;
      case MARKETINGURL:
        return this.marketingUrl;
      case SUPPORTURL:
        return this.supportUrl;
      case ACCOUNTEMAILDOMAIN:
        return this.accountEmailDomain;
      case ENABLEFACEBOOKSHARING:
        return this.enableFacebookSharing;
      case ENABLEGIFTSUBSCRIPTIONS:
        return this.enableGiftSubscriptions;
      case ENABLESUPPORTTICKETS:
        return this.enableSupportTickets;
      case ENABLESHAREDNOTEBOOKS:
        return this.enableSharedNotebooks;
      case ENABLESINGLENOTESHARING:
        return this.enableSingleNoteSharing;
      case ENABLESPONSOREDACCOUNTS:
        return this.enableSponsoredAccounts;
      case ENABLETWITTERSHARING:
        return this.enableTwitterSharing;
      case ENABLELINKEDINSHARING:
        return this.enableLinkedInSharing;
      case ENABLEPUBLICNOTEBOOKS:
        return this.enablePublicNotebooks;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case SERVICEHOST:
        return isSetServiceHost();
      case MARKETINGURL:
        return isSetMarketingUrl();
      case SUPPORTURL:
        return isSetSupportUrl();
      case ACCOUNTEMAILDOMAIN:
        return isSetAccountEmailDomain();
      case ENABLEFACEBOOKSHARING:
        return isSetEnableFacebookSharing();
      case ENABLEGIFTSUBSCRIPTIONS:
        return isSetEnableGiftSubscriptions();
      case ENABLESUPPORTTICKETS:
        return isSetEnableSupportTickets();
      case ENABLESHAREDNOTEBOOKS:
        return isSetEnableSharedNotebooks();
      case ENABLESINGLENOTESHARING:
        return isSetEnableSingleNoteSharing();
      case ENABLESPONSOREDACCOUNTS:
        return isSetEnableSponsoredAccounts();
      case ENABLETWITTERSHARING:
        return isSetEnableTwitterSharing();
      case ENABLELINKEDINSHARING:
        return isSetEnableLinkedInSharing();
      case ENABLEPUBLICNOTEBOOKS:
        return isSetEnablePublicNotebooks();
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function read(iprot:TProtocol):void {
      var field:TField;
      iprot.readStructBegin();
      while (true)
      {
        field = iprot.readFieldBegin();
        if (field.type == TType.STOP) { 
          break;
        }
        switch (field.id)
        {
          case SERVICEHOST:
            if (field.type == TType.STRING) {
              this.serviceHost = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case MARKETINGURL:
            if (field.type == TType.STRING) {
              this.marketingUrl = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SUPPORTURL:
            if (field.type == TType.STRING) {
              this.supportUrl = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ACCOUNTEMAILDOMAIN:
            if (field.type == TType.STRING) {
              this.accountEmailDomain = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ENABLEFACEBOOKSHARING:
            if (field.type == TType.BOOL) {
              this.enableFacebookSharing = iprot.readBool();
              this.__isset_enableFacebookSharing = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ENABLEGIFTSUBSCRIPTIONS:
            if (field.type == TType.BOOL) {
              this.enableGiftSubscriptions = iprot.readBool();
              this.__isset_enableGiftSubscriptions = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ENABLESUPPORTTICKETS:
            if (field.type == TType.BOOL) {
              this.enableSupportTickets = iprot.readBool();
              this.__isset_enableSupportTickets = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ENABLESHAREDNOTEBOOKS:
            if (field.type == TType.BOOL) {
              this.enableSharedNotebooks = iprot.readBool();
              this.__isset_enableSharedNotebooks = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ENABLESINGLENOTESHARING:
            if (field.type == TType.BOOL) {
              this.enableSingleNoteSharing = iprot.readBool();
              this.__isset_enableSingleNoteSharing = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ENABLESPONSOREDACCOUNTS:
            if (field.type == TType.BOOL) {
              this.enableSponsoredAccounts = iprot.readBool();
              this.__isset_enableSponsoredAccounts = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ENABLETWITTERSHARING:
            if (field.type == TType.BOOL) {
              this.enableTwitterSharing = iprot.readBool();
              this.__isset_enableTwitterSharing = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ENABLELINKEDINSHARING:
            if (field.type == TType.BOOL) {
              this.enableLinkedInSharing = iprot.readBool();
              this.__isset_enableLinkedInSharing = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ENABLEPUBLICNOTEBOOKS:
            if (field.type == TType.BOOL) {
              this.enablePublicNotebooks = iprot.readBool();
              this.__isset_enablePublicNotebooks = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          default:
            TProtocolUtil.skip(iprot, field.type);
            break;
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();


      // check for required fields of primitive type, which can't be checked in the validate method
      validate();
    }

    public function write(oprot:TProtocol):void {
      validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (this.serviceHost != null) {
        oprot.writeFieldBegin(SERVICE_HOST_FIELD_DESC);
        oprot.writeString(this.serviceHost);
        oprot.writeFieldEnd();
      }
      if (this.marketingUrl != null) {
        oprot.writeFieldBegin(MARKETING_URL_FIELD_DESC);
        oprot.writeString(this.marketingUrl);
        oprot.writeFieldEnd();
      }
      if (this.supportUrl != null) {
        oprot.writeFieldBegin(SUPPORT_URL_FIELD_DESC);
        oprot.writeString(this.supportUrl);
        oprot.writeFieldEnd();
      }
      if (this.accountEmailDomain != null) {
        oprot.writeFieldBegin(ACCOUNT_EMAIL_DOMAIN_FIELD_DESC);
        oprot.writeString(this.accountEmailDomain);
        oprot.writeFieldEnd();
      }
      if (isSetEnableFacebookSharing()) {
        oprot.writeFieldBegin(ENABLE_FACEBOOK_SHARING_FIELD_DESC);
        oprot.writeBool(this.enableFacebookSharing);
        oprot.writeFieldEnd();
      }
      if (isSetEnableGiftSubscriptions()) {
        oprot.writeFieldBegin(ENABLE_GIFT_SUBSCRIPTIONS_FIELD_DESC);
        oprot.writeBool(this.enableGiftSubscriptions);
        oprot.writeFieldEnd();
      }
      if (isSetEnableSupportTickets()) {
        oprot.writeFieldBegin(ENABLE_SUPPORT_TICKETS_FIELD_DESC);
        oprot.writeBool(this.enableSupportTickets);
        oprot.writeFieldEnd();
      }
      if (isSetEnableSharedNotebooks()) {
        oprot.writeFieldBegin(ENABLE_SHARED_NOTEBOOKS_FIELD_DESC);
        oprot.writeBool(this.enableSharedNotebooks);
        oprot.writeFieldEnd();
      }
      if (isSetEnableSingleNoteSharing()) {
        oprot.writeFieldBegin(ENABLE_SINGLE_NOTE_SHARING_FIELD_DESC);
        oprot.writeBool(this.enableSingleNoteSharing);
        oprot.writeFieldEnd();
      }
      if (isSetEnableSponsoredAccounts()) {
        oprot.writeFieldBegin(ENABLE_SPONSORED_ACCOUNTS_FIELD_DESC);
        oprot.writeBool(this.enableSponsoredAccounts);
        oprot.writeFieldEnd();
      }
      if (isSetEnableTwitterSharing()) {
        oprot.writeFieldBegin(ENABLE_TWITTER_SHARING_FIELD_DESC);
        oprot.writeBool(this.enableTwitterSharing);
        oprot.writeFieldEnd();
      }
      if (isSetEnableLinkedInSharing()) {
        oprot.writeFieldBegin(ENABLE_LINKED_IN_SHARING_FIELD_DESC);
        oprot.writeBool(this.enableLinkedInSharing);
        oprot.writeFieldEnd();
      }
      if (isSetEnablePublicNotebooks()) {
        oprot.writeFieldBegin(ENABLE_PUBLIC_NOTEBOOKS_FIELD_DESC);
        oprot.writeBool(this.enablePublicNotebooks);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("BootstrapSettings(");
      var first:Boolean = true;

      ret += "serviceHost:";
      if (this.serviceHost == null) {
        ret += "null";
      } else {
        ret += this.serviceHost;
      }
      first = false;
      if (!first) ret +=  ", ";
      ret += "marketingUrl:";
      if (this.marketingUrl == null) {
        ret += "null";
      } else {
        ret += this.marketingUrl;
      }
      first = false;
      if (!first) ret +=  ", ";
      ret += "supportUrl:";
      if (this.supportUrl == null) {
        ret += "null";
      } else {
        ret += this.supportUrl;
      }
      first = false;
      if (!first) ret +=  ", ";
      ret += "accountEmailDomain:";
      if (this.accountEmailDomain == null) {
        ret += "null";
      } else {
        ret += this.accountEmailDomain;
      }
      first = false;
      if (isSetEnableFacebookSharing()) {
        if (!first) ret +=  ", ";
        ret += "enableFacebookSharing:";
        ret += this.enableFacebookSharing;
        first = false;
      }
      if (isSetEnableGiftSubscriptions()) {
        if (!first) ret +=  ", ";
        ret += "enableGiftSubscriptions:";
        ret += this.enableGiftSubscriptions;
        first = false;
      }
      if (isSetEnableSupportTickets()) {
        if (!first) ret +=  ", ";
        ret += "enableSupportTickets:";
        ret += this.enableSupportTickets;
        first = false;
      }
      if (isSetEnableSharedNotebooks()) {
        if (!first) ret +=  ", ";
        ret += "enableSharedNotebooks:";
        ret += this.enableSharedNotebooks;
        first = false;
      }
      if (isSetEnableSingleNoteSharing()) {
        if (!first) ret +=  ", ";
        ret += "enableSingleNoteSharing:";
        ret += this.enableSingleNoteSharing;
        first = false;
      }
      if (isSetEnableSponsoredAccounts()) {
        if (!first) ret +=  ", ";
        ret += "enableSponsoredAccounts:";
        ret += this.enableSponsoredAccounts;
        first = false;
      }
      if (isSetEnableTwitterSharing()) {
        if (!first) ret +=  ", ";
        ret += "enableTwitterSharing:";
        ret += this.enableTwitterSharing;
        first = false;
      }
      if (isSetEnableLinkedInSharing()) {
        if (!first) ret +=  ", ";
        ret += "enableLinkedInSharing:";
        ret += this.enableLinkedInSharing;
        first = false;
      }
      if (isSetEnablePublicNotebooks()) {
        if (!first) ret +=  ", ";
        ret += "enablePublicNotebooks:";
        ret += this.enablePublicNotebooks;
        first = false;
      }
      ret += ")";
      return ret;
    }

    public function validate():void {
      // check for required fields
      if (serviceHost == null) {
        throw new TProtocolError(TProtocolError.UNKNOWN, "Required field 'serviceHost' was not present! Struct: " + toString());
      }
      if (marketingUrl == null) {
        throw new TProtocolError(TProtocolError.UNKNOWN, "Required field 'marketingUrl' was not present! Struct: " + toString());
      }
      if (supportUrl == null) {
        throw new TProtocolError(TProtocolError.UNKNOWN, "Required field 'supportUrl' was not present! Struct: " + toString());
      }
      if (accountEmailDomain == null) {
        throw new TProtocolError(TProtocolError.UNKNOWN, "Required field 'accountEmailDomain' was not present! Struct: " + toString());
      }
      // check that fields of type enum have valid values
    }

  }

}
