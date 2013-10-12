define terminal_theme::write_default(
  $value,
  $terminal_plist,
) {
    boxen::osx_defaults { "Terminal Defaults Write ${name}":
      domain  => "com.apple.Terminal",
      key     => $name,
      value   => $value,
      user    => $::boxen_user,
      require => File[$terminal_plist],
    }
}
