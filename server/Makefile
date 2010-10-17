##################################################

DOCDIR?=	${PREFIX}/share/doc/pkg_online
EGDIR?=		${DOCDIR}/examples

##################################################

PROJECTNAME=	pkg_online_server

SCRIPTS=	pkg_summary2dict pkg_summary2onelineinfo \
		pkg_summary2shortinfo pkg_summary2info \
		pkg_summary2field-index pkg_summary2all pkg_online_mkconf
FILES=		pkg_online_server.env pkg_online_server.conf dictd.conf

FILESDIR=				${EGDIR}
FILESDIR_pkg_online_server.env=		${BINDIR}

INFILES=		pkg_online_server.env

##################################################

.include <mkc.files.mk>
