echo ""
echo ""
echo "> Welcome to the vuejs-django setup"
echo "> Through the next steps you're going to configure a fully customized Django && Vue setup"
echo "!important > Please, take into consideration that at the moment this script doesn't checks if the introduced names follow conventions"
echo ""
echo ""

echo "> Introduce django project name"
read django_project_name

echo "> Introduce django app name"
read django_app_name

# Install virtual env
mkdir backend
cd backend
virtualenv venv

# Activate virtualenv
source venv/bin/activate

# Copy requirements file from root
cp ../setup/requirements.txt ./

# Install requirements
pip install -r requirements.txt

# Create project and app
django-admin startproject $django_project_name .
django-admin startapp $django_app_name

echo ""
echo ""
echo "> Backend installed. Procedding with frontend."
echo "!important > Leave the project name as 'frontend', otherwise you'll have to configure run-dev.sh and other files"
echo ""
echo ""
# Font end setup
cd ..
vue init webpack frontend
cd frontend
sudo npm install
sudo npm install vuex --save-dev


echo ""
echo ""
echo "¡Olé! Your development environment is ready!"
echo "Try running ren-dev.sh and enjoy"
echo "Have a good day, Ernesto"
echo ""
echo ""
