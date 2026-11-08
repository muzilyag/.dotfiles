{ pkgs, username, ... }: {
  home.sessionVariables = {
    MOZ_USE_XINPUT2 = "1";
  };

  programs.firefox = {
    enable = true;
    profiles.${username} = {
      settings = {
        "apz.allow_zooming" = true;
        "dom.w3c_touch_events.enabled" = 1;
        "apz.gtk.touchpad_pinch.enabled" = true;
        "browser.gesture.pinch.threshold" = 10;

        "layout.css.devPixelsPerPx" = "1.3";
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
        "layers.acceleration.force-enabled" = true;
        "gfx.webrender.all" = true;

        "intl.locale.requested" = "ru,en-US";
        "browser.search.region" = "RU";
        "distribution.searchplugins.defaultLocale" = "ru";

        "browser.urlbar.suggest.quicksuggest.sponsored" = false;
        "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;

        "browser.uiCustomization.state" = builtins.toJSON {
          "placements" = {
            "nav-bar" = [ "back-button" "forward-button" "stop-reload-button" "urlbar-container" "downloads-button" "library-button" ];
            "TabsToolbar" = [ "tabbrowser-tabs" "new-tab-button" "alltabs-button" ];
          };
        };
      };
    };
  };

  home.file.".mozilla/firefox/${username}/chrome" = {
    source = ../../../config/firefox/chrome;
    recursive = true;
  };
}
