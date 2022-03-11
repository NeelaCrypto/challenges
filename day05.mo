import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";

actor {
      
    //Daily Challenge #1 
    /* 
    Write a function is_anonymous that takes no arguments 
    but returns true is the caller is anonymous and false otherwise.
    */
    
    public shared({caller}) func whoami() : async Principal {
        return(caller);
    };

    public func is_anonymous() : async Bool {
        let anonymous : Principal = Principal.fromText ("2vxsx-fae");
        if (whoami == anonymous){
            return(true);
            } 
            else 
            {
        return(false);
    };


    //Daily Challenge #2 
    /* 
    Create an HashMap called favoriteNumber where 
    the keys are Principal and the value are Nat.
    */
    
    let anonymous_principal : Principal = Principal.fromText("2vxsx-fae");
    let favoriteNumber = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);
    favoriteNumber.put(anonymous_principal, 22);

    public func test() : async ?Nat {
        return(favoriteNumber.get(Principal.fromText("2vxsx-fae")));
    };


    //Daily Challenge #3 
    /* 
    Write two functions :
    1 add_favorite_number that takes n of type Nat and stores this value 
    in the HashMap where the key is the principal of the caller. This function has no return value.
    2 show_favorite_number that takes no argument and returns n of 
    type ?Nat, n is the favorite number of the person as defined in the previous 
    function or null if the person hasn't registered.
    */
    
    public func add_favorite_number(n: Nat): async Nat (){
        favoriteNumber.put(anonymous_principal, n);
    };

    public func show_favorite_number() : async ?Nat {
        var x: ?Nat = favoriteNumber.get(anonymous_principal);
        if( x == 0){
            return(Null);
            }
            else
            {
            return(favoriteNumber.get(Principal.fromText("2vxsx-fae")));
            };
        
    };

    
    //Daily Challenge #4 
    /* 
    Rewrite your function add_favorite_number so 
    that if the caller has already registered his 
    favorite number, the value in memory isn't modified. 
    This function will return a text of type Text that 
    indicates "You've already registered your number" in that 
    case and "You've successfully registered your number" in 
    the other scenario.
    */

    public func add_favorite_number(n: Nat): ?Text{
        let anonymous_principal : Principal = Principal.fromText("2vxsx-fae");
        var x: ?Nat = favoriteNumber.get(anonymous_principal);
        if( x == 0){
            let users = add_favorite_number(n: Nat): async Nat (){
                favoriteNumber.put(anonymous_principal, n);}
        };
        return("You've successfully registered your number");
            else
            {
            let users = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);
            users.put(favoriteNumber, "You've already registered your number");
            }
    };
    
    
    //Daily Challenge #5
    /* 
    Write two functions
    - update_favorite_number
    - delete_favorite_number 
    */
    
    /* 
    public func update_favorite_number

    public func delete_favorite_number

    */

     //Daily Challenge #6
    /* 
    Write a function deposit_cycles that allow anyone to deposit cycles 
    into the canister. This function takes no parameter but 
    returns n of type Nat corresponding to the amount of cycles deposited by the call.
    */

}