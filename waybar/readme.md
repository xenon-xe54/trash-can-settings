# Waybar

This folder contain 2 variants configuration files Waybar with NixOS syntax:

1. Full configuration in one home-manager module
2. Configuration with home-manager module and style in css file.


## Look

1. Normal look bar
![](https://github.com/xenon-xe54/trash-can-settings/blob/main/waybar/screenshots/Normal_state.png)

2. Look bar with playing music/video

![](https://github.com/xenon-xe54/trash-can-settings/blob/main/waybar/screenshots/Paused_music_vodeo.png)

3. Look right part with hover volume module

![](https://github.com/xenon-xe54/trash-can-settings/blob/main/waybar/screenshots/hover_audio.png)

## Using
Firstly, you need install [home-manager](https://github.com/nix-community/home-manager) and add [dependencies](https://github.com/xenon-xe54/trash-can-settings/edit/main/waybar/readme.md#dependencies) in your  `configuration.nix`

### 1 (One configuration file)
 You may copy all configuration with this file into your `home.nix` and use it. But I don't recommend this way.

I recommend create new file into home-manager directory and copy all configuration into this file and copy into your `home.nix`:

        {config, pkgs, ...}: {
      imports = [
        ./waybar.nix
    	    ];
        }


### 2 (One configuration file, but style in separate file css)

In this way I recommend create new file as first way, because It's very simple and useful.
But after add path module in `imports` section from first method you found directory `.config/waybar` and add file `style.css` 

## Dependencies

1. waybar (obviously)
2. foot (my lovely terminal emulator)
3. Nerd fonts (for icons)
4. mpris (player module)
5. bluez (bluetooth module)
6. bluez-utils (bluetooth module)
7. bluetuith (bluetooth module)
8. Network Manager (network module)
9. ncpamixer (pulseaudio module)
