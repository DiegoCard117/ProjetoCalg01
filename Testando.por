programa {
    inclua biblioteca Util --> u

    funcao inicio() {
        inteiro vet[2], a=1 // Vetor para os números sorteados pelos jogadores
        inteiro placares[2] // Vetor para armazenar o placar dos dois jogadores
        inteiro posicoes[2] // Vetor para armazenar a posição dos jogadores no tabuleiro
        inteiro iniciar, comando, turno, dado, jogadorAtual
        const inteiro tamanhoTabuleiro = 20

        // Inicializar placares e posições
        placares[0] = 0
        placares[1] = 0
        posicoes[0] = 0 // Posições iniciais dos jogadores no tabuleiro
        posicoes[1] = 0
        
        escreva("Bem-vindo ao jogo iFood vs Uber Eats\n") 
        escreva("1 - Iniciar o Jogo\n")    
        escreva("2 - Verificar Placar\n")
        escreva("3 - Encerrar o jogo\n")        
        
        enquanto (a==1) {
            leia(iniciar)

            se (iniciar == 1) {
                // Lógica para iniciar o jogo e rolar o dado
                escreva("Para decidir qual personagem você vai jogar, vamos realizar um sorteio com um dado.\nCada jogador irá rolar o dado, e o número maior determinará sua escolha. Quem obtiver o número mais alto decide se joga com o iFood ou com o Uber Eats.\nBoa sorte e que vença o melhor entregador!")
                escreva("\n\nEntregador 1, para rolar o dado digite 1: ")
                leia(comando)
                
                se (comando == 1) {
                    vet[0] = u.sorteia(1, 6) 
                    escreva("Entregador 1, o número sorteado foi: ", vet[0], "\n")
                }
                
                escreva("Entregador 2, para rolar o dado digite 1: ") 
                leia(comando)

                se (comando == 1) {
                    vet[1] = u.sorteia(1, 6) 
                    escreva("Entregador 2, o número sorteado foi: ", vet[1], "\n")
                }

                // Decidir quem escolhe o personagem e iniciar o jogo
                se (vet[0] > vet[1]) {
                    escreva("Entregador 1 escolhe o personagem (iFood ou Uber Eats).\n")
                    jogadorAtual = 0 // Entregador 1 começa
                } senao {
                    escreva("Entregador 2 escolhe o personagem (iFood ou Uber Eats).\n")
                    jogadorAtual = 1 // Entregador 2 começa
                }

                // Loop de jogo
                enquanto (a==1) {
                    escreva("\nÉ a vez do entregador ", jogadorAtual + 1, ". Para rolar o dado, digite 1: ")
                    leia(comando)
                    
                    se (comando == 1) {
                        dado = u.sorteia(1, 6)
                        escreva("Você rolou um ", dado, ".\n")
                        
                        // Avançar a posição do jogador no tabuleiro
                        posicoes[jogadorAtual] = posicoes[jogadorAtual] + dado
                        
                        // Verificar se o jogador alcançou ou ultrapassou a última casa do tabuleiro
                        se (posicoes[jogadorAtual] >= tamanhoTabuleiro) {
                            posicoes[jogadorAtual] = tamanhoTabuleiro
                            escreva("Parabéns, entregador ", jogadorAtual + 1, ", você chegou ao final do tabuleiro e venceu!\n")
                            // Atualizar placar e reiniciar posições para o próximo jogo
                            placares[jogadorAtual] = placares[jogadorAtual] + 1
                            posicoes[0] = 0
                            posicoes[1] = 0
                            pare // Encerra o jogo após a vitória
                        } senao {
                            escreva("Você está na posição ", posicoes[jogadorAtual], " do tabuleiro.\n")
                        }

                        // Alternar o turno para o próximo jogador
                        jogadorAtual = (jogadorAtual + 1) % 2
                    } senao {
                        escreva("Entrada inválida. Tente novamente.\n")
                    }
                }
                
            } senao se (iniciar == 2) {
                // Verificar e exibir o placar
                escreva("Placar atual:\n")
                escreva("Entregador 1: ", placares[0], " pontos\n")
                escreva("Entregador 2: ", placares[1], " pontos\n")
                
            } senao se (iniciar == 3) {
                escreva("Jogo encerrado.\n")
                pare // Encerra o programa
                
            } senao {
                escreva("Opção inválida, tente novamente.\n")
            }
        }
    }
}
