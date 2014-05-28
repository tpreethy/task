require 'spec_helper'

describe Appointment do
before { @appointment = Appointment.new(customer: "Example", pet:"sam", reason:"check up",dated:"12-3-2013", doctor:"User")}
  subject { @appointment }
  it {should respond_to(:customer)}
  it { should be_valid }
  describe "when customer is not present" do
    before { @appointment.customer = " "}
    it { should_not be_valid }
  end
end
