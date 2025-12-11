#!/bin/bash

# Create SVG placeholder images for all the referenced images
images=(
  "promo-noel.jpg:800:450:Christmas promotion"
  "calendrier-avent.jpg:800:450:Advent calendar"
  "carte-cadeau.jpg:800:450:Gift card"
  "xiaomi-scooter.jpg:600:400:Xiaomi scooter"
  "garmin-watch.jpg:600:400:Garmin watch"
  "rossignol-boots.jpg:600:400:Rossignol ski boots"
  "cat-adidas.jpg:300:300:Adidas"
  "cat-fitness-maison.jpg:300:300:Home fitness"
  "cat-idees-cadeaux.jpg:300:300:Gift ideas"
  "cat-vetements-thermiques.jpg:300:300:Thermal clothing"
  "cat-premieres-neiges.jpg:300:300:First snow"
  "cat-secret-santa.jpg:300:300:Secret Santa"
  "banner-entrainer-maison.jpg:800:450:Home training"
  "product-home-trainer.jpg:400:400:Home trainer"
  "product-tapis-marche.jpg:400:400:Walking pad"
  "product-rameur.jpg:400:400:Rowing machine"
  "product-tapis-course.jpg:400:400:Treadmill"
  "cat-montres.jpg:300:300:Watches"
  "cat-sacs-a-dos.jpg:300:300:Backpacks"
  "cat-polaires-femme.jpg:300:300:Women's fleece"
  "cat-polaires-homme.jpg:300:300:Men's fleece"
  "cat-ski-enfant.jpg:300:300:Kids ski wear"
  "cat-accessoires-enfant.jpg:300:300:Kids accessories"
  "banner-neige.jpg:800:450:Winter banner"
  "product-cache-cou.jpg:400:400:Neck warmer"
  "product-thermique-homme.jpg:400:400:Thermal underwear men"
  "product-thermique-femme.jpg:400:400:Thermal underwear women"
  "product-veste-ski.jpg:400:400:Ski jacket"
  "live-idees-cadeaux.jpg:600:400:Live gift ideas"
  "live-velo-reparation.jpg:600:400:Live bike repair"
  "live-decouvrir.jpg:600:400:Discover live"
  "service-remise-jeu.jpg:300:300:Remise en jeu"
  "service-reparation.jpg:300:300:Repair"
  "service-reprise.jpg:300:300:Reprise"
  "service-location.jpg:300:300:Location"
  "service-reconditionne.jpg:300:300:Reconditioned"
  "banner-telethon.jpg:600:400:Telethon"
  "banner-decathlon-pro.jpg:600:400:Decathlon Pro"
  "newsletter-offres.jpg:200:200:Exclusive offers"
  "newsletter-nouveautes.jpg:200:200:News"
  "newsletter-conseils.jpg:200:200:Sport tips"
  "newsletter-activites.jpg:200:200:Sports activities"
  "recall-ebike.jpg:400:400:E-bike recall"
  "recall-fougatreats.jpg:400:400:Horse treats"
  "recall-roues.jpg:400:400:Wheels recall"
  "recall-basket.jpg:400:400:Basketball hoop"
  "recall-gilet.jpg:400:400:Life jacket"
  "recall-porte-velos.jpg:400:400:Bike rack"
  "recall-raquettes.jpg:400:400:Snowshoes"
  "recall-gilet-natation.jpg:400:400:Swim vest"
  "recall-whey.jpg:400:400:Protein"
  "service-livraison.jpg:200:200:Free delivery"
  "service-retrait.jpg:200:200:Store pickup"
  "service-paiement.jpg:200:200:Secure payment"
  "service-retours.jpg:200:200:Returns"
  "service-client.jpg:200:200:Customer service"
)

for img in "${images[@]}"; do
  IFS=':' read -r filename width height text <<< "$img"
  
  cat > "$filename" << SVGEOF
<svg width="$width" height="$height" xmlns="http://www.w3.org/2000/svg">
  <rect width="100%" height="100%" fill="#e8e8e8"/>
  <text x="50%" y="50%" font-family="Arial, sans-serif" font-size="18" fill="#505050" text-anchor="middle" dominant-baseline="middle">$text</text>
</svg>
SVGEOF
done

echo "Created ${#images[@]} placeholder images"
