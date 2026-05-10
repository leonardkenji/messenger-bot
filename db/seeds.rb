conversations_data = [
  {
    fb_sender_id: "7823419056",
    name: "Carlos Mendonça",
    status: "active",
    subject: "Interesse em SUV seminovo com financiamento",
    summary: "O cliente demonstrou forte interesse em adquirir um SUV seminovo e perguntou sobre opções de financiamento com entrada reduzida. Ele mencionou ter um carro para dar como parte do pagamento.",
    advice: "Pergunte sobre o valor estimado do carro que ele quer dar como entrada\nDestaque as condições de financiamento em até 60x com taxa reduzida\nMencione o seguro gratuito no primeiro ano como diferencial\nAgende um test drive para fortalecer o vínculo emocional com o veículo",
    messages: [
      { role: "user",      content: "Oi, vi que vocês têm SUVs seminovos. Queria saber mais sobre as opções disponíveis" },
      { role: "assistant", content: "Olá! Temos ótimas opções de SUVs seminovos. Atualmente temos Jeep Compass, Honda CR-V e Toyota RAV4 com menos de 40 mil km. Você tem alguma preferência de marca ou orçamento?" },
      { role: "user",      content: "Tenho um orçamento de até 90 mil, mas queria financiar a maior parte. Tenho um carro pra dar de entrada também" },
      { role: "assistant", content: "Perfeito! Com entrada via troca mais parcelas, conseguimos encaixar bem no seu orçamento. Me conta qual carro você tem hoje para eu já verificar a avaliação aqui." },
      { role: "user",      content: "Tenho um Hyundai HB20 2020 com 55 mil km, bem conservado" },
      { role: "assistant", content: "Ótimo! O HB20 2020 tem boa valorização. Posso encaminhar para avaliação formal, mas estimamos entre R$ 48.000 e R$ 52.000 dependendo do estado. Quer que eu separe um Compass 2022 para você visitar?" },
    ]
  },
  {
    fb_sender_id: "3341092867",
    name: "Renata Oliveira",
    status: "active",
    subject: "Dúvidas sobre garantia e revisão de veículo usado",
    summary: "O cliente comprou um veículo usado há dois meses e está com dúvidas sobre a cobertura da garantia após identificar um ruído no câmbio. Ele está preocupado com os custos de reparo.",
    advice: "Tranquilize o cliente reforçando que a garantia cobre defeitos de câmbio\nAgende uma visita técnica sem custo para diagnóstico\nOfereça carro reserva durante o período de reparo para fidelizar\nRegistre o chamado formalmente para demonstrar comprometimento",
    messages: [
      { role: "user",      content: "Bom dia, comprei um carro aí faz dois meses e tô ouvindo um barulho estranho no câmbio" },
      { role: "assistant", content: "Bom dia! Lamento pelo inconveniente. Veículos vendidos conosco possuem garantia de 6 meses para o câmbio. Pode me informar o modelo e a placa do veículo?" },
      { role: "user",      content: "É um Chevrolet Onix Plus 2021, placa QRS4J21. O barulho aparece quando tô em 3ª marcha acelerando forte" },
      { role: "assistant", content: "Entendido. Esse sintoma está coberto pela nossa garantia. Vou abrir uma ordem de serviço e nossa equipe técnica vai entrar em contato hoje para agendar a vistoria sem custo para você." },
      { role: "user",      content: "Tudo bem. E quanto tempo leva o reparo em geral?" },
      { role: "assistant", content: "Depende do diagnóstico, mas câmbio geralmente leva de 2 a 5 dias úteis. Se precisar de carro reserva durante esse período, podemos providenciar também. Temos essa cortesia disponível." },
    ]
  },
  {
    fb_sender_id: "9912874501",
    name: "Eduardo Farias",
    status: "finished",
    subject: "Compra de picape para uso rural concluída",
    summary: "O cliente buscava uma picape robusta para uso em propriedade rural e fechou negócio com a Hilux 2021 após negociação de desconto e inclusão de acessórios. A venda foi concluída com sucesso.",
    advice: "Envie mensagem de pós-venda para verificar satisfação após 30 dias\nOfereça o pacote de revisão programada com desconto exclusivo para quem já comprou\nPeça indicação para amigos e familiares como estratégia de referral",
    messages: [
      { role: "user",      content: "Preciso de uma picape boa pra trabalhar na fazenda. Uso pesado mesmo, estrada de terra, carregamento" },
      { role: "assistant", content: "Para uso rural intenso, a Toyota Hilux é nossa recomendação número um. Temos a versão 2021 SR com tração 4x4, cabine dupla e 2.8 diesel. Aguentou tudo que você precisa." },
      { role: "user",      content: "Qual o preço? E tem como colocar protetor de caçamba e estribo?" },
      { role: "assistant", content: "Está em R$ 178.000 com os documentos inclusos. O protetor de caçamba e o estribo lateral somam R$ 3.200 instalados. Se fechar hoje, consigo colocar os acessórios sem custo adicional." },
      { role: "user",      content: "Fechado! Posso ir amanhã de manhã assinar?" },
      { role: "assistant", content: "Perfeito! Te espero às 9h. Vou deixar o veículo preparado com os acessórios instalados. Bem-vindo à família Hilux!" },
    ]
  },
  {
    fb_sender_id: "5507631284",
    name: "Isabela Torres",
    status: "active",
    subject: "Comparação entre Civic e Corolla para uso diário",
    summary: "O cliente está comparando Honda Civic e Toyota Corolla para uso diário no trabalho e fins de semana. Ele valoriza conforto, consumo e custo de manutenção, ainda não tomou decisão.",
    advice: "Prepare uma tabela comparativa clara: consumo, IPVA, custo de seguro e revisão\nConvide para test drive dos dois modelos no mesmo dia para comparação direta\nDestaque o histórico de revenda do Corolla como argumento de valor a longo prazo\nSe ele hesitar, ofereça período de avaliação estendido do veículo",
    messages: [
      { role: "user",      content: "Estou em dúvida entre Civic e Corolla. Os dois são bons mas não sei qual escolher" },
      { role: "assistant", content: "Ótima dúvida! Os dois são excelentes sedans. O Civic tem uma pegada mais esportiva e tecnológica, enquanto o Corolla é sinônimo de confiabilidade e valor de revenda alto. Qual é o uso principal?" },
      { role: "user",      content: "Uso diário no trabalho, uns 40km por dia, e viagem de vez em quando" },
      { role: "assistant", content: "Para esse perfil, o Corolla Altis tem leve vantagem: consumo de 13,5 km/l na cidade vs 12,8 do Civic, e o custo de manutenção programada é cerca de 15% menor. Mas o Civic tem mais tecnologia de série." },
      { role: "user",      content: "Hmm, e o IPVA? Ouvi que Civic é mais caro" },
      { role: "assistant", content: "Correto. O Civic 2022 tem tabela FIPE mais alta, então o IPVA fica aproximadamente R$ 800 mais caro por ano. Se quiser, preparo uma planilha comparativa completa com 5 anos de custo total de propriedade." },
    ]
  },
  {
    fb_sender_id: "1198345720",
    name: "Lucas Prado",
    status: "active",
    subject: "Primeiro carro jovem com orçamento limitado",
    summary: "Cliente de 23 anos buscando o primeiro carro com orçamento de até R$ 40 mil, priorizando segurança e custo baixo de manutenção. Demonstrou interesse no Kwid e no Mobi, mas ainda não decidiu.",
    advice: "Ressalte as facilidades para jovens como seguro jovem e condições especiais de financiamento\nMostre o custo real de propriedade mensal para não assustar com o valor total\nSugira o Kwid Intense como melhor custo-benefício para primeiro carro\nOfereça uma simulação de financiamento personalizada para engajar",
    messages: [
      { role: "user",      content: "Oi, tenho 23 anos e quero comprar meu primeiro carro. Tenho uns 40 mil no máximo" },
      { role: "assistant", content: "Que momento especial! Com R$ 40 mil você tem boas opções zero km. Pensa em usar para ir ao trabalho, faculdade? E prefere automático ou manual?" },
      { role: "user",      content: "Trabalho principalmente. Não sei dirigir muito bem ainda então preferia automático se possível" },
      { role: "assistant", content: "Automático é a escolha certa para aprendizado! Nessa faixa com automático, temos o Renault Kwid Intense CVT por R$ 38.990 e o Fiat Mobi Like automático por R$ 39.500. Os dois têm manutenção barata." },
      { role: "user",      content: "Qual é mais seguro? Tenho um pouco de medo de acidente sendo iniciante" },
      { role: "assistant", content: "O Kwid Intense tem airbag duplo de série e freios ABS, que é fundamental para iniciantes. Já o Mobi também tem ABS mas airbag duplo é opcional. Para segurança, eu indicaria o Kwid. Quer simular o financiamento?" },
    ]
  },
  {
    fb_sender_id: "6674523901",
    name: "Mariana Vasconcelos",
    status: "finished",
    subject: "Troca de veículo por modelo elétrico cancelada",
    summary: "O cliente mostrou interesse em migrar para um carro elétrico, mas após avaliar o custo e a infraestrutura de recarga na sua região, desistiu da compra e optou por permanecer com o veículo atual.",
    advice: "Mantenha contato para quando a infraestrutura de recarga melhorar na região dele\nEnvie conteúdo educativo sobre elétricos a cada 3 meses para manter o interesse\nSugira um híbrido leve como transição menos radical",
    messages: [
      { role: "user",      content: "Tenho interesse em carros elétricos. Moro em cidade pequena no interior, vocês têm algum?" },
      { role: "assistant", content: "Temos o BYD Dolphin e o GWM Ora 03 em estoque! Mas quero ser honesto: em cidades menores, a infraestrutura de recarga ainda é limitada. Tem tomadas públicas ou possibilidade de instalação em casa?" },
      { role: "user",      content: "Não tenho garagem própria, moro em apartamento alugado. Achei que existia recarga rápida em postos" },
      { role: "assistant", content: "Entendo. Sem garagem, a recarga no dia a dia fica complicada. As redes de recarga rápida ainda são esparsas no interior. Em São Paulo seria mais viável, mas para sua situação atual pode ser frustrante." },
      { role: "user",      content: "Então acho que não vale a pena por enquanto. Vou esperar melhorar. Obrigado pela honestidade" },
      { role: "assistant", content: "Claro, fico à disposição! Você fez a escolha certa para o momento. Quando a infraestrutura chegar na sua região, pode contar comigo. Vou te adicionar à lista de interessados para te avisar das novidades." },
    ]
  },
  {
    fb_sender_id: "2283764510",
    name: "Rafael Drummond",
    status: "active",
    subject: "Negociação de desconto em Jeep Renegade novo",
    summary: "O cliente está em fase final de negociação para comprar um Jeep Renegade 0km e busca desconto adicional ou benefícios extras. Ele já visitou a concessionária e está comparando com proposta de outro vendedor.",
    advice: "Não reduza mais o preço base — ofereça benefícios agregados como revisões inclusas ou garantia estendida\nCrie urgência mencionando que o emplacamento do mês fecha em 3 dias\nDestaque o atendimento pós-venda como diferencial em relação ao concorrente\nPergunte diretamente: o que falta para fecharmos hoje?",
    messages: [
      { role: "user",      content: "Oi, visitei a loja semana passada para ver o Renegade. Gostei muito mas o preço ficou pesado" },
      { role: "assistant", content: "Olá! Fico feliz que tenha gostado. O Renegade Longitude 2024 com câmbio automático está em R$ 149.900. Qual valor você tinha em mente?" },
      { role: "user",      content: "Recebi proposta de R$ 145.000 em outra concessionária pelo mesmo modelo" },
      { role: "assistant", content: "Vejo que você fez a lição de casa! Posso chegar em R$ 146.500 mais 3 revisões programadas incluídas, o que dá uma economia de cerca de R$ 2.400 ao longo do tempo. Fica melhor que a concorrência no total." },
      { role: "user",      content: "Hm, as revisões inclusas são interessantes. Mas ainda queria um desconto maior no valor mesmo" },
      { role: "assistant", content: "Entendo, mas já estou no limite do que consigo autorizar. Posso adicionar o tapete personalizado e a película 3M no pacote, valor de R$ 1.800. E o emplacamento deste mês garante a isenção do IPVA proporcional. Quer que eu calcule a economia total?" },
    ]
  },
  {
    fb_sender_id: "8890127634",
    name: "Fernanda e Paulo Souza",
    status: "active",
    subject: "Interesse em minivan para família numerosa",
    summary: "Casal com 4 filhos busca uma minivan ou SUV de 7 lugares com bom espaço de porta-malas. Deram prioridade ao conforto dos filhos e à segurança, mas o orçamento é apertado para o segmento.",
    advice: "Apresente o Spin como opção de entrada com 7 lugares mais acessível\nCalcule o custo por assento para mostrar o valor real da minivan vs SUV\nMencione o ISOFIX e airbags laterais como argumentos de segurança infantil\nOfereça test drive familiar no fim de semana para todos avaliarem o espaço",
    messages: [
      { role: "user",      content: "Preciso de um carro maior, somos em 6 pessoas, 4 filhos. O carro atual não tá comportando mais" },
      { role: "assistant", content: "Família grande merece um carro à altura! Para 6 pessoas com conforto, temos boas opções de 7 lugares. Qual é a faixa de orçamento e vocês preferem bancos de couro ou tecido para os pequenos?" },
      { role: "user",      content: "Orçamento até uns 110 mil. Tecido é melhor mesmo, com criança estraga demais o couro" },
      { role: "assistant", content: "Boa escolha! Com até R$ 110 mil temos o Chevrolet Spin LTZ 2023 com 7 lugares em R$ 98.900 e o Citroën C4 SpaceTourer em R$ 107.500. Os dois têm ISOFIX nas 3 posições do banco traseiro." },
      { role: "user",      content: "Como é o porta-malas com os 7 lugares ocupados? Preciso carregar carrinho de bebê e mochila de 4 criança" },
      { role: "assistant", content: "O Spin com os 7 lugares ocupados tem 135 litros no porta-malas, o que é justo para o dia a dia mas apertado em viagem longa. O SpaceTourer tem 521 litros com a terceira fileira rebatida — muito superior. Se couber no orçamento, vale o investimento." },
    ]
  },
  {
    fb_sender_id: "4456218903",
    name: "Henrique Castelo",
    status: "finished",
    subject: "Venda de esportivo para colecionador concluída",
    summary: "Cliente colecionador adquiriu um Ford Mustang GT 2019 seminovo após avaliar o histórico do veículo e solicitar laudo mecânico independente. A negociação foi longa mas terminou com sucesso.",
    advice: "Envie fotos do veículo já na garagem dele para fortalecer a relação pós-venda\nConvide para eventos de colecionadores que a concessionária patrocina\nPergunte se ele tem outros carros que podem ser trocados futuramente",
    messages: [
      { role: "user",      content: "Bom dia. Vi o Mustang GT 2019 no site. Tenho alguns carros na coleção e quero saber a procedência antes de tudo" },
      { role: "assistant", content: "Bom dia! Ótima postura para um colecionador. O Mustang GT 2019 V8 5.0 tem procedência totalmente documentada: único dono, sem sinistro registrado e revisões feitas na rede Ford. Posso enviar o laudo completo." },
      { role: "user",      content: "Prefiro fazer um laudo independente. Posso levar para meu mecânico de confiança antes de fechar?" },
      { role: "assistant", content: "Com certeza! Isso é o que qualquer comprador experiente deve fazer. Agendamos a visita com a condição de que o veículo sai da loja somente com acompanhante nosso. Qual dia seria melhor?" },
      { role: "user",      content: "Meu mecânico aprovou tudo. Vamos fechar. O valor de R$ 195.000 é o final?" },
      { role: "assistant", content: "Para quem fez a verificação com tanta seriedade, consigo chegar em R$ 192.000 com transferência à vista. Incluo a primeira revisão aqui conosco também. Bem-vindo ao clube dos clientes especiais!" },
    ]
  },
  {
    fb_sender_id: "7703456129",
    name: "Thiago Nogueira",
    status: "active",
    subject: "Avaliação de carro para venda e busca de upgrade",
    summary: "O cliente quer vender o carro atual e usar o valor para dar entrada em um modelo superior. Está aguardando a avaliação formal do veículo e comparando com o valor de anúncios online.",
    advice: "Agilize a avaliação para não dar tempo do cliente fechar com outra loja\nExplique a diferença entre valor de tabela FIPE e valor real de mercado com transparência\nOfeça compra garantida do veículo atual mesmo que ele não compre o novo\nMostre simulações de financiamento já com o valor da avaliação como entrada",
    messages: [
      { role: "user",      content: "Quero vender meu carro e comprar um novo. Quanto vocês pagam no meu Volkswagen Polo 2021?" },
      { role: "assistant", content: "O Polo 2021 está com boa demanda! Para uma avaliação precisa preciso saber: qual versão (MPI ou TSI), quilometragem e se tem algum dano ou reparo recente?" },
      { role: "user",      content: "É o Polo TSI 200 automático, 38 mil km, nunca bati. Só troquei o pneu traseiro direito mês passado" },
      { role: "assistant", content: "Ótimo estado! Troca de pneu não afeta a avaliação. A tabela FIPE está em R$ 82.400, mas compramos entre R$ 78.000 e R$ 80.000 dependendo da inspeção visual. Você já tem em mente qual seria o próximo carro?" },
      { role: "user",      content: "Tava olhando o Tiguan ou o T-Cross. Vi Tiguan por 89 mil online mas não sei se o anúncio é real" },
      { role: "assistant", content: "Infelizmente muitos anúncios online têm preços de isca. O Tiguan 2021 aqui está em R$ 97.900, mas com seu Polo na troca ficaria em R$ 18.000 a R$ 20.000 para complementar. Quer que eu faça uma simulação de financiamento dos R$ 18k em 48x?" },
    ]
  }
]

conversations_data.each do |data|
  customer = Customer.find_or_create_by!(fb_sender_id: data[:fb_sender_id])
  customer.update!(name: data[:name]) if data[:name]

  conversation = Conversation.create!(
    customer: customer,
    status:   data[:status],
    subject:  data[:subject],
    summary:  data[:summary],
    advice:   data[:advice]
  )

  base_time = rand(1..30).days.ago
  data[:messages].each_with_index do |msg, i|
    conversation.messages.create!(
      role:       msg[:role],
      content:    msg[:content],
      created_at: base_time + (i * rand(2..8).minutes),
      updated_at: base_time + (i * rand(2..8).minutes)
    )
  end

  conversation.update!(updated_at: conversation.messages.maximum(:created_at))
end

puts "#{Conversation.count} conversas criadas com #{Message.count} mensagens no total."
