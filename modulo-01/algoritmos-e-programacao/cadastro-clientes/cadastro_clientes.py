import os

ARQUIVO_CLIENTES = os.path.join(os.path.dirname(os.path.abspath(__file__)), "clientes.txt")

def separador(char: str = "─", largura: int = 45):
    print(char * largura)

class Cliente:

    def __init__(self, nome, idade, email, telefone):
        self.__nome = nome
        self.__idade = idade
        self.__email = email
        self.__telefone = telefone

    def get_nome(self):
        return self.__nome

    def get_idade(self):
        return self.__idade

    def get_email(self):
        return self.__email

    def get_telefone(self):
        return self.__telefone

    def __str__(self):
        return (
            f"Nome: {self.__nome} | "
            f"Idade: {self.__idade} | "
            f"E-mail: {self.__email} | "
            f"Telefone: {self.__telefone}"
        )

class SistemaCadastro:

    def __init__(self):
        self.__clientes = []
        self.__carregar_arquivo()

    # Validações
    def __validar_nome(self, nome):
        if not nome.strip():
            raise ValueError("O nome não pode ser vazio.")
        return nome.strip()

    def __validar_idade(self, idade_str):
        try:
            idade = int(idade_str)
        except ValueError:
            raise ValueError("A idade deve ser um número inteiro.")
        if idade <= 0:
            raise ValueError("A idade deve ser maior que zero.")
        return idade

    def __validar_email(self, email):
        if "@" not in email:
            raise ValueError("O e-mail deve conter '@'.")
        return email.strip()

    def __validar_telefone(self, telefone):
        digits = "".join(filter(str.isdigit, telefone))
        if len(digits) != len(telefone.strip()):
            raise ValueError("O telefone deve conter apenas números.")
        if len(digits) < 10:
            raise ValueError("O telefone deve possuir ao menos 10 dígitos.")
        return digits

    # Operações principais
    def cadastrar_cliente(self):
        print()
        separador("═")
        print("       CADASTRO DE CLIENTE")
        separador("═")
        try:
            nome = self.__validar_nome(input("Nome: "))
            idade = self.__validar_idade(input("Idade: "))
            email = self.__validar_email(input("E-mail: "))
            telefone = self.__validar_telefone(input("Telefone: "))
        except ValueError as e:
            print(f"[ERRO] {e}")
            return

        cliente = Cliente(nome, idade, email, telefone)
        self.__clientes.append(cliente)
        self.__salvar_arquivo(cliente)
        separador()
        print(" Cliente cadastrado com sucesso!")
        separador()

    def listar_clientes(self):
        print()
        separador("═")
        print("        LISTA DE CLIENTES")
        separador("═")
        if not self.__clientes:
            print("  Nenhum cliente cadastrado.")
            separador()
            return
        for i, cliente in enumerate(self.__clientes, start=1):
            print(f"  {i}. {cliente}")
            separador()

    def __salvar_arquivo(self, cliente):
        try:
            with open(ARQUIVO_CLIENTES, "a", encoding="utf-8") as arquivo:
                arquivo.write(str(cliente) + "\n")
            print(f"[INFO] Dados salvos em: {ARQUIVO_CLIENTES}")
        except IOError as e:
            print(f"[ERRO ao salvar arquivo] {e}")

    def __carregar_arquivo(self):
        if not os.path.exists(ARQUIVO_CLIENTES):
            return
        try:
            with open(ARQUIVO_CLIENTES, "r", encoding="utf-8") as arquivo:
                for linha in arquivo:
                    linha = linha.strip()
                    if not linha:
                        continue
                    try:
                        partes = dict(
                            item.split(": ", 1)
                            for item in linha.split(" | ")
                        )
                        cliente = Cliente(
                            partes["Nome"],
                            int(partes["Idade"]),
                            partes["E-mail"],
                            partes["Telefone"],
                        )
                        self.__clientes.append(cliente)
                    except (KeyError, ValueError):
                        pass
        except IOError as e:
            print(f"[ERRO ao carregar arquivo] {e}")

    # Menu
    def exibir_menu(self):
        while True:
            print()
            separador("═")
            print("        MENU PRINCIPAL")
            separador("═")
            print("  1 - Cadastrar cliente")
            print("  2 - Listar clientes")
            print("  3 - Sair")
            separador()

            opcao = input("  Escolha uma opção: ").strip()
            separador()

            if opcao == "1":
                self.cadastrar_cliente()
            elif opcao == "2":
                self.listar_clientes()
            elif opcao == "3":
                separador("═")
                print("  Encerrando o sistema. Até logo!")
                separador("═")
                break
            else:
                print("  [AVISO] Opção inválida. Digite 1, 2 ou 3.")

# Ponto de entrada
if __name__ == "__main__":
    sistema = SistemaCadastro()
    sistema.exibir_menu()