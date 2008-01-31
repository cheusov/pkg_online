##################################################

PREFIX?=	/usr/local
BINDIR?=	${PREFIX}/bin
MANDIR?=	${PREFIX}/man
FILESDIR?=	${PREFIX}/libexec
DOCDIR?=	${PREFIX}/share/doc/pkg_online

INST_DIR?=	${INSTALL} -d

##################################################

VERSION=	0.1.0

BIRTHDATE=	2008-01-30

MKMAN=		no

SCRIPTS=	pkg_summary2pkgname_to_comment pkg_summary2info \
		pkg_summary2field-index pkg_summary2all pkg_online_mkconf \
		pkg_online_find pkg_online_client \
		pkg_online_env.sh

FILES=		README

FILESDIR_README=		${DOCDIR}
FILESMODE_pkg_online_env.sh=	${NONBINMODE}

##################################################

.PHONY: install-dirs
install-dirs:
	$(INST_DIR) ${DESTDIR}${BINDIR}
	$(INST_DIR) ${DESTDIR}${FILESDIR}
	$(INST_DIR) ${DESTDIR}${DOCDIR}
.if "$(MKMAN)" != "no"
	$(INST_DIR) ${DESTDIR}${MANDIR}/man1
.if "$(MKCATPAGES)" != "no"
	$(INST_DIR) ${DESTDIR}${MANDIR}/cat1
.endif
.endif

##################################################
.include "bsd.prog.mk"
