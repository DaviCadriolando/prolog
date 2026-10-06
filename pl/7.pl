% --- FATOS (Estado atual dos equipamentos/rede) ---
status(roteador, ligado). % ligado ou desligado
status(wifi, conectado). % conectado ou desconectado
status(internet, fora). % ok ou fora

% --- REGRAS DO SISTEMA ESPECIALISTA ---

% Regra 1: Roteador desligado
diagnostico('Verificar o roteador') :- 
    status(roteador, desligado).

% Regra 2: Roteador ligado, mas sem Wi-Fi
diagnostico('Verificar a conexao Wi-Fi') :- 
    status(roteador, ligado), 
    status(wifi, desconectado).

% Regra 3: Roteador e Wi-Fi ok, mas sem sinal de internet
diagnostico('Verificar o provedor de Internet') :- 
    status(roteador, ligado), 
    status(wifi, conectado), 
    status(internet, fora).

% Regra 4: Todos os componentes a funcionar
diagnostico('Conexao funcionando normalmente') :- 
    status(roteador, ligado), 
    status(wifi, conectado), 
    status(internet, ok).