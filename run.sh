echo "Use this token: $(python3 dashboard/token.py | cut -f 2 -d ' ')"
python3 manage.py runserver
