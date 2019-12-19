INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_locura','locura',1),
    ('society_locura_black', 'locura black', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_locura','locura',1),
    ('society_locura_weapons', 'locura weapon', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_locura', 'locura', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('locura', 'Locura', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('locura', 0, 'vicepresident', 'Recrue', 950, '{}', '{}'),
('locura', 1, 'president', 'Soldat', 1500, '{}', '{}'),
('locura', 2, 'gouvernment', 'Bras Droit', 1250, '{}', '{}'),
('locura', 3, 'boss', 'Chef', 1000, '{}', '{}');