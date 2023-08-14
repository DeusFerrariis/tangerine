{ pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
	buildInputs = with pkgs; [
		poetry
		zellij
		exa
	];

	shellHook = ''
		alias ls="exa --icons"
		alias edit="nvim"
		alias cat="bat"
		alias zj="zellij --layout compact"
	'';
}
