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
      searchText: 'Désolé il n\'y a pas l\'ustensile recherché dans la liste.',
      searchPlaceholder: 'Rechercher un ustensile',
      placeholder: 'Ustensiles'
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

  if (document.querySelector('#recipe-category-select')) {
    new SlimSelect({
      select: '#recipe-category-select',
      searchingText: 'Recherche...',
      searchText: 'Désolé il n\'y a pas la catégorie recherché dans la liste.',
      searchPlaceholder: 'Rechercher une catégorie',
      placeholder: 'Catégories',
    });
  }
});
