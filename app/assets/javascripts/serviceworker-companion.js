if (navigator.serviceWorker) {
  navigator.serviceWorker.register('/serviceworker.js', { scope: './users/sign_in' })
    .then(function(reg) {
      console.log('[Companion]', 'Service worker registered!');
    });
}
