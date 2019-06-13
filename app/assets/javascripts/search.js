//
//= require slimselect.min
document.addEventListener('turbolinks:load', () => {
  // For multiple select
  // Add attribute like:
  // slimselectNoResult -> No result when research
  // slimselectPlaceholder -> Placeholder input
  // slimselectSearchPlaceholder -> Placeholder for search bar in multiple select

  const slimselectInputs = document.querySelectorAll('[slimselect]');

  for (const slimselectInput of slimselectInputs) {
    const slimselectNoResult = slimselectInput.getAttribute('slimselectNoResult') || 'Pas de résultat pour la recherche';
    const slimselectSearchPlaceholder = slimselectInput.getAttribute('slimselectSearchPlaceholder') || 'Rechercher...';
    const slimselectPlaceholder = slimselectInput.getAttribute('slimselectPlaceholder') || 'Choix multiple';

    new SlimSelect({
      select: slimselectInput,
      searchText: slimselectNoResult,
      searchPlaceholder: slimselectSearchPlaceholder,
      placeholder: slimselectPlaceholder,
    });
  }

  // window.onload = () => {
  //   console.log('TEST on load');
  //
  //   $("input[id*='recipe_ingredients']").on('cocoon:after-insert', (e, insertedItem) => {
  //
  //     console.log('trigger');
  //     const slimselectInputss = insertedItem.querySelectorAll('[slimselect]');
  //
  //     for (const slimselectInput of slimselectInputss) {
  //       const slimselectNoResult = slimselectInput.getAttribute('slimselectNoResult') ||
  //       'Pas de résultat pour la recherche';
  //       const slimselectSearchPlaceholder =
  //       slimselectInput.getAttribute('slimselectSearchPlaceholder') || 'Rechercher...';
  //       const slimselectPlaceholder = slimselectInput.getAttribute('slimselectPlaceholder') ||
  //       'Choix multiple';
  //
  //       new SlimSelect({
  //         select: slimselectInput,
  //         searchText: slimselectNoResult,
  //         searchPlaceholder: slimselectSearchPlaceholder,
  //         placeholder: slimselectPlaceholder,
  //       });
  //     }
  //   });
  // };
});
