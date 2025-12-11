/**
 * Parser for cards-promo-hero block
 * Converts promotional hero cards to AEM table format
 */
export default function parseCardsPromoHero(block) {
  const cards = [];

  // Find all card elements within the block
  const cardElements = block.querySelectorAll('.card, [class*="promo"]');

  cardElements.forEach((card) => {
    const img = card.querySelector('img');
    const heading = card.querySelector('h2, h3, .title');
    const description = card.querySelector('p, .description');
    const link = card.querySelector('a');

    const cells = [
      img ? `![${img.alt || 'Promo'}](${img.src})` : '',
      [
        heading ? `## ${heading.textContent.trim()}` : '',
        description ? description.textContent.trim() : '',
        link ? `**[${link.textContent.trim()}](${link.href})**` : ''
      ].filter(Boolean).join('\n\n')
    ];

    cards.push(cells);
  });

  return cards;
}
