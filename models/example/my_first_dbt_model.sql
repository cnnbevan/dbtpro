/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    -- 我们在这里添加 sometext 字段
    select 1 as id, '这是第一行文本' as sometext
    union all
    select null as id, '这是第二行文本' as sometext

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
