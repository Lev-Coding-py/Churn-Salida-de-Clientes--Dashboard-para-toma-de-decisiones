select * from df_probabilities;




SELECT 
    Churn_probabilidad,
    CASE 
        WHEN Churn_probabilidad >= 0.7 THEN 'Alto'
        WHEN Churn_probabilidad >= 0.4 THEN 'Medio'
        ELSE 'Bajo'
    END AS Riesgo_Base,

    CASE
       WHEN Churn_probabilidad>=0.7 THEN 'Ofrecer Promociones y Descuentos'
       WHEN Churn_probabilidad>=0.4 THEN 'Hacer un seguimiento'
       ELSE 'Mantener Ofertas y Promociones'
     END AS Decision
FROM df_probabilities;

select * from df_probabilities;


SELECT 
  CASE
     WHEN Churn_probabilidad > 0.7 THEN 'Ofrecer Promociones y Descuentos'
     WHEN Churn_probabilidad >= 0.4 THEN 'Hacer un seguimiento'
     ELSE 'Mantener Ofertas y Promociones'
  END AS Decision,
  COUNT(*) AS cantidad
FROM df_probabilities
GROUP BY 
  CASE
     WHEN Churn_probabilidad > 0.7 THEN 'Ofrecer Promociones y Descuentos'
     WHEN Churn_probabilidad >= 0.4 THEN 'Hacer un seguimiento'
     ELSE 'Mantener Ofertas y Promociones'
  END
ORDER BY cantidad DESC;






