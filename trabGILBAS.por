programa {
    inclua biblioteca Util --> u

    funcao inicio() {
        inteiro vet[2] // Vetores para sorteio
        inteiro repita = 1, i = -100, a = 1, fechar = 3, achei = 1, j = 1 // La�os de repeti��o
        inteiro comando, comando2 = 3, iniciar, jogar = 1, entregador = 0 // Comandos de entrada e compara��o
        inteiro placarEscolhePrimeiro = 0, placarEscolheSegundo = 0, novoPlacar1 // Placares
        inteiro escolhePrimeiro = 0, escolheSegundo = 0, novoEscolhePrimeiro // Jogadores

        escreva("Bem-vindo ao jogo iFood vs Uber Eats\n") 
        escreva("\n1 - Iniciar o Jogo\n")    
        escreva("2 - Verificar Placar\n")
        escreva("3 - Encerrar o jogo\n")        
        
        enquanto (a == 1) {
            leia(iniciar)

            se (iniciar == 1) {
                escreva("Para decidir qual personagem voc� vai jogar, vamos realizar um sorteio com um dado.\nCada jogador ir� rolar o dado, e o n�mero maior determinar� sua escolha. Quem obtiver o n�mero mais alto decide se joga com o iFood ou com o Uber Eats.\nBoa sorte e que ven�a o melhor entregador!")

                escreva("\n\nEntregador 1, para rolar o dado digite 1: ")
                leia(comando)
                
                se (comando == 1) {
                    vet[0] = u.sorteia(1, 6) 
                    escreva("Entregador 1, o n�mero sorteado foi: ", vet[0], "\n")
                } senao {
                    se (comando != 3) {
                        continue 
                    } senao {
                        a = 0 // Se a entrada for 3, encerra o jogo
                    }
                }
                
                escreva("\nEntregador 2, para rolar o dado, digite 1: ") 
                leia(comando)

                se (comando == 1) {
                    vet[1] = u.sorteia(1, 6) 
                    escreva("Entregador 2, o n�mero sorteado foi: ", vet[1], "\n")
                }
                
                // Decidir quem escolhe o personagem
                se (vet[0] > vet[1]) {
                    escreva("Entregador 1 escolhe o personagem (iFood ou Uber Eats).\n")
                } senao {
                    escreva("Entregador 2 escolhe o personagem (iFood ou Uber Eats).\n")
                }
                
            } senao se (iniciar == 2) {
                // Aqui voc� deve implementar a l�gica para verificar o placar
                escreva("Verificar placar ainda n�o implementado.\n")
                
            } senao se (iniciar == 3) {
                a = 0 // Encerra o jogo
                escreva("Jogo encerrado.\n")
                
            } senao {
                escreva("Op��o inv�lida, tente novamente.\n")
            }
        }
    }
}

