{
        programs.waybar = {
        	enable = true;
        	settings = {
        		    waybar = {
        		    layer = "bottom"; # Waybar at top layer
        		    exclusive = "false";
        		    position = "bottom"; # Waybar position (top|bottom|left|right)
        		    height = 40; # Waybar height (to be removed for auto height)
        		    # "width": 1280, // Waybar width
        		    spacing = 4; # Gaps between modules (4px)
        		    # Choose the order of the modules
        		    modules-left = [ ];
        		    modules-center = [ "clock" "mpris"];
        		    modules-right = [ "group/settings"];
        		    # Modules configuration
        	#
  				"group/settings" = {
  					orientation = "horizontal";
  					    drawer = {
          				transition-duration = 300;
          				children-class = "setup";
         					transition-left-to-right = false;
     					 };
  					modules = [
  						"pulseaudio"
  						"bluetooth"  
  						"network"
  					];
  					
  				};
        		    "clock" = {
        		        timezone = "America/Sao_Paulo";
        		        interval = 1;
        		        format = "{:%H:%M:%S}";
        		        format-alt = "{:%d.%m.%Y %H:%M}";
        		        tooltip-format = "<big>{:%d %B %Y}</big>\n<tt><small>{calendar}</small></tt>";
        		        calendar = {
        		        	mode = "month";
        		        	week-pos = "";
        		        	format = {
        		        		months = "<span color='#ffead3'><b>{}</b></span>";
        		        		days = "<span color='#ecc6d9'><b>{}</b></span>";
        		        		weeks = "<span color='#99ffdd'><b>W{}</b></span>";
        		        		weekdays = "<span color='#ffcc66'><b>{}</b></span>";
        		        		today = "<span color='#ff6699'><b><u>{}</u></b></span>";
        		        	};
        		        };
  
       		    };
  
        		    "mpris" = {
        		    	interval =1;
        		    	format = "{player_icon}  {artist} - {title}";
        		    	format-paused = "{status_icon} <i>{artist} - {title}({position}) </i>";
        		    	player-icons = {
        		    		default = "▶";
        		    		mpv = "🎵";
        		    		firefox = "󰈹 ";
        		    	};
        		    	status-icons = {
        		    		paused = "⏸";
        		    	};
        		    	tooltip-format-playing = "Playing {position}/{length}";
  						tooltip-format-paused = "{title} paused on {position}/{length}";
        		    	# ignored-players = ["firefox"]
        		    };
  
        		    "bluetooth" = {
        		    	format = " {status}";
        		    	format-connected = " {device_alias}";
        		    	format-connected-battery = " {device_alias} {device_battery_percentage}%";
        		    	tooltip = false;
        		    	# "format-device-preference = [ "device1" "device2" ]; # preference list deciding the displayed device
        		    	#tooltip-format = "{controller_alias}\t{controller_address}\n\n{num_connections} connected";
        		    	#tooltip-format-connected = "{controller_alias}\t{controller_address}\n\n{num_connections} connected\n\n{device_enumerate}";
        		    	#tooltip-format-enumerate-connected = "{device_alias}\t{device_address}";
        		    	#tooltip-format-enumerate-connected-battery = "{device_alias}\t{device_address}\t{device_battery_percentage}%";
       		    		on-click = "foot bluetuith";
  
        		    };
        		    "network" = {
        		    	interval = 1;
       		         #"interface": "wlp2*", // (Optional) To force the use of this interface
        		        format-wifi = "󰖩  {frequency}Ghz    󰜷󰜮 {bandwidthDownBits}/{bandwidthUpBits} ";
        		        format-ethernet = "{ipaddr}/{cidr} ";
  						tooltip = false;
        		        #tooltip-format = "{gwaddr}:  {bandwidthDownBits}/{bandwidthUpBits} ";
        		        format-linked = "{ifname} (No IP) ";
        		        format-disconnected = "Disconnected ⚠";
        		        format-alt = "{ifname}: {ipaddr}/{cidr}";
        		        on-click-right = "foot nmtui";
        		    };
        		    "pulseaudio" = {
        		    	tooltip = false;
        		        scroll-step = 1; # %, can be a float
        		        format = "{volume}% {icon}    {format_source}";
        		        format-bluetooth = "{volume}%  {icon}    {format_source}";
        		        format-bluetooth-muted = " {icon}   {format_source}";
        		        format-muted = " {format_source}";
        		        format-source = "{volume}% ";
        		        format-source-muted = "";
        		        format-icons = {
        		            headphone = "";
        		            hands-free = "󰋎";
        		            headset = "󰋎";
        		            phone = "";
        		            portable = "";
        		            default = ["" "" ""];
        		        };
        		        on-click = "foot ncpamixer";
        		    };
        		};
        	};
        	style = ''
  
        	     tooltip {
        	       color: #ff7f80;
       	       background-color: #0b1c2c;
       	       border-radius: 10px;
       	       border: 1px solid #f7f9bf;
        		  }
  
        		  tooltip label {
        		    color: #f7f9bf;
        		  }
  
        		 #clock,
        		 #mpris,
        		 #bluetooth,
        		 #pulseaudio,
        		 #network {
        		 	font-size: 16px;
        			color: #f7f9bf;
        		    background-color: #223b54;  
        		  	border-radius: 10px;
        		  	opacity:0.5;
        		  	margin-right: 10px;
        		  	transition: min-width 0.5s;
        		  	margin-bottom: 4px;
        		  }
        		 window#waybar {
        			background-color: transparent;
        			color: white;
        		  }
  
  
        		  #clock {
        		    min-width: 140px;
        		  }
        		  #clock:hover {
        		  min-width: 180px;
        		  }
        		  #mpris {
        		    min-width: 900px;
        		  }
        		  #mpris:hover {
        		    min-width: 940px;
        		  }
        		  #mpris.firefox {
        		    background-color: #bf8b56;	
        		  }
        		  #mpris.stopped,
        		  #mpris.paused {
        		    background-color: #0b1c2c;	
        		  }
  			  #bluetooth {
  			  	min-width: 300px;
  			  }
  			  #bluetooth:hover {
  			  	min-width: 340px;
  			  }
  			  #bluetooth.off,
  			  #bluetooth.on {
  		  	min-width: 50px;
  			  }
  			  #bluetooth.off:hover,
  			  #bluetooth.on:hover {
  			  	min-width: 90px;
  			  }
  			  #pulseaudio {
        		    min-width: 150px;
        		  }
        		  #pulseaudio:hover {
        		    min-width: 170px;
        		  }
  		  	  #network {
  		  	  	min-width: 250px;
  		  	  }
  		  	  #network:hover {
  		  	  	min-width: 290px;
  		  	  }
  		  	  .setup { 
       		    border-radius: 10px;      		    
  		  	  }
        		  
        	'';	  
        	
        };  
}
