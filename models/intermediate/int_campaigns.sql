SELECT *
FROM {{ ref('stg_raw__raw_adwords') }}
UNION ALL 
SELECT *
FROM {{ ref('stg_raw__raw_bing') }}
UNION ALL
SELECT *
FROM {{ ref('stg_raw__raw_criteo') }}
UNION ALL
SELECT *
FROM {{ ref('stg_raw__raw_facebook') }}