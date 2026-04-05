import '../l10n/app_localizations.dart';
import 'dish.dart';

String localizedDishTitle(AppLocalizations l10n, Dish dish) {
  switch (dish.title) {
    case 'Tsuvian':
      return l10n.dishTsuvianTitle;
    case 'Ratatouille':
      return l10n.dishRatatouilleTitle;
    case 'Quiche Lorraine':
      return l10n.dishQuicheLorraineTitle;
    case 'Pelmeni':
      return l10n.dishPelmeniTitle;
    case 'Shakshuka':
      return l10n.dishShakshukaTitle;
    case 'Pad Thai crevettes':
      return l10n.dishPadThaiCrevettesTitle;
    default:
      return dish.title;
  }
}

String localizedDishDescription(AppLocalizations l10n, Dish dish) {
  switch (dish.title) {
    case 'Tsuvian':
      return l10n.dishTsuvianDescription;
    case 'Ratatouille':
      return l10n.dishRatatouilleDescription;
    case 'Quiche Lorraine':
      return l10n.dishQuicheLorraineDescription;
    case 'Pelmeni':
      return l10n.dishPelmeniDescription;
    case 'Shakshuka':
      return l10n.dishShakshukaDescription;
    case 'Pad Thai crevettes':
      return l10n.dishPadThaiCrevettesDescription;
    default:
      return dish.description;
  }
}

List<String> localizedDishIngredients(AppLocalizations l10n, Dish dish) {
  switch (dish.title) {
    case 'Tsuvian':
      return l10n.dishTsuvianIngredients.split('||');
    case 'Ratatouille':
      return l10n.dishRatatouilleIngredients.split('||');
    case 'Quiche Lorraine':
      return l10n.dishQuicheLorraineIngredients.split('||');
    case 'Pelmeni':
      return l10n.dishPelmeniIngredients.split('||');
    case 'Shakshuka':
      return l10n.dishShakshukaIngredients.split('||');
    case 'Pad Thai crevettes':
      return l10n.dishPadThaiCrevettesIngredients.split('||');
    default:
      return dish.ingredients;
  }
}

List<String> localizedDishSteps(AppLocalizations l10n, Dish dish) {
  switch (dish.title) {
    case 'Tsuvian':
      return l10n.dishTsuvianSteps.split('||');
    case 'Ratatouille':
      return l10n.dishRatatouilleSteps.split('||');
    case 'Quiche Lorraine':
      return l10n.dishQuicheLorraineSteps.split('||');
    case 'Pelmeni':
      return l10n.dishPelmeniSteps.split('||');
    case 'Shakshuka':
      return l10n.dishShakshukaSteps.split('||');
    case 'Pad Thai crevettes':
      return l10n.dishPadThaiCrevettesSteps.split('||');
    default:
      return dish.etapes;
  }
}
