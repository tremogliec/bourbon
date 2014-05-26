require 'spec_helper'

describe 'transition' do
  before(:all) do
    ParserSupport.parse_file('transition')
  end

  describe '@include transition' do
    context 'with arguments (all 2s ease-in-out)' do
      it 'outputs with vendor prefixes' do
        expect('.transition-shorthand').to have_rule('-webkit-transition: all 2s ease-in-out')
        expect('.transition-shorthand').to have_rule('-moz-transition: all 2s ease-in-out')
        expect('.transition-shorthand').to have_rule('transition: all 2s ease-in-out')
      end
    end

    context 'with arguments (opacity 1s ease-in 2s, width 2s ease-out)' do
      it 'outputs with vendor prefixes' do
        expect('.transition-multiple').to have_rule('-webkit-transition: opacity 1s ease-in 2s, width 2s ease-out')
        expect('.transition-multiple').to have_rule('-moz-transition: opacity 1s ease-in 2s, width 2s ease-out')
        expect('.transition-multiple').to have_rule('transition: opacity 1s ease-in 2s, width 2s ease-out')
      end
    end

    context 'with arguments (transform, opacity)' do
      it 'outputs with vendor prefixes ' do
        expect('.transition-multiple-properties').to have_rule('-webkit-transition-property: -webkit-transform, opacity')
        expect('.transition-multiple-properties').to have_rule('-moz-transition-property: -moz-transform, opacity')
        expect('.transition-multiple-properties').to have_rule('transition-property: transform, opacity')
      end
    end
  end

  describe '@import transition-duration' do
    context 'with arguments (1.0s)' do
      it 'outputs with vendor prefixes ' do
        expect('.transition-duration').to have_rule('-webkit-transition-duration: 1s')
        expect('.transition-duration').to have_rule('-moz-transition-duration: 1s')
        expect('.transition-duration').to have_rule('transition-duration: 1s')
      end
    end
  end

  describe '@import transition-timing-function' do
    context 'with arguments (ease-in)' do
      it 'outputs with vendor prefixes ' do
        expect('.transition-timing-function').to have_rule('-webkit-transition-timing-function: ease-in')
        expect('.transition-timing-function').to have_rule('-moz-transition-timing-function: ease-in')
        expect('.transition-timing-function').to have_rule('transition-timing-function: ease-in')
      end
    end
  end

  describe '@import transition-delay' do
    context 'with arguments (0.5s)' do
      it 'outputs with vendor prefixes ' do
        expect('.transition-delay').to have_rule('-webkit-transition-delay: 0.5s')
        expect('.transition-delay').to have_rule('-moz-transition-delay: 0.5s')
        expect('.transition-delay').to have_rule('transition-delay: 0.5s')
      end
    end
  end
end
