{ lib, buildPythonPackage, fetchPypi }:

buildPythonPackage rec {
  pname = "rand-password-gen";
  version = "1.0";

  src = ./.;

  nativeBuildInputs = [ fetchPypi ];

  meta = with lib; {
    description = "Script to generate random passwords";
    license = licenses.mit;
  };

  postInstall = ''
    mkdir -p $out/bin
    cp $src/generate_password.py $out/bin/
    chmod +x $out/bin/generate_password.py
  '';
}
