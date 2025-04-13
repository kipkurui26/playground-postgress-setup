# playground-postgres-setup

A minimal Django project configured with PostgreSQL as the database. This setup is ideal for learning purposes, building APIs with Django REST Framework, or bootstrapping a full-stack project.

---

## 🚀 Features

- ✅ Django backend setup
- ✅ PostgreSQL database integration
- ✅ `.env` file for managing secrets and configs
- ✅ Django REST Framework ready
- ✅ Clean project structure

---

## 🛠️ Requirements

Before you begin, ensure you have the following installed:

- Python 3.8 or higher
- PostgreSQL
- `pip` (Python package manager)
- `venv` for virtual environments (recommended)

---

## 🔧 Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/kipkurui26/playground-postgress-setup.git
cd playground-postgres-setup
```

### 2. Create and activate a virtual environment

```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Create a `.env` file in the root directory

```env
# General Settings
DEBUG=True
SECRET_KEY=your-secret-key
ALLOWED_HOSTS=localhost,127.0.0.1

# Database Settings
DB_ENGINE=django.db.backends.postgresql
DB_NAME=your_db_name
DB_USER=your_db_user
DB_PASSWORD=your_db_password
DB_HOST=localhost
DB_PORT=5432
```

> 💡 Make sure `.env` is included in your `.gitignore` to keep secrets safe.

### 5. Apply database migrations

```bash
python manage.py makemigrations
python manage.py migrate
```

### 6. Start the development server

```bash
python manage.py runserver
```

Now, visit `http://127.0.0.1:8000` in your browser. 🎉

---

## 📁 Project Structure

```
playground-postgres-setup/
│
├── api/                  # Django app
├── server/               # Project settings and WSGI config
├── manage.py             # Django CLI entry point
├── requirements.txt      # Python dependencies
├── .gitignore            # Ignored files/folders
├── .env                  # Your environment variables (not tracked)
└── README.md             # This file
```

---

## 📌 Notes

- Make sure PostgreSQL is running locally and the credentials in your `.env` match your database setup.
- Set `DEBUG=False` and configure `ALLOWED_HOSTS` properly in production.
- To enhance security and configuration management, consider using [python-decouple](https://pypi.org/project/python-decouple/) or [django-environ](https://pypi.org/project/django-environ/).

---

## 📄 License

This project is licensed under the MIT License.  
Feel free to fork it, learn from it, and build cool stuff with it! 🚀

