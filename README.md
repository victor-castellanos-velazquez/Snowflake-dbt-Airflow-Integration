# Snowflake-dbt-Airflow Integration

## Project Description
This project implements an ELT (Extract, Load, Transform) pipeline using Snowflake as the data warehouse, dbt (data build tool) for transformations, and Apache Airflow for task orchestration. The project utilizes the TPC-H sample dataset provided by Snowflake to demonstrate a typical data analytics workflow.

## Technologies Used
- Snowflake: Cloud data warehouse
- dbt: Data transformation tool
- Apache Airflow: Workflow orchestration platform
- Python: Primary programming language

## Project Structure
- `/airflow`: Contains Airflow DAGs and related scripts
- `/dbt`: Contains dbt models, tests, and documentation
  - `/models`: dbt SQL models organized into staging, intermediate, and mart
  - `/tests`: Data tests
  - `/docs`: Model documentation
- `profiles.yml`: Snowflake connection configuration for dbt
- `dbt_project.yml`: Main dbt project configuration

## Setup
1. Configure Snowflake connection in `profiles.yml`
2. Set up necessary environment variables for Airflow
3. Install required dependencies (dbt, airflow, snowflake-connector-python)

## Usage
1. Start Airflow webserver and scheduler
2. Activate the DAG in the Airflow interface
3. dbt models will run according to the schedule defined in the DAG

## Contributing
Contributions are welcome. Please open an issue to discuss major changes before submitting a pull request.