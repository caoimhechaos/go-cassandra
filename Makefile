
include $(GOROOT)/src/Make.inc

all: install

TARG=thriftlib/Cassandra

DIRS=\
  Cassandra\

GOFILES=\
  ttypes.go\
  Cassandra.go\


include $(GOROOT)/src/Make.pkg

