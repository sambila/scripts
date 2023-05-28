## check and restart postgres

import subprocess

def check_postgres_status():
    try:
        # Check the status of PostgreSQL service
        subprocess.check_output(['service', 'postgresql', 'status'])
        return True
    except subprocess.CalledProcessError:
        return False

def restart_postgres():
    try:
        # Restart the PostgreSQL service
        subprocess.check_output(['service', 'postgresql', 'restart'])
        print("PostgreSQL restarted successfully.")
    except subprocess.CalledProcessError as e:
        print("Failed to restart PostgreSQL:", e)

if not check_postgres_status():
    print("PostgreSQL is not running. Restarting...")
    restart_postgres()
else:
    print("PostgreSQL is already running.")
