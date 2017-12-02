ifeq ($(msg),)
        msg = Commit by make git
endif

help:
	@echo "Usage:"
	@echo "make git msg=\"comment\""


.PHONY: git
git:
	git add -A .
	git commit -m "$(msg)"
	git push -u origin master
