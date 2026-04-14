@echo off

echo Creating app.py...
echo from flask import Flask> app.py
echo.>> app.py
echo app = Flask(__name__)>> app.py
echo.>> app.py
echo @app.route("/")>> app.py
echo def home():>> app.py
echo     return "Docker App Running">> app.py
echo.>> app.py
echo if __name__ == "__main__":>> app.py
echo     app.run(host="0.0.0.0", port=5000)>> app.py

echo Creating requirements.txt...
echo flask> requirements.txt

echo Creating Dockerfile...
echo FROM python:3.9> Dockerfile
echo WORKDIR /app>> Dockerfile
echo COPY . /app>> Dockerfile
echo RUN pip install -r requirements.txt>> Dockerfile
echo EXPOSE 5000>> Dockerfile
echo CMD ["python", "app.py"]>> Dockerfile

echo Done! All files created successfully 🚀
pause