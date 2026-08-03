{ ... }:

{
  hardware.graphics = {
    enable = true;
  };
  
  environment.variables = {
    LIBVA_DRIVER_NAME = "iHD";
  };
}
