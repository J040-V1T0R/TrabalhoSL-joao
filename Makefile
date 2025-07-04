# Define o compilador C++ a ser usado
CXX = g++

# Define as flags de compilação
# -Wall: Habilita todos os avisos (warnings)
# -Wextra: Habilita avisos adicionais
CXXFLAGS = -Wall -Wextra

# Lista de todos os arquivos fonte (.cpp) que serão compilados
SOURCES = matriz.cpp primo.cpp vetor.cpp

# Lista de todos os executáveis que serão gerados
# Esta linha pega cada nome em SOURCES, remove a extensão .cpp e usa o restante como nome do executável.
EXECUTABLES = $(SOURCES:.cpp=)

# Regra padrão para compilar todos os programas
# O alvo 'all' depende de todos os executáveis listados em EXECUTABLES.
# Quando você digita 'make' sem um alvo específico, esta regra é executada.
all: $(EXECUTABLES)
	@echo "Todos os programas foram compilados com sucesso!"

# Regra de padrão para compilar arquivos .cpp em executáveis.
# Esta é uma regra genérica que diz ao 'make' como criar um arquivo sem extensão (o executável)
# a partir de um arquivo com a mesma base de nome e extensão .cpp.
# $<: Variável automática que representa o primeiro pré-requisito (o arquivo .cpp).
# $@: Variável automática que representa o nome do alvo (o executável).
%: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

# Regras específicas para cada programa (opcional, mas útil para clareza e para permitir compilação individual)

# make matriz irá compilar apenas matriz.cpp
matriz: matriz.cpp
	$(CXX) $(CXXFLAGS) matriz.cpp -o matriz

# make primo irá compilar apenas primo.cpp
primo: primo.cpp
	$(CXX) $(CXXFLAGS) primo.cpp -o primo

# make vetor irá compilar apenas vetor.cpp
vetor: vetor.cpp
	$(CXX) $(CXXFLAGS) vetor.cpp -o vetor

# Regra para limpar os arquivos gerados (executáveis).
# 'rm -f' remove os arquivos sem pedir confirmação e sem gerar erro se o arquivo não existir.
clean:
	rm -f $(EXECUTABLES)
	@echo "Arquivos executáveis limpos."

# .PHONY: Declara alvos que não correspondem a nomes de arquivos reais.
# Isso garante que 'make' sempre execute essas regras, mesmo que um arquivo com o mesmo nome exista.
.PHONY: all clean