PSU_LIBEXECDIR ?=	${LIBEXECDIR}/psu

PROJECTNAME =	pkg_online_client

SCRIPTS =	pkg_online_find pkg_online_client
FILES =		pkg_online_client.env pkg_online_client.conf

FILESDIR =				${EGDIR}
FILESDIR_pkg_online_client.env =	${BINDIR}

MAN =		pkg_online_client.1 pkg_online_find.1
INFILES =	pkg_online_client.env ${MAN}
INSCRIPTS =	pkg_online_client

INTEXTS_REPLS =	psu_libexecdir ${PSU_LIBEXECDIR}

.include <mkc.files.mk>
