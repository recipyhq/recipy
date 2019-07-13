//
//= require slimselect.min
//= require cocoon

// For multiple select
// Add attribute like:
// slimselectNoResult -> No result when research
// slimselectPlaceholder -> Placeholder input
// slimselectSearchPlaceholder -> Placeholder for search bar in multiple select
function addSlimSelect(el) {
  const slimselectInputs = el.querySelectorAll('[slimselect]');

  for (const slimselectInput of slimselectInputs) {
    const slimselectIsSet = slimselectInput.getAttribute('slimselectIsSet') || false;
    const slimselectNoResult = slimselectInput.getAttribute('slimselectNoResult') || 'Pas de résultat pour la recherche';
    const slimselectSearchPlaceholder = slimselectInput.getAttribute('slimselectSearchPlaceholder') || 'Rechercher...';
    const slimselectPlaceholder = slimselectInput.getAttribute('slimselectPlaceholder') || 'Choix multiple';
    
    if (!slimselectIsSet) {
      slimselectInput.setAttribute('slimselectisset', true);
      new SlimSelect({
        select: slimselectInput,
        searchText: slimselectNoResult,
        searchPlaceholder: slimselectSearchPlaceholder,
        placeholder: slimselectPlaceholder,
      });
    }
  }
}

document.addEventListener('turbolinks:load', () => {
  addSlimSelect(document);
});

$(document).ready(() => {
  MutationObserver = window.MutationObserver || window.WebKitMutationObserver;

  const observer = new MutationObserver((mutations) => {
    mutations.forEach((mutation) => {
      if (mutation && mutation.target) {
        addSlimSelect(mutation.target);
      }
    });
  });

  // define what element should be observed by the observer
  // and what types of mutations trigger the callback
  observer.observe(document, {
    subtree: true,
    attributes: true,
  });
});
