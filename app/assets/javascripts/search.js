//
//= require slimselect.min
document.addEventListener('turbolinks:load', () => {
  if (document.querySelector('#ingredients-select')) {
    new SlimSelect({
      select: '#ingredients-select',
      searchingText: 'Recherche...',
      searchText: "Désolé il n'y a pas votre ingrédient dans la liste.",
      searchPlaceholder: 'Recherche ingrédient',
      placeholder: 'Ingrédients',
    });
  }

  if (document.querySelector('#utensils-select')) {
    new SlimSelect({
      select: '#utensils-select',
      searchingText: 'Recherche...',
      searchText: "Désolé il n'y a pas votre ustensil dans la liste.",
      searchPlaceholder: 'Recherche ustensil',
      placeholder: 'Ustensils',
    });
  }

  if (document.querySelector('#ingredienttags-select')) {
    new SlimSelect({
      select: '#ingredienttags-select',
      searchingText: 'Recherche...',
      searchText: "Désolé il n'y a pas votre type d'ingrédient dans la liste.",
      searchPlaceholder: 'Recherche du type d\'ingrédient',
      placeholder: 'Type d\'ingrédient',
    });
  }
});
