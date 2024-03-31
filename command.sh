# Définir les noms des modèles dans un tableau
MODELS=("Produit" "Categorie" "Destination" "Provenance" "Stocker" "Conteneur" "TypeConteneur" "Historique")

# Boucle à travers les noms des modèles et exécuter la commande Artisan pour chaque modèle
for MODEL in "${MODELS[@]}"
do
    php artisan make:model "$MODEL" -m -f -r
done
