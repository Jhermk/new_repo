-- Task 1: Insert a new record into the account table
INSERT INTO account (first_name, last_name, email, password)
VALUES (
        'Tony',
        'Stark',
        'tony@starkent.com',
        'Iam1ronM@n'
    );
-- Task 2: Modify the Tony Stark record to change the account_type to "Admin"
UPDATE account
SET account_type = 'Admin'
WHERE first_name = 'Tony'
    AND last_name = 'Stark';
-- Task 3: Delete the Tony Stark record from the database
DELETE FROM account
WHERE first_name = 'Tony'
    AND last_name = 'Stark';
-- Task 4: Modify the "GM Hummer" record to change the description
UPDATE inventory
SET description = REPLACE(
        description,
        'small interiors',
        'a huge interior'
    )
WHERE make = 'GM'
    AND model = 'Hummer';
-- Task 5: Use an inner join to select specific fields from multiple tables
SELECT inventory.make,
    inventory.model,
    classification.classification_name
FROM inventory
    INNER JOIN classification ON inventory.classification_id = classification.classification_id
WHERE classification.classification_name = 'Sport';
-- Task 6: Update all records in the inventory table to modify the file paths
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');
-- Task 6 (additional step): Add this query to the bottom of the file
-- UPDATE inventory
-- SET inv_image = REPLACE(inv_image, '/vehicles', '/images/vehicles'),
--     inv_thumbnail = REPLACE(inv_thumbnail, '/vehicles', '/images/vehicles');