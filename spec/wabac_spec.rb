require 'spec_helper'

describe WABAC do
  it "Mr.peabody should greet me at the first place" do

    greet_text = <<STATEMENT
Sherman: Where are we going Mr. Peabody?
Mr. Peabody: Sherman, don't ask 'where are we going', ask when.
STATEMENT

    WABAC.greet.should == greet_text
  end
end
