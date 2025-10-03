{
     programs.foot = {
     	enable = true;
     	settings = {
     	    main = {
     		    title = "foot";
     		    font = "JetBrains Mono:size=12";
     		};
     		scrollback = {
     		    indicator-position = "relative";
     		    indicator-format = "|";
     		};
     		cursor = {
     		    style = "beam";
     		    blink = "yes";
     		    beam-thickness = "2";
     		};
     		mouse = {
     		    hide-when-typing = "yes";
     		    alternate-scroll-mode = "yes";
     		};
     		colors = {
     		    alpha = "0.75";
     	        background = "0b1c2c";
     		    foreground = "f7f9bf";
     		    regular0 = "0b1c2c";  # black
                regular1 = "223b54";  # red
                regular2 = "405c79";  # green
                regular3 = "627e99";  # yellow
                regular4 = "aabcce";  # blue
                regular5 = "cbd6e2";  # magenta rgb(203 214 226)
                regular6 = "e5ebf1";  # cyan
                regular7 = "f7f9bf";  # white rgb(247 249 191)
                bright0 = "bf8b56";   # bright black
                bright1 = "bfbf56";   # bright red
                bright2 = "8bbf56";   # bright green
                bright3 = "56bf8d";   # bright yellow
                bright4 = "568bbf";   # bright blue
                bright5 = "8b56bf";   # bright magenta
                bright6 = "bf568b";   # bright cyan rgb(191 86 139)
                bright7 = "bf5656";   # bright white
                selection-foreground = "0b1c2c";
                selection-background = "f7f9bf";
                search-box-no-match = "f7f9bf f7f9bf";
                search-box-match ="f7f9bf f7f9bf";
            };
            csd = {
                size = "24";
                color = "ff7f8066";
                hide-when-maximized = "yes";
                button-width = "24";
            };
            key-bindings = {
                clipboard-copy = "Control+Shift+c";
                clipboard-paste = "Control+Shift+v";
            };
     	};
     };	
}
