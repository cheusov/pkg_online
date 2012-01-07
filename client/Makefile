PSU_LIBEXECDIR ?=	${LIBEXECDIR}/psu

PROJECTNAME =	pkg_online_client

SCRIPTS =	pkg_online_find pkg_online_client
FILES =		pkg_online_client.env pkg_online_client.conf

FILESDIR =				${EGDIR}
FILESDIR_pkg_online_client.env =	${BINDIR}

INFILES =	pkg_online_client.env
INSCRIPTS =	pkg_online_client

INTEXTS_REPLS =	psu_libexecdir ${PSU_LIBEXECDIR}

.include <mkc.files.mk>
