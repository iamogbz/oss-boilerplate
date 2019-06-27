upstream:
	@git remote add upstream https://github.com/iamogbz/oss-boilerplate
	@git push origin master
	@git push --all
	@echo "upstream: remote successfully configured"

eject:
	@git fetch --all --prune
	@git pull upstream master
	@git checkout -b boilerplate-ejection
	@git pull upstream boilerplate-ejection

ifndef VERBOSE
.SILENT:
endif
