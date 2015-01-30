require "spec_helper"

describe "is-length" do
  before(:all) do
    ParserSupport.parse_file("functions/is-length")
  end

  context "measures if unitless integer is length" do
    it "returns false" do
      expect(".integer").not_to have_rule("color: #fff")
    end
  end

  context "measures if pixels is length" do
    it "returns true" do
      expect(".pixels").to have_rule("color: #fff")
    end
  end

  context "measures if ems is length" do
    it "returns true" do
      expect(".ems").to have_rule("color: #fff")
    end
  end

  context "measures if percent is length" do
    it "returns true" do
      expect(".percent").to have_rule("color: #fff")
    end
  end

  context "measures if calc is length" do
    it "returns true" do
      expect(".calc").to have_rule("color: #fff")
    end
  end

  context "measures if string is length" do
    it "returns false" do
      expect(".string").not_to have_rule("color: #fff")
    end
  end

  context "measures if null is length" do
    it "returns false" do
      expect(".null").not_to have_rule("color: #fff")
    end
  end
end
