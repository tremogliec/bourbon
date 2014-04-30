require 'spec_helper'

describe 'user-select' do
  before(:all) do
    ParserSupport.parse_file('user-select')
  end

  context 'with arguments (none)' do
    it 'outputs with vendor prefixes' do
      expect('.user-select').to have_rule('-webkit-user-select: none')
      expect('.user-select').to have_rule('-moz-user-select: none')
      expect('.user-select').to have_rule('-ms-user-select: none')
      expect('.user-select').to have_rule('user-select: none')
    end
  end
end
