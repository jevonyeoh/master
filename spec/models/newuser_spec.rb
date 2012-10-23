require 'spec_helper'

describe Newuser do
    it "requires a name, username, password and email" do
        subject.should_not be_valid
        subject.name = "jevon yeoh"
        subject.should_not be_valid
        subject.username = "kochez"
        subject.should_not be_valid
        subject.password = "testpassword2"
        subject.should_not be_valid
        subject.email = "jevonyeoh@gmail.com"
        subject.should be_valid
    end
end

