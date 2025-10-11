{ lib, python3Packages }:

let
  pname = "niri-scratchpad";
in
python3Packages.buildPythonApplication {
  inherit pname;
  version = "0.0.1";
  pyproject = false;
  propagatedBuildInputs = [ ];
  dontUnpack = true;
  installPhase = "install -Dm755 ${./ns.py} $out/bin/${pname}";

  meta = {
    description = "Scratchpad support for the Niri Wayland compositor";
    homepage = "https://github.com/gvolpe/niri-scratchpad";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ gvolpe ];
    mainProgram = "niri-scratchpad";
    platforms = lib.platforms.linux;
  };
}
