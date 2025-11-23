# 🚀 ELT Old School Pentaho

This project recreates a classic ELT pipeline using legacy tools that shaped the first generations of Data Lakes:

- 🟦 **Pentaho Data Integration (PDI 6)**

- 🌐 **WebSpoon (Pentaho in the browser)**

- 🗃️ **MinIO (local S3-compatible storage)**

- 🐳 **Docker + Docker Compose**

- 🎬 **External APIs (TMDB)**

The goal is to simulate how early data architectures were built — fully visual, file-oriented, and orchestrated through traditional ETL tools. Pentaho remains a great way to visually design workflows and understand the foundational concepts behind modern data pipelines.

# 📦 What You Will Need

To run this project locally, you'll need to:

📥 Clone this repository

📦 Download Pentaho PDI 6 into the project structure

🚫 Add the pdi6/ folder to your .gitignore

It contains files larger than 100MB, which GitHub does not allow

🔑 Basic knowledge of APIs, especially how the TMDB API works

# Alternative setup:

Download this repository as a ZIP

Extract it locally

Manually place the folder pdi6/ into the project root

Do NOT commit this folder — keep it local only

# 📁 Final Structure on Your Machine
elt-oldschool-pentaho/
│── data/
│── pdi-repo/
│── pdi6/                  ← MANUAL DOWNLOAD (NOT VERSIONED)
│── scripts/
│── .env
│── .gitignore
│── docker-compose.yml
│── Dockerfile.pentaho6
│── README.md

# 🐳 Setting Up the Stack with Docker

With Docker and Docker Compose installed, simply run:

```bash
docker-compose up -d
```


# Your services will be available at:

MinIO: http://localhost:9001

WebSpoon: http://localhost:8080

# 🔐 Your .env File Must Contain
```bash
POSTGRES_USER=elt
POSTGRES_PASSWORD=elt123
POSTGRES_DB=eltlab

MINIO_ROOT_USER=admin
MINIO_ROOT_PASSWORD=admin123
MINIO_BUCKET=datalake

SUPERSET_ADMIN=admin
SUPERSET_ADMIN_PW=admin123
SUPERSET_ADMIN_EMAIL=admin@example.com
SUPERSET_SECRET_KEY=supersecretkey123
```

# 🧠 How the Workflow Works
## 1️⃣ Pentaho (via WebSpoon)

Using PDI, you can:

Extract data from the TMDB API

Transform the JSON payloads

Save the output locally inside the container

Trigger shell scripts to move files between components

## 2️⃣ MinIO (local S3)

MinIO stores your results following a medallion architecture:

datalake/
  bronze/
  silver/
  gold/


This simulates how modern cloud environments handle file-based data lakes, but entirely on your local machine.

# ✅ Conclusion

By running this project, you will:

- Spin up a reproducible ELT environment using Docker

- Work with Pentaho PDI 6 inside the browser

- Extract and transform data from the TMDB API

- Persist data in MinIO, following a Bronze → Silver → Gold flow

- Understand how legacy data pipelines operated before Spark and Airflow dominated the field