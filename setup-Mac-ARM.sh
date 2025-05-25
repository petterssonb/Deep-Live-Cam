!#/bin/bash
set -e

brew install python@3.10
brew install python-tk@3.10
python3.10 -m venv venv
source venv/bin/activate

pip install -r requirements.txt

pip uninstall onnxruntime onnxruntime-silicon
pip install onnxruntime-silicon==1.13.1
