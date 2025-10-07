select
    s.name as student_name,
    s.email as student_email
from
    student_discipline sd
    join students s on s.id = sd.student_id
    join disciplines d on d.id = sd.discipline_id
where
    sd.group_num = 5 and
    d.name = 'Програмування';
