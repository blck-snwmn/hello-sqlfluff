select
    id,
    group_id,
    any_value(group_name) as group_name,
    array_agg(group_name) as group_names,
    len(group_names) as group_name_length
from users
group by group_id
