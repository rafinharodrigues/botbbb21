# botbbb21 
Primeiro Bot de votação desenvolvido para o BBB21.

# Requisitos de funcionamento

1. Sistema Operacioanal Windows
2. Deverá ter instalado o compilador da linguagem de programação AHK. Se não tiver instalado, poderá fazer o download em https://www.autohotkey.com/ 
   clicando na opção verde "Download".
3. Alguma extensão de bloqueio de anúncios (opcional)

# Utilização

1. Abra o site https://gshow.globo.com/ e entre em uma conta para fazer a votação.
2. Deixe aberto a página em que possui as 3 opções de voto.
3. Navegue até o diretório onde fez o download do Bot.
4. Arraste o programa para sua barra de tarefas do windows (fica mais fácil de executar o script).
5. Execute o script e veja a mágica acontecer.

# Observações

1. Para pausar o Bot, pressione ctrl + v .
2. Note que algumas vezes em que o script for executado, o voto não será computado. Quando isso ocorrer, basta executar o script novamente e selecionar a opção SIM.
3. O sistema da Globo reconhece se você fez muitos votos, então é normal que algumas vezes ele demore para processar os votos.
4. ESTA VERSÃO FUNCIONA APENAS PARA VOTAR NO NEGO DI .

# Report de Bug's

Mandem dúvidas de funcionamento ou reclamações de bug's para contato.hackingnaveia@gmail.com ou acompanhem os stories em @rafinha_nego .

# O PONTAPÉ INICIAL

A primeira coisa que me incentivou a desenvolver este script foi o fato de a Globo ter trocado o sistema anti-bot. No ano passado( 2020 ) o site do GShow utilizava um captcha no qual o usuário deveria escolher o objeto certo dentre as 5 opções que tinha todas as vezes que fizesse uma votação. Era muito mais seguro, pois caso alguém quisesse criar algum bot, deveria tem um banco de dados com todas as imagens possíveis de escolha do captcha e, ainda, fazer um algoritmo para reconhecê-las ( algo que não era simples, pois todas as imagens continham rabiscos para dificultar esse reconhecimento.
Eu ainda não entendi muito bem o por que, mas eles trocaram o captcha para o hCaptcha alegando que agora o sistema está muito mais seguro.
Para quem não sabe, o hCaptcha funciona da mesma maneira que o captcha do Google, porém tem uma página de escolha a mais. A primeira coisa que percebi de problema no hCaptcha quando fui fazer a votação, é que ele não solicita que a
pessoa o responda para continuar o voto todas as vezes. Então, dessa forma podemos fazer vários votos rapidamente sem precisar passar pela verificação do hCapctha.

# A LÓGICA

Após ter percebido esta "falha" no sistema anti-bot, o primeiro insight que tive foi fazer um script com reconhecimento de imagens na tela. Então tirei alguns prints das imagens de um participante e implementei a função imageseach. Então quando ativo, o script iria buscar pelas imagens e clicar com o mouse exatamente em cima do participante escolhido ( este foi feito especificamente para votar no Nego Di ), logo em seguida clicar no hCaptcha e, assim, realizar a votação.
O um dos problemas do imagesearch é que se executado em computadores diferente, a chance de reconhecimento das imagens é muito pequena, pois ele procura exatamente a imagem que foi cadastrada. Além disso, durante a execução, percebi
que o imagesearch é um pouco lento. Tirando estes problemas, o bot já estava criado e votando várias vezes sem o hCaptcha detectar.

Visando compartilhar o script com a comunidade, pensei em usar a função PixelSearch em vez da imageseach dessa vez, pois a busca é bem mais rápida. Agora em vez de buscar por imagens do participante alvo, o script agora iria buscar por pixels específicos na tela. Como ele iria buscar por pixels, pensei em pegar como referência um pixel que só o participante alvo( Nego Di ) teria, que no caso foi a cor vermelha de sua blusa. Após isso, apliquei um pequena equação para que quando o pixel fosse encontrado, em vez do mouse clicar no pixel, ele clicaria um pouco mais a esquerda, pois se ele clicasse em cima da foto do alvo, expandiria a foto e não daria sequência na votação.
Logo em seguida, apliquei outro PixelSearch para buscar um pixel específico do hCaptcha e, também apliquei uma pequena equação para fazer a mesma coisa ( clicar um pouco mais a esquerda do pixel ). Dessa forma o voto seria computado e iria para a tela de "Votar novamente". E da mesma forma, apliquei uma terceira função para reconhecer o botão de votar novamente e clicar em cima dele finalizando o ciclo.
Após tudo isso, coloquei todas estas funções em um Loop para ficar votando infinitamente, ou até aperta "ctrl + v".

# FIM

E, assim, o script ainda está funcionando. No entanto, para trocar o alvo de voto, basta trocar o hexadecimal do pixel alvo da próxima vez.


# VERSÕES

* 2.1.1
   * Agora o usuário pode votar, único e exclusivamente na participante "Karol Konka".
   * Correção de Bug's e melhorias.
   
   OBSERVAÇÕES IMPORTANTES:
   
   * O hCaptcha utilizado pela Globo está solicitando ao usuário, desta vez, mais frequentemente que o resolva. Então para a maioria não será possível votar perpetuamente, pois      depois de alguns votos feitos pelo bot, o hCaptcha é ativado. Estou tentando maneiras de conseguir passar por isso. Mais att em breve.
   
   RECOMENDAÇÃO DE USO
   
   * Antes de executar o script, recomendo que diminua o zoom do seu navegador ( de preferência o chrome ) para 75%.
   * Tenha um AdBlock instalado, o script funcionará melhor.
