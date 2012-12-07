/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.notestore {

import org.apache.thrift.Set;
import org.apache.thrift.type.BigInteger;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;

import com.evernote.edam.type.Note;

  /**
   * Parameters that must be given to the NoteStore emailNote call. These allow
   * the caller to specify the note to send, the recipient addresses, etc.
   * 
   * <dl>
   *  <dt>guid</dt>
   *    <dd>
   *      If set, this must be the GUID of a note within the user's account that
   *      should be retrieved from the service and sent as email.  If not set,
   *      the 'note' field must be provided instead.
   *    </dd>
   * 
   *  <dt>note</dt>
   *    <dd>
   *      If the 'guid' field is not set, this field must be provided, including
   *      the full contents of the note note (and all of its Resources) to send.
   *      This can be used for a Note that as not been created in the service,
   *      for example by a local client with local notes.
   *    </dd>
   * 
   *  <dt>toAddresses</dt>
   *    <dd>
   *      If provided, this should contain a list of the SMTP email addresses
   *      that should be included in the "To:" line of the email.
   *      Callers must specify at least one "to" or "cc" email address.
   *    </dd>
   * 
   *  <dt>ccAddresses</dt>
   *    <dd>
   *      If provided, this should contain a list of the SMTP email addresses
   *      that should be included in the "Cc:" line of the email.
   *      Callers must specify at least one "to" or "cc" email address.
   *    </dd>
   * 
   *  <dt>subject</dt>
   *    <dd>
   *      If provided, this should contain the subject line of the email that
   *      will be sent.  If not provided, the title of the note will be used
   *      as the subject of the email.
   *    </dd>
   * 
   *  <dt>message</dt>
   *    <dd>
   *      If provided, this is additional personal text that should be included
   *      into the email as a message from the owner to the recipient(s).
   *    </dd>
   * </dl>
   */
  public class NoteEmailParameters implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("NoteEmailParameters");
    private static const GUID_FIELD_DESC:TField = new TField("guid", TType.STRING, 1);
    private static const NOTE_FIELD_DESC:TField = new TField("note", TType.STRUCT, 2);
    private static const TO_ADDRESSES_FIELD_DESC:TField = new TField("toAddresses", TType.LIST, 3);
    private static const CC_ADDRESSES_FIELD_DESC:TField = new TField("ccAddresses", TType.LIST, 4);
    private static const SUBJECT_FIELD_DESC:TField = new TField("subject", TType.STRING, 5);
    private static const MESSAGE_FIELD_DESC:TField = new TField("message", TType.STRING, 6);

    private var _guid:String;
    public static const GUID:int = 1;
    private var _note:Note;
    public static const NOTE:int = 2;
    private var _toAddresses:Array;
    public static const TOADDRESSES:int = 3;
    private var _ccAddresses:Array;
    public static const CCADDRESSES:int = 4;
    private var _subject:String;
    public static const SUBJECT:int = 5;
    private var _message:String;
    public static const MESSAGE:int = 6;


    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[GUID] = new FieldMetaData("guid", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[NOTE] = new FieldMetaData("note", TFieldRequirementType.OPTIONAL, 
          new StructMetaData(TType.STRUCT, Note));
      metaDataMap[TOADDRESSES] = new FieldMetaData("toAddresses", TFieldRequirementType.OPTIONAL, 
          new ListMetaData(TType.LIST, 
              new FieldValueMetaData(TType.STRING)));
      metaDataMap[CCADDRESSES] = new FieldMetaData("ccAddresses", TFieldRequirementType.OPTIONAL, 
          new ListMetaData(TType.LIST, 
              new FieldValueMetaData(TType.STRING)));
      metaDataMap[SUBJECT] = new FieldMetaData("subject", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[MESSAGE] = new FieldMetaData("message", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
    }
    {
      FieldMetaData.addStructMetaDataMap(NoteEmailParameters, metaDataMap);
    }

    public function NoteEmailParameters() {
    }

    public function get guid():String {
      return this._guid;
    }

    public function set guid(guid:String):void {
      this._guid = guid;
    }

    public function unsetGuid():void {
      this.guid = null;
    }

    // Returns true if field guid is set (has been assigned a value) and false otherwise
    public function isSetGuid():Boolean {
      return this.guid != null;
    }

    public function get note():Note {
      return this._note;
    }

    public function set note(note:Note):void {
      this._note = note;
    }

    public function unsetNote():void {
      this.note = null;
    }

    // Returns true if field note is set (has been assigned a value) and false otherwise
    public function isSetNote():Boolean {
      return this.note != null;
    }

    public function get toAddresses():Array {
      return this._toAddresses;
    }

    public function set toAddresses(toAddresses:Array):void {
      this._toAddresses = toAddresses;
    }

    public function unsetToAddresses():void {
      this.toAddresses = null;
    }

    // Returns true if field toAddresses is set (has been assigned a value) and false otherwise
    public function isSetToAddresses():Boolean {
      return this.toAddresses != null;
    }

    public function get ccAddresses():Array {
      return this._ccAddresses;
    }

    public function set ccAddresses(ccAddresses:Array):void {
      this._ccAddresses = ccAddresses;
    }

    public function unsetCcAddresses():void {
      this.ccAddresses = null;
    }

    // Returns true if field ccAddresses is set (has been assigned a value) and false otherwise
    public function isSetCcAddresses():Boolean {
      return this.ccAddresses != null;
    }

    public function get subject():String {
      return this._subject;
    }

    public function set subject(subject:String):void {
      this._subject = subject;
    }

    public function unsetSubject():void {
      this.subject = null;
    }

    // Returns true if field subject is set (has been assigned a value) and false otherwise
    public function isSetSubject():Boolean {
      return this.subject != null;
    }

    public function get message():String {
      return this._message;
    }

    public function set message(message:String):void {
      this._message = message;
    }

    public function unsetMessage():void {
      this.message = null;
    }

    // Returns true if field message is set (has been assigned a value) and false otherwise
    public function isSetMessage():Boolean {
      return this.message != null;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case GUID:
        if (value == null) {
          unsetGuid();
        } else {
          this.guid = value;
        }
        break;

      case NOTE:
        if (value == null) {
          unsetNote();
        } else {
          this.note = value;
        }
        break;

      case TOADDRESSES:
        if (value == null) {
          unsetToAddresses();
        } else {
          this.toAddresses = value;
        }
        break;

      case CCADDRESSES:
        if (value == null) {
          unsetCcAddresses();
        } else {
          this.ccAddresses = value;
        }
        break;

      case SUBJECT:
        if (value == null) {
          unsetSubject();
        } else {
          this.subject = value;
        }
        break;

      case MESSAGE:
        if (value == null) {
          unsetMessage();
        } else {
          this.message = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case GUID:
        return this.guid;
      case NOTE:
        return this.note;
      case TOADDRESSES:
        return this.toAddresses;
      case CCADDRESSES:
        return this.ccAddresses;
      case SUBJECT:
        return this.subject;
      case MESSAGE:
        return this.message;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case GUID:
        return isSetGuid();
      case NOTE:
        return isSetNote();
      case TOADDRESSES:
        return isSetToAddresses();
      case CCADDRESSES:
        return isSetCcAddresses();
      case SUBJECT:
        return isSetSubject();
      case MESSAGE:
        return isSetMessage();
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
          case GUID:
            if (field.type == TType.STRING) {
              this.guid = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case NOTE:
            if (field.type == TType.STRUCT) {
              this.note = new Note();
              this.note.read(iprot);
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case TOADDRESSES:
            if (field.type == TType.LIST) {
              {
                var _list171:TList = iprot.readListBegin();
                this.toAddresses = new Array();
                for (var _i172:int = 0; _i172 < _list171.size; ++_i172)
                {
                  var _elem173:String;
                  _elem173 = iprot.readString();
                  this.toAddresses.push(_elem173);
                }
                iprot.readListEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case CCADDRESSES:
            if (field.type == TType.LIST) {
              {
                var _list174:TList = iprot.readListBegin();
                this.ccAddresses = new Array();
                for (var _i175:int = 0; _i175 < _list174.size; ++_i175)
                {
                  var _elem176:String;
                  _elem176 = iprot.readString();
                  this.ccAddresses.push(_elem176);
                }
                iprot.readListEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SUBJECT:
            if (field.type == TType.STRING) {
              this.subject = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case MESSAGE:
            if (field.type == TType.STRING) {
              this.message = iprot.readString();
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
      if (this.guid != null) {
        if (isSetGuid()) {
          oprot.writeFieldBegin(GUID_FIELD_DESC);
          oprot.writeString(this.guid);
          oprot.writeFieldEnd();
        }
      }
      if (this.note != null) {
        if (isSetNote()) {
          oprot.writeFieldBegin(NOTE_FIELD_DESC);
          this.note.write(oprot);
          oprot.writeFieldEnd();
        }
      }
      if (this.toAddresses != null) {
        if (isSetToAddresses()) {
          oprot.writeFieldBegin(TO_ADDRESSES_FIELD_DESC);
          {
            oprot.writeListBegin(new TList(TType.STRING, this.toAddresses.length));
            for each (var elem177:* in this.toAddresses)            {
              oprot.writeString(elem177);
            }
            oprot.writeListEnd();
          }
          oprot.writeFieldEnd();
        }
      }
      if (this.ccAddresses != null) {
        if (isSetCcAddresses()) {
          oprot.writeFieldBegin(CC_ADDRESSES_FIELD_DESC);
          {
            oprot.writeListBegin(new TList(TType.STRING, this.ccAddresses.length));
            for each (var elem178:* in this.ccAddresses)            {
              oprot.writeString(elem178);
            }
            oprot.writeListEnd();
          }
          oprot.writeFieldEnd();
        }
      }
      if (this.subject != null) {
        if (isSetSubject()) {
          oprot.writeFieldBegin(SUBJECT_FIELD_DESC);
          oprot.writeString(this.subject);
          oprot.writeFieldEnd();
        }
      }
      if (this.message != null) {
        if (isSetMessage()) {
          oprot.writeFieldBegin(MESSAGE_FIELD_DESC);
          oprot.writeString(this.message);
          oprot.writeFieldEnd();
        }
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("NoteEmailParameters(");
      var first:Boolean = true;

      if (isSetGuid()) {
        ret += "guid:";
        if (this.guid == null) {
          ret += "null";
        } else {
          ret += this.guid;
        }
        first = false;
      }
      if (isSetNote()) {
        if (!first) ret +=  ", ";
        ret += "note:";
        if (this.note == null) {
          ret += "null";
        } else {
          ret += this.note;
        }
        first = false;
      }
      if (isSetToAddresses()) {
        if (!first) ret +=  ", ";
        ret += "toAddresses:";
        if (this.toAddresses == null) {
          ret += "null";
        } else {
          ret += this.toAddresses;
        }
        first = false;
      }
      if (isSetCcAddresses()) {
        if (!first) ret +=  ", ";
        ret += "ccAddresses:";
        if (this.ccAddresses == null) {
          ret += "null";
        } else {
          ret += this.ccAddresses;
        }
        first = false;
      }
      if (isSetSubject()) {
        if (!first) ret +=  ", ";
        ret += "subject:";
        if (this.subject == null) {
          ret += "null";
        } else {
          ret += this.subject;
        }
        first = false;
      }
      if (isSetMessage()) {
        if (!first) ret +=  ", ";
        ret += "message:";
        if (this.message == null) {
          ret += "null";
        } else {
          ret += this.message;
        }
        first = false;
      }
      ret += ")";
      return ret;
    }

    public function validate():void {
      // check for required fields
      // check that fields of type enum have valid values
    }

  }

}
