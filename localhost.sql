-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2017 at 01:20 AM
-- Server version: 5.7.16-log
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `casebased`
--
CREATE DATABASE IF NOT EXISTS `casebased` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `casebased`;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `case_id` int(11) NOT NULL,
  `ora_id` text NOT NULL,
  `arg1` varchar(100) NOT NULL,
  `arg2` varchar(100) NOT NULL,
  `ser` varchar(100) NOT NULL,
  `caused` text NOT NULL,
  `actions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`case_id`, `ora_id`, `arg1`, `arg2`, `ser`, `caused`, `actions`) VALUES
(3, 'ORA-00000: normal, successful completion', 'Null', 'Null', 'normal', ' Normal exit.', ' None'),
(4, 'ORA-00001: unique constraint (string.string) violated', 'Null', 'Null', 'normal', ' An UPDATE or INSERT statement attempted to insert a duplicate key. For Trusted Oracle configured in DBMS MAC mode, you may see this message if a duplicate entry exists at a different level.', ' Either remove the unique restriction or do not insert the key.'),
(5, 'ORA-00017: session requested to set trace event', 'Null', 'Null', 'normal', ' The current session was requested to set a trace event by another session.', ' This is used internally; no action is required.'),
(6, 'ORA-00018: maximum number of sessions exceeded', 'Null', 'Null', 'normal', ' All session state objects are in use.', ' Increase the value of the SESSIONS initialization parameter.'),
(7, 'ORA-00019: maximum number of session licenses exceeded', 'Null', 'Null', 'normal', ' All licenses are in use.', ' Increase the value of the LICENSE MAX SESSIONS initialization parameter.'),
(8, 'ORA-00020: maximum number of processes (string) exceeded', 'Null', 'Null', 'normal', ' All process state objects are in use.', ' Increase the value of the PROCESSES initialization parameter.'),
(9, 'ORA-00021: session attached to some other process; cannot switch session', 'Null', 'Null', 'normal', ' The user session is currently used by others.', ' Do not switch to a session attached to some other process.'),
(10, 'ORA-00022: invalid session ID; access denied', 'Null', 'Null', 'normal', ' Either the session specified does not exist or the caller does not have the privilege to access it.', ' Specify a valid session ID that you have privilege to access, that is either you own it or you have the CHANGE_USER privilege.'),
(11, 'ORA-00023: session references process private memory; cannot detach session', 'Null', 'Null', 'normal', ' An attempt was made to detach the current session when it contains references to process private memory.', ' A session may contain references to process memory (PGA) if it has an open network connection, a very large context area, or operating system privileges. To allow the detach, it may be necessary to close the session\'s database links and/or cursors. Detaching a session with operating system privileges is always disallowed.'),
(12, 'ORA-00024: logins from more than one process not allowed in single-process mode', 'Null', 'Null', 'normal', ' Trying to login more than once from different processes for ORACLE started in single-process mode.', ' Logoff from the other process.'),
(13, 'ORA-00025: failed to allocate string', 'Null', 'Null', 'normal', ' Out of memory.', ' Restart with larger sga heap.'),
(14, 'ORA-00026: missing or invalid session ID', 'Null', 'Null', 'normal', ' Missing or invalid session ID string for ALTER SYSTEM KILL SESSION.', ' Retry with a valid session ID.'),
(15, 'ORA-00027: cannot kill current session', 'Null', 'Null', 'normal', ' Attempted to use ALTER SYSTEM KILL SESSION to kill the current session.', ' None'),
(16, 'ORA-00028: your session has been killed', 'Null', 'Null', 'normal', ' A privileged user has killed your session and you are no longer logged on to the database.', ' Login again if you wish to continue working.'),
(17, 'ORA-00029: session is not a user session', 'Null', 'Null', 'normal', ' The session ID specified in an ALTER SYSTEM KILL SESSION command was not a user session (for example, recursive, etc.).', ' Retry with a user session ID.'),
(18, 'ORA-00030: User session ID does not exist.', 'Null', 'Null', 'normal', ' The user session ID no longer exists, probably because the session was logged out.', ' Use a valid session ID.'),
(19, 'ORA-00031: session marked for kill', 'Null', 'Null', 'normal', ' The session specified in an ALTER SYSTEM KILL SESSION command cannot be killed immediately (because it is rolling back or blocked on a network operation), but it has been marked for kill. This means it will be killed as soon as possible after its current uninterruptable operation is done.', ' No action is required for the session to be killed, but further executions of the ALTER SYSTEM KILL SESSION command on this session may cause the session to be killed sooner.'),
(20, 'ORA-00032: invalid session migration password', 'Null', 'Null', 'normal', ' The session migration password specified in a session creation call was invalid (probably too long).', ' Retry with a valid password (less than 30 chars).'),
(21, 'ORA-00033: current session has empty migration password', 'Null', 'Null', 'normal', ' An attempt was made to detach or clone the current session and it has an empty migration password. This is not allowed.', ' Create the session with a non-empty migration password.'),
(22, 'ORA-00034: cannot string in current PL/SQL session', 'Null', 'Null', 'normal', ' An attempt was made to issue a commit or rollback from a PL/SQL object (procedure, function, package) in a session that has this disabled (by \'alter session disable commit in procedure\')', ' Enable commits from PL/SQL in this session, or do not attempt to use commit or rollback in PL/SQL when they are disabled in the current session.'),
(23, 'ORA-00036: maximum number of recursive SQL levels (string) exceeded', 'Null', 'Null', 'normal', ' An attempt was made to go more than the specified number of recursive SQL levels.', ' Remove the recursive SQL, possibly a recursive trigger.'),
(24, 'ORA-00037: cannot switch to a session belonging to a different server group', 'Null', 'Null', 'normal', ' An attempt was made to switch to a session in a different server group. This is not allowed.', ' Make sure the server switches to a session that belongs to its server group.'),
(25, 'ORA-00038: Cannot create session: server group belongs to another user', 'Null', 'Null', 'normal', ' An attempt was made to create a non-migratable session in a server group that is owned by a different user.', ' A server group is owned by the first user who logs into a server in the server group in non-migratable mode. All subsequent non-migratable mode logins must be made by the user who owns the server group. To have a different user login in non-migratable mode, the ownership of the server group will have to be changed. This can be done by logging off all current sessions and detaching from all existing servers in the server group and then having the new user login to become the new owner.'),
(26, 'ORA-00039: error during periodic action', 'Null', 'Null', 'normal', ' An unexpected error occurred while executing a periodically invoked', ' Check the error stack for detailed error information.'),
(27, 'ORA-00040: active time limit exceeded - call aborted', 'Null', 'Null', 'normal', ' The Resource Manager SWITCH_TIME limit was exceeded.', ' Reduce the complexity of the update or query, or contact your database administrator for more information.'),
(28, 'ORA-00041: active time limit exceeded - session terminated', 'Null', 'Null', 'normal', ' The Resource Manager SWITCH_TIME limit was exceeded.', ' Reduce the complexity of the update or query, or contact your database administrator for more information.'),
(29, 'ORA-00042: Unknown Service name string', 'Null', 'Null', 'normal', ' An attempt was made to use an invalid application service.', ' Use a valid service name from SERVICE$ or add a new service using the DBMS_SERVICE package.'),
(30, 'ORA-00043: remote operation failed', 'Null', 'Null', 'normal', ' Execution of the inter-instance operation failed.', ' Check the status of the target instance. The operation may have partially executed. Verify the result of the intended operation.'),
(31, 'ORA-00044: timed_statistics must be TRUE when statistics_level is not BASIC', 'Null', 'Null', 'normal', ' The user attempted to set timed_statistics to FALSE when statistics_level was not BASIC. timed_statistics is required to be TRUE to collect meaningful statistics when statistics_level is set to TYPICAL or ALL.', ' Either set timed_statistics to TRUE or set statistics_level to BASIC.'),
(32, 'ORA-00050: operating system error occurred while obtaining an enqueue', 'Null', 'Null', 'normal', ' Could not obtain the operating system resources necessary to cover an oracle enqueue. This is normally the result of an operating system user quota that is too low.', ' Look up the operating system error in your system documentation and perform the needed action.'),
(33, 'ORA-00051: timeout occurred while waiting for a resource', 'Null', 'Null', 'normal', ' Usually due to a dead instance.', ' Check for any dead, unrecovered instances and recover them.'),
(34, 'ORA-00052: maximum number of enqueue resources (string) exceeded', 'Null', 'Null', 'normal', ' Ran out of enqueue resources.', ' Increase the value of the ENQUEUE_RESOURCES initialization parameter.'),
(35, 'ORA-00053: maximum number of enqueues exceeded', 'Null', 'Null', 'normal', ' Ran out of enqueue state objects.', ' Increase the value of the ENQUEUES initialization parameter.'),
(36, 'ORA-00054: resource busy and acquire with NOWAIT specified or timeout expired', 'Null', 'Null', 'normal', ' Interested resource is busy.', ' Retry if necessary or increase timeout.'),
(37, 'ORA-00055: maximum number of DML locks exceeded', 'Null', 'Null', 'normal', ' Ran out of DML lock state objects.', ' Increase the value of the DML_LOCKS initialization parameter and warm start.'),
(38, 'ORA-00056: DDL lock on object \'string.string\' is already held in an incompatible mode', 'Null', 'Null', 'normal', ' An attempt was made to acquire a DDL lock that is already locked.', ' This happens if you attempt to drop a table that has parse locks on it.'),
(39, 'ORA-00057: maximum number of temporary table locks exceeded', 'Null', 'Null', 'normal', ' The number of temporary tables equals or exceeds the number of temporary table locks. Temporary tables are often created by large sorts.', ' Increase the value of the TEMPORARY_TABLE_LOCKS initialization parameter and warm start.'),
(40, 'ORA-00058: DB_BLOCK_SIZE must be string to mount this database (not string)', 'Null', 'Null', 'normal', ' DB_BLOCK_SIZE initialization parameter is wrong for the database being mounted. It does not match the value used to create the database.', ' Fix the value of the DB_BLOCK_SIZE parameter or mount a database that matches the value.'),
(41, 'ORA-00059: maximum number of DB_FILES exceeded', 'Null', 'Null', 'normal', ' The value of the DB_FILES initialization parameter was exceeded.', ' Increase the value of the DB_FILES parameter and warm start.'),
(42, 'ORA-00060: deadlock detected while waiting for resource', 'Null', 'Null', 'normal', ' Transactions deadlocked one another while waiting for resources.', ' Look at the trace file to see the transactions and resources involved. Retry if necessary.'),
(43, 'ORA-00061: another instance has a different DML_LOCKS setting', 'Null', 'Null', 'normal', ' The shared instance being started is using DML locks, and the running instances are not, or vice-versa.', ' Ensure that all instances\' INIT.ORA files specify the DML_LOCKS parameter as 0 or all as non-zero.'),
(44, 'ORA-00062: DML full-table lock cannot be acquired; DML_LOCKS is 0', 'Null', 'Null', 'normal', ' The instance was started with DML_LOCKS = 0, and the statement being executed needs a full-table lock (S, X, or SSX).', ' Restart the instance with DML_LOCKS not equal to zero, and reexecute the statement.'),
(45, 'ORA-00063: maximum number of log files exceeded string', 'Null', 'Null', 'normal', ' The number of log files specificied exceeded the maximum number of log files supported in this release.', ' Re-create the control file with the highest number of log files no greater than the maximum supported in this release.'),
(46, 'ORA-00064: object is too large to allocate on this O/S (string,string,string)', 'Null', 'Null', 'normal', ' An initialization parameter was set to a value that required allocating more contiguous space than can be allocated on this operating system.', ' Reduce the value of the initialization parameter.'),
(47, 'ORA-00065: initialization of FIXED_DATE failed', 'Null', 'Null', 'normal', ' The FIXED_DATE string was not in date format yyyy-mm-dd:hh24:mi:ss.', ' Make sure the initialization parameter is in the correct date format.'),
(48, 'ORA-00066: SID string contains an illegal character', 'Null', 'Null', 'normal', ' The specified SID contains an illegal character which cannot occur in an SPFILE setting. Illegal characters include ,#"\'=() and whitespace.', ' Use a SID that does not contain a special character or whitespace.'),
(49, 'ORA-00067: invalid value string for parameter string; must be at least string', 'Null', 'Null', 'normal', ' The value for the initialization parameter is invalid.', ' Choose a value as indicated by the message.'),
(50, 'ORA-00068: invalid value string for parameter string, must be between string and string', 'Null', 'Null', 'normal', ' The value for the initialization parameter is invalid.', ' Choose a value as indicated by the message.'),
(51, 'ORA-00069: cannot acquire lock -- table locks disabled for string', 'Null', 'Null', 'normal', ' A command was issued that tried to lock the table indicated in the message. Examples of commands that can lock tables are: LOCK TABLE, ALTER TABLE ... ADD (...), and so on.', ' Use the ALTER TABLE ... ENABLE TABLE LOCK command, and retry the command.'),
(52, 'ORA-00070: command string is not valid', 'Null', 'Null', 'normal', ' An invalid debugger command was specified.', ' Type HELP to see the list of available commands.'),
(53, 'ORA-00071: process number must be between 1 and string', 'Null', 'Null', 'normal', ' An invalid process number was specified.', ' Specify a valid process number.'),
(54, 'ORA-00072: process "string" is not active', 'Null', 'Null', 'normal', ' An invalid process was specified.', ' Specify a valid process.'),
(55, 'ORA-00073: command string takes between string and string argument(s)', 'Null', 'Null', 'normal', ' An incorrect number of arguments was specified.', ' Specify the correct number of arguments. Type HELP to see the list of commands and their syntax.'),
(56, 'ORA-00074: no process has been specified', 'Null', 'Null', 'normal', ' No debug process has been specified.', ' Specify a valid process.'),
(57, 'ORA-00075: process "string" not found in this instance', 'Null', 'Null', 'normal', ' The specified process was not logged on to the current instance.', ' Specify a valid process.'),
(58, 'ORA-00076: dump string not found', 'Null', 'Null', 'normal', ' An attempt was made to invoke a dump that does not exist.', ' Type DUMPLIST to see the list of available dumps.'),
(59, 'ORA-00077: dump string is not valid', 'Null', 'Null', 'normal', ' An attempt was made to invoke an invalid dump.', ' Try another dump.'),
(60, 'ORA-00078: cannot dump variables by name', 'Null', 'Null', 'normal', ' An attempt was made to dump a variable by name on a system that does not support this feature.', ' Try the PEEK command.'),
(61, 'ORA-00079: variable string not found', 'Null', 'Null', 'normal', ' An attempt was made to dump a variable that does not exist.', ' Use a valid variable name.'),
(62, 'ORA-00080: invalid global area specified by level string', 'Null', 'Null', 'normal', ' An attempt was made to dump an invalid global area.', ' Use level 1 for the PGA, 2 for the SGA, and 3 for the UGA. Use <extra + level> to dump global area <level> as well as <extra> bytes for every pointer; <extra> must be a multiple of 4.'),
(63, 'ORA-00081: address range [string, string) is not readable', 'Null', 'Null', 'normal', ' An attempt was made to read/write an invalid memory address range.', ' Try another address or length.'),
(64, 'ORA-00082: memory size of string is not in valid set of [1], [2], [4]stringstringstringstringstring', 'Null', 'Null', 'normal', ' An invalid length was specified for the POKE command.', ' Use a valid length (either 1, 2, 4, or possibly 8).'),
(65, 'ORA-00083: warning: possibly corrupt SGA mapped', 'Null', 'Null', 'normal', ' Even though there may be SGA corruptions, the SGA was mapped.', ' Use the DUMPSGA command to dump the SGA.'),
(66, 'ORA-00084: global area must be PGA, SGA, or UGA', 'Null', 'Null', 'normal', ' An attempt was made to dump an invalid global area.', ' Specify either PGA, SGA, or UGA.'),
(67, 'ORA-00085: current call does not exist', 'Null', 'Null', 'normal', ' An invalid attempt was made to dump the current call heap.', ' Wait until the process starts a call.'),
(68, 'ORA-00086: user call does not exist', 'Null', 'Null', 'normal', ' An invalid attempt was made to dump the user call heap.', ' Wait until the process starts a call.'),
(69, 'ORA-00087: command cannot be executed on remote instance', 'Null', 'Null', 'normal', ' Cluster database command issued for non cluster database ORADEBUG command.', ' Issue the command without the cluster database syntax.'),
(70, 'ORA-00088: command cannot be executed by shared server', 'Null', 'Null', 'normal', ' Debug command issued on shared server.', ' Reissue the command using a dedicated server.'),
(71, 'ORA-00089: invalid instance number in ORADEBUG command', 'Null', 'Null', 'normal', ' An invalid instance number was specified in a cluster database ORADEBUG command.', ' Reissue the command with valid instance numbers.'),
(72, 'ORA-00090: failed to allocate memory for cluster database ORADEBUG command', 'Null', 'Null', 'normal', ' Could not allocate memory needed to execute cluster database oradebug.', ' Reissue the command on each instance with single-instance oradebug.'),
(73, 'ORA-00091: LARGE_POOL_SIZE must be at least string', 'Null', 'Null', 'normal', ' The value of LARGE_POOL_SIZE is below the minimum size.', ' Increase the value of LARGE_POOL_SIZE past the minimum size.'),
(74, 'ORA-00092: LARGE_POOL_SIZE must be greater than LARGE_POOL_MIN_ALLOC', 'Null', 'Null', 'normal', ' The value of LARGE_POOL_SIZE is less than the value of LARGE_POOL_MIN_ALLOC.', ' Increase the value of LARGE_POOL_SIZE past the value of LARGE_POOL_MIN_ALLOC.'),
(75, 'ORA-00093: string must be between string and string', 'Null', 'Null', 'normal', ' The parameter value is not in a valid range.', ' Modify the parameter value to be within the specified range.'),
(76, 'ORA-00094: string requires an integer value', 'Null', 'Null', 'normal', ' The parameter value is not an integer.', ' Modify the parameter value to be an integer.'),
(77, 'ORA-00096: invalid value string for parameter string, must be from among string', 'Null', 'Null', 'normal', ' The value for the initialization parameter is invalid.', ' Choose a value as indicated by the message.'),
(78, 'ORA-00097: use of Oracle SQL feature not in SQL92 string Level', 'Null', 'Null', 'normal', ' Usage of Oracle\'s SQL extensions.', ' None'),
(79, 'ORA-00098: creating or mounting the database requires a parameter file', 'Null', 'Null', 'normal', ' An attempt was made to create or mount the database when the instance was started without a parameter file.', ' Restart the instance with a parameter file.'),
(80, 'ORA-00099: warning: no parameter file was specified', 'Null', 'Null', 'normal', ' Even though no parameter file was specified, the instance was started.', ' None'),
(81, 'ORA-00100: no data found', 'Null', 'Null', 'normal', ' An application made reference to unknown or inaccessible data.', ' Handle this condition within the application or make appropriate modifications to the application code. NOTE: If the application uses Oracle-mode SQL instead of ANSI-mode SQL, ORA-01403 will be generated instead of ORA-00100.'),
(82, 'ORA-00101: invalid specification for system parameter DISPATCHERS', 'Null', 'Null', 'normal', ' The syntax for the DISPATCHERS parameter is incorrect.', ' Refer to the manual for correct syntax.'),
(83, 'ORA-00102: network protocol string cannot be used by dispatchers', 'Null', 'Null', 'normal', ' The network specified in DISPATCHERS does not have the functionality required by the dispatchers.', ' Refer to the manual on network protocols supported by the dispatchers.'),
(84, 'ORA-00103: invalid network protocol; reserved for use by dispatchers', 'Null', 'Null', 'normal', ' The network specified in the SQL*Net connect string is reserved for use by the dispatchers.', ' Specify other network protocols in the connection string.'),
(85, 'ORA-00104: deadlock detected; all public servers blocked waiting for resources', 'Null', 'Null', 'normal', ' All available public servers are servicing requests that require resources locked by a client which is unable to get a public server to release the resources.', ' Increase the limit for the system parameter MAX_SHARED_SERVERS as the system will automaticaly start up new servers to break the deadlock until the number of servers reaches the value specified in MAX_SHARED_SERVERS.'),
(86, 'ORA-00105: too many dispatcher configurations', 'Null', 'Null', 'normal', ' Too many dispatcher configurations have been specified. No more can be added.', ' Consolidate the dispatcher configurations if possible.'),
(87, 'ORA-00106: cannot startup/shutdown database when connected to a dispatcher', 'Null', 'Null', 'normal', ' An attempt was made to startup/shutdown database when connected to a shared server via a dispatcher.', ' Re-connect as user INTERNAL without going through the dispatcher. For most cases, this can be done by connect to INTERNAL without specifying a network connect string.'),
(88, 'ORA-00107: failed to connect to ORACLE listener process', 'Null', 'Null', 'normal', ' Most likely due to the fact that ORACLE listener has not been started.', ' Start ORACLE listener if it has not been started. Or else contact your ORACLE representative.'),
(89, 'ORA-00108: failed to set up dispatcher to accept connection asynchronously', 'Null', 'Null', 'normal', ' Most likely due to the fact that the network protocol used by the the dispatcher does not support aynchronous operations.', ' Contact your ORACLE representative.'),
(90, 'ORA-00109: invalid value for attribute string: string', 'Null', 'Null', 'normal', ' The value specified for the attribute was incorrect.', ' Refer to the manual for the proper values.'),
(91, 'ORA-00110: invalid value string for attribute string, must be between string and string', 'Null', 'Null', 'normal', ' The value specified for the attribute was incorrect.', ' Specify a value within the range allowed.'),
(92, 'ORA-00111: invalid attribute string', 'Null', 'Null', 'normal', ' The specified attribute was not recognized.', ' Refer to the manual for the proper keyword to use to specify a dispatcher attribute.'),
(93, 'ORA-00112: value of string is null', 'Null', 'Null', 'normal', ' The attribute was specified with no value.', ' Specify a non-null value.'),
(94, 'ORA-00113: protocol name string is too long', 'Null', 'Null', 'normal', ' A protocol name specified in the DISPATCHERS system parameter is too long.', ' Use a valid protocol name for the DISPATCHERS value.'),
(95, 'ORA-00114: missing value for system parameter SERVICE_NAMES', 'Null', 'Null', 'normal', ' No value was specified for the SERVICE_NAMES system parameter, nor for the DB_NAME parameter.', ' Add an SERVICE_NAMES or DB_NAME definition to the INIT.ORA file. By default, SERVICE_NAMES is the value of DB_NAME unless SERVICE_NAMES is explicitly specified.'),
(96, 'ORA-00115: connection refused; dispatcher connection table is full', 'Null', 'Null', 'normal', ' A connection request was refused by a dispatcher because the dispatcher cannot support any more connections.', ' Connect to a different dispatcher, or use a dedicated server.'),
(97, 'ORA-00116: SERVICE_NAMES name is too long', 'Null', 'Null', 'normal', ' A service name specified in the SERVICE_NAMES system parameter is too long.', ' Use a shorter name in the SERVICE_NAMES value (<= 255 chars).'),
(98, 'ORA-00117: PROTOCOL, ADDRESS or DESCRIPTION must be specified', 'Null', 'Null', 'normal', ' PROTOCOL, ADDRESS or DESCRIPTION was not specified.', ' Use one of the attributes: PROTOCOL, ADDRESS or DESCRIPTION to specify the listening address for dispatchers.'),
(99, 'ORA-00118: Only one of PROTOCOL, ADDRESS or DESCRIPTION may be specified', 'Null', 'Null', 'normal', ' More than one of PROTOCOL, ADDRESS or DESCRIPTION was specified.', ' Use only one of the attributes: PROTOCOL, ADDRESS or DESCRIPTION to specify the listening address for dispatchers.'),
(100, 'ORA-00119: invalid specification for system parameter string', 'Null', 'Null', 'normal', ' The syntax for the specified parameter is incorrect.', ' Refer to the Oracle Reference Manual for the correct syntax.'),
(101, 'ORA-00122: cannot initialize network configuration', 'Null', 'Null', 'normal', ' ORACLE could not initialize SQL*Net version 2.', ' Check the error stack for detailed information.'),
(102, 'ORA-00123: idle public server terminating', 'Null', 'Null', 'normal', ' Too many idle servers were waiting on the common queue.', ' This error is used internally, no action is required.'),
(103, 'ORA-00125: connection refused; invalid presentation', 'Null', 'Null', 'normal', ' The PRESENTATION in the CONNECT_DATA of the TNS address DESCRIPTION is not correct or is not supported.', ' Correct the PRESENTATION specified in the TNS address.'),
(104, 'ORA-00126: connection refused; invalid duplicity', 'Null', 'Null', 'normal', ' The DUPLICITY in the CONNECT_DATA of the TNS address DESCRIPTION is not correct or is not supported.', ' Correct the DUPLICITY specified in the TNS address.'),
(105, 'ORA-00127: dispatcher string does not exist', 'Null', 'Null', 'normal', ' There is currently no dispatcher running with the specified name.', ' Retry with a name of the form "D###" denoting an existing dispatcher process.'),
(106, 'ORA-00128: this command requires a dispatcher name', 'Null', 'Null', 'normal', ' Wrong syntax for ALTER SYSTEM SHUTDOWN', ' Use correct syntax: ALTER SYSTEM SHUTDOWN [ IMMEDIATE ] \'dispatcher name\''),
(107, 'ORA-00129: listener address validation failed \'string\'', 'Null', 'Null', 'normal', ' An error was encountered while validating the listener address.', ' Resolve error or contact your ORACLE representative.'),
(108, 'ORA-00130: invalid listener address \'string\'', 'Null', 'Null', 'normal', ' The listener address specification is not valid.', ' Make sure that all fields in the listener address (protocol, port, host, key, ...) are correct.'),
(109, 'ORA-00131: network protocol does not support registration \'string\'', 'Null', 'Null', 'normal', ' The specified protocol does not support async notification.', ' Refer to the manual for information on supported network protocols.'),
(110, 'ORA-00132: syntax error or unresolved network name \'string\'', 'Null', 'Null', 'normal', ' Listener address has syntax error or cannot be resolved.', ' If a network name is specified, check that it corresponds to an entry in TNSNAMES.ORA or other address repository as configured for your system. Make sure that the entry is syntactically correct.'),
(111, 'ORA-00133: value of string is too long', 'Null', 'Null', 'normal', ' The value specified for the attribute was too long.', ' Use shorter names and keywords or remove unneeded blanks.'),
(112, 'ORA-00134: invalid DISPATCHERS specification #string', 'Null', 'Null', 'normal', ' The syntax for the n-th DISPATCHERS specification was incorrect.', ' Refer to the Oracle Reference Manual for the correct syntax.'),
(113, 'ORA-00150: duplicate transaction ID', 'Null', 'Null', 'normal', ' Attempted to start a new transaction with an ID already in use by an existing transaction.', ' Check your application.'),
(114, 'ORA-00151: invalid transaction ID', 'Null', 'Null', 'normal', ' The specified transaction ID does not correspond to an existing valid transaction.', ' Check your application.'),
(115, 'ORA-00152: current session does not match requested session', 'Null', 'Null', 'normal', ' The current session is not the same as the session that was passed into a upixado() call.', ' Check your application.'),
(116, 'ORA-00153: internal error in XA library', 'Null', 'Null', 'normal', ' The XA library could not access thread-specific pointers.', ' Contact customer support.'),
(117, 'ORA-00154: protocol error in transaction monitor', 'Null', 'Null', 'normal', ' The transaction monitor returned TMJOIN on an AX_REG call but the transaction was locally suspended.', ' Contact the transaction monitor customer support.'),
(118, 'ORA-00155: cannot perform work outside of global transaction', 'Null', 'Null', 'normal', ' The application tried to perform some work on either an Oracle 7.3 server or an Oracle8 server with local transactions disabled while outside of a global transaction.', ' Check if the application is connected to an Oracle 7.3 server. The Transaction monitor must not return a NULL XID on an AX_REG call when the resource manager is Oracle 7.3. If the application is connected to an Oracle8 server, either set nolocal=f in the xa_open string or start a global transaction prior to attempting the work.'),
(119, 'ORA-00160: global transaction length string is greater than maximum (string)', 'Null', 'Null', 'normal', ' An external global transaction ID with a too large length field was passed in.', ' Report the problem to your external transaction coordinator vendor.'),
(120, 'ORA-00161: transaction branch length string is illegal (maximum allowed string)', 'Null', 'Null', 'normal', ' An external transaction branch ID with a length either too large or 0 was passed in.', ' Report the problem to your external transaction coordinator vendor.'),
(121, 'ORA-00162: external dbid length string is greater than maximum (string)', 'Null', 'Null', 'normal', ' An external database name with too large a length field was passed in.', ' Report the problem to your external transaction coordinator vendor.'),
(122, 'ORA-00163: internal database name length string is greater than maximum (string)', 'Null', 'Null', 'normal', ' An internal database name with a too large length field was passed in.', ' Report the problem to your external transaction coordinator vendor.'),
(123, 'ORA-00164: distributed autonomous transaction disallowed within migratable distributed transaction', 'Null', 'Null', 'normal', ' A request was made by the application to start a distributed autonomous transaction when the application was in a migratable distributed transaction.', ' Roll back or commit the current distributed transaction first.'),
(124, 'ORA-00165: migratable distributed autonomous transaction with remote operation is not allowed', 'Null', 'Null', 'normal', ' A request was made by the application to start a migratable distributed autonomous transaction with remote operation.', ' None'),
(125, 'ORA-00166: remote/local nesting level is too deep', 'Null', 'Null', 'normal', ' Too many remote table operations required a reverse trip back to the local site, for example to execute a local function on a remote table.', ' Rearrange the query or co-locate the functions with the tables.'),
(126, 'ORA-00200: control file could not be created', 'Null', 'Null', 'normal', ' It was not possible to create the control file.', ' Check that there is sufficient disk space and no conflicts in filenames and try to create the control file again.'),
(127, 'ORA-00201: control file version string incompatible with ORACLE version string', 'Null', 'Null', 'normal', ' The control file was created by incompatible software.', ' Either restart with a compatible software release or use CREATE CONTROLFILE to create a new control file that is compatible with this release.'),
(128, 'ORA-00202: control file: \'string\'', 'Null', 'Null', 'normal', ' This message reports the name file involved in other messages.', ' See associated error messages for a description of the problem.'),
(129, 'ORA-00203: using the wrong control files', 'Null', 'Null', 'normal', ' The mount ID in the control file is not the same as the mount ID in the control file used by the first instance to mount this database. The control files are for the same database but they are not the same files. Most likely one instance is using a backup control file.', ' Check that the correct control files were specified.'),
(130, 'ORA-00204: error in reading (block string, # blocks string) of control file', 'Null', 'Null', 'normal', ' A disk I/O failure was detected on reading the control file.', ' Check if the disk is online, if it is not, bring it online and try a warm start again. If it is online, then you need to recover the disk.'),
(131, 'ORA-00205: error in identifying control file, check alert log for more info', 'Null', 'Null', 'normal', ' The system could not find a control file of the specified name and size.', ' Check that ALL control files are online and that they are the same files that the system created at cold start time.'),
(132, 'ORA-00206: error in writing (block string, # blocks string) of control file', 'Null', 'Null', 'normal', ' A disk I/O failure was detected on writing the control file.', ' Check if the disk is online, if it is not, bring it online and try a warm start again. If it is online, then you need to recover the disk.'),
(133, 'ORA-00207: control files are not for the same database', 'Null', 'Null', 'normal', ' The database ID in the control file is not the same as the database ID in the control file used by the first instance to mount this database. Most likely one of the mounts used the wrong control file or there are two databases with the same name.', ' Check that the control file is for the correct database and is not an old version.'),
(134, 'ORA-00208: number of control file names exceeds limit of string', 'Null', 'Null', 'normal', ' An attempt was made to use more control files than Oracle supports.', ' Shut down Oracle. Reduce the number of control files specified in the CONTROL_FILES parameter in the initialization parameter file, and restart Oracle. Delete usused files.'),
(135, 'ORA-00209: control file blocksize mismatch, check alert log for more info', 'Null', 'Null', 'normal', ' The block size in the control file header does not match the size specified in the DB_BLOCK_SIZE parameter.', ' Look at the alert log for more information.'),
(136, 'ORA-00210: cannot open the specified control file', 'Null', 'Null', 'normal', ' Cannot open the control file.', ' Check to make sure the control file exists and is not locked by some other program.'),
(137, 'ORA-00211: control file does not match previous control files', 'Null', 'Null', 'normal', ' A control file was specified that belongs to another database.', ' Find and install the correct control file.'),
(138, 'ORA-00212: block size string below minimum required size of string bytes', 'Null', 'Null', 'normal', ' The block size specified was too small. Space for the system overhead is required.', ' Specify a larger block size and retry the operation.'),
(139, 'ORA-00213: cannot reuse control file; old file size string, string required', 'Null', 'Null', 'normal', ' To reuse a control file, it must be the same size as the one previously used.', ' Either do not specify REUSE, or specify a matching combination of MAXDATAFILES, MAXLOGFILES, MAXLOGMEMBERS, MAXLOGHISTORY, and MAXINSTANCES clauses in the CREATE DATABASE or CREATE CONTROLFILE statement.'),
(140, 'ORA-00214: control file \'string\' version string inconsistent with file \'string\' version string', 'Null', 'Null', 'normal', ' An inconsistent set of control files, datafiles/logfiles, and redo files was used.', ' Use a consistant set of control files, datafiles/logfiles, and redo log files. That is, all the files must be for the same database and from the same time period.'),
(141, 'ORA-00215: must be at least one control file', 'Null', 'Null', 'normal', ' No control file is specified or the control file specified does not exist.', ' Specify at least one valid control file and retry the operation.'),
(142, 'ORA-00216: control file could not be resized for migration from 8.0.2', 'Null', 'Null', 'normal', ' The control file created by release 8.0.2 was missing some record types. These record types are automatically added by resizing the control file during mount. The resize has failed.', ' Look in the alert log for the reason that the resize has failed. If indicated in the alert log, give the control file more space. Otherwise, use the CREATE CONTROLFILE script dumped to the trace file to create a new control file.'),
(143, 'ORA-00217: control file could not be resized for new record types', 'Null', 'Null', 'normal', ' The control file was missing some new record types supported by this release. These record types are automatically added by resizing the contol file during mount. The resize has failed.', ' Look in the alert log for the reason that the resize has failed. If indicated in the alert log, give the control file more space. Otherwise, use the CREATE CONTROLFILE script dumped to the trace file to create a new control file.'),
(144, 'ORA-00218: block size string of control file \'string\' does not match DB_BLOCK_SIZE (string)', 'Null', 'Null', 'normal', ' The block size as stored in the control file header is different from the value of the initialization parameter DB_BLOCK_SIZE. This might be due to an incorrect setting of DB_BLOCK_SIZE, or else might indicate that the control file has either been corrupted or belongs to a different database.', ' Restore a good copy of the control file. If the control file is known to be clean set the DB_BLOCK_SIZE to match control file headers block size value.'),
(145, 'ORA-00219: required control file size (string logical blocks) exceeds maximum allowable size (string logical blocks)', 'Null', 'Null', 'normal', ' An invocation of CREATE DATABASE or CREATE CONTROLFILE was executed specifying a combination of parameters that would require the control file size in blocks to exceed the maximum allowable value.', ' In the case of CREATE DATABASE or CREATE CONTROLFILE, use a different combination of MAXDATAFILES, MAXLOGFILES, MAXLOGMEMBERS, MAXLOGHISTORY, and MAXINSTANCES clauses.'),
(146, 'ORA-00220: control file not mounted by first instance, check alert log for more info', 'Null', 'Null', 'normal', ' The specified control file has a different mount ID than the other control files that are being mounted. This means that the first instance to mount the database did not use this control file.', ' Find and install the correct control file.'),
(147, 'ORA-00221: error on write to control file', 'Null', 'Null', 'normal', ' An error occurred when writing to one or more of the control files.', ' See accompanying messages.'),
(148, 'ORA-00222: operation would reuse name of a currently mounted control file', 'Null', 'Null', 'normal', ' The filename supplied as a parameter to the ALTER DATABASE BACKUP CONTROLFILE command or to cfileSetSnapshotName matches the name of the specified currently mounted control file.', ' Retry the operation with a different filename.'),
(149, 'ORA-00223: convert file is invalid or incorrect version', 'Null', 'Null', 'normal', ' An Oracle7 to Oracle8 convert file contains invalid data or was created with an different version of the migration utility. This error can also be caused by incorrect ORACLE_HOME environment variable when ALTER DATABASE CONVERT command is issued.', ' Use a correct version of the convert file or regenerate it with the migration utility. Make sure that the migration utility is the same version as the Oracle8 RDBMS executable and that the ORACLE_HOME environment variable is properly set.'),
(150, 'ORA-00224: control file resize attempted with illegal record type (string)', 'Null', 'Null', 'normal', ' An attempt was made to expand or shrink the control file by calling cfileResizeSection using an invalid value for the RECORD_TYPE parameter.', ' Use a value for the RECORD_TYPE parameter that specifies a valid record type other than type 0 (valid range is 1-16).'),
(151, 'ORA-00225: expected size string of control file differs from actual size string', 'Null', 'Null', 'normal', ' The expected size of the control file as stored in its header was different than the actual operating system file size. This usually indicates that the control file was corrupted.', ' Restore a good copy of the control file.'),
(152, 'ORA-00226: operation disallowed while alternate control file open', 'Null', 'Null', 'normal', ' The attempted operation could not be executed at this time because this process had an alternate control file open for fixed table access.', ' Retry the operation after calling cfileUseCurrent.'),
(153, 'ORA-00227: corrupt block detected in control file: (block string, # blocks string)', 'Null', 'Null', 'normal', ' A block header corruption or checksum error was detected on reading the control file.', ' Use the CREATE CONTROLFILE or RECOVER DATABASE USING BACKUP CONTROLFILE command.'),
(154, 'ORA-00228: length of alternate control file name exceeds maximum of string', 'Null', 'Null', 'normal', ' The specified filename, which was supplied as a parameter to cfileSetSnapshotName or cfileUseCopy, exceeds the maximum filename length for this operating system.', ' Retry the operation with a shorter filename.'),
(155, 'ORA-00229: operation disallowed: already hold snapshot control file enqueue', 'Null', 'Null', 'normal', ' The attempted operation cannot be executed at this time because this process currently holds the snapshot control file enqueue.', ' Retry the operation after calling cfileUseCurrent to release the snapshot control file enqueue.'),
(156, 'ORA-00230: operation disallowed: snapshot control file enqueue unavailable', 'Null', 'Null', 'normal', ' The attempted operation cannot be executed at this time because another process currently holds the snapshot control file enqueue.', ' Retry the operation after the concurrent operation that is holding the snapshot control file enqueue terminates.'),
(157, 'ORA-00231: snapshot control file has not been named', 'Null', 'Null', 'normal', ' During an invocation of cfileMakeAndUseSnapshot or cfileUseSnapshot it was detected that no filename for the snapshot control file had previously been specified.', ' Specify a name for the snapshot control file by calling cfileSetSnapshotName.'),
(158, 'ORA-00232: snapshot control file is nonexistent, corrupt, or unreadable', 'Null', 'Null', 'normal', ' The snapshot control file was found to be nonexistent, corrupt, or unreadable during an invocation of cfileUseSnapshot.', ' Call cfileMakeAndUseSnapshot again (or for the first time).'),
(159, 'ORA-00233: copy control file is corrupt or unreadable', 'Null', 'Null', 'normal', ' The specified copy control file was found to be corrupt or unreadable during an invocation of cfileUseCopy.', ' Before retrying cfileUseCopy, use the ALTER DATABASE BACKUP CONTROLFILE command and specify the same filename that was specified for cfileUseCopy.'),
(160, 'ORA-00234: error in identifying or opening snapshot or copy control file', 'Null', 'Null', 'normal', ' A snapshot or copy control file of the specified name could not be found or opened during an invocation of cfileUseSnapshot, cfileMakeAndUseSnapshot, or cfileUseCopy.', ' Re-create the snapshot or copy control file using cfileMakeAndUseSnapshot or ALTER DATABASE BACKUP CONTROLFILE, respectively.'),
(161, 'ORA-00235: control file read without a lock inconsistent due to concurrent update', 'Null', 'Null', 'normal', ' Concurrent update activity on a control file caused a process to read inconsistent information from the control file without a lock.', ' Retry the operation.'),
(162, 'ORA-00236: snapshot operation disallowed: mounted control file is a backup', 'Null', 'Null', 'normal', ' Attempting to invoke cfileSetSnapshotName, cfileMakeAndUseSnapshot, or cfileUseSnapshot when the currently mounted control file is a backup control file.', ' Mount a current control file and retry the operation.'),
(163, 'ORA-00237: snapshot operation disallowed: control file newly created', 'Null', 'Null', 'normal', ' An attempt to invoke cfileMakeAndUseSnapshot with a currently mounted control file that was newly created with CREATE CONTROLFILE was made.', ' Mount a current control file and retry the operation.'),
(164, 'ORA-00238: operation would reuse a filename that is part of the database', 'Null', 'Null', 'normal', ' The filename supplied as a parameter to the ALTER DATABASE BACKUP CONTROLFILE command or to cfileSetSnapshotName matches the name of a file that is currently part of the database.', ' Retry the operation with a different filename.'),
(165, 'ORA-00239: timeout waiting for control file enqueue: held by \'string\' for more than string seconds', 'Null', 'Null', 'normal', ' The specified process waited the maximum allowed time for the control file enqueue.', ' Restart the blocking instance indicated in the incident trace file or reboot the blocking node.'),
(166, 'ORA-00240: control file enqueue held for more than string seconds', 'Null', 'Null', 'normal', ' The current process did not release the control file enqueue within the maximum allowed time.', ' Reissue any commands that failed and contact Oracle Support Services with the incident information.'),
(167, 'ORA-00250: archiver not started', 'Null', 'Null', 'normal', ' An attempt was made to stop automatic archiving, but the archiver process was not running.', ' No action required.'),
(168, 'ORA-00251: LOG_ARCHIVE_DUPLEX_DEST cannot be the same destination as string string', 'Null', 'Null', 'normal', ' The destination specified by the LOG_ARCHIVE_DUPLEX_DEST parameter is the same as the destination specified by an ALTER SYSTEM ARCHIVE LOG START TO command.', ' Specify a different destination for parameter LOG_ARCHIVE_DUPLEX_DEST, or specify a different destination with the ALTER SYSTEM command.'),
(169, 'ORA-00252: log string of thread string is empty, cannot archive', 'Null', 'Null', 'normal', ' A log must be used for redo generation before it can be archived. The specified redo log was not been used since it was introduced to the database. However it is possible that instance death during a log switch left the log empty.', ' Empty logs do not need to be archived. Do not attempt to archive the redo log file.'),
(170, 'ORA-00253: character limit string exceeded by archive destination string string', 'Null', 'Null', 'normal', ' The destination specified by an ALTER SYSTEM ARCHIVE LOG START TO command was too long.', ' Retry the ALTER SYSTEM command using a string shorter than the limit specified in the error message.'),
(171, 'ORA-00254: error in archive control string \'string\'', 'Null', 'Null', 'normal', ' The specified archive log location is invalid in the archive command or the LOG_ARCHIVE_DEST initialization parameter.', ' Check the archive string used to make sure it refers to a valid online device.'),
(172, 'ORA-00255: error archiving log string of thread string, sequence # string', 'Null', 'Null', 'normal', ' An error occurred during archiving.', ' Check the accompanying message stack for more detailed information. If the online log is corrupted, then the log can be cleared using the UNARCHIVED option. This will make any existing backups useless for recovery to any time after the log was created, but will allow the database to generate redo.'),
(173, 'ORA-00256: cannot translate archive destination string string', 'Null', 'Null', 'normal', ' The destination specified by an ALTER SYSTEM ARCHIVE LOG START TO command could not be translated.', ' Check the accompanying message stack for more detailed information. Then, retry the ALTER SYSTEM command using a different string.'),
(174, 'ORA-00257: archiver error. Connect internal only, until freed.', 'Null', 'Null', 'normal', ' The archiver process received an error while trying to archive a redo log. If the problem is not resolved soon, the database will stop executing transactions. The most likely cause of this message is the destination device is out of space to store the redo log file.', ' Check archiver trace file for a detailed description of the problem. Also verify that the device specified in the initialization parameter ARCHIVE_LOG_DEST is set up properly for archiving.'),
(175, 'ORA-00258: manual archiving in NOARCHIVELOG mode must identify log', 'Null', 'Null', 'normal', ' The database is in NOARCHIVELOG mode and a command to manually archive a log did not specify the log explicitly by sequence number, group number or filename.', ' Specify log by filename, by group number or by thread and sequence number.'),
(176, 'ORA-00259: log string of open instance string (thread string) is the current log, cannot archive', 'Null', 'Null', 'normal', ' An attempt was made to archive the current log of an open thread. This is not allowed because the redo log file may still be in use for the generation of redo entries.', ' Force a log switch in the instance where the thread is open. If no instances are open, open the database so that instance recovery can recover the thread.'),
(177, 'ORA-00260: cannot find online log sequence string for thread string', 'Null', 'Null', 'normal', ' The log sequence number supplied to the archival command does not match any of the online logs for the thread. The log might have been reused for another sequence number, it might have been dropped, the sequence number might be greater than the current log sequence number, or the thread might not have any logs.', ' Check the ARCHIVE statement, then specify a valid log sequence number. Specify a valid log sequence number.'),
(178, 'ORA-00261: log string of thread string is being archived or modified', 'Null', 'Null', 'normal', ' The log is either being archived by another process or an administrative command is modifying the log. Operations that modify the log include clearing, adding a member, dropping a member, renaming a member, and dropping the log.', ' Wait for the current operation to complete and try again.');
INSERT INTO `cases` (`case_id`, `ora_id`, `arg1`, `arg2`, `ser`, `caused`, `actions`) VALUES
(179, 'ORA-00262: current log string of closed thread string cannot switch', 'Null', 'Null', 'normal', ' The log cannot be cleared or manually archived because it is the current log of a closed thread, and it is not possible to switch logs so another log is current. All other logs for the thread need to be archived, or cleared, and cannot be reused.', ' Archive another log in the same thread first, or complete the clearing. See attached errors for the reason the switch cannot be completed.'),
(180, 'ORA-00263: there are no logs that need archiving for thread string', 'Null', 'Null', 'normal', ' An attempt was made to manually archive the unarchived logs in this thread but no logs needed archiving.', ' No action required.'),
(181, 'ORA-00264: no recovery required', 'Null', 'Null', 'normal', ' An attempt was made to perform media recovery on files that do not // need any type of recovery.', ' Do not attempt to perform media recovery on the selected files. Check to see that the filenames were entered properly. If not, retry the command with the proper filenames.'),
(182, 'ORA-00265: instance recovery required, cannot set ARCHIVELOG mode', 'Null', 'Null', 'normal', ' The database either crashed or was shutdown with the ABORT option. Media recovery cannot be enabled because the online logs may not be sufficient to recover the current datafiles.', ' Open the database and then enter the SHUTDOWN command with the NORMAL or IMMEDIATE option.'),
(183, 'ORA-00266: name of archived log file needed', 'Null', 'Null', 'normal', ' During media recovery, the name of an archived redo log file was requested, but no name was entered.', ' Mount the correct redo log file and enter its name when it is requested.'),
(184, 'ORA-00267: name of archived log file not needed', 'Null', 'Null', 'normal', ' During media recovery, the name of an archived redo log file was entered, but no name was requested.', ' Continue media recovery, but do not enter a new log name.'),
(185, 'ORA-00268: specified log file does not exist \'string\'', 'Null', 'Null', 'normal', ' The given redo log file does not exist.', ' Check the spelling and capitalization of the filename and retry the command.'),
(186, 'ORA-00269: specified log file is part of thread string not string', 'Null', 'Null', 'normal', ' The given redo log file is not part of the given thread', ' Check that the thread of the redo log file matches the thread on the command line. If not, use a redo log file from the appropriate thread. Retry the command after correcting the error.'),
(187, 'ORA-00270: error creating archive log string', 'Null', 'Null', 'normal', ' An error was encountered when either creating or opening the destination file for archiving.', ' Check that the archive destination is valid and that there is sufficient space on the destination device.'),
(188, 'ORA-00271: there are no logs that need archiving', 'Null', 'Null', 'normal', ' An attempt was made to archive the unarchived redo log files manually, but there are no files that need to be archived.', ' No action required.'),
(189, 'ORA-00272: error writing archive log string', 'Null', 'Null', 'normal', ' An I/O error occurred while archiving a redo log file.', ' Check that the output device is still available and correct any device errors that may have occurred. Also, make certain that sufficient space for archiving is available on the output device.'),
(190, 'ORA-00273: media recovery of direct load data that was not logged', 'Null', 'Null', 'normal', ' A media recovery session encountered a table that was loaded by the direct loader without logging any redo information. Some or all of the blocks in this table are now marked as corrupt.', ' The table must be dropped or truncated so that the corrupted blocks can be reused. If a more recent backup of the file is available, try to recover this file to eliminate this error.'),
(191, 'ORA-00274: illegal recovery option string', 'Null', 'Null', 'normal', ' An illegal option was specified for a recovery command.', ' Correct the syntax and retry the command.'),
(192, 'ORA-00275: media recovery has already been started', 'Null', 'Null', 'normal', ' An attempt was made to start a second media recovery operation in the same session.', ' Complete or cancel the first media recovery session or start another session to perform media recovery.'),
(193, 'ORA-00276: CHANGE keyword specified but no change number given', 'Null', 'Null', 'normal', ' The CHANGE keyword was specified on the command line, but no change number was given.', ' Retry the command using a valid change number after the CHANGE keyword.'),
(194, 'ORA-00277: illegal option to the UNTIL recovery flag string', 'Null', 'Null', 'normal', ' Only CANCEL, CHANGE, CONSISTENT and TIME can be used with the UNTIL keyword.', ' Correct the syntax.'),
(195, 'ORA-00278: log file \'string\' no longer needed for this recovery', 'Null', 'Null', 'normal', ' The specified redo log file is no longer needed for the current recovery.', ' No action required. The archived redo log file may be removed from its current location to conserve disk space, if needed. However, the redo log file may still be required for another recovery session in the future.'),
(196, 'ORA-00279: change string generated at string needed for thread string', 'Null', 'Null', 'normal', ' The requested log is required to proceed with recovery.', ' Please supply the requested log with "ALTER DATABASE RECOVER LOGFILE <file_name>" or cancel recovery with "ALTER DATABASE RECOVER CANCEL".'),
(197, 'ORA-00280: change string for thread string is in sequence #string', 'Null', 'Null', 'normal', ' This message helps to locate the redo log file with the specified change number requested by other messages.', ' Use the information provided in this message to specify the required archived redo log files for other errors.'),
(198, 'ORA-00281: media recovery may not be performed using dispatcher', 'Null', 'Null', 'normal', ' An attempt was made to use a dispatcher process for media recovery. Memory requirements disallow this recovery method.', ' Connect to the instance via a dedicated server process to perform media recovery.'),
(199, 'ORA-00282: UPI string call not supported, use ALTER DATABASE RECOVER', 'Null', 'Null', 'normal', ' The given UPI call is no longer supported.', ' Use the ALTER DATABASE RECOVER command for all recovery actions.'),
(200, 'ORA-00283: recovery session canceled due to errors', 'Null', 'Null', 'normal', ' An error during recovery was determined to be fatal enough to end the current recovery session.', ' More specific messages will accompany this message. Refer to the other messages for the appropriate action.'),
(201, 'ORA-00284: recovery session still in progress', 'Null', 'Null', 'normal', ' An error during recovery was determined to be minor enough to allow the current recovery session to continue.', ' More specific messages will accompany this message. Refer to the other messages for the appropriate action.'),
(202, 'ORA-00285: TIME not given as a string constant', 'Null', 'Null', 'normal', ' UNTIL TIME was not followed by a string constant for the time.', ' Enter the time enclosed in single quotation marks.'),
(203, 'ORA-00286: no members available, or no member contains valid data', 'Null', 'Null', 'normal', ' None of the members of a redo log file group are available, or the available members do not contain complete data.', ' If a member is temporarily offline, attempt to make it available. Make sure that the correct filenames are being used, especially if the redo log file is being accessed from a remote location.'),
(204, 'ORA-00287: specified change number string not found in thread string', 'Null', 'Null', 'normal', ' The given change number does not appear in any of the online redo logs for the given thread.', ' Check the statement to make certain a valid change number is given. Perhaps try to use the NEXT option for archiving logs.'),
(205, 'ORA-00288: to continue recovery type ALTER DATABASE RECOVER CONTINUE', 'Null', 'Null', 'normal', ' During media recovery, a new log is not required but the continuation command is necessary to do a checkpoint and report errors.', ' Type ALTER DATABASE RECOVER CONTINUE and recovery will resume.'),
(206, 'ORA-00289: suggestion : string', 'Null', 'Null', 'normal', ' This message reports the next redo log filename that is needed, according to the initialization parameters LOG_ARCHIVE_DEST and LOG_ARCHIVE_FORMAT. This message assumes that LOG_ARCHIVE_DEST and LOG_ARCHIVE_FORMAT are the same now as when the required redo log file was archived.', ' Consider using this filename for the next log needed for recovery.'),
(207, 'ORA-00290: operating system archival error occurred. See error below', 'Null', 'Null', 'normal', ' While attempting to archive to a redo log file, the server encountered an unexpected operating system error.', ' Correct the operating system error given in the messages and retry the operation. See also your operating system-specific Oracle documentation.'),
(208, 'ORA-00291: numeric value required for PARALLEL option', 'Null', 'Null', 'normal', ' A recovery command was specified incorrectly. The PARALLEL option must be followed by a numeric argument that specifies the degree of parallelism.', ' Re-enter the command with a numeric argument specifying the degree of parallelism desired.'),
(209, 'ORA-00292: parallel recovery feature not installed', 'Null', 'Null', 'normal', ' A parallel recovery was requested when the parallel recovery option is not installed.', ' Delete the PARALLEL clause from the RECOVER command. Also, delete the RECOVERY_PARALLELISM parameter in the initialization file.'),
(210, 'ORA-00293: control file out of sync with redo log', 'Null', 'Null', 'normal', ' The redo log file and control file are out of sync because a non-current controle file was specified when the instance was started.', ' Retry the RECOVER command using the current control file, or retry the RECOVER command using the USING BACKUP CONTROLFILE clause.'),
(211, 'ORA-00294: invalid archivelog format specifier \'string\'', 'Null', 'Null', 'normal', ' An invalid format specifier was found in the LOG_ARCHIVE_FORMAT initialization parameter. The only characters permitted following the % symbol are s, S, t, and T.', ' Correct the initialization file and re-start the instance.'),
(212, 'ORA-00295: datafile/tempfile number string is invalid, must be between 1 and string', 'Null', 'Null', 'normal', ' An invalid file number was specified.', ' Specify a valid datafile or tempfile number and retry the operation.'),
(213, 'ORA-00296: maximum number of files (string) exceeded for RECOVER DATAFILE LIST', 'Null', 'Null', 'normal', ' The RECOVER DATAFILE LIST command specified more datafiles than are allowed by the DB_FILES initialization parameter. This error occurs when doing recovery with Recovery Manager, and the instance has been started with a DB_FILES parameter specifying fewer datafiles than recovery manager needs to recover to satisfy the user\'s RECOVER command.', ' Re-start the instance with a higher value for DB_FILES.'),
(214, 'ORA-00297: must specify RECOVER DATAFILE LIST before RECOVER DATAFILE START', 'Null', 'Null', 'normal', ' The RECOVER DATAFILE START command was issued, but no RECOVER DATAFILE LIST commands had been issued. This only happens when doing recovery with Recovery Manager, and is an internal error in Recovery Manager, because Recovery Manager should always issue RECOVER DATAFILE LIST before RECOVER DATAFILE START.', ' Contact customer support'),
(215, 'ORA-00298: Missing or invalid attribute value', 'Null', 'Null', 'normal', ' A non-zero integer value is required when the following keyword attributes are specified: TIMEOUT, EXPIRE, DELAY, NEXT', ' Correct the syntax and retry the command.'),
(216, 'ORA-00299: must use file-level media recovery on data file string', 'Null', 'Null', 'normal', ' The control file does not contain an entry for this file, so block media recovery cannot be done.', ' Restore the data file and perform file-level media recovery.'),
(217, 'ORA-00300: illegal redo log block size string specified - exceeds limit of string', 'Null', 'Null', 'normal', ' The specified block size of the redo log is greater than the maximum block size for the operating system.', ' Create the redo log on a device with a smaller block size'),
(218, 'ORA-00301: error in adding log file \'string\' - file cannot be created', 'Null', 'Null', 'normal', ' The creation of the redo log file failed', ' Check: 1) there is enough storage space on the device 2) the name of the file is valid 3) the device is online 4) an IO error occurred Also, it is possible REUSE was specified on the command line and a file of the incorrect size exists. Either do not specify REUSE or use a file of the correct size.'),
(219, 'ORA-00302: limit of string logs exceeded', 'Null', 'Null', 'normal', ' The maximum number of redo log files has been exceeded.', ' Use the CREATE CONTROLFILE command with a larger value for MAXLOGFILES if the compatibility is lower than 10.2.0. Otherwise, allocate more storage space for the control file.'),
(220, 'ORA-00303: cannot process Parallel Redo', 'Null', 'Null', 'normal', ' A redo log containing Parallel Redo has been detected. The current Oracle release cannot process this format of redo.', ' Use a later release that supports Parallel Redo. to process this log.'),
(221, 'ORA-00304: requested INSTANCE_NUMBER is busy', 'Null', 'Null', 'normal', ' An instance tried to start by using a value of the initialization parameter INSTANCE_NUMBER that is already in use.', ' Either a) specify another INSTANCE_NUMBER, b) shut down the running instance with this number c) wait for instance recovery to complete on the instance with this number.'),
(222, 'ORA-00305: log string of thread string inconsistent; belongs to another database', 'Null', 'Null', 'normal', ' The database ID in the redo log file does not match the database ID in the control file. This redo log file is not from the current database.', ' Specify the correct redo log file, then retry the operation.'),
(223, 'ORA-00306: limit of string instances in this database', 'Null', 'Null', 'normal', ' Starting this instance would exceed the maximum number of instances allowed for this database. This message occurs only with STARTUP shared and multiple instances.', ' You cannot start more than the lower of a) port-specific limit as to the number of instances b) the number of instances specified at create-database time'),
(224, 'ORA-00307: requested INSTANCE_NUMBER out of range, maximum is string', 'Null', 'Null', 'normal', ' The initialization parameter INSTANCE_NUMBER specified a number that was out of range.', ' Change INSTANCE_NUMBER to a valid range and restart the instance. The minimum value is one and the maximum value is the lower of the operating system-specific maximum or the MAXINSTANCES option specified in the CREATE DATABASE statement. See also your operating system-specific Oracle documentation.'),
(225, 'ORA-00308: cannot open archived log \'string\'', 'Null', 'Null', 'normal', ' The system cannot access a required archived redo log file.', ' Check that the off line log exists, the storage device is online, and the archived file is in the correct location. Then attempt to continue recovery or restart the recovery session.'),
(226, 'ORA-00309: log belongs to wrong database', 'Null', 'Null', 'normal', ' The system cannot access the archived redo log because it belongs to another database.', ' Specify the correct redo log file, then retry the operation.'),
(227, 'ORA-00310: archived log contains sequence string; sequence string required', 'Null', 'Null', 'normal', ' The archived log is out of sequence, probably because it is corrupted or the wrong redo log filename was specified', ' Specify the correct redo log file; then retry the operation.'),
(228, 'ORA-00311: cannot read header from archived log', 'Null', 'Null', 'normal', ' An I/O error occurred when attempting to read the log file header from the specified archived redo log file.', ' Other messages will accompany this message. See the associated messages for the appropriate action to take.'),
(229, 'ORA-00312: online log string thread string: \'string\'', 'Null', 'Null', 'normal', ' This message reports the filename for details of another message.', ' Other messages will accompany this message. See the associated messages for the appropriate action to take.'),
(230, 'ORA-00313: open failed for members of log group string of thread string', 'Null', 'Null', 'normal', ' The online log cannot be opened. May not be able to find file.', ' See accompanying errors and make log available.'),
(231, 'ORA-00314: log string of thread string, expected sequence# string doesn\'t match string', 'Null', 'Null', 'normal', ' The online log is corrupted or is an old version.', ' Find and install correct version of log or reset logs.'),
(232, 'ORA-00315: log string of thread string, wrong thread # string in header', 'Null', 'Null', 'normal', ' The online log is corrupted or is an old version.', ' Find and install correct version of log or reset logs.'),
(233, 'ORA-00316: log string of thread string, type string in header is not log file', 'Null', 'Null', 'normal', ' The online log is corrupted or is an old version.', ' Find and install correct version of log or reset logs.'),
(234, 'ORA-00317: file type string in header is not log file', 'Null', 'Null', 'normal', ' This is not an archived log file.', ' Find the correct file and try again.'),
(235, 'ORA-00318: log string of thread string, expected file size string doesn\'t match string', 'Null', 'Null', 'normal', ' On header read the file size indicated in the control file did not match the file size contained in the log file.', ' Restore correct file or reset logs.'),
(236, 'ORA-00319: log string of thread string has incorrect log reset status', 'Null', 'Null', 'normal', ' Check of log file header at database open found that an online log has log reset data that is different from the control file. The log is probably an incorrectly restored backup.', ' Restore correct file or reset logs.'),
(237, 'ORA-00320: cannot read file header from log string of thread string', 'Null', 'Null', 'normal', ' The file is not available.', ' Restore the log file.'),
(238, 'ORA-00321: log string of thread string, cannot update log file header', 'Null', 'Null', 'normal', ' Cannot write to the log file.', ' Restore the access to the file.'),
(239, 'ORA-00322: log string of thread string is not current copy', 'Null', 'Null', 'normal', ' Check of log file header at database open found that an online log appears to be an incorrectly restored backup.', ' Restore correct file or reset logs.'),
(240, 'ORA-00323: Current log of thread string not useable and all others need archiving', 'Null', 'Null', 'normal', ' Attempt to open thread failed because it is necessary to switch redo generation to another online log, but all the other logs need to be archived before they can be used.', ' Archive the logs for the thread then retry open.'),
(241, 'ORA-00324: log file \'string\' translated name \'string\' too long, string characters exceeds string limit', 'Null', 'Null', 'normal', ' the translated name for a log file is too long.', ' Choose a untranslated name that yields a shorter translated name.'),
(242, 'ORA-00325: archived log for thread string, wrong thread # string in header', 'Null', 'Null', 'normal', ' The archived log is corrupted or for another thread. Can not use the log for applying redo.', ' Find correct archived log.'),
(243, 'ORA-00326: log begins at change string, need earlier change string', 'Null', 'Null', 'normal', ' The archived log supplied for recovery was generated after the log that is needed. Can not yet use the log for applying redo.', ' Find correct archived log.'),
(244, 'ORA-00327: log string of thread string, physical size string less than needed string', 'Null', 'Null', 'normal', ' A log file has shrunk in size. This is likely to have been caused by operator or operating system error.', ' Restore the log file from backup. If backup is not available, drop this log and re-create. If the database was shut down cleanly, no further action should be required; otherwise incomplete recovery may be required.'),
(245, 'ORA-00328: archived log ends at change string, need later change string', 'Null', 'Null', 'normal', ' The archived log supplied for recovery was generated before the log that is needed. Can not use the log for applying redo.', ' Find correct archived log.'),
(246, 'ORA-00329: archived log begins at change string, need change string', 'Null', 'Null', 'normal', ' The archived log is not the correct log. An earlier log is needed.', ' Restore the correct log file.'),
(247, 'ORA-00330: archived log ends at change string, need change string', 'Null', 'Null', 'normal', ' The archived log is not the correct log. A later log is needed.', ' Restore the correct log file.'),
(248, 'ORA-00331: log version string incompatible with ORACLE version string', 'Null', 'Null', 'normal', ' The log was written by incompatible version of Oracle.', ' Recover the database with the compatible software, shut it down cleanly, then restart with current software.'),
(249, 'ORA-00332: archived log is too small - may be incompletely archived', 'Null', 'Null', 'normal', ' The log is smaller than the space allocated in it. May be the result of a shutdown abort while it was being written by the archiver.', ' Get a complete version of this log and use it for recovery. There should either be an online version of it or a copy that was successfully archived.'),
(250, 'ORA-00333: redo log read error block string count string', 'Null', 'Null', 'normal', ' An IO error occurred while reading the log described in the accompanying error.', ' Restore accessibility to file, or get another copy of the file.'),
(251, 'ORA-00334: archived log: \'string\'', 'Null', 'Null', 'normal', ' Reporting filename for details of another error', ' See associated error messages'),
(252, 'ORA-00335: online log string: No log with this number, log does not exist', 'Null', 'Null', 'normal', ' Reporting filename for details of another error', ' See associated error messages'),
(253, 'ORA-00336: log file size string blocks is less than minimum string blocks', 'Null', 'Null', 'normal', ' The log file size as specified in create database is too small.', ' Increase the log file size.'),
(254, 'ORA-00337: log file \'string\' does not exist and no size specified', 'Null', 'Null', 'normal', ' An attempt to add a log found neither an existing file nor a size for creating the file.', ' Specify a size for the log file.'),
(255, 'ORA-00338: log string of thread string is more recent than control file', 'Null', 'Null', 'normal', ' The control file change sequence number in the log file is greater than the number in the control file. This implies that the wrong control file is being used. Note that repeatedly causing this error can make it stop happening without correcting the real problem. Every attempt to open the database will advance the control file change sequence number until it is great enough.', ' Use the current control file or do backup control file recovery to make the control file current. Be sure to follow all restrictions on doing a backup control file recovery.'),
(256, 'ORA-00339: archived log does not contain any redo', 'Null', 'Null', 'normal', ' The archived log is not the correct log. It is a copy of a log file that has never been used for redo generation, or was an online log being prepared to be the current log.', ' Restore the correct log file.'),
(257, 'ORA-00340: IO error processing online log string of thread string', 'Null', 'Null', 'normal', ' An IO error occurred on the named online log.', ' Restore accessibility to file, or restore file from backup.'),
(258, 'ORA-00341: log string of thread string, wrong log # string in header', 'Null', 'Null', 'normal', ' The internal information in an online log file does not match the control file.', ' Restore correct file or reset logs.'),
(259, 'ORA-00342: archived log does not have expected resetlogs SCN string', 'Null', 'Null', 'normal', ' Recovery was given a log that does not belong to current incarnation or one of the parent incarnation. There should be another log that contains the correct redo.', ' Supply the correct log file.'),
(260, 'ORA-00344: unable to re-create online log \'string\'', 'Null', 'Null', 'normal', ' An I/O failure occurred when attempting to re-create an online as part of either ALTER DATABASE OPEN RESETLOGS or ALTER DATABASE CLEAR LOGFILE command.', ' Correct the file/device as indicated by accompanying errors.'),
(261, 'ORA-00345: redo log write error block string count string', 'Null', 'Null', 'normal', ' An IO error has occurred while writing the log', ' Correct the cause of the error, and then restart the system. If the log is lost, apply media/incomplete recovery.'),
(262, 'ORA-00346: log member marked as STALE and closed', 'Null', 'Null', 'normal', ' A log file member was no longer complete.', ' Correct the underlying problem by referring to the other error messages found with this one.'),
(263, 'ORA-00347: log string of thread string, expected block size string doesn\'t match string', 'Null', 'Null', 'normal', ' On header read the blocksize indicated in the control file did not match the blocksize contained in the log file.', ' Restore correct file or reset logs.'),
(264, 'ORA-00348: single-process redo failure. Must abort instance', 'Null', 'Null', 'normal', ' A failure occurred during a critical portion of the log code during single process operation. This error does not occur during normal multi-process operation.', ' Shutdown abort and warmstart the database.'),
(265, 'ORA-00349: failure obtaining block size for \'string\'', 'Null', 'Null', 'normal', ' The operating system was unable to determine the blocksize for the given filename.', ' Consult the accompanying error message, and correct the device or specify another filename.'),
(266, 'ORA-00350: log string of instance string (thread string) needs to be archived', 'Null', 'Null', 'normal', ' The command cannot be done because the log has not been archived, and media recovery has been enabled.', ' Archive the log or disable media recovery. If the command supports an UNARCHIVED option then it can be used. However this may result in making backups unuseable, and forcing the drop of some offline files.'),
(267, 'ORA-00351: recover-to time invalid', 'Null', 'Null', 'normal', ' The time specified in a recover-until statement must be after January 1st 1988.', ' Specify a time after January 1st 1988.'),
(268, 'ORA-00352: all logs for thread string need to be archived - cannot enable', 'Null', 'Null', 'normal', ' Attempting to enable a thread with all logs needing to be archived, and media recovery has been enabled. There is no log that can be made the new current log for the thread.', ' Archive a log for the thread or disable media recovery.'),
(269, 'ORA-00353: log corruption near block string change string time string', 'Null', 'Null', 'normal', ' Some type of redo log corruption has been discovered. This error describes the location of the corruption. Accompanying errors describe the type of corruption.', ' Do recovery with a good version of the log or do incomplete recovery up to the indicated change or time.'),
(270, 'ORA-00354: corrupt redo log block header', 'Null', 'Null', 'normal', ' The block header on the redo block indicated by the accompanying error, is not reasonable.', ' Do recovery with a good version of the log or do time based recovery up to the indicated time. If this happens when archiving, archiving of the problem log can be skipped by clearing the log with the UNARCHIVED option. This must be followed by a backup of every datafile to insure recoverability of the database.'),
(271, 'ORA-00355: change numbers out of order', 'Null', 'Null', 'normal', ' A change number found in the redo log is lower than a previously encountered change number. The log is corrupted in some way. The corruption may be at the earlier change or at this one.', ' Do recovery with a good version of the log or do time based recovery up to the indicated time.'),
(272, 'ORA-00356: inconsistent lengths in change description', 'Null', 'Null', 'normal', ' A change record in the redo log contains lengths that do not add up to a consistent value. The log is corrupted in some way.', ' Do recovery with a good version of the log or do time based recovery up to the indicated time.'),
(273, 'ORA-00357: too many members specified for log file, the maximum is string', 'Null', 'Null', 'normal', ' An add logfile or add logfile member command would result in a log with too many members. The number of members is set when the database is created.', ' Use fewer log file members.'),
(274, 'ORA-00358: Too many file members specified, the maximum is string', 'Null', 'Null', 'normal', ' A create or alter statement specified too many members in a parenthesised file list.', ' Specify a number of file members that is within the port-defined limit.'),
(275, 'ORA-00359: logfile group string does not exist', 'Null', 'Null', 'normal', ' An add logfile member or drop logfile request specified a logfile group number that does not exist.', ' Check the configuration of the log files and reissue the command.'),
(276, 'ORA-00360: not a logfile member: string', 'Null', 'Null', 'normal', ' A filename was given to drop logfile member that is not a part of the database, or which is a data file.', ' Supply a valid logfile member name.'),
(277, 'ORA-00361: cannot remove last log member string for group string', 'Null', 'Null', 'normal', ' An attempt has been made to remove the last member of a log file group.', ' If desired, delete the entire log, by using DROP LOGFILE.'),
(278, 'ORA-00362: member is required to form a valid logfile in group string', 'Null', 'Null', 'normal', ' A request to drop a logfile member was denied because it would remove data required to form a complete logfile.', ' If desired, delete the entire log (after archiving if required), by using DROP LOGFILE;'),
(279, 'ORA-00363: log is not the archived version', 'Null', 'Null', 'normal', ' d by failing to list the current log of an enabled thread in a CREATE CONTROLFILE command.', ' Find the archived version of the log and supply its name. If this is media recovery immediately following a CREATE CONTROLFILE, be sure the current log for this thread was included.'),
(280, 'ORA-00364: cannot write header to new log member', 'Null', 'Null', 'normal', ' An i/o error occurred when attempting to write the header to a log member that is being added to an existing group.', ' See accompanying errors. Fix problem or use another file.'),
(281, 'ORA-00365: the specified log is not the correct next log', 'Null', 'Null', 'normal', ' The specified log failed to pass checks to ensure it corresponds to the log that was just applied. This is probably the result of using a log that was generated against a cold backup image of the database.', ' Find the log that was generated by this copy of the database and give that filename to recovery.'),
(282, 'ORA-00366: log string of thread string, checksum error in the file header', 'Null', 'Null', 'normal', ' The file header for the redo log contains a checksum that does not match the value calculated from the file header as read from disk. This means the file header is corrupted', ' Find and install correct version of log or reset logs.'),
(283, 'ORA-00367: checksum error in log file header', 'Null', 'Null', 'normal', ' The file header for the redo log contains a checksum that does not match the value calculated from the file header as read from disk. This means the file header is corrupted', ' Find the correct file and try again.'),
(284, 'ORA-00368: checksum error in redo log block', 'Null', 'Null', 'normal', ' The redo block indicated by the accompanying error, is not vaild. It has a checksum that does not match the block contents.', ' Restore correct file or reset logs.'),
(285, 'ORA-00369: Current log of thread string not useable and other log being cleared', 'Null', 'Null', 'normal', ' Attempt to open thread failed because it is necessary to switch redo generation to another online log, but all the other logs are being cleared or need to be archived before they can be used.', ' If the ALTER DATABASE CLEAR LOGFILE command is still active then wait for it to complete. Otherwise reissue the CLEAR command. If there are other online logs for the thread, that are not being cleared, then archive the logs.'),
(286, 'ORA-00370: potential deadlock during kcbchange operation', 'Null', 'Null', 'normal', ' Error code used internally by software. Should never be reported', ' Treat as internal error. See error 600.'),
(287, 'ORA-00371: not enough shared pool memory, should be atleast string bytes', 'Null', 'Null', 'normal', ' Init.ora parameter shared_pool_size is too small', ' Increase the parameter value'),
(288, 'ORA-00372: file string cannot be modified at this time', 'Null', 'Null', 'normal', ' attempting to modify the contents of a file that cannot be modified. The file is most likely part of a read only tablespace but may be in the process of going offline, or the database may be in the process of closing.', ' check the status of the file and its tablespace'),
(289, 'ORA-00373: online log version string incompatible with ORACLE version string', 'Null', 'Null', 'normal', ' The online log was written by incompatible version of Oracle. Can occur when the log file was created by either a new or older version of Oracle.', ' Recover the database with the compatible software, shut it down cleanly, then restart with current software.'),
(290, 'ORA-00374: parameter db_block_size = string invalid ; must be a multiple of string in the range [string..string]', 'Null', 'Null', 'normal', ' invalid value for db_block_size parameter', ' adjust parameter and restart'),
(291, 'ORA-00376: file string cannot be read at this time', 'Null', 'Null', 'normal', ' attempting to read from a file that is not readable. Most likely the file is offline.', ' Check the state of the file. Bring it online'),
(292, 'ORA-00377: Frequent backups of file string causing write operation to stall', 'Null', 'Null', 'normal', ' Backups are occurring too frequently on this file. Each time a new backup is started for a file, any writes which have been previously issued (but not completed) have to be re-issued. If hot backups are started very, very frequently, it is possible that some writes will be re-issued repeatedly and never complete.', ' Increase the interval between begin hot-backup commands for this file.'),
(293, 'ORA-00378: buffer pools cannot be created as specified', 'Null', 'Null', 'normal', ' Either the number of buffers or the number of lru latches is too small to satisfy the specified buffer pool configuration.', ' Either increase the number of buffers and/or number of lru latches or configure smaller buffer pools.'),
(294, 'ORA-00379: no free buffers available in buffer pool string for block size stringK', 'Null', 'Null', 'normal', ' All buffers in the specified buffer pool for the specified block size are in use and no free buffers are available.', ' Increase the number of buffers in the specified pool for the specified block size'),
(295, 'ORA-00380: cannot specify db_stringk_cache_size since stringK is the standard block size', 'Null', 'Null', 'normal', ' User specified the parameter db_nk_cache_size (where n is one of 2,4,8,16,32), while the standard block size for this database is equal to n Kbytes. This is illegal.', ' Specify the standard block size cache using db_cache_size (DEFAULT pool) (and db_recycle_cache_size, db_keep_cache_size if additional buffer pools are required). Do NOT use the corresponding db_nk_cache_size parameter for the standard block size.'),
(296, 'ORA-00381: cannot use both new and old parameters for buffer cache size specification', 'Null', 'Null', 'normal', ' User specified one or more of { db_cache_size , db_recycle_cache_size, db_keep_cache_size, db_nk_cache_size (where n is one of 2,4,8,16,32), db_cache_advice } AND one or more of { db_block_buffers, buffer_pool_keep , buffer_pool_recycle }. This is illegal.', ' Use EITHER the old (pre-Oracle_8.2) parameters OR the new ones. Don\'t specify both. If old size parameters are specified in the parameter file, you may want to replace them with new parameters since the new parameters can be modified dynamically and allow you to configure additional caches for additional block sizes. Cache advisory can only be enabled with the new cache parameters.'),
(297, 'ORA-00382: string not a valid block size, valid range [string..string]', 'Null', 'Null', 'normal', ' User specified a value for db_nk_cache_size where n is one of {2, 4, 8, 16, 32}, but nk is not a valid block size for this platform.', ' Remove corresponding parameter from the "init.ora" file and restart the instance.'),
(298, 'ORA-00383: DEFAULT cache for blocksize string cannot be reduced to zero', 'Null', 'Null', 'normal', ' User attempted to reduce db_cache_size to zero, or attempted to to reduce db_<n>K_cache_size to zero while there were still online tablespaces with blocksize <n>K. Note that since the SYSTEM tablespace cannot be taken offline, it is always illegal to set db_cache_size to zero.', ' Offline any tablespaces with the corresponding blocksize and then perform the operation again.'),
(299, 'ORA-00384: Insufficient memory to grow cache', 'Null', 'Null', 'normal', ' The system could not allocate sufficient memory to grow the cache to the specified size.', ' Attempt a smaller increase in the value of the parameter.'),
(300, 'ORA-00385: cannot enable Very Large Memory with new buffer cache parameters', 'Null', 'Null', 'normal', ' User specified one or more of { db_cache_size , db_recycle_cache_size, db_keep_cache_size, db_nk_cache_size (where n is one of 2,4,8,16,32) } AND use_indirect_data_buffers is set to TRUE. This is illegal.', ' Very Large Memory can only be enabled with the old (pre-Oracle_8.2) parameters.'),
(301, 'ORA-00386: use_indirect_data_buffers not supported', 'Null', 'Null', 'normal', ' The system could not allocate sufficient memory to grow the cache to the specified size.', ' Attempt a smaller increase in the value of the parameter.'),
(302, 'ORA-00390: log string of thread string is being cleared, cannot become current log', 'Null', 'Null', 'normal', ' An attempt to switch to a new online log for the redo thread failed because no reusable log could be found. This log is being cleared and will be useable when the clearing completes. The command that began the clearing may have terminated without completing the clearing.', ' If the clear command is still executing then wait for its completion. If it terminated then reissue the clear command, or drop the log.'),
(303, 'ORA-00391: All threads must switch to new log format at the same time', 'Null', 'Null', 'normal', ' An attempt to switch the current log of a single thread is not allowed because the compatiblity requirements force a new log format version number. When changing log formats, all threads must switch to the new format at the same time.', ' Open the database to cause the coordinated log switch. If that is not possible then return to the same software version and compatibility setting last used to open the database.'),
(304, 'ORA-00392: log string of thread string is being cleared, operation not allowed', 'Null', 'Null', 'normal', ' An operation encountered this online log in the middle of being cleared. The command that began the clearing may have terminated without completing the clearing.', ' If the clear command is still executing then wait for its completion. If it terminated then reissue the clear command, or drop the log.'),
(305, 'ORA-00393: log string of thread string is needed for recovery of offline datafiles', 'Null', 'Null', 'normal', ' Log cannot be cleared because the redo in it is needed to recover offline datafiles. It has not been archived so there is no other copy available. If the log is cleared the tablespaces containing the files will have to be dropped.', ' Archive the log then repeat the clear command. If archiving is not possible, and dropping the tablespaces is acceptible, then add the clause UNRECOVERABLE DATAFILE at the end of the clear command.'),
(306, 'ORA-00394: online log reused while attempting to archive it', 'Null', 'Null', 'normal', ' It has been detected that an online log that is being archived has been reused', ' Cannot archive the logfile anymore since it has been overwritten'),
(307, 'ORA-00395: online logs for the clone database must be renamed', 'Null', 'Null', 'normal', ' A clone database open forces logfile renaming to avoid overwriting the primary logfiles', ' Rename the logfiles manually or using the log_file_name_convert initialization parameter'),
(308, 'ORA-00396: error string required fallback to single-pass recovery', 'Null', 'Null', 'normal', ' The indicated error caused two-pass instance or crash recovery to fail. Recovery was retried with an alternate (slower) method to avoid the error.', ' Correct the cause of the indicated error (also recorded) so that future instance or crash recovery can succeed with the two-pass algorithm. This usually requires making more main memory available to the recovery process.'),
(309, 'ORA-00397: instance recovery process terminated with error', 'Null', 'Null', 'normal', ' The foreground process doing instance recovery died.', ' Check the foreground trace file for the cause of recovery failure.'),
(310, 'ORA-00398: abort thread recovery due to reconfiguration', 'Null', 'Null', 'normal', ' Global enqueue service reconfiguration occurred during instance/crash recovery.', ' This is used internally, no action is required.'),
(311, 'ORA-00399: corrupt change description in redo log', 'Null', 'Null', 'normal', ' A change vector in the redo log failed validation checks.', ' Do recovery with a good version of the log or do time based recovery up to the indicated time.'),
(312, 'ORA-00400: invalid release value string for parameter string', 'Null', 'Null', 'normal', ' The release level given for the specified init parameter is invalid.', ' Correct the parameter value in the parameter file and retry.'),
(313, 'ORA-00401: the value for parameter string is not supported by this release', 'Null', 'Null', 'normal', ' The value specified cannot be supported by this release of the software.', ' Choose an appropriate value, or remove the parameter value to use the default value.'),
(314, 'ORA-00402: database changes by release string cannot be used by release string', 'Null', 'Null', 'normal', ' Changes have been made to the database that require a newer software release or that violate the compatibility parameters.', ' Use a version of the software that can understand the changes or relax the compatibility requirements in the init file.'),
(315, 'ORA-00403: string (string) is not the same as other instances (string)', 'Null', 'Null', 'normal', ' Another instance has set the compatible or compatible no recovery parameters differently than this instance.', ' Change the parameters of the current instance to match other instances already running.'),
(316, 'ORA-00404: Convert file not found: \'string\'', 'Null', 'Null', 'normal', ' The file used for converting the database from V7 to V8 could not be found.', ' Verify that the migration process has been started on this database and that the convert filename is accessable.'),
(317, 'ORA-00405: compatibility type "string"', 'Null', 'Null', 'normal', ' Reporting a type associated with another error.', ' See accompanying error'),
(318, 'ORA-00406: COMPATIBLE parameter needs to be string or greater', 'Null', 'Null', 'normal', ' The COMPATIBLE initialization parameter is not high enough to allow the operation. Allowing the command would make the database incompatible with the release specified by the current COMPATIBLE parameter.', ' Shutdown and startup with a higher compatibility setting.'),
(319, 'ORA-00407: rolling upgrade from release string.string to string.string is not allowed', 'Null', 'Null', 'normal', ' Another instance executing software at a different point release already has the database mounted.', ' Shutdown all instances then startup with the new software.'),
(320, 'ORA-00408: parameter string is set to TRUE', 'Null', 'Null', 'normal', ' Reporting the parameter that resulted in the compatibility error.', ' Shutdown and startup with a higher compatibility setting.'),
(321, 'ORA-00409: COMPATIBLE needs to be string or higher to use AUTO SEGMENT SPACE MANAGEMENT', 'Null', 'Null', 'normal', ' This is due to migrating from an older release of Oracle with tablespaces created using AUTO SEGMENT SPACE MANAGEMENT. To open the database, the COMPATIBLE parameter needs to be set to the specified value.', ' Shutdown and startup with the specified compatibility setting.'),
(322, 'ORA-00437: ORACLE feature is not licensed. Contact Oracle Corp. for assistance', 'Null', 'Null', 'normal', ' ORACLE feature is not licensed.', ' Contact ORACLE for assistance.'),
(323, 'ORA-00438: string Option not installed', 'Null', 'Null', 'normal', ' The specified option is not installed.', ' Purchase and install the option.'),
(324, 'ORA-00439: feature not enabled: string', 'Null', 'Null', 'normal', ' The specified feature is not enabled.', ' Do not attempt to use this feature.'),
(325, 'ORA-00443: background process "string" did not start', 'Null', 'Null', 'normal', ' The specified process did not start.', ' Ensure that the executable image is in the correct place with the correct protections, and that there is enough memory.'),
(326, 'ORA-00444: background process "string" failed while starting', 'Null', 'Null', 'normal', ' Usually due to a bad (or non-existent) background process image.', ' Get a good background process image.'),
(327, 'ORA-00445: background process "string" did not start after string seconds', 'Null', 'Null', 'normal', ' The specified process did not start after the specified time.', ' Ensure that the background did not die and leave a trace file.'),
(328, 'ORA-00446: background process started when not expected', 'Null', 'Null', 'normal', ' The background process specified started up AFTER the RDBMS was already running.', ' If nobody at your site started the process, then this is an internal error.'),
(329, 'ORA-00447: fatal error in background process', 'Null', 'Null', 'normal', ' One of the background processes died unexpectedly.', ' Warm start the system.'),
(330, 'ORA-00448: normal completion of background process', 'Null', 'Null', 'normal', ' One of the background processes completed normally (i.e. exited). The background process thinks that somebody asked it to exit.', ' Warm start the system.'),
(331, 'ORA-00449: background process \'string\' unexpectedly terminated with error string', 'Null', 'Null', 'normal', ' A foreground process needing service from a background process has discovered the process died.', ' Consult the error code, and the trace file for the process.'),
(332, 'ORA-00450: background process \'string\' did not start', 'Null', 'Null', 'normal', ' The specified process did not start.', ' Consult the error code, and the trace file for the process.'),
(333, 'ORA-00451: foreground process died unexpectedly', 'Null', 'Null', 'normal', ' The foreground process for the new connection did not start.', ' Reconnect to Oracle.'),
(334, 'ORA-00452: foreground process unexpectedly terminated with error string', 'Null', 'Null', 'normal', ' The foreground process for the new connection did not start.', ' Reconnect to Oracle.'),
(335, 'ORA-00453: backgroud process \'string\' is dead', 'Null', 'Null', 'normal', ' The background process that was being messaged was dead or its incarnation was invalid.', ' Restart the background process.'),
(336, 'ORA-00469: CKPT process terminated with error', 'Null', 'Null', 'normal', ' The checkpoint process died', ' Warm start instance'),
(337, 'ORA-00470: LGWR process terminated with error', 'Null', 'Null', 'normal', ' The log writer process died', ' Warm start instance'),
(338, 'ORA-00471: DBWR process terminated with error', 'Null', 'Null', 'normal', ' The database writer process died', ' Warm start instance'),
(339, 'ORA-00472: PMON process terminated with error', 'Null', 'Null', 'normal', ' The process cleanup process died', ' Warm start instance'),
(340, 'ORA-00473: ARCH process terminated with error', 'Null', 'Null', 'normal', ' The archive process died', ' Warm start instance'),
(341, 'ORA-00474: SMON process terminated with error', 'Null', 'Null', 'normal', ' The system cleanup process died', ' Warm start instance'),
(342, 'ORA-00475: TRWR process terminated with error', 'Null', 'Null', 'normal', ' The system tracing process died', ' Warm start instance'),
(343, 'ORA-00476: RECO process terminated with error', 'Null', 'Null', 'normal', ' The distributed transaction (two-phase commit) recovery process died.', ' Warm start instance'),
(344, 'ORA-00477: SNP* process terminated with error', 'Null', 'Null', 'normal', ' A materialized view refresh process died', ' PMON will restart SNP process shortly. If SNP process does not get started, contact Oracle support.'),
(345, 'ORA-00478: SMON process terminated due to error string', 'Null', 'Null', 'normal', ' SMON was unable to service the requests due to error in cleanup of resources', ' Warm start instance'),
(346, 'ORA-00479: RVWR process terminated with error string', 'Null', 'Null', 'normal', ' The RVWR process died', ' Warm start instance'),
(347, 'ORA-00480: LCK* process terminated with error', 'Null', 'Null', 'normal', ' A system lock process died', ' Warm start instance'),
(348, 'ORA-00481: LMON process terminated with error', 'Null', 'Null', 'normal', ' The global enqueue service monitor process died', ' Warm start instance'),
(349, 'ORA-00482: LMD* process terminated with error', 'Null', 'Null', 'normal', ' A global enqueue service daemon process died', ' Warm start instance');
INSERT INTO `cases` (`case_id`, `ora_id`, `arg1`, `arg2`, `ser`, `caused`, `actions`) VALUES
(350, 'ORA-00483: During shutdown a process abnormally terminated', 'Null', 'Null', 'normal', ' One of the background processes did not exit normally at or near the time of shutdown.', ' Use shutdown abort.'),
(351, 'ORA-00484: LMS* process terminated with error', 'Null', 'Null', 'normal', ' A global cache service process died', ' Warm start instance'),
(352, 'ORA-00485: DIAG process terminated with error string', 'Null', 'Null', 'normal', ' A global diagnostic process died', ' Wait for process to restart'),
(353, 'ORA-00486: ASMB process terminated with error', 'Null', 'Null', 'normal', ' An ASM background process died.', ' Warm start instance. Also check that ASM Instance is running.'),
(354, 'ORA-00487: CTWR process terminated with error', 'Null', 'Null', 'normal', ' The change tracking process died', ' Warm start instance'),
(355, 'ORA-00488: RBAL process terminated with error', 'Null', 'Null', 'normal', ' The ASM rebalance coordinator process died.', ' Warm start instance.'),
(356, 'ORA-00489: ARB* process terminated with error', 'Null', 'Null', 'normal', ' An ASM rebalance worker process died.', ' Wait for process to restart.'),
(357, 'ORA-00490: PSP process terminated with error', 'Null', 'Null', 'normal', ' The process spawner died', ' Warm start instance'),
(358, 'ORA-00491: RMS0 process terminated with error', 'Null', 'Null', 'normal', ' The RAC Management Process died', ' None'),
(359, 'ORA-00492: GTX* process terminated with error', 'Null', 'Null', 'normal', ' A global transaction background process died.', ' Warm start instance'),
(360, 'ORA-00493: GMON process terminated with error', 'Null', 'Null', 'normal', ' The ASM disk group monitor process died', ' Warm start instance'),
(361, 'ORA-00494: enqueuestring held for too longstring by \'string\'', 'Null', 'Null', 'normal', ' The specified process did not release the enqueue within the maximum allowed time.', ' Reissue any commands that failed and contact Oracle Support Services with the incident information.'),
(362, 'ORA-00566: cannot request processor group - NUMA not enabled', 'Null', 'Null', 'normal', ' Cannot start process in a requested processor group when the NUMA feature is disabled.', ' Start the process without requesting a NUMA processor group.'),
(363, 'ORA-00567: Requested processor group string is too large (maximum string)', 'Null', 'Null', 'normal', ' The process could not be started in the requested processor group.', ' Start the process in another processor group.'),
(364, 'ORA-00568: Maximum number of interrupt handlers exceeded', 'Null', 'Null', 'normal', ' User specified too many ^c handlers', ' Remove some old handlers.'),
(365, 'ORA-00569: Failed to acquire global enqueue.', 'Null', 'Null', 'normal', ' A prior error occurred on one of the instances in the cluster. Typically errors are caused by shared pool resource contention.', ' Check for and resolve prior errors on all instances in the cluster. If there is shared pool resource contention, increase the SHARED_POOL_SIZE, DML_LOCKS, PROCESSES, TRANSACTIONS, CLUSTER_DATABASE_INSTANCES and PARALLEL_MAX_SERVERS initialization parameters.'),
(366, 'ORA-00600: internal error code, arguments: [string], [string], [string], [string], [string], [string], [string], [string], [string], [string], [string], [string]', 'Null', 'Null', 'normal', ' This is the generic internal error number for Oracle program exceptions. This indicated that a process encountered an exceptional condition.', ' Report as a bug - the first argument is the internal error number.'),
(367, 'ORA-00601: cleanup lock conflict', 'Null', 'Null', 'normal', ' PMON process runs into lock conflict trying to recovery processes', ' This is trapped internally, no action necessary'),
(368, 'ORA-00602: internal programming exception', 'Null', 'Null', 'normal', ' Internal programming exception', ' Report as bug'),
(369, 'ORA-00603: ORACLE server session terminated by fatal error', 'Null', 'Null', 'normal', ' An ORACLE server session was in an unrecoverable state.', ' Login to ORACLE again so a new server session will be created'),
(370, 'ORA-00604: error occurred at recursive SQL level string', 'Null', 'Null', 'normal', ' An error occurred while processing a recursive SQL statement (a statement applying to internal dictionary tables).', ' If the situation described in the next error on the stack can be corrected, do so; otherwise contact Oracle Support.'),
(371, 'ORA-00606: Internal error code', 'Null', 'Null', 'normal', ' A call to deferred upi functions was made in non deferred mode', ' Report as a bug.'),
(372, 'ORA-00607: Internal error occurred while making a change to a data block', 'Null', 'Null', 'normal', ' An internal error or memory exception occurred while Oracle was applying redo to a data block.', ' call Oracle Support'),
(373, 'ORA-00608: testing error [string] [string] [string] [string] [string]', 'Null', 'Null', 'normal', ' Internal error reserved for testing.', ' call Oracle Support'),
(374, 'ORA-00609: could not attach to incoming connection', 'Null', 'Null', 'normal', ' Oracle process could not answer incoming connection', ' If the situation described in the next error on the stack can be corrected, do so; otherwise contact Oracle Support.'),
(375, 'ORA-00610: Internal error code', 'Null', 'Null', 'normal', ' Oracle process started too late', ' This error should never be seen by the customer. Contact Oraclce Support'),
(376, 'ORA-00700: soft internal error, arguments: [string], [string], [string], [string], [string], [string], [string], [string]', 'Null', 'Null', 'normal', ' Internal inconsitency that will not crash a process', ' Report as a bug - the first argument is the internal error.'),
(377, 'ORA-00701: object necessary for warmstarting database cannot be altered', 'Null', 'Null', 'normal', ' Attempt to alter or drop a database object (table, cluster, or index) which are needed for warmstarting the database.', ' None'),
(378, 'ORA-00702: bootstrap verison \'string\' inconsistent with version \'string\'', 'Null', 'Null', 'normal', ' The reading version of the boostrap is incompatible with the current bootstrap version.', ' Restore a version of the software that is compatible with this bootstrap version.'),
(379, 'ORA-00703: maximum number of row cache instance locks exceeded', 'Null', 'Null', 'normal', ' There are not enough row cache enqueues.', ' Increase the row cache enqueue parameter and warm start the system.'),
(380, 'ORA-00704: bootstrap process failure', 'Null', 'Null', 'normal', ' Failure in processing bootstrap data - see accompanying error.', ' Contact your customer support representative.'),
(381, 'ORA-00705: inconsistent state during start up; shut down the instance, then restart it', 'Null', 'Null', 'normal', ' A previous attempt to start an instance was terminated.', ' Shut down the instance completely, then restart it.'),
(382, 'ORA-00706: error changing format of file \'string\'', 'Null', 'Null', 'normal', ' An attempt to change the block0 format of the specified file failed because the file is read-only or offline.', ' Make the file read-write or bring the file online and set the BLK0_FMTCHG event.'),
(383, 'ORA-00710: new tablespace name is the same as the old tablespace name', 'Null', 'Null', 'normal', ' An attempt to rename a tablespace failed because the new name is the same as the old name.', ' No action required.'),
(384, 'ORA-00711: new tablespace name is invalid', 'Null', 'Null', 'normal', ' An attempt to rename a tablespace failed because the new name is invalid.', ' Choose a valid new name and retry the command.'),
(385, 'ORA-00712: cannot rename system tablespace', 'Null', 'Null', 'normal', ' An attempt to rename the system tablespace failed.', ' No action required.'),
(386, 'ORA-00720: ALTER DATABASE RESET COMPATIBILITY command has been de-supported', 'Null', 'Null', 'normal', ' ALTER DATABASE RESET COMPATIBILITY command has been de-supported since Oracle 10i.', ' No action required.'),
(387, 'ORA-00721: changes by release string cannot be used by release string', 'Null', 'Null', 'normal', ' An attempt to import a tablespace failed because the tablespace contains changes that require a newer software release or that violate the compatibility parameters.', ' Use a version of the software that can understand the changes or relax the compatibility requirements in the initialization parameter file.'),
(388, 'ORA-00722: Feature "string"', 'Null', 'Null', 'normal', ' Reporting name of the feature for details of another error.', ' See associated error message.'),
(389, 'ORA-00723: Initialization parameter COMPATIBLE must be explicitly set', 'Null', 'Null', 'normal', ' Oracle detected that the initialization parameter COMPATIBLE was not explicitly specified, and the compatibility of the database is lower than the default value of the COMPATIBLE parameter. In order to use the new compatible setting, the intialization parameter must be explicitly set by the user.', ' Explicitly set the value of COMPATIBLE parameter either in PFILE or SPFILE, whichever is used.'),
(390, 'ORA-00724: ALTER DATABASE CONVERT command has been de-supported', 'Null', 'Null', 'normal', ' ALTER DATABASE CONVERT command has been de-supported since Oracle 10i.', ' No action required.'),
(391, 'ORA-00725: Desupported ALTER DATABASE SET STANDBY clause specified: string', 'Null', 'Null', 'normal', ' A deprecated ALTER DATABASE SET STANDBY was specified.', ' No action required.'),
(392, 'ORA-00740: datafile size of (string) blocks exceeds maximum file size', 'Null', 'Null', 'normal', ' The user specified datafile size exceeded maximum file size.', ' Please check REFERENCE for maximum size. Reduce the size and retry.'),
(393, 'ORA-00741: logfile size of (string) blocks exceeds maximum logfile size', 'Null', 'Null', 'normal', ' The user specified logfile size exceeded maximum logfile size.', ' Please check REFERENCE for maximum size. Reduce the size and retry.'),
(394, 'ORA-00750: database has been previously mounted and dismounted', 'Null', 'Null', 'normal', ' The instance has already mounted and dismounted the database, which is only allowed once in its lifetime.', ' Shut down the database.'),
(395, 'ORA-00751: could not obtain resilvering status for file', 'Null', 'Null', 'normal', ' An error occurred while obtaining the mirror resilvering status of a file.', ' Refer to other error messages shown for additional details of the problem.'),
(396, 'ORA-00752: recovery detected a lost write of a data block', 'Null', 'Null', 'normal', ' A write of a data block to the storage are was lost during normal database operation or on the primary database.', ' Flashback or restore from backup the database as described in the Backup and Recovery Manual.'),
(397, 'ORA-00820: Specified value of sga_max_size is too small, needs to be at least stringM', 'Null', 'Null', 'normal', ' The specified value of sga_max_size is too small for the SGA to accommodate all of the necessary SGA components such as the log buffer, buffer pools, shared pool, etc.', ' Set sga_max_size to the recommended value or reduce the values of any SGA component size parameters you have specified.'),
(398, 'ORA-00821: Specified value of sga_target stringM is too small, needs to be at least stringM', 'Null', 'Null', 'normal', ' The specified value of sga_target is too small for the SGA to accommodate all of the necessary SGA components such as the log buffer, buffer pools, shared pool, etc.', ' Set sga_target to the recommended value or reduce the values of any SGA component size parameters you have specified.'),
(399, 'ORA-00822: MMAN process terminated with error', 'Null', 'Null', 'normal', ' The Memory Management process died.', ' Warm start instance'),
(400, 'ORA-00823: Specified value of sga_target greater than sga_max_size', 'Null', 'Null', 'normal', ' The specified value of sga_target is greater than sga_max_size.', ' Increase sga_max_size to match up with sga_target or decrease sga_target to match up with sga_maxsize.'),
(401, 'ORA-00824: cannot set SGA_TARGET or MEMORY_TARGET due to existing internal settings', 'Null', 'Null', 'normal', ' Could not set SGA_TARGET or MEMORY_TARGET due to current parameter settings.', ' Check the other error messages for additional information.'),
(402, 'ORA-00825: cannot set DB_BLOCK_BUFFERS if SGA_TARGET or MEMORY_TARGET is set', 'Null', 'Null', 'normal', ' SGA_TARGET or MEMORY_TARGET set with DB_BLOCK_BUFFERS set.', ' Do not set SGA_TARGET, MEMORY_TARGET or use new cache parameters, and do not use DB_BLOCK_BUFFERS which is an old cache parameter.'),
(403, 'ORA-00826: cannot set SGA_TARGET or MEMORY_TARGET for an ASM instance', 'Null', 'Null', 'normal', ' SGA_TARGET or MEMORY_TARGET set for an ASM instance.', ' Do not set SGA_TARGET or MEMORY_TARGET.'),
(404, 'ORA-00827: could not shrink sga_target to specified value', 'Null', 'Null', 'normal', ' Attempted to shrink the SGA to the specified value but did not succeed because the SGA components could not be shrunk as they were already at their minimum sizes.', ' Do not set sga_target to a value below the current value without first shrinking the individual SGA components.'),
(405, 'ORA-00828: specified value of shared_pool_reserved_size inconsistent with internal settings', 'Null', 'Null', 'normal', ' Unable to set shared_pool_reserved_size to specified value if SGA_TARGET set, either because the specified value is too small, or because it is too large for the current internal size of shared pool. More details can be found in the alert log.', ' If possible, do not set shared_pool_reserved_size without setting shared_pool_size if SGA_TARGET set. Examine the alert log for information about current internal size of shared pool, and valid range of values for shared_pool_reserved_size.'),
(406, 'ORA-00830: cannot set statistics_level to BASIC with auto-tune SGA enabled', 'Null', 'Null', 'normal', ' The user attempted to set statistics_level to BASIC with auto-tune SGA enabled which cannot be done because auto-tune SGA cannot work with statistics_level set to BASIC.', ' Disable auto-tune SGA and try setting the statistics_level to BASIC again.'),
(407, 'ORA-00832: no streams pool created and cannot automatically create one', 'Null', 'Null', 'normal', ' A database feature which needs STREAMS SGA was being used, however, the streams_pool_size parameter was not defined and the value of db_cache_size was too small to permit an automatic transfer of SGA to the streams pool from the buffer cache.', ' Please set the parameter streams_pool_size or set SGA_TARGET.'),
(408, 'ORA-00837: Specified value of MEMORY_TARGET greater than MEMORY_MAX_TARGET', 'Null', 'Null', 'normal', ' The specified value of MEMORY_TARGET was greater than MEMORY_MAX_TARGET.', ' Set MEMORY_TARGET less than or equal to MEMORY_MAX_TARGET.'),
(409, 'ORA-00838: Specified value of MEMORY_TARGET is too small, needs to be at least stringM', 'Null', 'Null', 'normal', ' The specified value of MEMORY_TARGET was less than the sum of the specified values for SGA_TARGET and PGA_AGGREGATE_TARGET.', ' Set MEMORY_TARGET to at least the recommended value.'),
(410, 'ORA-00839: SGA_TARGET cannot be modified to the specified value', 'Null', 'Null', 'normal', ' The specified value of SGA_TARGET was not compatible with current settings of PGA_AGGREGATE_TARGET and MEMORY_TARGET/MEMORY_MAX_TARGET.', ' Set SGA_TARGET to be no more than the difference of MEMORY_TARGET/MEMORY_MAX_TARGET and PGA_AGGREGATE_TARGET. Also ensure that the current PGA memory used for non-auto workareas is low.'),
(411, 'ORA-00840: PGA_AGGREGATE_TARGET cannot be modified to the specified value', 'Null', 'Null', 'normal', ' The specified value of PGA_AGGREGATE_TARGET was not compatible with current settings of SGA_TARGET and MEMORY_TARGET/MEMORY_MAX_TARGET.', ' Set PGA_AGGREGATE_TARGET to be no more than the difference of MEMORY_TARGET/MEMORY_MAX_TARGET and SGA_TARGET.'),
(412, 'ORA-00841: MEMORY_TARGET not supported on this system', 'Null', 'Null', 'normal', ' MEMORY_TARGET parameter was not supported on this system as shmfs was disabled.', ' Refer to documentation for a list of supported systems.'),
(413, 'ORA-00842: DB_BLOCK_BUFFERS cannot be set with SGA_TARGET or MEMORY_TARGET', 'Null', 'Null', 'normal', ' DB_BLOCK_BUFFERS was incompatible with SGA_TARGET and MEMORY_TARGET.', ' Remove the incompatible parameter setting.'),
(414, 'ORA-00843: Parameter not taking MEMORY_MAX_TARGET into account', 'Null', 'Null', 'normal', ' The parameter was larger than MEMORY_MAX_TARGET.', ' Check the other error messages for additional information about the parameter. Set the parameter to a lower value than MEMORY_MAX_TARGET.'),
(415, 'ORA-00844: Parameter not taking MEMORY_TARGET into account', 'Null', 'Null', 'normal', ' The parameter was larger than MEMORY_TARGET.', ' Check the other error messages for additional information about the parameter. Set the parameter to a lower value than MEMORY_TARGET.'),
(416, 'ORA-00845: MEMORY_TARGET not supported on this system', 'Null', 'Null', 'normal', ' The MEMORY_TARGET parameter was not supported on this operating system or /dev/shm was not sized correctly on Linux.', ' Refer to documentation for a list of supported operating systems. Or, size /dev/shm to be at least the SGA_MAX_SIZE on each Oracle instance running on the system.'),
(417, 'ORA-00846: could not shrink MEMORY_TARGET to specified value', 'Null', 'Null', 'normal', ' Attempted to shrink MEMORY_TARGET to the specified value but did not succeed because the PGA and SGA components could not be shrunk.', ' Do not set MEMORY_TARGET to a value below the current value without first shrinking the individual memory components.'),
(418, 'ORA-00847: MEMORY_TARGET/MEMORY_MAX_TARGET and LOCK_SGA cannot be set together', 'Null', 'Null', 'normal', ' MEMORY_TARGET/MEMORY_MAX_TARGET was set to a non-zero value and LOCK_SGA was also set', ' Do not set MEMORY_TARGET or MEMORY_MAX_TARGET if LOCK_SGA is set to TRUE.'),
(419, 'ORA-00848: STATISTICS_LEVEL cannot be set to BASIC with SGA_TARGET or MEMORY_TARGET', 'Null', 'Null', 'normal', ' STATISTICS_LEVEL of BASIC was incompatible with SGA_TARGET and MEMORY_TARGET.', ' Fix the incompatible parameter setting. Set STATISTICS_LEVEL to TYPICAL or ALL to use SGA_TARGET or MEMORY_TARGET.'),
(420, 'ORA-00849: SGA_TARGET string cannot be set to more than MEMORY_MAX_TARGET string.', 'Null', 'Null', 'normal', ' SGA_TARGET value was more than MEMORY_MAX_TARGET value.', ' Set SGA_TARGET to be less than MEMORY_MAX_TARGET.'),
(421, 'ORA-00850: PGA_AGGREGATE_TARGET string cannot be set to more than MEMORY_MAX_TARGET string.', 'Null', 'Null', 'normal', ' PGA_AGGREGATE_TARGET value was more than MEMORY_MAX_TARGET value.', ' Set PGA_AGGREGATE_TARGET to be less than MEMORY_MAX_TARGET.'),
(422, 'ORA-00851: SGA_MAX_SIZE string cannot be set to more than MEMORY_TARGET string.', 'Null', 'Null', 'normal', ' SGA_MAX_SIZE value was more than MEMORY_TARGET value.', ' Set SGA_MAX_SIZE to be less than MEMORY_TARGET.'),
(423, 'ORA-00037:', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;--
-- Database: `insurance`
--
CREATE DATABASE IF NOT EXISTS `insurance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `insurance`;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `member_id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `mander` text NOT NULL,
  `year` year(4) NOT NULL,
  `type` text NOT NULL,
  `vehicle_registration` varchar(15) NOT NULL,
  `country` text NOT NULL,
  `copy_of_car` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `member_id`, `mander`, `year`, `type`, `vehicle_registration`, `country`, `copy_of_car`) VALUES
(00001, 00000, '', 0000, '', '', '', ''),
(00002, 00000, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '2à¸à¸“2620', '', ''),
(00003, 00000, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '2à¸à¸“2620', '', ''),
(00004, 00000, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '2à¸à¸“2620', '', ''),
(00005, 00000, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '2à¸à¸“2620', '', ''),
(00006, 00000, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '2à¸à¸“2620', '', ''),
(00007, 00000, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '2à¸à¸“2620', '', ''),
(00008, 00010, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '2à¸à¸“2620', '', ''),
(00009, 00011, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '2à¸à¸“2620', '', ''),
(00010, 00012, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '2à¸à¸“2620', '', ''),
(00011, 00013, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '2à¸à¸“2620', '', ''),
(00012, 00014, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '2à¸à¸“2620', '', ''),
(00013, 00015, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', 'à¸4571', '', ''),
(00014, 00016, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', 'à¸4571', '', ''),
(00015, 00017, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªfdsfsdfsfsà¸­à¸‡à¸•à¸­à¸™', 'à¸4571', 'fsdfsf', ''),
(00016, 00018, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', 'à¸4571', '', ''),
(00017, 00019, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '', '', ''),
(00018, 00020, 'Toyota', 0000, 'à¸à¸£à¸°à¸šà¸°à¸ªà¸­à¸‡à¸•à¸­à¸™', '', '', ''),
(00019, 00021, '', 0000, '', '', '', ''),
(00020, 00022, '', 0000, '', '', '', ''),
(00021, 00023, '', 0000, '', '', '', ''),
(00022, 00024, '', 0000, '', '', '', ''),
(00024, 00026, 'Honda', 0000, 'à¸£à¸¢.1', '2à¸à¸“2620', 'à¸à¸£à¸¸à¸‡à¹€à¸—à¸žà¸¡à¸«à¸²à¸™à¸„à¸£', ''),
(00037, 00039, 'Chevrolet', 2010, 'à¸£à¸¢.1', '3 à¸à¸— 4551', 'à¸à¸£à¸¸à¸‡à¹€à¸—à¸žà¸¡à¸«à¸²à¸™à¸„à¸£', ''),
(00054, 00036, 'Audi', 1988, 'à¸£à¸¢.1', '', 'à¸à¸²à¸à¸ˆà¸™à¸šà¸¸à¸£à¸µ', ''),
(00055, 00038, 'Mitsubishi', 1988, 'à¸£à¸¢.1', 'vf', 'à¸™à¸£à¸²à¸˜à¸´à¸§à¸²à¸ª', ''),
(00035, 00037, 'Chevrolet', 2010, 'à¸£à¸¢.1', '3 à¸à¸— 4551', 'à¸à¸£à¸¸à¸‡à¹€à¸—à¸žà¸¡à¸«à¸²à¸™à¸„à¸£', ''),
(00036, 00038, 'Chevrolet', 2010, 'à¸£à¸¢.1', '3 à¸à¸— 4551', 'à¸à¸£à¸¸à¸‡à¹€à¸—à¸žà¸¡à¸«à¸²à¸™à¸„à¸£', ''),
(00056, 00036, 'Ford', 1989, 'à¸£à¸¢.2', '2 à¸à¸ 566', 'à¸Šà¸±à¸¢à¸ à¸¹à¸¡à¸´', ''),
(00053, 00036, 'BMW', 2013, 'à¸£à¸¢.1', '2à¸à¸“5566', 'à¸à¸£à¸¸à¸‡à¹€à¸—à¸žà¸¡à¸«à¸²à¸™à¸„à¸£', ''),
(00050, 00052, 'BMW', 2009, 'à¸£à¸¢.1', '2 à¸à¸“ 2620', 'à¸à¸£à¸¸à¸‡à¹€à¸—à¸žà¸¡à¸«à¸²à¸™à¸„à¸£', ''),
(00051, 00052, 'Audi', 1996, 'à¸£à¸¢.1', '2 à¸à¸“ 4589', 'à¸à¸£à¸¸à¸‡à¹€à¸—à¸žà¸¡à¸«à¸²à¸™à¸„à¸£', ''),
(00052, 00052, 'Hyundai', 1989, 'à¸£à¸¢.1', 'fd', 'à¸šà¸¶à¸‡à¸à¸²à¸¬', '');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_policy`
--

