require 'spec_helper'

describe "PetPages" do
 subject { page }
  describe "doctor page"
  before { visit doctor_path }

  it {should have_content('Listing Pets')}
  it { should have_title(full_title('Listing Pets'))}
end
