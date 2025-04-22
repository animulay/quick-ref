
-- Identify blocking queries
SELECT
    activity.pid,
    activity.usename,
    activity.query,
    blocking.pid AS blocking_id,
    blocking.query AS blocking_query
FROM pg_stat_activity AS activity
JOIN pg_stat_activity AS blocking ON blocking.pid = ANY(pg_blocking_pids(activity.pid));

-- Identify queries running for more than 2 minutes
SELECT
  pid,
  now() - pg_stat_activity.query_start AS duration,
  query,
  state
FROM pg_stat_activity
WHERE (now() - pg_stat_activity.query_start) > interval '2 minutes';

-- Start: Queries copied from: PostgreSQL Performance Identifying Hot and Slow Queries --
-- https://virtual-dba.com/blog/postgresql-performance-identifying-hot-and-slow-queries/

-- Identify top 10 frequently running slow queries
SELECT
  query,
  calls,
  (total_time/calls)::integer AS avg_time_ms
FROM pg_stat_statements
WHERE calls > 1000
ORDER BY avg_time_ms DESC
LIMIT 10;

-- A variation of the above query
-- Identify top 10 frequently running slow queries that are returning small amount of data
SELECT
  query,
  calls,
  (total_time/calls)::integer AS avg_time_ms
FROM pg_stat_statements
WHERE calls > 1000 AND rows < 5000
ORDER BY avg_time_ms DESC
LIMIT 10;

-- Identify "Hot" queries - queries being executed the most times
-- The resulting queries are good candidates for optimization.
SELECT
  query,
  calls,
  total_time::integer,
  (calls/total_time)::integer AS ms_per_call,
  shared_blks_hit,
  shared_blks_read
FROM pg_stat_statements
ORDER BY calls DESC
LIMIT 10;

-- End: Queries copied from: PostgreSQL Performance Identifying Hot and Slow Queries --

-- anvk/psql_useful_stat_queries.sql - List of some useful Stat Queries for PSQL
-- https://gist.github.com/anvk/475c22cbca1edc5ce94546c871460fdd

-- Reference
--
-- PostgreSQL documentation: pg_stat_activity
-- https://www.postgresql.org/docs/current/monitoring-stats.html#MONITORING-PG-STAT-ACTIVITY-VIEW
--
-- PostgreSQL documentation: pg_stat_statements
-- https://www.postgresql.org/docs/current/pgstatstatements.html
