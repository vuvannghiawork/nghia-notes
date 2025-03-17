-- public.department_plan_transfers definition

-- Drop table

-- DROP TABLE public.department_plan_transfers;

CREATE TABLE public.department_plan_transfers (
id serial4 NOT NULL,
department_plan_id int4 NULL,
from_user_id int4 NULL,
to_user_id int4 NULL,
note text NULL,
created_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
CONSTRAINT department_plan_transfers_pkey PRIMARY KEY (id)
);

-- public.department_plan_transfers foreign keys

ALTER TABLE public.department_plan_transfers ADD CONSTRAINT department_plan_transfers_department_plan_id_fkey FOREIGN KEY (department_plan_id) REFERENCES public.department_plans(id) ON DELETE CASCADE;
ALTER TABLE public.department_plan_transfers ADD CONSTRAINT department_plan_transfers_from_user_id_fkey FOREIGN KEY (from_user_id) REFERENCES public.employees(id);
ALTER TABLE public.department_plan_transfers ADD CONSTRAINT department_plan_transfers_to_user_id_fkey FOREIGN KEY (to_user_id) REFERENCES public.employees(id);