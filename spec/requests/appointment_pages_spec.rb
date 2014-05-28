require 'spec_helper'

describe "AppointmentPages" do
  subject { page }
  describe "reception page" do
    before { visit reception_path }

    it { should have_content('Listing Appointments')}
    it{ should have_title(full_title('Listing Appointments'))}
 end
end
