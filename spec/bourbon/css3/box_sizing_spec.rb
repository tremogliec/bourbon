require 'spec_helper'

describe 'box-sizing' do
  before(:all) do
    ParserSupport.parse_file('css3/box-sizing')
  end

  describe '@include box-sizing' do
    context 'with argument (border-box)' do
      it 'outputs with vendor prefixes' do
        expect('.box-sizing').to have_rule('-webkit-box-sizing: border-box')
        expect('.box-sizing').to have_rule('-moz-box-sizing: border-box')
        expect('.box-sizing').to have_rule('box-sizing: border-box')
      end
    end
  end
end
