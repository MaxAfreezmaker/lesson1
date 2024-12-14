FROM python:3.8-slim
#ubundut22.04

# Ustawiamy katalog roboczy
WORKDIR /app

# Kopiujemy wymagane pliki, jeśli masz requirements.txt
COPY . /app/
*-
RUN pip install --no-cache-dir -r requirements.txt
# Jeśli nie masz requirements.txt, możesz użyć tej komendy, by zainstalować Flask bezpośrednio
RUN pip install Flask
# RUN apt update -y && apt install -y nano && apt install Flask
EXPOSE 80

# Uruchamiamy aplikację
CMD ["python", "main.py"]
#CMD ["bash"]
