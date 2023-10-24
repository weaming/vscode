# https://code.visualstudio.com/docs/editor/extension-gallery#_command-line-extension-management
freeze-extensions:
	code --list-extensions > extensions.txt

freeze-extensions-tmp:
	@code --list-extensions > extensions.tmp

sync-extensions:
	make get-uninstalled | xargs -L 1 code --install-extension
	make get-unneeded | xargs -L 1 code --uninstall-extension
	rm -f extensions.tmp

get-uninstalled: freeze-extensions-tmp
	@python set-diff.py extensions.txt extensions.tmp

get-unneeded: freeze-extensions-tmp
	@python set-diff.py extensions.tmp extensions.txt

setup-vscode-config:
	@bash setup.sh
