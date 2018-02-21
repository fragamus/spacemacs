{ config, pkgs, ... }: 

{
  imports = [ <nixpkgs/nixos/modules/virtualisation/amazon-image.nix> ];
  ec2.hvm = true;

    # Install some packages
    environment.systemPackages = 
            with pkgs; 
            [
                tmux byobu vim emacs gnumake gcc w3m gitAndTools.gitFull
         ]; 
 
    
}

