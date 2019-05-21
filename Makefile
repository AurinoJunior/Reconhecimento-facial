iniciando-programa: capturando_fotos treinarAPI reconhecimento
ambiente: pre-requisitos criando-ambiente 
	@echo "Configurando ambiente \n\n"

pre-requisitos:
	@echo "\n\n Instalando pre requisitos \n\n"
	sudo apt install python-pip && \
	sudo apt install python-virtualenv 
	# Entrar no site da anaconda e instalar ./Anaconda3.sh

criando-ambiente:
	@echo "\n\n Criando ambiente isolado \n\n" \
	python3 -m venv face-cam \
	source face-cam/bin/activate  \
	pip install Pillow \
	pip install opencv-python \ 
	pip install opencv-contrib-python \ 

capturando_fotos:
	python Face_Capture_With_Rotate.py

treinarAPI:
	python Trainer_All.py

reconhecimento:
	python Recogniser_Video_EigonFace.py
