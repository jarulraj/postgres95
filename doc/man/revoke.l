.\" This is -*-nroff-*-
.\" XXX standard disclaimer belongs here....
.\" $Header: /usr/local/cvsroot/postgres95-support/doc/man/revoke.l,v 1.1.1.1 1996/08/18 22:14:27 scrappy Exp $
.TH REVOKE SQL 11/05/95 Postgres95 Postgres95
.SH NAME
revoke \(em revoke access privileges
.SH SYNOPSIS
.nf
\fBrevoke\fR <privilege[,privilege,...]>
	\fBon\fR <rel1>[,...<reln>]
	\fBfrom\fR [\fBpublic\fR | group <group> | <username>]

	\fBprivilege\fR is {\fBALL\fR | \fBSELECT\fR | \fBINSERT\fR | \fBUPDATE\fR | \fBDELETE\fR | \fBRULE\fR}
.fi
.SH DESCRIPTION
.PP
.B revoke
allows you to revoke privileges given to all users or certain users or groups.
.SH EXAMPLES
.nf
--
--Example of a revoke
--
revoke insert
	on mytab
	from public
.fi
.SH "SEE ALSO"
grant(l)
