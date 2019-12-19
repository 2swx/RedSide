SET @job_name = 'burger';
SET @society_name = 'society_burger';
SET @job_Name_Caps = 'Big Burger';



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1),
  ('society_burger_fridge', 'Big Burger (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  (@job_name, @job_Name_Caps, 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  (@job_name, 0, 'recruit', 'Recrue', 300, '{}', '{}'),
  (@job_name, 1, 'employer', 'Employé(e)', 300, '{}', '{}'),
  (@job_name, 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
  (@job_name, 3, 'boss', 'Gérant', 600, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `limit`) VALUES  
    ('bread', 'Pain', 5),
    ('steak', 'Steak', 5),
    ('cheese', 'Fromage', 5)
;