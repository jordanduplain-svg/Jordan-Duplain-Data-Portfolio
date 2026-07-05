Source de donnée : Kaggle
Suite de mon travail sur mon power BI, j'ai fait des requ^éte SQL sur : 
### 1. Évolution du PIB et de la croissance (1960–2024)


### 2. Les 5 pires années de croissance
Les années où le PIB a le plus reculé 
Résultat : 2017 à 2020

### 3. Dépendance pétrolière par décennie
Moyenne de la rente pétrolière (% du PIB) par décennie 
Résultat : L'année 1980 est l'année ou le vénézuela a été le plus dépendant (21.29)

### 4. Variation du PIB d'une année sur l'autre (fonction fenêtre `LAG`)
Calcul de la variation absolue du PIB par rapport à l'année précédente
Résultat : on peux voir que le PIB en 1964  de  1 416 303 495 $

### 5. Corrélation entre rente pétrolière et croissance du PIB
Calcul du coefficient de corrélation (`CORR`) entre `oil_rents_pct_gdp` et
`gdp_growth_pct` sur toute la période.
Résulat : Corrélation quasi null (0.049)

### 6. Moyenne mobile sur 3 ans de la croissance du PIB
Lissage de la croissance annuelle (`ROWS BETWEEN 2 PRECEDING AND CURRENT ROW`) pour
dégager la tendance de fond derrière les à-coups annuels.
Ici pas vraiment de résultat a dégager


## Ce que j'ai appris :
Utiliser la fonction Lag
Utiliser la Corrélation corr()
et faire une moyenne mobile avec :
AVG(colonne) OVER (
    ORDER BY year 
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
)
