Les données utilisées dans ce projets ont été prise de Kaggle.<br>
https://www.kaggle.com/datasets/datascikhan/e-commerce-sales-and-customer-analytics?select=product_catalog.csv<br>
E-Commerce Sales Analytics Dataset<br>
ecommerce_sales_cutomer_analytics_150k.csv<br>
order_items.csv<br>
product_catalog.csv<br>

Utilisation du fichier ecommerce_sales_cutomer_analytics_150k.csv<br>
Dans la première partie de l'analyse des données, je me suis posé les questions suivantes:<br>
1. À quoi ressemble la clientèle?
2. À quoi ressemble les ventes?
3. Quel type de client dépense le plus?

On peut facilement visualiser les données dans le fichier data_visualisation.pbix<br>
Les trois premiers onglets sont dédiés à répondre à ces questions. <br>
ecommerce_sales.sql contient les requêtes SQL pour cette partie.

Utilisation du fichier order_items.csv et product_catalog.csv<br>
Dans la deuxième parte de l'analyse des données, je voulais analyser les ventes pour déterminer:<br>
1. Les produits qui se vendent le plus
2. Les produits qui font le plus de profit
3. Sur quels produits l'équipe de marketing devrait se concentrer

Le quatrième onglet de data_visualisation.pbix est dédié à la deuxième partie.<br>
order_items.sql contient les requêtes SQL pour cette partie. <br>
J'ai fait l'analyse sur les catégories de produits au lieu de le faire sur chaque produit individuel.<br>
J'ai séparé les catégories de produits dans 4 groupes:<br>
1. Les produits qui se vendent en GRANDE QUANTITÉ et ont un HAUT PROFIT<br>
   Ces produits sont à privilégier dans la planification marketing en général.
2. GRANDE QUANTITÉ & BAS PROFIT<br>
   Ces produits sont à privilégier dans la planification marketing pour les nouveaux clients.
4. PETITE QUANTITÉ & HAUT PROFIT<br>
   Ces produits sont des produits plus luxueux ou "niche"
5. PETITE QUANTITÉ & BAS PROFIT<br>
   Ces produits sont moins intéressants pour l'équipe marketing

---
The data used for the project come from Kaagle<br>
https://www.kaggle.com/datasets/datascikhan/e-commerce-sales-and-customer-analytics?select=product_catalog.csv<br>
E-Commerce Sales Analytics Dataset<br>
ecommerce_sales_cutomer_analytics_150k.csv<br>
order_items.csv<br>
product_catalog.csv<br>

I used the file ecommerce_sales_cutomer_analytics_150k.csv<br>
In the first part of my analysis, I wanted to know:<br>
1. What does the clientele looks like?
2. What do the sales look like?
3. What type of customer spend the most?

I used the file data_visualisation.pbix to visualize the data.<br>
In the three first tabs, we can visualize the data related to these questions.

I used the files order_items.csv and product_catalog.csv<br>
In the second part of my analysis, I looked at the sales data:<br>
1. Which products sell the most?
2. Which products make the most profit?
3. Which products would be interesting to promote more?

We can visualize the data related to the second part of the analysis in the fourth tab of data_visualisation.pbix<br>
I used the product's categories for the analysis instead of each one of the products.<br>
I separated the product categories in 4 groups:<br>
1. HIGH QUANTITY & HIGH PROFIT<br>
   Promote those products the most.
2. HIGH QUANTITY & LOW PROFIT<br>
   Promote those products to get new costumers.
3. LOW QUANTITY & HIGH PROFIT<br>
   Niche or luxury products.
4. LOW QUANTITY & LOW PROFIT<br>
   Promote those products less.
