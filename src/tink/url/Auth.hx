package tink.url;

/**
 * Represents inline authentication data, e.g. `http://user:password@somehost.tld/...`
 * May be accessed when null.
 */
abstract Auth(String) to String {
  public var user(get, never):Null<String>;
  public var password(get, never):Null<String>;

  public inline function new(user:String, password:String)
    this = '$user:$password';
      
  inline function get_user()
    return
      if (this == null) null;
      else this.split(':')[0];

  inline function get_password()
    return
      if (this == null) null;
      else this.split(':')[1];

  public inline function toString():String
    return this;
}