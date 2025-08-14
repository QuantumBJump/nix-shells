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
    templates.default = self.templates.rust;
  };
}
