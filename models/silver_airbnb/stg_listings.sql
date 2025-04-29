WITH stg_listings AS 
( SELECT
*
FROM
DBT_DATABASE.BRONZE_AIRBNB.src_listings
)
SELECT
id AS listing_id, name AS listing_name, listing_url, room_type, minimum_nights, host_id,
price AS price_str, created_at, updated_at
FROM
stg_listings