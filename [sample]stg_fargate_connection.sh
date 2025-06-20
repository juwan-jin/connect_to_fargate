python3 -m venv ./venv
source ./venv/bin/activate
if command -v pip &> /dev/null; then
    pip install -r requirements.txt
else
    pip3 install -r requirements.txt
fi
export AWS_PROFILE=stg_profile_name;aws sso login
mkdir -p ~/.connect_to_fargate/log
./connect_to_fargate.py "$@"
