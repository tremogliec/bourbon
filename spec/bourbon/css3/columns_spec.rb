require "spec_helper"

describe "columns" do
  before(:all) do
    ParserSupport.parse_file('css3/columns')
  end


  describe "@include columns" do
    context "with argument 1" do
      it "outputs with vendor prefixes" do
        expect(".columns-as-count").to have_rule("-webkit-columns: 1")
        expect(".columns-as-count").to have_rule("-moz-columns: 1")
        expect(".columns-as-count").to have_rule("columns: 1")
      end
    end

    context "with argument 1px" do
      it "outputs with vendor prefixes" do
        expect(".columns-as-width").to have_rule("-webkit-columns: 1px")
        expect(".columns-as-width").to have_rule("-moz-columns: 1px")
        expect(".columns-as-width").to have_rule("columns: 1px")
      end
    end
  end

  describe "@include column-count" do
    context "with argument 1" do
      it "outputs with vendor prefixes" do
        expect(".column-count").to have_rule("-webkit-column-count: 1")
        expect(".column-count").to have_rule("-moz-column-count: 1")
        expect(".column-count").to have_rule("column-count: 1")
      end
    end
  end

  describe "@include column-gap" do
    context "with argument 1px" do
      it "should return vendor prefixes" do
        expect(".column-gap").to have_rule("-webkit-column-gap: 1px")
        expect(".column-gap").to have_rule("-moz-column-gap: 1px")
        expect(".column-gap").to have_rule("column-gap: 1px")
      end
    end
  end

  describe "@include column-fill" do
    context "with argument balance" do
      it "should return vendor prefixes" do
        expect(".column-fill").to have_rule("-webkit-column-fill: balance")
        expect(".column-fill").to have_rule("-moz-column-fill: balance")
        expect(".column-fill").to have_rule("column-fill: balance")
      end
    end
  end

  describe "@include column-rule" do
    context "with arguments (dashed 1px black)" do
      it "should return vendor prefixes" do
        expect(".column-rule").to have_rule(
          "-webkit-column-rule: dashed 1px black"
        )
        expect(".column-rule").to have_rule(
          "-moz-column-rule: dashed 1px black"
        )
        expect(".column-rule").to have_rule("column-rule: dashed 1px black")
      end
    end
  end

  describe "@include column-rule-color" do
    context "with argument black" do
      it "should return vendor prefixes" do
        expect(".column-rule-color").to have_rule(
          "-webkit-column-rule-color: black"
        )
        expect(".column-rule-color").to have_rule(
          "-moz-column-rule-color: black"
        )
        expect(".column-rule-color").to have_rule(
          "column-rule-color: black"
        )
      end
    end
  end

  describe "@include column-rule-style" do
    context "with argument solid" do
      it "should return vendor prefixes" do
        expect(".column-rule-style").to have_rule(
          "-webkit-column-rule-style: solid"
        )
        expect(".column-rule-style").to have_rule(
          "-moz-column-rule-style: solid"
        )
        expect(".column-rule-style").to have_rule(
          "column-rule-style: solid"
        )
      end
    end
  end

  describe "@include column-rule-width" do
    context "with argument 1px" do
      it "should return vendor prefixes" do
        expect(".column-rule-width").to have_rule(
          "-webkit-column-rule-width: 1px"
        )
        expect(".column-rule-width").to have_rule(
          "-moz-column-rule-width: 1px"
        )
        expect(".column-rule-width").to have_rule(
          "column-rule-width: 1px"
        )
      end
    end
  end

  describe "@include column-span" do
    context "with argument all" do
      it "should return vendor prefixes" do
        expect(".column-span").to have_rule("-webkit-column-span: all")
        expect(".column-span").to have_rule("-moz-column-span: all")
        expect(".column-span").to have_rule("column-span: all")
      end
    end
  end

  describe "@include column-span" do
    context "with argument all" do
      it "should return vendor prefixes" do
        expect(".column-span").to have_rule("-webkit-column-span: all")
        expect(".column-span").to have_rule("-moz-column-span: all")
        expect(".column-span").to have_rule("column-span: all")
      end
    end
  end

  describe "@include column-width" do
    context "with argument 1px" do
      it "should return vendor prefixes" do
        expect(".column-width").to have_rule("-webkit-column-width: 1px")
        expect(".column-width").to have_rule("-moz-column-width: 1px")
        expect(".column-width").to have_rule("column-width: 1px")
      end
    end
  end
end
