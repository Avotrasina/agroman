# # Définir les noms des modèles dans un tableau
# MODELS=("Produit" "Categorie" "Destination" "Provenance" "Stocker" "Conteneur" "TypeConteneur" "Historique")

# # Boucle à travers les noms des modèles et exécuter la commande Artisan pour chaque modèle
# for MODEL in "${MODELS[@]}"
# do
#     php artisan make:model "$MODEL" -m -f -r
# done


# $chemin = "E:\logiciel\wamp64\www\bossy\GitClone\agroman\database\migrations"

# # Supprimer les fichiers dont le nom commence par "xx"
# Get-ChildItem -Path $chemin -Filter "2024_03_30*" | Remove-Item -Force
