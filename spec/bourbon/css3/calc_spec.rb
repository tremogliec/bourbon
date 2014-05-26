require 'spec_helper'

describe 'calc' do
  before(:all) do
    ParserSupport.parse_file('css3/calc')
  end

  context 'with arguments (width, "100% - 80px")' do
    it 'outputs with vendor prefixes' do
      pending <<-REASON
        Issues with css_parser where the second declaration overides the first.

        Bourbon renders the following:
        .calc {
          width: -webkit-calc(100% - 80px);
          width: calc(100% - 80px); }

        but css_parser only sees `width: calc(100% - 80px)` as declared.
      REASON

      expect('.calc').to have_rule('width: -webkit-calc(100% - 80px)')
      expect('.calc').to have_rule('width: calc(100% - 80px)')
    end
  end
end
