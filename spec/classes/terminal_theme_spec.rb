require "spec_helper"

describe "terminal_theme" do
  let(:params) { {:theme => "test_theme"} }
  let(:facts) { {:boxen_user => "test_user"} }
  terminal_plist = "/Users/test_user/Library/Preferences/com.apple.Terminal.plist"

  it "ensures there's a terminal plist" do
    subject.should contain_file(terminal_plist).with({
      "ensure" => "file",
      "mode"   => "0600"
    })
  end

  it "sets the startup window default" do
    window_settings = "Startup Window Settings"
    subject.should contain_boxen__osx_defaults("Terminal Defaults Write #{window_settings}").with({
      "domain"  => "com.apple.Terminal",
      "key"     => window_settings,
      "value"   => "test_theme",
      "user"    => "test_user",
      "require" => "File[#{terminal_plist}]"
    })
  end

  it "sets the default window default" do
    window_settings = "Default Window Settings"
    subject.should contain_boxen__osx_defaults("Terminal Defaults Write #{window_settings}").with({
      "domain"  => "com.apple.Terminal",
      "key"     => window_settings,
      "value"   => "test_theme",
      "user"    => "test_user",
      "require" => "File[#{terminal_plist}]"
    })
  end
end
