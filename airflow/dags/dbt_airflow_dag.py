from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime, timedelta

default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': datetime(2024, 1, 1),
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

dag = DAG(
    'dbt_snowflake_pipeline',
    default_args=default_args,
    description='A simple DAG to run dbt models',
    schedule_interval=timedelta(days=1),
)

run_dbt = BashOperator(
    task_id='run_dbt',
    bash_command='dbt run --profiles-dir /home/victor_castellanosv/.dbt',
    dag=dag,
)

run_dbt