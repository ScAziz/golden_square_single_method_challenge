require 'includes_todo?'

RSpec.describe "includes_todo? method" do 
    context "given an empty string" do 
        it "fails and returns No text given." do 
            expect { includes_todo?("") }.to raise_error "No text given."
        end
    end

    context "given a string containing #TODO" do
      it "returns true" do 
        result = includes_todo?("#TODO: Eat cheese")
        expect(result).to eq true
      end
    end

    context "given a string that does not contain #TODO" do 
        it "returns false" do 
          result = includes_todo?("where is the substring?")
          expect(result).to eq false
        end
    end 

    context "given a string containing the substring in lowercase" do
        it "returns false" do 
            result = includes_todo?("#todo: Eat cheese")
            expect(result).to eq false
        end
    end



end
