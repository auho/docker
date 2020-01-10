"""
Code that goes along with the Airflow located at:
http://airflow.readthedocs.org/en/latest/tutorial.html
"""
import airflow
from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from airflow.operators.dummy_operator import DummyOperator
from datetime import timedelta

default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': airflow.utils.dates.days_ago(2),
    'email': ['auho@163.com'],
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
    # 'queue': 'bash_queue',
    # 'pool': 'backfill',
    # 'priority_weight': 10,
    # 'end_date': datetime(2016, 1, 1),
}

"""

'start_date': datatime(2016, 5, 29, 8, 30), 
'start_date': datetime.today() - timedelta(days=1),


schedule_interval=timedelta(days=1),
schedule_interval=timedelta(minutes=5),
schedule_interval='0 3 * * *'),

"""

dag = DAG(f'dag_all', default_args=default_args, schedule_interval=None)

# DummyOperator
task_dummy = DummyOperator(task_id='node_extract', dag=dag)

# BashOperator
task_bash = BashOperator(task_id='task_bash', bash_command=f"command", dag=dag)

# dag run 
"""
{{ dag_run.conf['field1'] }}
{{ dag_run.conf['field2'] }}
"""
task_bash = BashOperator(task_id='task_bash', bash_command="command {{ dag_run.conf['field1'] }} {{ dag_run.conf['field2'] }}", dag=dag)

runArgs = "--field1={{ dag_run.conf['field1'] }} --field2={{ dag_run.conf['field2'] }}"
task_bash = BashOperator(task_id='task_bash', bash_command=f"command {runArgs}", dag=dag)
