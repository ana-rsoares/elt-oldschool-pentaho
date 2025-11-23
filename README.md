# ELT Old School Pentaho

In this project, I'm using:

- **Pentaho Data Integration (PDI 6)** 
- **WebSpoon (Pentaho on Browser)**  
- **MinIO (S3 local)**  
- **Docker + Docker Compose**  
- **External APIs (TMDB)** 

The main reason to create this project is to simulate how the first Data Lake architectures were made.

Pentaho is a great way to implement visualy a data pipeline.

# What you will need

- **clone this repo**
- **download pdi on the following path:**
- **remember to put the pdi6 legacy pentaho on your the .gitignore file, because it has files upper to 100MB, which is not allowed by the GitHub.**

OR

1. Download the repo ZIP
2. Extract it locally
3. Copy the folder **`pdi6/`** on the root **(DO NOT COMMIT, REMEMBER)**


# Final structure on your local machine
elt-oldschool-pentaho/
|── data
|── pdi-repo
│── pdi6/ ← MANUAL DOWNLOAD
│── scripts
|── .env
|── .gitignore
│── docker-compose.yml
│── Dockerfile.pentaho6
|── README.md


# 🐳 Settiing up the stack with Docker

Com Docker e Docker Compose instalados, execute:

```bash
docker-compose up -d
```

MinIO → http://localhost:9001
WebSpoon → http://localhost:8080

# Your .env file must contain:

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
