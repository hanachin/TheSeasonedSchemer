SCM_CMD = gosh
N = 0

test:
ifeq ($(N),0)
	for i in test*.scm; do $(SCM_CMD) $$i; done
else
	$(SCM_CMD) test$(N).scm
endif

11:
	$(SCM_CMD) test11.scm

12:
	$(SCM_CMD) test12.scm
