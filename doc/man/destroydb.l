.\" This is -*-nroff-*-
.\" XXX standard disclaimer belongs here....
.\" $Header: /usr/local/cvsroot/postgres95-support/doc/man/destroydb.l,v 1.1.1.1 1996/08/18 22:14:23 scrappy Exp $
.TH DESTROYDB SQL 01/23/93 Postgres95 Postgres95
.SH NAME
drop database \(em destroy an existing database
.SH SYNOPSIS
.nf
\fBdrop database\fR dbname
.fi
.SH DESCRIPTION
.BR "Drop database"
removes the catalog entries for an existing database and deletes the
directory containing the data.  It can only be executed by the
database administrator (see
.IR createdb (l)
for details).
.SH "SEE ALSO"
create database(l),
destroydb(1).
.SH BUGS
This query should 
.BR NOT
be executed interactively.  The 
.IR destroydb (1)
script should be used instead.
