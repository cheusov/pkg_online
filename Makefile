##################################################

DOCDIR?=	${PREFIX}/share/doc/pkg_online

##################################################

PROJECTNAME=	pkg_online

BIRTHDATE=	2008-02-03

SCRIPTS_CLIENT=	pkg_online_find pkg_online_client
SCRIPTS_SERVER=	pkg_summary2dict pkg_summary2onelineinfo \
		pkg_summary2shortinfo pkg_summary2info \
		pkg_summary2field-index pkg_summary2all pkg_online_mkconf
SCRIPTS?=	${SCRIPTS_CLIENT} ${SCRIPTS_SERVER}

FILES_COMMON=	README NEWS TODO 
FILES_CLIENT=	${FILES_COMMON} pkg_online_client.env
FILES_SERVER=	${FILES_COMMON} pkg_online_server.env
FILES?=		${FILES_CLIENT} ${FILES_SERVER}

FILESDIR=				${DOCDIR}
FILESDIR_pkg_online_client.env=		${BINDIR}
FILESDIR_pkg_online_server.env=		${BINDIR}

install-client:
	env FILES="${FILES_CLIENT}" SCRIPTS="${SCRIPTS_CLIENT}" ${MAKE} install
install-server:
	env FILES="${FILES_SERVER}" SCRIPTS="${SCRIPTS_SERVER}" ${MAKE} install

##################################################

.include "version.mk"
.include <mkc.prog.mk>
