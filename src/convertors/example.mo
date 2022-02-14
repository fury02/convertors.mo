import CONVERT "convertors";
import Text "mo:base/Text";
import Nat "mo:base/Nat";

shared({caller = owner}) actor class test() = this {

	public func assert_test(){
        var nat1000 = CONVERT.textInNat("1000");
        assert(1000 == nat1000);
        var nat477564678 = CONVERT.textInNat("477564678");
        assert(477564678 == nat477564678);
        var nat1 = CONVERT.textInNat("1");
        assert(1 == nat1);
        var nat87 = CONVERT.textInNat("087");
        assert(87 == nat87);
    };
    
    public func convert(text_nat : Text) : async Nat {
        return CONVERT.textInNat(text_nat);
    };
};
