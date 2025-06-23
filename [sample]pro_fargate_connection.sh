SCRIPT_PATH="$(readlink -f "$0")"
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"
python3 -m venv ./venv
source ./venv/bin/activate
if command -v pip &> /dev/null; then
    (cd "$SCRIPT_DIR" && pip install -r requirements.txt)
else
    (cd "$SCRIPT_DIR" && pip3 install -r requirements.txt)
fi
export AWS_PROFILE=pro_profile_name;aws sso login
mkdir -p ~/.connect_to_fargate/log

SCRIPT_PATH="$(readlink -f "$0")"
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"
(cd "$SCRIPT_DIR" && connect_to_fargate.py "$@")
