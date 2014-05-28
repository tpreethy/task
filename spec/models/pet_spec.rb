require 'spec_helper'

describe Pet do
 before {@pet = Pet.new(name: "sam",pet_type: "cat", breed: "Boxer", age: "4", weight: "35", dated:"12-5-2013" )}
  subject { @pet }

  it { should respond_to (:name)}
 it { should respond_to (:breed)}
  it { should be_valid }
  describe "when name is not present" do
    before { @pet.name = " "}
    it { should_not be_valid }
  end
 describe "when breed is not present" do
   before { @pet.breed = " "}
   it { should_not be_valid }
 end
 describe "when name is too long" do
   before { @pet.name = "a" * 36 }
   it { should_not be_valid }
 end
 describe "when breed is too long" do
   before { @pet.breed = "a" * 36 }
   it { should_not be_valid }
 end

end
