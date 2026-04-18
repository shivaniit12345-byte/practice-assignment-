CREATE TABLE unified_marketing AS
SELECT 
    `date`, 
    'Facebook' AS Platform, 
    campaign_name, 
    spend, 
    impressions, 
    clicks, 
    conversions
FROM `01_facebook_ads (1)`

UNION ALL

SELECT 
    `date`, 
    'Google' AS Platform, 
    campaign_name, 
    cost AS spend, 
    impressions, 
    clicks, 
    conversions
FROM `02_google_ads (1)`

UNION ALL

SELECT 
    `date`, 
    'Tiktok' AS Platform, 
    campaign_name, 
    cost AS spend, 
    impressions, 
    clicks, 
    conversions
FROM `03_tiktok_ads (1)`;

select * 
From unified_marketing
limit 20;
