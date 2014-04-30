require 'spec_helper'

describe 'backface-visibility' do
  before(:all) do
    ParserSupport.parse_file('backface-visibility')
  end

  context 'with arguments (visible)' do
    it 'outputs with vendor prefixes' do
      expect('.backface-visibility').to have_rule('-webkit-backface-visibility: visible')
      expect('.backface-visibility').to have_rule('backface-visibility: visible')
    end
  end
end
