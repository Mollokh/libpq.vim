" Vim syntax file
" Language: C PostgreSQL
" Maintainer: Mario St-Gelais <mario.stg HAT videotron point canada>
" Last Change: 2013-06-26
" URL: 
syn keyword postgresqlFunction PQnoticeReceiver PQnoticeProcessor
syn keyword postgresqlFunction PQconnectStart PQconnectStartParams PQconnectPoll PQconnectdb PQconnectdbParams PQsetdbLogin 
syn keyword postgresqlFunction PQfinish PQconninfoOption PQconninfoFree PQresetStart PQresetPoll PQreset PQgetCancel PQfreeCancel PQcancel PQrequestCancel
syn keyword postgresqlFunction PQdb PQuser PQpass PQhost PQport PQtty PQoptions PQstatus PQtransactionStatus PQparameterStatus PQprotocolVersion PQserverVersion PQerrorMessage PQsocket PQbackendPID PQconnectionNeedsPassword PQconnectionUsedPassword PQclientEncoding PQsetClientEncoding
syn keyword postgresqlFunction PQgetssl PQinitSSL PQinitOpenSSL PQsetErrorVerbosity PQtrace PQuntrace
syn keyword postgresqlFunction PQsetNoticeReceiver PQsetNoticeProcessor
syn keyword postgresqlFunction PQregisterThreadLock 
syn keyword postgresqlFunction PQexec PQexecParams PQprepare PQexecPrepared 
syn keyword postgresqlFunction PQsendQuery PQsendQueryParams PQsendPrepare PQsendQueryPrepared PQsetSingleRowMode PQgetResult
syn keyword postgresqlFunction PQnotifies PQputCopyData PQputCopyEnd PQgetCopyData 
syn keyword postgresqlFunction PQgetline PQgetlineAsync PQputnbytes PQendcopy 
syn keyword postgresqlFunction PQsetnonblocking PQisnonblocking PQisthreadsafe 
syn keyword postgresqlFunction PQping PQpingParams PQflush
syn keyword postgresqlFunction PQfn
syn keyword postgresqlFunction PQresultStatus PQresStatus PQresultErrorMessage PQresultErrorField PQntuples PQnfields PQbinaryTuples PQfname PQfnumber PQftype PQfsize PQfmod PQcmdStatus PQoidStatus PQoidValue PQcmdTuples PQgetvalue PQgetlength PQgetisnull PQnparams PQparamtype
syn keyword postgresqlFunction PQdescribePrepared PQdescribePortal PQsendDescribePrepared PQsendDescribePortal 
syn keyword postgresqlFunction PQclear PQfreemem 
syn keyword postgresqlFunction PQmakeEmptyPGresult PQcopyResult PQsetResultAttrs PQresultAlloc PQsetvalue
syn keyword postgresqlFunction PQescapeStringConn PQescapeLiteral PQescapeIdentifier PQescapeByteaConn PQunescapeBytea
syn keyword postgresqlFunction PQescapeString PQescapeBytea
syn keyword postgresqlFunction PQprint PQdisplayTuples PQprintTuples 
syn keyword postgresqlFunction lo_open lo_close lo_read lo_write lo_lseek lo_creat lo_create lo_tell lo_truncate lo_unlink lo_import lo_import_with_oid lo_export
syn keyword postgresqlFunction PQlibVersion PQmblen PQdsplen PQenv2encoding
syn keyword postgresqlFunction PQencryptPassword
syn keyword postgresqlFunction pg_char_to_encoding pg_encoding_to_char pg_valid_server_encoding_id

syn keyword postgresqlConstant PG_COPYRES_NOTICEHOOKS PG_COPYRES_EVENTS PG_COPYRES_ATTRS PG_COPYRES_TUPLES 
syn keyword postgresqlConstant CONNECTION_OK CONNECTION_BAD CONNECTION_STARTED CONNECTION_MADE CONNECTION_AWAITING_RESPONSE CONNECTION_AUTH_OK CONNECTION_SETENV CONNECTION_SSL_STARTUP CONNECTION_NEEDED
syn keyword postgresqlConstant PGRES_POLLING_FAILED PGRES_POLLING_READING PGRES_POLLING_WRITING PGRES_POLLING_OK PGRES_POLLING_ACTIVE
syn keyword postgresqlConstant PGRES_EMPTY_QUERY PGRES_COMMAND_OK PGRES_TUPLES_OK PGRES_COPY_OUT PGRES_COPY_IN PGRES_BAD_RESPONSE PGRES_NONFATAL_ERROR PGRES_FATAL_ERROR PGRES_COPY_BOTH PGRES_SINGLE_TUPLE
syn keyword postgresqlConstant PQTRANS_IDLE PQTRANS_ACTIVE PQTRANS_INTRANS PQTRANS_INERROR PQTRANS_UNKNOWN
syn keyword postgresqlConstant PQERRORS_TERSE PQERRORS_DEFAULT PQERRORS_VERBOSE
syn keyword postgresqlConstant PQPING_OK PQPING_REJECT PQPING_NO_RESPONSE PQPING_NO_ATTEMPT

syn keyword postgresqlTypeDef ConnStatusType PostgresPollingStatusType ExecStatusType PGTransactionStatusType PGVerbosity PGPing
syn keyword postgresqlTypeDef pqbool

syn keyword postgresqlStruct PGconn PGresult PGcancel PGnotify
syn keyword postgresqlStruct PQconninfoOption PQArgBlock PGresAttDesc 

syn keyword postgresqlType PQisBusy PQconsumeInput

if version >= 508 || !exists("did_postgresql_syntax_inits")
  if version < 508
    let did_postgresql_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

    HiLink postgresqlFunction Function
    HiLink postgresqlConstant Constant
    HiLink postgresqlTypeDef Typedef
    HiLink postgresqlStruct Structure
    HiLink postgresqlType Type

    delcommand HiLink
endif
