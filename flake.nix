{
  description = "My flakes";
  outputs = { self }: {
    templates.rust = {
      path = ./flakes/rust;
      description = "A simple Rust/Cargo project";
      welcomeText = ''
        # Simple Rust/Cargo template
      '';
    };

    templates.why2025 = {
      path = ./flakes/why2025;
      description = "Development of the why2025 badge";
    };

    templates.default = {
      path = ./flakes/default;
      description = "A basic flake";
    };
  };
}
