## DataVault Example Project

### Описание 

Пример проекта с построением DataVault на Greenplum c помощью dbt+dbtvault c оркестрацией Dagster'ом

### Setup проекта

```bash

# создадим окружение python3
python3 -m venv venv

source venv/bin/activate

# установим зависимости 
pip install -r requirements.txt

pip install -r requirements-dev.txt

# установим пакеты dbt
cd datavault

dbt deps
```

### Запуск dbt моделей

Прежде, чем запускать модели надо создать файл `~/.dbt/profiles.yml`, где необходимо прописать креды для подключения к greenplum'у. Так же можно указать путь к dbt проекту для запуска не из директории проекта (флаг `--project-dir`); путь к файлу с профайлами (флаг `--profiles-dir`); и специфичный профаил (флаг `--profile`)

Общий синтаксис запуска:

```bash
dbt run [--project-dir <path_to_dbt_project>] [--profiles-dir <path_to_dbt_profiles>] [--profile <profile_name>] -m <model_name>
```

Пример запуска модели `developers_source`

```bash
dbt run -m developers_source
```