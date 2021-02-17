Map<String,String> symbolsMap = {
  "3 R Petroleum" : "RRRP3",
  "Aco Altona" : "EALT3",
  "Advanced Dh" : "ADHM3",
  "Aeris" : "AERI3",
  "Aes Tiete E" : "TIET11",
  "Afluente T" : "AFLT3",
  "Alfa Consorc" : "BRGE11",
  "Alfa Financ" : "CRIV3",
  "Alfa Holding" : "RPAD3",
  "Alfa Invest" : "BRIV3",
  "Alianscsonae" : "ALSO3",
  "Alianza Trust Renda Imobiliaria Fundo Investimento Imobiliario" : "ALZR11",
  "Alliar" : "AALR3",
  "Alpargatas" : "ALPA3",
  "Alper S.A." : "APER3",
  "Alupar" : "ALUP11",
  "Amazonia" : "BAZA3",
  "Ambev S.A." : "ABEV3",
  "Ambipar" : "AMBP3",
  "Ampla Energ" : "CBEE3",
  "Anima" : "ANIM3",
  "Arezzo Indústria e Comércio S.A." : "ARZZ3",
  // AtmaSA : ATMP3
  // Atompar : ATOM3
  // Aura 360 : AURA33
  // Azevedo : AZEV3
  // Azevedo : AZEV4
  // Azul S.A. : AZUL4
  // B2W : Companhia Digital : BTOW3
  // B3 S.A. : Brasil, Bolsa, Balcão : B3SA3
  // Bahema : BAHI3
  // Banco Bmg : BMGB4
  // Banco Bradesco S.A. : BBDC3
  // Banco Bradesco S.A. : BBDC4
  // Banco do Brasil S.A. : BBAS3
  // Banco do Estado do Rio Grande do Sul S.A. : BRSR6
  // Banco Inter : BIDI11
  // Banco Inter S.A. : BIDI4
  // Banco Inter S.A. : BIDI3
  // Banco Pan : BPAN4
  // Banco Santander (Brasil) S.A. : SANB3
  // Banco Santander (Brasil) S.A. : SANB11
  // Banese : BGIP3
  // Banese : BGIP4
  // Banestes : BEES3
  // Banestes : BEES4
  // Banpara : BPAR3
  // Banrisul : BRSR3
  // Banrisul : BRSR5
  // Bardella : BDLL3
  // Bardella : BDLL4
  // Battistella : BTTL3
  // Baumer : BALM3
  // Baumer : BALM4
  // BB Progressivo II Fundo de Investimento Imobiliario : FII : BBPO11
  // BB Seguridade Participações S.A. : BBSE3
  // Bic Monark : BMKS3
  // Biomm : BIOM3
  // Biosev : BSEV3
  // Bk Brasil : BKBR3
  // Boa Vista : BOAS3
  // Bombril : BOBR3
  // Bombril : BOBR4
  // Br Brokers : BBRK3
  // BR Malls Participações S.A. : BRML3
  // Br Propert : BRPR3
  // Bradespar S.A. : BRAP4
  // Bradespar S.A. : BRAP3
  // Brasilagro : AGRO3
  // Braskem : BRKM6
  // Braskem S.A. : BRKM5
  // Braskem S.A. : BRKM3
  // Brb Banco : BSLI3
  // Brb Banco : BSLI4
  // BRF S.A. : BRFS3
  // Btgp Banco : BPAC11
  // Btgp Banco : BPAC3
  // Btgp Banco : BPAC5
  // Cambuci : CAMB3
  // Camil Alimentos S.A. : CAML3
  // Carrefour Br : CRFB3
  // CaSAn : CASN
  // CaSAn : CASN3
  // CaSAn : CASN4
  // CCR S.A. : CCRO3
  // Cea Modas : CEAB3
  // Ceb : CEBR3
  // Ceb : CEBR5
  // Ceb : CEBR6
  // Cedro : CEDO3
  // Cedro : CEDO4
  // Ceee D : CEED3
  // Ceee D : CEED4
  // Ceee Gt : EEEL3
  // Ceee Gt : EEEL4
  // Ceg : CEGR3
  // Celesc : CLSC3
  // Celesc : CLSC4
  // Celgpar : GPAR3
  // Celpe : CEPE3
  // Celpe : CEPE5
  // Celpe : CEPE6
  // Cemepe : MAPT3
  // Cemepe : MAPT4
  // Centauro : CNTO3
  // Centrais Elétricas Brasileiras S.A. : Eletrobras : ELET3
  // Centrais Elétricas Brasileiras S.A. : Eletrobras : ELET6
  // Cesp : CESP3
  // Cesp : CESP5
  // Cesp : CESP6
  // Cia. Hering : HGTX3
  // Cielo S.A. : CIEL3
  // Coelba : CEEB3
  // Coelba : CEEB5
  // Coelce : COCE3
  // Coelce : COCE5
  // Cogna Educação S.A. : COGN3
  // Comgas : CGAS3
  // Comgas : CGAS5
  // Companhia de Locação das Américas : LCAM3
  // Companhia de Saneamento Básico do Estado de São Paulo : SABESP : SBSP3
  // Companhia Energética de Minas Gerais : CMIG3
  // Companhia Energética de Minas Gerais : CMIG4
  // Companhia Paranaense de Energia : COPEL : CPLE6
  // Companhia Paranaense de Energia : COPEL : CPLE3
  // Companhia Siderúrgica Nacional : CSNA3
  // Const A Lind : CALI3
  // Const A Lind : CALI4
  // CopaSA : CSMG3
  // Copel : CPLE5
  // Cor Ribeiro : CORR4
  // CoSAn Log : RLOG3
  // Cosan S.A. : CSAN3
  // Cosern : CSRN3
  // Cosern : CSRN5
  // Cosern : CSRN6
  // Coteminas : CTNM3
  // Coteminas : CTNM4
  // CPFL Energia S.A. : CPFE3
  // Cr2 : CRDE3
  // Cristal : CRPG3
  // Cristal : CRPG5
  // Cristal : CRPG6
  // CSHG Logistica : Fundo De Investimento Imobiliario : HGLG11
  // Csu Cardsyst : CARD3
  // Cury S/A : CURY3
  // CVC Brasil Operadora e Agência de Viagens S.A. : CVCB3
  // Cyre Com Ccp : CCPR3
  // Cyrela Brazil Realty S.A. Empreendimentos e Participações : CYRE3
  // D1000 Vfarma : DMVF3
  // DaSA : DASA3
  // Dimed : PNVL3
  // Dimed : PNVL4
  // Direcional : DIRR3
  // Dohler : DOHL3
  // Dohler : DOHL4
  // Dommo : DMMO3
  // Dtcom Direct : DTCY3
  // Duratex : DTEX3
  // EcoRodovias Infraestrutura e Logística S.A. : ECOR3
  // EDP : Energias do Brasil S.A. : ENBR3
  // Elektro : EKTR3
  // Elektro : EKTR4
  // Eletrobras : ELET5
  // Eletropar : LIPR3
  // Emae : EMAE3
  // Emae : EMAE4
  // Embraer S.A. : EMBR3
  // Enauta Part : ENAT3
  // Encorpar : ECPR3
  // Encorpar : ECPR4
  // EnergiSA : ENGI
  // EnergiSA : ENGI11
  // EnergiSA : ENGI3
  // EnergiSA : ENGI4
  // EnergiSA Mt : ENMT3
  // EnergiSA Mt : ENMT4
  // Eneva : ENEV3
  // Engie Brasil Energia S.A. : EGIE3
  // Enjoei : ENJU3
  // Eqtl Para : EQPA3
  // Eqtl Para : EQPA5
  // Eqtl Para : EQPA6
  // Eqtl Para : EQPA7
  // Equatorial Energia S.A. : EQTL3
  // Estácio Participações S.A. : YDUQ3
  // Estapar : ALPK3
  // Estrela : ESTR3
  // Estrela : ESTR4
  // Eternit : ETER3
  // Eucatex : EUCA3
  // Eucatex : EUCA4
  // Even : EVEN3
  // Excelsior : BAUH4
  // Eztec : EZTC3
  // FD Invest Imob Hotel Maxinvest : HTMX11
  // Fer Heringer : FHER3
  // FerbaSA : FESA3
  // FerbaSA : FESA4
  // Fleury S.A. : FLRY3
  // Fras Le : FRAS3
  // Fundo de Investimento Imobiliario : FII Brasil Plural Absoluto Fundo de Fundos : BPFF11
  // Fundo Investimento Imobiliario Rbr Properties Fii : RBRP11
  // GafiSA : GFSA3
  // Generalshopp : GSHP3
  // Ger Paranap : GEPA3
  // Ger Paranap : GEPA4
  // Gerdau Met : GOAU3
  // Gerdau S.A. : GGBR3
  // Gerdau S.A. : GGBR4
  // Gol Linhas Aéreas Inteligentes S.A. : GOLL4
  // Gp Invest : GPIV33
  // GPA Companhia Brasileira de Distribuição : PCAR3
  // Gpc Part : GPCP3
  // Grazziotin : CGRA3
  // Grazziotin : CGRA4
  // Grendene S.A. : GRND3
  // Grupo Mateus S.A. : GMAT3
  // Grupo Soma : SOMA3
  // Guararapes : GUAR3
  // Habitasul : HBTS5
  // Haga S/A : HAGA3
  // Haga S/A : HAGA4
  // Hapvida : HAPV3
  // HEDGE Brasil Shopping Fundo de Investimento Imobiliario : HGBS11
  // Helbor Empreendimentos S.A. : HBOR3
  // Hercules : HETA3
  // Hercules : HETA4
  // Hidrovias : HBSA3
  // Hoteis Othon : HOOT4
  // Hypera S.A. : HYPE3
  // Igb S/A : IGBR3
  // Iguatemi Empresa de Shopping Centers S.A. : IGTA3
  // Ihpardini : PARD3
  // Inds Romi : ROMI3
  // Indusval : IDVL3
  // Indusval : IDVL4
  // Inepar : INEP3
  // Inepar : INEP4
  // Intermedica : GNDI3
  // International Meal Company Alimentacao S.A. : MEAL3
  // Iochpe:Maxion S.A. : MYPK3
  // Irani : RANI3
  // Irani : RANI4
  // IRB:Brasil Resseguros S.A. : IRBR3
  // iShares Ibovespa Fundo de Índice ETF : BOVA11
  // iShares S&P 500 Fundo de Investimento : Investimento No Exterior : IVVB11
  // Itaú Unibanco Holding S.A. : ITUB4
  // Itaú Unibanco Holding S.A. : ITUB3
  // Itaúsa : Investimentos Itaú S.A. : ITSA4
  // Itausa : Investimentos Itau S.A. : ITSA3
  // J B Duarte : JBDU3
  // J B Duarte : JBDU4
  // JBS S.A. : JBSS3
  // JereisSAti : JPSA3
  // JHSF Participacoes S.A. : JHSF3
  // Joao Fortes : JFEN3
  // JoSApar : JOPA3
  // JoSApar : JOPA4
  // Karsten : CTKA3
  // Karsten : CTKA4
  // Kepler Weber : KEPL3
  // Klabin S/A : KLBN3
  // Klabin S/A : KLBN4
  // KLABIN S/A UNT N2 : KLBN11
  // Lavvi : LAVV3
  // Le Lis Blanc : LLIS3
  // Light S/A : LIGT3
  // Linx : LINX3
  // Localiza Rent a Car S.A. : RENT3
  // Locaweb : LWSA3
  // Log Com Prop : LOGG3
  // Log In : LOGN3
  // Lojas Americ : LAME3
  // Lojas Americanas S.A. : LAME4
  // Lojas MariSA : AMAR3
  // Lojas Renner S.A. : LREN3
  // Lopes Brasil : LPSB3
  // Lupatech : LUPA3
  // M. Dias Branco S.A. Indústria e Comércio de Alimentos : MDIA3
  // Magazine Luiza S.A. : MGLU3
  // Mangels Indl : MGEL4
  // Marcopolo : POMO3
  // Marcopolo : POMO4
  // Marfrig Global Foods S.A. : MRFG3
  // Maxi Renda Fundo De Investimento Imobiliaro : FII : MXRF11
  // Melhor Sp : MSPA3
  // Melhor Sp : MSPA4
  // Meliuz : CASH3
  // Melnick : MELK3
  // Merc Brasil : BMEB3
  // Merc Brasil : BMEB4
  // Merc Financ : MERC3
  // Merc Financ : MERC4
  // Merc Invest : BMIN3
  // Merc Invest : BMIN4
  // Merito Desenvolvimento Imobiliario I FII : Fundo de Investimento Imobiliario : MFII11
  // Metal Iguacu : MTIG4
  // Metal Leve : LEVE3
  // Metalfrio : FRIO3
  // Metalurgica Gerdau S.A. : GOAU4
  // MetiSA : MTSA3
  // MetiSA : MTSA4
  // Mills Estruturas e Servicos de Engenharia S.A. : MILS3
  // Minerva : BEEF
  // Minerva : BEEF3
  // Minupar : MNPR3
  // Mitre Realty : MTRE3
  // Mmx Miner : MMXM11
  // Mmx Miner : MMXM3
  // Mont Aranha : MOAR3
  // Moura Dubeux : MDNE3
  // Movida Participacoes S.A. : MOVI3
  // MRV Engenharia e Participações S.A. : MRVE3
  // Multiplan Empreendimentos Imobiliários S.A. : MULT3
  // Mundial : MNDL3
  // Natura &Co Holding S.A. : NTCO3
  // Natura Cosméticos S.A. : NATU3
  // Neoenergia : NEOE3
  // Neogrid : NGRD3
  // Nord Brasil : BNBR3
  // Nordon Met : NORD3
  // Nutriplant : NUTR3
  // Odontoprev : ODPV3
  // Oi : OIBR4
  // Oi S.A. : OIBR3
  // Omega Ger : OMGE3
  // Osx Brasil : OSXB3
  // Ourofino S/A : OFSA3
  // Padtec : PDTC3
  // Pague Menos : PGMN3
  // Panatlantica : PATI3
  // Panatlantica : PATI4
  // Par Al Bahia : PEAB3
  // Par Al Bahia : PEAB4
  // Paranapanema : PMAM3
  // Pdg Realt : PDGR3
  // Pet Center Comércio e Participações S.A. : PETZ3
  // Pet Manguinh : RPMG3
  // Petrobras Distribuidora S.A. : BRDT3
  // Petróleo Brasileiro S.A. : Petrobras : PETR4
  // Petróleo Brasileiro S.A. : Petrobras : PETR3
  // Petrorio : PRIO3
  // Pettenati : PTNT3
  // Pettenati : PTNT4
  // Pine : PINE4
  // Planoeplano : PLPL3
  // Plascar Part : PLAS3
  // Pomifrutas : FRTA3
  // Porto Seguro S.A. : PSSA3
  // Porto Vm : PSVM11
  // Portobello : PTBL3
  // Positivo Tec : POSI3
  // Ppla : PPLA11
  // Priner : PRNR3
  // Profarma : PFRM3
  // Qualicorp Consultoria e Corretora de Seguros S.A. : QUAL3
  // Quero Quero : LJQQ3
  // Raia Drogasil S.A. : RADL3
  // Randon Part : RAPT3
  // Randon Part : RAPT4
  // Recrusul : RCSL3
  // Recrusul : RCSL4
  // Rede D Or : RDOR3
  // Rede Energia : REDE3
  // Renova : RNEW11
  // Renova : RNEW3
  // Renova : RNEW4
  // Riosulense : RSUL4
  // Rni : RDNI3
  // Rossi Resid : RSID3
  // Rumo S.A. : RAIL3
  // Sanepar : SAPR11
  // Sanepar : SAPR3
  // Sanepar : SAPR4
  // Sansuy : SNSY3
  // Sansuy : SNSY5
  // Sansuy : SNSY6
  // Santander Br : SANB4
  // Santanense : CTSA3
  // Santanense : CTSA4
  // Santos Brp : STBP3
  // Sao Carlos : SCAR3
  // Sao Martinho : SMTO3
  // Saraiva Livr : SLED3
  // Saraiva Livr : SLED4
  // Schulz : SHUL4
  // Seg Al Bahia : CSAB3
  // Seg Al Bahia : CSAB4
  // Sequoia Log : SEQL3
  // Ser Educa : SEER3
  // Simpar : SIMH3
  // Sinqia S.A. : SQIA3
  // Slc Agricola : SLCE3
  // Smiles Fidelidade S.A. : SMLS3
  // Sondotecnica : SOND3
  // Sondotecnica : SOND5
  // Sondotecnica : SOND6
  // Springs : SGPS3
  // Spturis : AHEB3
  // Spturis : AHEB5
  // Spturis : AHEB6
  // Sul America : SULA11
  // Sul America : SULA3
  // Sul America : SULA4
  // Suzano S.A. : SUZB3
  // TaeSA : TAEE3
  // TaeSA : TAEE4
  // Taurus Armas : TASA3
  // Taurus Armas S.A. : TASA4
  // Technos : TECN3
  // Tecnisa S.A. : TCSA3
  // Tecnosolo : TCNO3
  // Tecnosolo : TCNO4
  // Tegma : TGMA3
  // Teka : TEKA3
  // Teka : TEKA4
  // Tekno : TKNO4
  // Telebras : TELB3
  // Telebras : TELB4
  // Telef Brasil : VIVT3
  // Telefônica Brasil S.A. : VIVT4
  // Tenda : TEND3
  // Terra Santa : TESA3
  // Tex Renaux : TXRX3
  // TIM S.A. : TIMS3
  // Time For Fun : SHOW3
  // TOTVS S.A. : TOTS3
  // Track Field : TFCO4
  // Tran Paulist : TRPL3
  // Tran Paulist : TRPL4
  // Transmissora Aliança de Energia Elétrica S.A. : TAEE11
  // TreviSA : LUXM4
  // Trisul : TRIS3
  // Triunfo Part : TPIS3
  // Tupy : TUPY3
  // Ultrapar Participações S.A. : UGPA3
  // UnicaSA : UCAS3
  // Unipar : UNIP3
  // Unipar : UNIP5
  // Unipar : UNIP6
  // Usiminas : USIM3
  // Usiminas : USIM6
  // Usinas Siderúrgicas de Minas Gerais S.A. : USIM5
  // Vale S.A. : VALE3
  // Valid Solucoes S.A. : VLID3
  // Via Varejo S.A. : VVAR3
  // Vinci Logistica Fundo Investimento Imobiliario FII : VILG11
  // Vivara Participacoes S.A. : VIVA3
  // Viver : VIVR3
  // Vulcabras : VULC3
  // WEG S.A. : WEGE3
  // Wetzel S/A : MWET3
  // Wetzel S/A : MWET4
  // Whirlpool : WHRL3
  // Whirlpool : WHRL4
  // Wilson Sons : WSON33
  // Wiz Solucoes e Corretagem de Seguros S.A. : WIZS3
  // Wlm Ind Com : WLMM3
  // Wlm Ind Com : WLMM4
};