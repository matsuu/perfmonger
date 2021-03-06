
require 'spec_helper'

describe "PerfmongerCommand" do
  before(:each) do
    @perfmonger_command = File.expand_path('../../src/perfmonger', __FILE__)
  end

  it "should be an executable" do
    File.executable?(@perfmonger_command).should be_true
  end

  it 'should print version number if --version specified' do
    `#{@perfmonger_command} --version`.should include(PerfMonger::VERSION)
  end
end
