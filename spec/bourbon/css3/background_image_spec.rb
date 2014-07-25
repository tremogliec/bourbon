require "spec_helper"
require "pry"

describe "background-image" do
  before(:all) do
    ParserSupport.parse_file("css3/background-image")
  end

  describe "@include background-image" do
    context "with an argument as an image (image.jpg)" do
      it "outputs a background image" do
        expect(".background-image").to have_rule("background-image: url(\"image.jpg\")")
      end
    end

    context "with an argument as a gradient (linear-gradient(white,black))" do
      it "outputs a background gradient" do
        expect(".background-gradient").to have_rule("background-image: linear-gradient(white, black)")
      end
    end
  end
end
