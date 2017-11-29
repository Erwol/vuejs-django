# Activate virtualenv and initialize backend
cd backend
source venv/bin/activate
python manage.py runserver

cd ../frontend
npm run dev

echo "Development servers running"
