##################################################

PREFIX?=	/usr/local
BINDIR?=	${PREFIX}/bin
MANDIR?=	${PREFIX}/man
DOCDIR?=	${PREFIX}/share/doc/pkg_online

INST_DIR?=	${INSTALL} -d

##################################################

.include "Makefile.version"

PROJECTNAME=	pkg_online

BIRTHDATE=	2008-02-03

MKMAN=		no

SCRIPTS=	pkg_summary2onelineinfo \
		pkg_summary2shortinfo pkg_summary2info \
		pkg_summary2field-index pkg_summary2all pkg_online_mkconf \
		pkg_online_find pkg_online_client

FILES=		README NEWS TODO pkg_online_client.env pkg_online_server.env

FILESDIR=				${DOCDIR}
FILESDIR_pkg_online_client.env=		${BINDIR}
FILESDIR_pkg_online_server.env=		${BINDIR}

##################################################

.PHONY: install-dirs
install-dirs:
	$(INST_DIR) ${DESTDIR}${BINDIR}
	$(INST_DIR) ${DESTDIR}${DOCDIR}
.if "$(MKMAN)" != "no"
	$(INST_DIR) ${DESTDIR}${MANDIR}/man1
.if "$(MKCATPAGES)" != "no"
	$(INST_DIR) ${DESTDIR}${MANDIR}/cat1
.endif
.endif

##################################################
.sinclude "Makefile.cvsdist"

.include <bsd.prog.mk>
