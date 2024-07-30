programa {
    inclua biblioteca Util --> u
    cadeia menuOpt
    inteiro skipPlayer1 = 0, skipPlayer2 = 0 // Flags para pular a vez do jogador
    inteiro totaldado1 = 0, totaldado2 = 0
    funcao inicio() {
        escreva("-------------------------------------------------------------------------- \n")
        escreva("Seja bem-vindo ao DeliveryMan \n")
        escreva("Digite 1 para jogar \n")
        escreva("Digite outro valor para fechar o jogo\n")
        leia(menuOpt)
        se(menuOpt == "1") {
            jogo()
        } senao {
            escreva("Jogo finalizado!!")
        }
    }
    
    funcao jogo() {
        inteiro player1[21], player2[21]
        cadeia playerN1 = "", playerN2 = ""
        inteiro winner = 1
        inteiro switch = 1 // flag para ligar e desligar todo o looping aonde o jogo acontece
        inteiro orderPlayer1 = 0, orderPlayer2 = 0
        inteiro choice
        inteiro invalid = 1
        inteiro optPlayer
        inteiro dado1, dado2
        
        para(inteiro i = 0; i < 20; i++) {
            player1[i] = 0
            player2[i] = 0
        }
        escreva("-------------------------------------------------------------------------- \n")
        escreva("Para escolher o personagem, cada jogador jogará o dado uma vez\n")
        escreva("Jogador 1, digite 1 para rodar o dado ou outra coisa para pular: " )
        leia(choice)
        
        se(choice == 1) {
            orderPlayer1 = u.sorteia(1, 6)
            escreva("\n-------------------------------------------------------------------------- \n")
            escreva("Primeiro jogador tirou: ", orderPlayer1, "\n")
            escreva("-------------------------------------------------------------------------- \n")
            escreva("Jogador 2, digite 1 para jogar ou qualquer outra coisa para desistir: ")
            leia(choice)
            
            se(choice != 1) {
                escreva("-------------------------------------------------------------------------- \n")
                escreva("Fim de jogo por desistência do jogador 2")
                retorne
            }
            
            orderPlayer2 = u.sorteia(1, 6)
            escreva("Segundo jogador tirou: ", orderPlayer2, "\n")
            escreva("-------------------------------------------------------------------------- \n")
        }

        se(orderPlayer1 == orderPlayer2) {
            escreva("Dados iguais, jogador 1 irá começar")
            orderPlayer1 = 1
            orderPlayer2 = 2
        } senao se(orderPlayer1 > orderPlayer2) {
            enquanto(invalid == 1) {
                escreva("-------------------------------------------------------------------------- \n")
                escreva("Jogador 1 pode escolher\n")
                escreva("1 - Ifood, 2 - UberEats\n")
                escreva("Por favor escolha: ")
                leia(choice)
                se(choice == 1 ou choice == 2) {
                    se(choice == 1) {
                        playerN1 = "Ifood"
                        playerN2 = "UberEats"
                    } senao {
                        playerN1 = "UberEats"
                        playerN2 = "Ifood"
                    }
                    invalid = 0
                    escreva("-------------------------------------------------------------------------- \n")
                    escreva("Jogador 1 será ", playerN1, " e Jogador 2 será ", playerN2, "\n")
                } senao {
                    escreva("-------------------------------------------------------------------------- \n")
                    escreva("Escolha inválida, escreva novamente!\n")
                }
            }
        } senao {
            enquanto(invalid == 1) {
                escreva("-------------------------------------------------------------------------- \n")
                escreva("Jogador 2 pode escolher\n")
                escreva("1 - Ifood, 2 - UberEats\n")
                escreva("Por favor escolha: ")
                leia(choice)
                se(choice == 1 ou choice == 2) {
                    se(choice == 1) {
                        playerN2 = "Ifood"
                        playerN1 = "UberEats"
                    } senao {
                        playerN2 = "UberEats"
                        playerN1 = "Ifood"
                    }
                    invalid = 0
                    escreva("-------------------------------------------------------------------------- \n")
                    escreva("Jogador 1 será ", playerN1, " e Jogador 2 será ", playerN2, "\n")
                } senao {
                    escreva("Escolha inválida, escreva novamente!\n")
                }
            }
        }

        escreva("\n", playerN1, " ", playerN2, "\n")
        escreva("-------------------------------------------------------------------------- \n")
        escreva("O jogador 1 começará\n")
        enquanto(switch == 1) {
            // Jogador 1
            se(skipPlayer1 == 0) {
                escreva("-------------------------------------------------------------------------- \n")
                escreva("Jogador 1 - digite '1' para jogar, '2' para ver o placar ou outro valor para desistir: ")
                leia(optPlayer)
                se(optPlayer == 1) {
                    se(totaldado1 < 20) {
                        player1[totaldado1] = 0 // Zera a posição anterior
                    }
                    dado1 = u.sorteia(1, 6)
                    escreva("-------------------------------------------------------------------------- \n")
                    escreva("O jogador 1 tirou: ", dado1, "\n")
                    totaldado1 = totaldado1 + dado1
                    se(totaldado1 >= 20) {
                        totaldado1 = 20 // limita ao tamanho do array
                    }
                    totaldado1 = aplicaCondicao(totaldado1, 1) // Aplica condição especial
                    player1[totaldado1] = 1
                    se(totaldado1 >= 19) {
                        winner = 1
                        pare
                    }
                } senao se (optPlayer == 2) {
                    escreva("Placar: Jogador 1 - ", totaldado1, " | Jogador 2 - ", totaldado2, "\n")
                } senao {
                    escreva("-------------------------------------------------------------------------- \n")
                    escreva("Jogo finalizado, jogador 2 ganhou pois o jogador 1 desistiu")
                    winner = 2
                    pare
                }
            } senao {
                skipPlayer1 = 0
            }
            
            // Jogador 2
            se(skipPlayer2 == 0) {
                escreva("-------------------------------------------------------------------------- \n")
                escreva("Jogador 2 - digite '1' para jogar, '2' para ver o placar ou outro valor para desistir: ")
                leia(optPlayer)
                se(optPlayer == 1) {
                    se(totaldado2 < 20) {
                        player2[totaldado2] = 0 // Zera a posição anterior
                    }
                    dado2 = u.sorteia(1, 6)
                    escreva("-------------------------------------------------------------------------- \n")
                    escreva("O jogador 2 tirou: ", dado2, "\n")
                    totaldado2 = totaldado2 + dado2
                    se(totaldado2 >= 20) {
                        totaldado2 = 20 // limita ao tamanho do array
                    }
                    totaldado2 = aplicaCondicao(totaldado2, 2) // Aplica condição especial
                    player2[totaldado2] = 1
                    se(totaldado2 >= 19) {
                        winner = 2
                        pare
                    }
                } senao se (optPlayer == 2) {
                    escreva("Placar: Jogador 1 - ", totaldado1, " | Jogador 2 - ", totaldado2, "\n")
                } senao {
                    escreva("-------------------------------------------------------------------------- \n")
                    escreva("Jogo finalizado, jogador 1 ganhou pois o jogador 2 desistiu")
                    winner = 1
                    pare
                }
            } senao {
                skipPlayer2 = 0
            }
        }
        escreva("-------------------------------------------------------------------------- \n")
        escreva("Fim de jogo, o jogador ", winner, " ganhou")
    }
    
    funcao inteiro aplicaCondicao(inteiro posicao, inteiro jogador) {
        // Define as condições especiais
        se(posicao == 2) {
            escreva("Você caiu na casa 2! Vá para a casa 5.\n")
            retorne 5
        }
        se(posicao == 3) {
            escreva("Você caiu na casa 3! Jogue um dado adicional de 3 lados.\n")
            inteiro dadoExtra = u.sorteia(1, 3)
            posicao = posicao + dadoExtra
            escreva("Dado adicional tirou: ", dadoExtra, "\n")
        }
        se(posicao == 7) {
            escreva("Você caiu na casa 7! Você não jogará na próxima rodada.\n")
            se(jogador == 1) {
                skipPlayer1 = 1
            } senao {
                skipPlayer2 = 1
            }
        }
        se(posicao == 10) {
            escreva("Você caiu na casa 10! Os jogadores trocarão de lugar.\n")
            inteiro temp = totaldado1
            totaldado1 = totaldado2
            totaldado2 = temp
            escreva("Jogador 1 está agora na casa ", totaldado1, " e Jogador 2 está agora na casa ", totaldado2, "\n")
        }
        se(posicao == 12) {
            escreva("Você caiu na casa 12! Volte uma casa.\n")
            posicao = posicao - 1
        }
        se(posicao == 15) {
            escreva("Você caiu na casa 15! Cante um trecho de uma música ou volte 2 casas.\n")
            cadeia resposta
            escreva("Digite '1' se quiser cantar, qualquer outra coisa para voltar 2 casas: ")
            leia(resposta)
            se(resposta != "1") {
                posicao = posicao - 2
                escreva("Você escolheu não cantar. Volte 2 casas.\n")
            }
        }
        se(posicao == 19) {
            escreva("Você caiu na casa 19! Volte para a casa 1.\n")
            retorne 1
        }
        se(posicao == 20) {
            escreva("Você caiu na casa 20! Parabéns, você venceu a partida!\n")
        }
        retorne posicao
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 835; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {player1, 20, 16, 7}-{player2, 20, 29, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */