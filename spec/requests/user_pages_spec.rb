require 'spec_helper'

describe "UserPages" do
 subject { page }
  describe "admin page" do
    before { visit admin_path}

    it { should have_content('Listing Users')}
    it { should have_title(full_title('Listing Users'))}
  end
end
