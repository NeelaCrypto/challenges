import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {
    
    //Daily Challenge #1
    
    public func add(n: Nat, m: Nat): async Nat{
       return(n+m);
   };
   

   //Daily Challenge #2

   public func square(n: Nat): async Nat{
       return(n*n);
   };
   
   
   //Daily Challenge #3

   public func days_to_seconds(n: Nat): async Nat{
       return(n*24*3600);  
   };
   
   
   //Daily Challenge #4

   var counter: Nat=0;

   public func increment_counter(n: Nat): async Nat{
       counter+=n;
       return(counter);
   };

   public func clear_counter(): async (){
       counter:=0;
       return;
   };


   //Daily Challenge #5

   public func divide(n: Nat, m: Nat): async Bool{
       if(n%m==0){
           return(true);
       }else{
           return(false);
       }
   };


   //Daily Challenge #6

   public func is_even(n: Nat): async Bool{
       if(n%2==0){
           return(true);
       }else {
           return(false);
       }
   };


   //Daily Challenge #7

   public func sum_of_array(array: [Nat]): async Nat {
       var counter=0;
       if(array.size() ==0) {
           return 0
       };
       for(value in array.vals()){
           counter:= value+counter;
       };
       return(counter);
   };


   //Daily Challenge #8 
   
   public func maximum(array: [Nat]): async Nat { 
       var max: Nat=0;
       for(value in array.vals()) {
           if(value > max) max:= value;
           };
           return max;
    };

    
    //Daily Challenge #9


    //Daily Challenge #10
};