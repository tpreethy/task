require 'spec_helper'

describe Schedule do
before {@schedule = Schedule.new(name: "sam",reason: "checkup", dated:10/23/2013)}
  subject { @schedule }
  it { should respond_to(:name)}
end
