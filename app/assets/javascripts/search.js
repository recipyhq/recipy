//
//= require slimselect.min
document.addEventListener('turbolinks:load', () => {
  new SlimSelect({
    select: '#ingredients-select',
    searchingText: 'Recherche...',
    searchText: "Désolé il n'y a pas votre ingrédient dans la liste.",
    searchPlaceholder: 'Recherche ingrédient',
    placeholder: 'Ingrédients',
  });

  new SlimSelect({
    select: '#utensils-select',
    searchingText: 'Recherche...',
    searchText: "Désolé il n'y a pas votre ustensil dans la liste.",
    searchPlaceholder: 'Recherche ustensil',
    placeholder: 'Ustensils',
  });
});
