/**
 * Cleanup transformer for Decathlon homepage
 * Removes navigation, footer, and other non-content elements
 */
export default function cleanup(document) {
  // Remove header and navigation
  document.querySelectorAll('header, nav, .header, .navigation').forEach((el) => el.remove());

  // Remove footer
  document.querySelectorAll('footer, .footer').forEach((el) => el.remove());

  // Remove cookie banners and popups
  document.querySelectorAll('[class*="cookie"], [class*="modal"], [class*="popup"]').forEach((el) => el.remove());

  // Remove scripts and styles
  document.querySelectorAll('script, style, link[rel="stylesheet"]').forEach((el) => el.remove());

  return document;
}
