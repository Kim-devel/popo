CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50)
);

CREATE TABLE work_time (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(id),
    work_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    total_hours INTERVAL GENERATED ALWAYS AS (end_time - start_time) STORED
);
