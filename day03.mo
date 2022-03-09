import Nat "mo:base/Nat";
import Array "mo:base/Array";
import Bool "mo:base/Bool";
import Iter "mo:base/Iter";
import Option "mo:base/Option";
import HashMap "mo:base/HashMap";
import Text "mo:base/Text";
import List "mo:base/List";
import Utils "utils";


actor {
    
    //Daily Challenge #1 
    /*
    Write a private function swap that takes 3 parameters : 
    a mutable array , an index j and an index i and returns the 
    same array but where value at index i and index j have been swapped. 
    */

    private func swap(array:[var Nat], j:Nat, i:Nat): [var Nat]{
        let temp: Nat= array[j];
        array[j]:= array[i];
        array[i]:= temp;
        return array;
    };

    //Daily Challenge #2
    /* 
    Write a function init_count that takes a Nat n and returns an 
    array [Nat] where value is equal to it's corresponding index.
    Note : init_count(5) -> [0,1,2,3,4].
    Note 2 : Do not use Array.append.
    */

    public func init_count(n: Nat): async [Nat]{
        let array: [var Nat]= Array.init<Nat>(n, 0);
        for(i in Iter.range(0, n-1)){
            array[i]:=i;
        };
        return Array.freeze<Nat>(array);
    };
    
    
    //Daily Challenge #3
    /* 
    Write a function seven that takes an array [Nat] and 
    returns "Seven is found" if one digit of ANY number is 7. 
    Otherwise this function will return "Seven not found".
    */

    public func seven(array:[Nat]): async Text{
        let seven: Char='7';
        for(value in array.vals()){
            let text_value= Nat.toText(value);
            for(char in text_value.chars()){
                if (char == seven){
                    return("Seven is found");
                }
            }
        };
        return("Seven is not found");
    };


    //Daily Challenge #4
    /* 
    Write a function nat_opt_to_nat that takes two 
    parameters : n of type ?Nat and m of type Nat . 
    This function will return the value of n if n is not null 
    and if n is null it will default to the value of m.
    */

    public func nat_opt_to_nat(n:?Nat, m:Nat): async Nat{
        switch(n){
            case(null){
                return m;
            };
            case(?something){
                return something;
            };
        };
    };


    //Daily Challenge #5
    /* 
    Write a function day_of_the_week that takes 
    a Nat n and returns a Text value corresponding to the day. 
    If n doesn't correspond to any day it will return null .
    day_of_the_week (1) -> "Monday".
    day_of_the_week (7) -> "Sunday".
    day_of_the_week (12) -> null. 
    */
    /* 
    public func day_of_the_week(n: Nat): async ?Text{
        switch(n){
            case(1) return "Mon";
            case(2) return "Tue";
            case(3) return "Wed";
            case(4) return "Thu";
            case(5) return "Fri";
            case(6) return "Sat";
            case(7) return "Sun";
            case(_) return null;
        }
    };
    ////////// Error ///////////////
     type error [M0050], literal of type Text
     does not have expected type?Text 
    //////////////////////////////////
    */


    //Daily Challenge #6
    /* 
    Write a function populate_array that takes an array [?Nat] and 
    returns an array [Nat] where all null values have been replaced by 0.
    Note : Do not use a loop.
    */

    public func populate_array(array:[?Nat]): async [Nat]{
        return Array.map<?Nat,Nat>(array,func(val:?Nat):Nat{
            switch(val){
                case(null){
                    return 0;
                };
                case(?some){
                    return some;
                }
            }
        });
    };


    //Daily Challenge #7
    /* 
    Write a function sum_of_array that takes an array [Nat] and 
    returns the sum of a values in the array.
    Note : Do not use a loop.
    */

    public func sum_of_array(array:[Nat]): async Nat{
        return Array.foldLeft<Nat,Nat>(array,0,Nat.add);
    };


    //Daily Challenge #8
    /* 
    Write a function squared_array that takes an array [Nat] and 
    returns a new array where each value has been squared.
    Note : Do not use a loop.
    */

    public func squared_array(array:[Nat]): async [Nat]{
        return Array.map<Nat,Nat>(array,func(val:Nat):Nat{
            return val*val;
        });
    };


    //Daily Challenge #9
    /* 
    Write a function increase_by_index that takes an array [Nat] and 
    returns a new array where each number has been increased by it's corresponding index.
    Note : increase_by_index [1, 4, 8, 0] -> [1 + 0, 4 + 1 , 8 + 2 , 0 + 3] = [1,5,10,3]
    Note 2 : Do not use a loop.
    */

    public func increase_by_index(array:[Nat]): async [Nat]{
        return Array.mapEntries<Nat,Nat>(array,func(val:Nat,index:Nat):Nat{
            return val+index;
        });
    };


    //Daily Challenge #10
    /* 
    Write a higher order function contains<A> that takes 3 parameters : 
    an array [A] , a of type A and a function f that takes a tuple of type (A,A) 
    and returns a boolean. This function should return a boolean indicating 
    whether or not a is present in the array.
    */

    /*
    private func contains_private<T>(array:[T],a:T,f:(T,T)->Bool): Bool{
        for(val in array.vals()){
            if(f(val,a)){
                return true;
            }
        };
        return false; 
    };
    */






   
};