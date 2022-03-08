import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Nat32 "mo:base/Nat32";
import Text "mo:base/Text";


actor {

  //Daily Challenge #1
  
  public func nat_to_nat8(n: Nat): async Nat8 {
    if(n > 255){
      return 0;
    };
    return(Nat8.fromNat(n));
  };


  //Daily Challenge #2
  
  public func max_number_with_n_bits(n: Nat): async Nat {
    var counter =0;
    for(i in Iter.range(0, n -1)){
    counter += 2**(i);
    };
    counter
  };


  //Daily Challenge #3

 public func decimal_to_bits(n: Nat): async Nat{
   var index = n;
   var counter = 0;
   while(index > 0){
     counter += 2**(index -1);
     index:= index -1;
    };
    return (counter)
  };
  
  
  //Daily Challenge #4
  
  public func capitalize_character(c: Char): async Char {
    var tmp: Nat32=Char.toNat32(c);
    if( tmp > 122 or tmp > 97 ) {
      return c;
    };
    tmp -= 32;
    var out: Char=Char.fromNat32(tmp);
    return(out);
  };


  //Daily Challenge #5
  
  public func capitalize_text(t: Text): async Text {
    for(c in t.chars()){
      var unicode_value: Nat32=Char.toNat32(c);
      if(unicode_value > 122 or unicode_value < 97){
        return(Text.fromChar(c));
      }else{
        let unicode_value_capital= unicode_value -32;
        let char_capital= Char.fromNat32(unicode_value_capital);
        return(Text.fromChar(char_capital));
      };
    };
    return("Unreachable");
  };


  //Daily Challenge//
  
};


