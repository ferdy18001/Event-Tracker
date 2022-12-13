SELECT  session_id,
        user_id,
        city,
        state,
        browser,
        traffic_source,
        min(created_at) min_session_timestamp,
        max(created_at) max_session_timestamp
FROM    `bigquery-public-data.thelook_ecommerce.events`
WHERE   user_id is NOT NULL
GROUP BY 1,2,3,4,5,6;
