# Default
all: install_gawk set_permissions run_script

# Iinstalar gawk
install_gawk:
	@sudo apt-get update
	@sudo apt-get install -y gawk

# Definir permissões
set_permissions:
	@chmod +x script.sh

# Executar o script com sudo
run_script: set_permissions
	@sudo ./script.sh

# Limpeza 
clean:
	@echo "Nada para limpar"
