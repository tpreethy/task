require 'spec_helper'

describe "SchedulePages" do
  subject { page }
  describe "customer page" do
    before { visit customer_path }
    it { should have_content('Listing Schedules')}
    it { should have_title(full_title('Listing Schedules'))}
  end
end
