#!/bin/bash
#python -m venv venv

#source venv/bin/activate

#pip install --upgrade pip

#pip install --use-pep517 -r  ./requirements.txt

CHAINLIT_DIR=$(pip show chainlit | grep Location | cut -d " " -f 2)


cp ./frontend/dist/index.html $CHAINLIT_DIR/chainlit/frontend/dist/index.html

# Use the full path to chainlit
chainlit run app.py --port 8000