-- This script is invoked by VoraX to get the explain plan for
-- a provided statement. Feel free to change it according to your
-- needs.
--
-- The &1 parameter is the sql script which contains the statement
-- to be explained. All current sqlplus options are saved before
-- and restore after, therefore you may set whatever sqlplus
-- option you want.

-- by default, don't show the query results for the statement.
set termout off

-- we want all statistics available
alter session set statistics_level='ALL';

-- serveroutput must be off in order DBMS_XPLAN to work as
-- expected.
set serveroutput on


-- enable terminal display
set termout on

-- execute the statement
@&1

prompt