CREATE TABLE `insurance_policy` (
  `id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `member_id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `cars_id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `company` text NOT NULL,
  `class` text NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `net_cowrie` double NOT NULL,
  `duty` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `comission` double NOT NULL,
  `payment` double NOT NULL,
  `discount` double NOT NULL,
  `paid_date` date NOT NULL,
  `note` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insurance_policy`
--

INSERT INTO `insurance_policy` (`id`, `member_id`, `cars_id`, `company`, `class`, `date_start`, `date_end`, `net_cowrie`, `duty`, `tax`, `total`, `comission`, `payment`, `discount`, `paid_date`, `note`) VALUES
(00047, 00036, 00056, 'smk', '1', '2013-07-15', '2014-07-15', 15660, 63, 1100.61, 16823.61, 16823.61, 0, 2, '2013-07-15', ''),
(00044, 00036, 00053, 'cp', '1', '2013-07-14', '2014-07-14', 12500, 50, 878.5, 13428.5, 13428.5, 0, 2, '2013-07-14', ''),
(00043, 00052, 00052, 'cp', '1', '2013-07-10', '2014-07-10', 4500, 18, 316.26, 4834.26, 4834.26, 0, 0, '2013-07-14', ''),
(00042, 00052, 00051, 'cp', '1', '2013-07-14', '2014-07-14', 12500, 50, 878.5, 13428.5, 13428.5, 0, 10, '2013-07-14', ''),
(00041, 00052, 00050, 'smk', '1', '2013-07-14', '2014-07-14', 25000, 100, 1757, 26857, 26857, 0, 5, '2013-07-14', ''),
(00021, 00032, 00030, 'smk', '1', '0000-00-00', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, '0000-00-00', ''),
(00023, 00034, 00032, 'cp', '1', '2013-07-12', '2013-07-18', 0, 0, 0, 0, 0, 0, 0, '0000-00-00', ''),
(00046, 00038, 00055, 'cp', '2', '2013-07-09', '2014-07-06', 50000, 200, 3514, 53714, 53714, 0, 1, '2013-07-14', ''),
(00045, 00036, 00054, '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, '0000-00-00', ''),
(00026, 00037, 00035, 'cp', '1', '2013-07-12', '2014-07-12', 40, 1, 2.87, 43.87, 0, 43.87, 0, '2013-07-12', ''),
(00027, 00038, 00036, 'cp', '1', '2013-07-12', '2014-07-12', 50000, 200, 3514, 53714, 53714, 0, 0, '2013-07-12', ''),
(00028, 00039, 00037, 'cp', '1', '2013-07-12', '2014-07-12', 50000, 200, 3514, 53714, 53714, 0, 0, '2013-07-12', '');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `fullname` text NOT NULL,
  `surname` text NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `fullname`, `surname`, `address`, `phone`, `email`) VALUES
(00001, 'kornkrit', 'Supayanant', '9/7', '0894514236', 'kornkrit.s@hotmail.com'),
(00002, 'kornkrit', 'Supayanant', '9/6', '0894514236', 'kornkrit.s@hotmail.com'),
(00003, 'kornkrit', 'Supayanant', '9/6', '0894514236', 'kornkrit.s@hotmail.com'),
(00004, 'kornkrit', 'Supayanant', '9/6', '0894514236', 'kornkrit.s@hotmail.com'),
(00005, 'kornkrit', 'Supayanant', '9/6', '0894514236', 'kornkrit.s@hotmail.com'),
(00006, 'kornkrit', 'Supayanant', '9/6', '0894514236', 'kornkrit.s@hotmail.com'),
(00007, 'kornkrit', 'Supayanant', '9/6', '0894514236', 'kornkrit.s@hotmail.com'),
(00008, 'kornkrit', 'Supayanant', '9/6', '0894514236', 'kornkrit.s@hotmail.com'),
(00009, 'kornkrit', 'Supayanant', '9/6', '0894514236', 'kornkrit.s@hotmail.com'),
(00010, 'kornkrit', 'Supayanant', '9/6', '0894514236', 'kornkrit.s@hotmail.com'),
(00011, 'kornkrit', 'Supayanant', 'Bangkok', '0894154236', 'kornkrit.s@hotmail.com'),
(00012, 'kornkrit', 'Supayanant', 'Bangkok', '0894154236', 'kornkrit.s@hotmail.com'),
(00013, 'kornkrit', 'Supayanant', 'Bangkok', '0894154236', 'kornkrit.s@hotmail.com'),
(00014, 'kornkrit', 'Supayanant', 'Bangkok', '0894154236', 'kornkrit.s@hotmail.com'),
(00015, 'Vasu', 'Supayanant', 'Bangkok', '0894514236', 'vasu_sup@yahoo.com'),
(00016, 'Vasu', 'Supayanant', 'Bangkok', '0894514236', 'vasu_sup@yahoo.com'),
(00017, 'Vasu', 'Supayanant', 'Bangkok', '0894514236', 'vasu_sup@yahoo.com'),
(00018, 'Vasu', 'Supayanant', 'Bangkok', '0894514236', 'vasu_sup@yahoo.com'),
(00019, '', '', '', '', ''),
(00020, '', '', '', '', ''),
(00021, '', '', '', '', ''),
(00022, '', '', '', '', ''),
(00023, '', '', '', '', ''),
(00024, '', '', '', '', ''),
(00025, 'à¸¨à¸£à¸µà¸ªà¸¸à¸§à¸£à¸£à¸“', 'à¸ªà¸¸à¸›à¸²à¸¢à¸™à¸±à¸™à¸•à¹Œ', 'à¸à¸£à¸¸à¸‡à¹€à¸—à¸ž', '0894154236', 'kornkrit.s@hotmail.com'),
(00026, '?????????????', '??????????????????????????????', '9/7 ???????????? 15', '0894154236', 'kornkrit.s@hotmail.com'),
(00027, 'kornkrit', 'Supayanant', '45', '0894154236', 'kornkrit.s@hotmail.com'),
(00028, 'à¸¨à¸£à¸µà¸ªà¸¸à¸§à¸£à¸£à¸“', 'à¸ªà¸¸à¸›à¸²à¸¢à¸™à¸±à¸™à¸•à¹Œ', '48/5 à¸«à¸¡à¸¹à¹ˆ 3 à¸‹à¸­à¸¢à¹€à¸‡à¸´à¸™à¸­à¸¸à¸”à¸¡ 1 à¹à¸‚à¸§à¸‡à¸šà¸²à¸‡à¹€à¸Šà¸·à¸­à¸à¸«à¸™à¸±à¸‡ à¹€à¸‚à¸•à¸•à¸¥à¸´à¹ˆà¸‡à¸Šà¸±à¸™ à¸à¸£à¸¸à¸‡à¹€à¸—à¸žà¸¡à¸«à¸²à¸™à¸„à¸£ 10170', '0863673863', 'vasu_sup@yahoo.com'),
(00029, 'à¸à¸£à¸à¸¤à¸¨', 'à¸ªà¸¸à¸›à¸²à¸¢à¸™à¸±à¸™à¸•à¹Œ', '48/5 à¸«à¸¡à¸¹à¹ˆ 3 à¸‹à¸­à¸¢à¹€à¸‡à¸´à¸™à¸­à¸¸à¸”à¸¡ 1 à¹à¸‚à¸§à¸‡à¸šà¸²à¸‡à¹€à¸Šà¸·à¸­à¸à¸«à¸™à¸±à¸‡ à¹€à¸‚à¸•à¸•à¸¥à¸´à¹ˆà¸‡à¸Šà¸±à¸™ à¸à¸£à¸¸à¸‡à¹€à¸—à¸žà¸¡à¸«à¸²à¸™à¸„à¸£ 10170', '0863673863', 'vasu_sup@yahoo.com'),
(00030, 'à¸„à¸¸à¸“à¸«à¸‡à¸©à¹Œ', '', '', '0863673863', 'kornkrit.s@hotmail.com'),
(00031, 'à¸à¸£à¸à¸¤à¸Š', 'à¸ªà¸¸à¸›à¸²à¸¢à¸™à¸±à¸™à¸•à¹Œ', 'à¸”à¸­à¸™à¸«à¸­à¸¢à¸«à¸¥à¸­à¸”', '0863673863', 'vasu_sup@yahoo.com'),
(00032, '', '', '', '', ''),
(00033, '', '', '', '', ''),
(00034, '', '', '', '', ''),
(00035, '', '', '', '', ''),
(00036, 'à¸à¸£à¸à¸¤à¸¨', 'à¸ªà¸¸à¸›à¸²à¸¢à¸™à¸±à¸™à¸•à¹Œ', '9/7 à¸«à¸¡à¸¹à¹ˆ 15 à¸‹à¸­à¸¢à¹€à¸‡à¸´à¸™à¸­à¸¸à¸”à¸¡ 1 à¹à¸‚à¸§à¸‡à¸šà¸²à¸‡à¹€à¸Šà¸·à¸­à¸à¸«à¸™à¸±à¸‡ à¹€à¸‚à¸•à¸•à¸¥à¸´à¹ˆà¸‡à¸Šà¸±à¸™ 10170', '0894154236', 'kornkrit.s@hotmail.com'),
(00037, 'à¸à¸£à¸à¸¤à¸¨', 'à¸ªà¸¸à¸›à¸²à¸¢à¸™à¸±à¸™à¸•à¹Œ', '9/7 à¸«à¸¡à¸¹à¹ˆ 15 à¸‹à¸­à¸¢à¹€à¸‡à¸´à¸™à¸­à¸¸à¸”à¸¡ 1 à¹à¸‚à¸§à¸‡à¸šà¸²à¸‡à¹€à¸Šà¸·à¸­à¸à¸«à¸™à¸±à¸‡ à¹€à¸‚à¸•à¸•à¸¥à¸´à¹ˆà¸‡à¸Šà¸±à¸™ 10170', '0894154236', 'kornkrit.s@hotmail.com'),
(00038, 'à¸à¸£à¸à¸¤à¸¨', 'à¸ªà¸¸à¸›à¸²à¸¢à¸™à¸±à¸™à¸•à¹Œ', '9/7 à¸«à¸¡à¸¹à¹ˆ 15 à¸‹à¸­à¸¢à¹€à¸‡à¸´à¸™à¸­à¸¸à¸”à¸¡ 1 à¹à¸‚à¸§à¸‡à¸šà¸²à¸‡à¹€à¸Šà¸·à¸­à¸à¸«à¸™à¸±à¸‡ à¹€à¸‚à¸•à¸•à¸¥à¸´à¹ˆà¸‡à¸Šà¸±à¸™ 10170', '0894154236', 'kornkrit.s@hotmail.com'),
(00039, 'à¸à¸£à¸à¸¤à¸¨', 'à¸ªà¸¸à¸›à¸²à¸¢à¸™à¸±à¸™à¸•à¹Œ', '9/7 à¸«à¸¡à¸¹à¹ˆ 15 à¸‹à¸­à¸¢à¹€à¸‡à¸´à¸™à¸­à¸¸à¸”à¸¡ 1 à¹à¸‚à¸§à¸‡à¸šà¸²à¸‡à¹€à¸Šà¸·à¸­à¸à¸«à¸™à¸±à¸‡ à¹€à¸‚à¸•à¸•à¸¥à¸´à¹ˆà¸‡à¸Šà¸±à¸™ 10170', '0894154236', 'kornkrit.s@hotmail.com'),
(00040, '', '', '', '', ''),
(00041, '', '', '', '', ''),
(00042, '', '', '', '', ''),
(00043, '', '', '', '', ''),
(00044, '', '', '', '', ''),
(00045, '', '', '', '', ''),
(00046, '', '', '', '', ''),
(00047, '', '', '', '', ''),
(00048, '', '', '', '', ''),
(00049, '', '', '', '', ''),
(00050, '', '', '', '', ''),
(00051, '', '', '', '', ''),
(00052, 'Vasu', 'Supayanant', '48/5 moo 3 soi ngerudom 1 bangchaengnung talingchan district bangkok 10170', '0863673863', 'vasu_sup@yahoo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_policy`
--
ALTER TABLE `insurance_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `insurance_policy`
--
ALTER TABLE `insurance_policy`
  MODIFY `id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;--
-- Database: `pm_report`
--
CREATE DATABASE IF NOT EXISTS `pm_report` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pm_report`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
