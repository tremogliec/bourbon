require 'spec_helper'

describe 'border-image' do
  before(:all) do
    ParserSupport.parse_file('css3/border-image')
  end

  describe '@include border-image' do
    context 'with arguments (url("image.png"))' do
      it 'outputs with the vendor prefixes' do
        expect('.image-only').to have_rule('-webkit-border-image: url("image.png")')
        expect('.image-only').to have_rule('border-image: url("image.png")')
        expect('.image-only').to have_rule('border-style: solid')
      end
    end

    context 'with arguments (url("image.png"))' do
      it 'outputs with the right vendor prefixs' do
        expect('.image-with-width-and-style').to have_rule('-webkit-border-image: url("image.png") 20 stretch')
        expect('.image-with-width-and-style').to have_rule('border-image: url("image.png") 20 stretch')
        expect('.image-with-width-and-style').to have_rule('border-style: solid')
      end
    end

    context 'with arguments (linear-gradient(45deg, orange, yellow))' do
      it 'outputs with the right vendor prefixes' do
        expect('.with-linear-gradients').to have_rule(
          '-webkit-border-image: -webkit-linear-gradient(-315deg, orange, yellow)'
        )
        expect('.with-linear-gradients').to have_rule(
          'border-image: linear-gradient(45deg, orange, yellow)'
        )
        expect('.with-linear-gradients').to have_rule(
          'border-style: solid'
        )
      end
    end
  end
end
