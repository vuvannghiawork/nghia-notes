Lấy   department_id của người dùng 
Nếu không có cấu hình thì  mặc định   null





SELECT rt.* FROM public.resource_types AS rt
WHERE "name" = 'Kế hoạch công việc'





resource_type_id = 4




SELECT w.* FROM public.workflows AS w
WHERE resource_type_id = 4




department_scope::jsonb 


Nếu có thì lấy id của workflows




sang workflow_steps lấy các bản ghi liên quan


SELECT ws.* FROM public.workflow_steps AS ws
WHERE workflow_id = 34






select 
    a.*,
    b.name role_name,
    c.name department_name 
from workflow_steps a 
    join roles b on a.role_id = b.id 
    left join departments c on a.department_id = c.id 
where a.workflow_id  = 34




Tạo cây cha con







if làm gì type thì lấy role_name theo cây đó


