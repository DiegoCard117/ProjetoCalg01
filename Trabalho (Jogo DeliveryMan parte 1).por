programa
{
	inclua biblioteca Util-->u
	funcao inicio()
	{
		inteiro v[21], v2[21], jogador1=0, jogador2=0, vencedor, menu, i, placar, maior, menor, dado, casa, personagem=0, rodar, p
		cadeia Ifood= "Ifood", UberEats= "UberEats"
		escreva ("Seja bem vindo ao DeliveryMan!")
		escreva ("\nDigite 1 para jogar, 2 para verificar o placar ou qualquer outro valor para finalizar o jogo: ")
		leia (menu)
		se (menu==1){
		enquanto (personagem==0){
			escreva ("\nPara escolher o personagem, cada jogador jogará o dado 1 vez. O jogador que obter o maior número poderá escolher seu personagem. Boa sorte!")
			
			escreva ("\nJogador 1. Pressione 1 para rodar o dado ou qualquer outro valor para passar a vez.")
			leia (rodar)
			se (rodar==1){
				jogador1= u.sorteia(1, 6)
				escreva ("\nSeu resultador foi: ", jogador1)
				}senao{
					escreva ("Jogador 2, pressione 1 para escolher Ifood, 2 para escolher UberX ou qualquer outro valor para escolha aleatória")
					leia (p)
					personagem++
			}se (personagem==0){
			escreva ("\nJogador 2. Pressione 1 para rodar o dado ou qualquer outro valor para deixar o Jogador 1 escolher.")
			leia (rodar)}
				se (rodar==1){
				jogador2= u.sorteia(1, 6)
				escreva ("\nSeu resultado foi: ", jogador2)
					}se (rodar!=1 e personagem==0){
						escreva ("\nJogador 1, pressione 1 para escolher Ifood, 2 para escolher UberEats ou qualquer outro valor para escolha aleatória")
						leia (p)
						personagem++
						
			}se (jogador1>jogador2 e personagem==0) {
				escreva ("\nO maior resultado foi do jogador 1, portando ele poderá realizar a escolha do personagem. Jogador 1, pressione 1 para escolher o personagem Ifood, 2 para escolher Uberx ou outro valor para que a escolha seja aletória.")
				leia (p)
				personagem++
					
			}se (jogador2>jogador1 e personagem==0){
				escreva ("\nO maior resultado foi do jogador 2, portando ele poderá realizar a escolha do personagem. Jogador 2, pressione 1 para escolher o personagem Ifood, 2 para escolher Uberx ou outro valor para que a escolha seja aletória.")
				leia (p)
				personagem++
					
			}se (jogador1==jogador2 e personagem==0){
				escreva ("\nEmpate! Vamos jogar os dados novamente")	
			}
		}
		//Jogadores recebem posição1
		jogador1=1
		jogador2=1
		}
		para (i=0; i<21; i++){
				v[i]= 0
				v2[i]= 0
			}
		v[1]= jogador1
		v2[1]= jogador2
		se (menu==2){
			escreva ("\nVerificar placar")
		}senao{
			escreva ("\nJogo finalizado com sucesso")
			}
		}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1777; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */