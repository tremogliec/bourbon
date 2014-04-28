require 'spec_helper'

describe "appearance" do
  before(:all) do
    ParserSupport.parse_file('appearance')
  end

  describe "@include appearance" do
    context "with argument (button)" do
      it "outputs with vendor prefixes" do
        expect('.appearance').to have_rule('-webkit-appearance: button')
        expect('.appearance').to have_rule('-moz-appearance: button')
        expect('.appearance').to have_rule('-ms-appearance: button')
        expect('.appearance').to have_rule('-o-appearance: button')
        expect('.appearance').to have_rule('appearance: button')
      end
    end
  end

end
