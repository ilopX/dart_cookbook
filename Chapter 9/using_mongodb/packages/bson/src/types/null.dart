part of bson;
class BsonNull extends BsonObject{
  BsonNull();
  get value=>null;
  byteLength()=>0;
  int get typeByte => _BSON_DATA_NULL;
  packValue(BsonBinary buffer){
  }
  unpackValue(BsonBinary buffer){
  }
}