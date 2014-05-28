require 'spec_helper'

describe User do
  before do
    @user = User.new(name: "User", address: "3945, 243rd pl", city:"seattle", state:"wa", zip_code:"12345", school:"some school", years_practice: "5")
  end
  subject {@user}
  it { should respond_to (:name)}

  it { should be_valid }
describe "when name is not present" do
  before { @user.name = " "}
  it { should_not be_valid}
end
  describe "when name is too long" do
    before {@user.name = "a" * 36 }
    it { should_not be_valid }
  end
end
