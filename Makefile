# Compilador
CXX = g++

# Flags de compilação
CXXFLAGS = -Wall -Wextra

# Fontes
SOURCES = primo.cpp vetor.cpp matriz.cpp

# Executáveis (sem extensão .cpp)
EXECUTABLES = $(SOURCES:.cpp=)

# Regra padrão (make ou make all)
all: $(EXECUTABLES)

# Regras específicas para cada programa
primo: primo.cpp
	$(CXX) $(CXXFLAGS) primo.cpp -o primo

vetor: vetor.cpp
	$(CXX) $(CXXFLAGS) vetor.cpp -o vetor

matriz: matriz.cpp
	$(CXX) $(CXXFLAGS) matriz.cpp -o matriz

# Limpa os executáveis
clean:
	rm -f $(EXECUTABLES)
	@echo "Executáveis removidos."

# Evita conflitos se existirem arquivos com o nome "all" ou "clean"
.PHONY: all clean
