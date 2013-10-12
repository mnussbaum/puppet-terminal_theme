class terminal_theme($theme) {
    $home = "/Users/${::boxen_user}"
    $terminal_plist = "${home}/Library/Preferences/com.apple.Terminal.plist"

    file { $terminal_plist:
      ensure  => file,
      mode    => "0600",
    }

    $defaults = ["Startup Window Settings", "Default Window Settings"]
    terminal_theme::write_default { $defaults:
      value          => $theme,
      terminal_plist => $terminal_plist,
    }
}
