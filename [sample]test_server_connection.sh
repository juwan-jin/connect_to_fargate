python3 -m venv path/to/venv
source path/to/venv/bin/activate
pip3 install -r requirements.txt
export AWS_PROFILE=test_profile_name;aws sso login
connect_to_fargate.py
