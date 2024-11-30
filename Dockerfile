FROM ubundut22.04
RUN apt update -y && apt install -y nano && apt install Flask
EXPOSE 80
CMD ["bash"]
