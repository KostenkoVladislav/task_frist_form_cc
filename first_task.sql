select users.*
from users
where createdAt > now()- interval '5 YEAR'