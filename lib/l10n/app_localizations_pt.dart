// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get test => 'Sou o ficheiro em português';

  @override
  String get navHome => 'Início';

  @override
  String get navAbout => 'Sobre';

  @override
  String get navRecipes => 'Receitas';

  @override
  String get homeHeroTitle => 'Refeições saudáveis, sem complicação';

  @override
  String get homeHeroDescription =>
      'Descobre as nossas receitas rápidas e naturais que podes cozinhar hoje, sem processados e sem stress.';

  @override
  String get homeStartExploring => 'Explorar';

  @override
  String get homeBenefitsTitle => 'O que vais encontrar';

  @override
  String get homeFeatureWholeFoodTitle => 'Receitas naturais';

  @override
  String get homeFeatureWholeFoodDescription =>
      'Cada prato usa ingredientes do dia a dia e pouco processados.';

  @override
  String get homeFeatureMinimumFussTitle => 'Mínimo esforço';

  @override
  String get homeFeatureMinimumFussDescription =>
      'Todas as receitas foram pensadas para comer bem de forma rápida e simples.';

  @override
  String get homeFeatureSearchTitle => 'Pesquisa em segundos';

  @override
  String get homeFeatureSearchDescription =>
      'Filtra por nome ou tempo de preparação e encontra logo a receita certa.';

  @override
  String get homeBuiltForLifeTitle => 'Feito para a vida real';

  @override
  String get homeBuiltForLifeParagraph1 =>
      'Cozinhar não deve ser complicado. Estas receitas são simples, adaptadas a agendas cheias e saborosas para repetir.';

  @override
  String get homeBuiltForLifeParagraph2 =>
      'Se estás a começar na cozinha ou procuras novas ideias, estamos aqui para ajudar.';

  @override
  String get homeFeatureIconSemanticsLabel => 'Logotipo Dart';

  @override
  String get recipesPageTitle => 'Explora as nossas receitas';

  @override
  String get recipesPageDescription =>
      'Descobre pratos rápidos e deliciosos. Usa a barra de pesquisa para encontrar receitas por nome, tempo de preparação ou de confeção.';

  @override
  String get recipesFilterAny => 'Qualquer';

  @override
  String get recipesFilter15Mins => '15 min';

  @override
  String get recipesFilter30Mins => '30 min';

  @override
  String get recipesFilter45Mins => '45 min';

  @override
  String get recipesFilter60Mins => '60 min';

  @override
  String get recipesFilterMaxPreparation => 'Tempo máximo de preparação';

  @override
  String get recipesFilterMaxCooking => 'Tempo máximo de confeção';

  @override
  String get recipesSearchHint => 'Pesquisar por nome...';

  @override
  String recipeCardPortions(Object count) {
    return 'Doses: $count';
  }

  @override
  String recipeCardPreparation(Object minutes) {
    return 'Preparação: $minutes min';
  }

  @override
  String recipeCardCooking(Object minutes) {
    return 'Cozedura: $minutes min';
  }

  @override
  String get recipeCardViewRecipe => 'Ver receita';

  @override
  String get recipeDetailIngredients => 'Ingredientes';

  @override
  String get recipeDetailPreparation => 'Preparação';

  @override
  String recipeDetailPortions(Object count) {
    return 'Doses: $count';
  }

  @override
  String recipeDetailPreparationTime(Object minutes) {
    return 'Preparação: $minutes min';
  }

  @override
  String recipeDetailCuissonTime(Object minutes) {
    return 'Cozedura: $minutes min';
  }

  @override
  String get aboutHeadline =>
      'Ajudar mais pessoas a cozinhar refeições nutritivas, mais vezes.';

  @override
  String get aboutIntro =>
      'Healthy Recipe Finder foi criado para provar que comer de forma saudável pode ser prático, acessível e delicioso.';

  @override
  String get aboutIntroExtended =>
      'Mostramos pratos rapidos e naturais que qualquer pessoa consegue preparar, sem equipamento especial e sem atalhos ultra-processados.';

  @override
  String get aboutWhyWeExistTitle => 'Por que existimos';

  @override
  String get aboutWhyWeExistReason1Title => 'Menos ruído, mais cozinha.';

  @override
  String get aboutWhyWeExistReason1Description =>
      'A internet está cheia de receitas, mas muita gente continua a optar por take-away. Selecionamos receitas fiáveis para poupares tempo e começares logo a cozinhar.';

  @override
  String get aboutWhyWeExistReason2Title => 'Dar poder à cozinha de casa.';

  @override
  String get aboutWhyWeExistReason2Description =>
      'Quando controlas o que entra nas refeições, controlas como te sentes. Cada receita usa ingredientes simples e preparação ativa curta.';

  @override
  String get aboutWhyWeExistReason3Title =>
      'Comer saudável também é apetitoso.';

  @override
  String get aboutWhyWeExistReason3Description =>
      'Imagens de qualidade mostram exatamente o resultado esperado, porque também comemos com os olhos.';

  @override
  String get aboutFoodPhilosophyTitle => 'A nossa filosofia alimentar';

  @override
  String get aboutFoodPhilosophyReason1Title =>
      'Ingredientes inteiros primeiro.';

  @override
  String get aboutFoodPhilosophyReason1Description =>
      'Produtos frescos, grãos, leguminosas, ervas e boas gorduras são a base de cada receita.';

  @override
  String get aboutFoodPhilosophyReason2Title => 'Sabor sem compromisso.';

  @override
  String get aboutFoodPhilosophyReason2Description =>
      'Especiarias, citrinos e doçura natural substituem excesso de sal, açúcar e aditivos.';

  @override
  String get aboutFoodPhilosophyReason3Title => 'Respeito pelo tempo.';

  @override
  String get aboutFoodPhilosophyReason3Description =>
      'As refeições da semana devem encaixar na vida real; ao fim de semana pode ser mais demorado, sem desperdício.';

  @override
  String get aboutFoodPhilosophyReason4Title => 'Escolhas sustentáveis.';

  @override
  String get aboutFoodPhilosophyReason4Description =>
      'Listas de ingredientes curtas reduzem desperdício e pegada ambiental, enquanto pratos com base vegetal ajudam o planeta.';

  @override
  String get aboutBeyondPlateTitle => 'Para além do prato';

  @override
  String get aboutBeyondPlateIntro =>
      'Acreditamos que a comida aproxima pessoas e melhora o bem-estar. Ao partilhar receitas acessíveis, queremos:';

  @override
  String get aboutBeyondPlatePoint1 =>
      'Incentivar jantares em família e cozinha partilhada.';

  @override
  String get aboutBeyondPlatePoint2 =>
      'Reduzir dependência de embalagens descartáveis e resíduos de entrega.';

  @override
  String get aboutBeyondPlatePoint3 =>
      'Despertar curiosidade por produtos sazonais e agricultura local.';

  @override
  String get ctaTitle => 'Pronto para cozinhar de forma mais inteligente?';

  @override
  String get ctaDescription =>
      'Clica no botão, escolhe uma receita e tem o jantar na mesa rapidamente.';

  @override
  String get ctaBrowseRecipes => 'Ver receitas';

  @override
  String get dishTsuvianTitle => 'Tsuvian';

  @override
  String get dishTsuvianDescription =>
      'O tsuvian é um prato tradicional mongol à base de massa e carne.';

  @override
  String get dishTsuvianIngredients =>
      '200g de massa à sua escolha||300g de carne de vaca em tiras||1 cebola picada||2 cenouras em juliana||1 pimento vermelho em cubos||2 dentes de alho||2 c. de sopa de óleo vegetal||Sal e pimenta';

  @override
  String get dishTsuvianSteps =>
      'Aqueça o óleo numa frigideira grande ou wok em lume alto. Refogue a cebola e o alho durante 2 minutos.||Adicione as tiras de carne e salteie até dourar, cerca de 5 minutos.||Adicione as cenouras e o pimento. Misture e cozinhe por mais 5 minutos.||Adicione a massa crua com um copo de água. Mexa, tape e cozinhe em lume médio durante 15 a 20 minutos, mexendo regularmente.||Tempere com sal e pimenta. Sirva quente.';

  @override
  String get dishRatatouilleTitle => 'Ratatouille';

  @override
  String get dishRatatouilleDescription =>
      'A ratatouille é um clássico guisado provençal de legumes do sul de França.';

  @override
  String get dishRatatouilleIngredients =>
      '1 beringela||2 curgetes||1 pimento vermelho||1 pimento amarelo||3 tomates||1 cebola||2 dentes de alho||Azeite||Ervas de Provence||Sal e pimenta';

  @override
  String get dishRatatouilleSteps =>
      'Corte todos os legumes em cubos.||Refogue a cebola e o alho em azeite durante 3 minutos.||Adicione a beringela e cozinhe por 5 minutos.||Adicione as curgetes, os pimentos e os tomates.||Tempere com ervas de Provence, sal e pimenta.||Tape e cozinhe em lume brando durante 35 minutos.';

  @override
  String get dishQuicheLorraineTitle => 'Quiche Lorraine';

  @override
  String get dishQuicheLorraineDescription =>
      'A quiche lorraine é uma tarte salgada francesa clássica preparada com bacon e natas.';

  @override
  String get dishQuicheLorraineIngredients =>
      '1 massa quebrada||200g de bacon em cubos||3 ovos||200ml de natas||200ml de leite||100g de gruyère ralado||Sal, pimenta e noz-moscada';

  @override
  String get dishQuicheLorraineSteps =>
      'Pré-aqueça o forno a 180°C.||Estenda a massa numa forma de tarte.||Frite o bacon numa frigideira seca até dourar levemente.||Misture os ovos, as natas e o leite. Tempere.||Espalhe o bacon sobre a massa e verta a mistura de ovos por cima.||Polvilhe com gruyère ralado.||Leve ao forno durante 35 minutos até dourar.';

  @override
  String get dishPelmeniTitle => 'Pelmeni';

  @override
  String get dishPelmeniDescription =>
      'Os pelmeni são rissóis russos tradicionais recheados com carne picada temperada, cozidos e servidos com manteiga ou creme de leite.';

  @override
  String get dishPelmeniIngredients =>
      '300g de farinha||1 ovo||150ml de água morna||1 c. de chá de sal (para a massa)||250g de carne de vaca picada||250g de carne de porco picada||1 cebola finamente ralada||Sal e pimenta||Manteiga e creme de leite para servir';

  @override
  String get dishPelmeniSteps =>
      'Misture a farinha, o ovo, a água e o sal até obter uma massa lisa. Tape e deixe repousar 30 minutos.||Misture a carne de vaca, a de porco, a cebola ralada, o sal e a pimenta para preparar o recheio.||Estenda a massa finamente e corte discos de cerca de 7cm de diâmetro.||Coloque uma colherinha de recheio no centro de cada disco.||Dobre a massa e aperte bem as bordas, depois una as duas extremidades para formar uma meia-lua.||Leve uma panela grande com água salgada a ferver. Cozinhe os pelmeni em lotes durante 8 a 10 minutos até subirem à superfície.||Sirva quente com manteiga e creme de leite.';

  @override
  String get dishShakshukaTitle => 'Shakshuka';

  @override
  String get dishShakshukaDescription =>
      'A shakshuka é um prato norte-africano e do Médio Oriente composto por ovos escalfados num molho picante de tomate e pimento.';

  @override
  String get dishShakshukaIngredients =>
      '6 ovos||400g de tomate triturado em conserva||2 pimentos vermelhos em cubos||1 cebola em cubos||3 dentes de alho picados||1 c. de chá de cominhos||1 c. de chá de paprika||1/2 c. de chá de flocos de malagueta||2 c. de sopa de azeite||Sal e pimenta||Salsa ou coentros frescos';

  @override
  String get dishShakshukaSteps =>
      'Aqueça o azeite numa frigideira larga em lume médio. Refogue a cebola durante 5 minutos.||Adicione o alho e os pimentos. Cozinhe por mais 5 minutos.||Adicione os cominhos, a paprika e os flocos de malagueta. Cozinhe 1 minuto.||Verta o tomate triturado. Tempere com sal e pimenta. Cozinhe em lume brando 10 minutos.||Faça pequenas covas no molho e parta um ovo em cada uma.||Tape e cozinhe em lume brando 5 a 7 minutos até as claras estarem cozidas e as gemas ainda cremosas.||Decore com ervas frescas e sirva com pão crocante.';

  @override
  String get dishPadThaiCrevettesTitle => 'Pad Thai com camarão';

  @override
  String get dishPadThaiCrevettesDescription =>
      'O pad thai é um prato tailandês de massa de arroz salteada com camarão, tofu, ovos e um molho azedo de tamarindo.';

  @override
  String get dishPadThaiCrevettesIngredients =>
      '200g de massa de arroz larga||150g de camarão descascado||100g de tofu firme em cubos||2 ovos||3 c. de sopa de pasta de tamarindo||2 c. de sopa de molho de peixe||1 c. de sopa de açúcar||2 cebolinhas picadas||50g de rebentos de feijão||2 c. de sopa de óleo vegetal||Amendoins picados e lima para servir';

  @override
  String get dishPadThaiCrevettesSteps =>
      'Demolhe a massa de arroz em água morna durante 20 minutos, depois escorra.||Misture a pasta de tamarindo, o molho de peixe e o açúcar numa tigela. Reserve.||Aqueça o óleo num wok em lume alto. Frite o tofu até dourar e empurre para o lado.||Adicione o camarão e cozinhe até ficar rosado. Empurre para o lado.||Parta os ovos no wok e mexa levemente.||Adicione a massa e verta o molho. Salteie tudo em lume alto durante 3 minutos.||Adicione os rebentos de feijão e as cebolinhas. Salteie por mais 1 minuto.||Sirva com amendoins picados e um quarto de lima.';

  @override
  String get footerMadeWith => 'Feito com ❤️';
}
