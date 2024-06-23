# Quantum Jumps Nix Shells repository

This is my current workflow for creating dev shells in nix:

* This repository contains shells for generic development environments. micropython, rust, golang, c++, etc.
* When working on a repo of my own, I can simply copy the relevant shell.nix from this repo into my new one, and make changes as required.
* If working on an opensource repo (meaning that I don't want to randomly clutter up their repo with random `shell.nix`es, I can copy, and then add `shell.nix` to `.git/info/exclude`
