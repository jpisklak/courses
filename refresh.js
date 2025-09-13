// === Show "Last updated" based on server's file timestamp ===
(function () {
  const banner = document.getElementById("last-updated");
  // "document.lastModified" is filled by the server (GitHub Pages does this)
  const lastUpdated = new Date(document.lastModified);
  banner.textContent = "📅 Last updated: " + lastUpdated.toLocaleString();
})();

// === auto-refresh every 10 minutes ===
setInterval(function () {
  // Force bypass cache by appending timestamp
  const url = window.location.pathname + "?v=" + new Date().getTime();
  window.location.replace(url);
}, 15 * 60 * 1000); // 10 minutes
