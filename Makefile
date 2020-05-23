help:
	@echo
	@echo "======================================================================"
	@echo
	@echo "🛠  UTILS"
	@echo
	@echo "flask:      start built-in Flask dev server"
	@echo "uwsgi:      start uWSGI"
	@echo
	@echo "======================================================================"
	@echo

#
# 🛠 UTILS
#

flask:
	poetry run python myproject.py

uwsgi:
	poetry run uwsgi --socket 0.0.0.0:8000 --protocol=http -w wsgi
