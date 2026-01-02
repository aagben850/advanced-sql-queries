Advanced SQL Query Patterns in Oracle
Overview

This repository contains a curated set of SQL queries written in Oracle SQL to practice and document nontrivial query logic.

The emphasis is on reasoning through edge cases involving subqueries, joins, aggregation, and NULL handling, rather than on basic syntax or exploratory analysis. Queries are written deliberately to test correctness, semantic clarity, and logical soundness.

Dataset

The queries are applied to a personal Spotify liked tracks dataset containing realistic music metadata such as:

Track name
Artist name
Popularity score
Track duration
Album release date

The dataset is used purely as a realistic schema to practice SQL logic. All query patterns demonstrated here generalize directly to business, analytics, and finance use cases.

Skills Demonstrated

This repository demonstrates the following SQL concepts and patterns:

Correlated subqueries in WHERE and SELECT
Inline views for group level computation
Scalar subqueries in SELECT clauses
Single row and multiple row subqueries
EXISTS and NOT EXISTS for NULL safe filtering
NOT IN behavior in the presence of NULLs
Outer join preservation and join collapse
WHERE versus ON clause filtering
Aggregate comparisons across different semantic levels

The focus is on selecting the correct structure for a given problem, not just producing a query that happens to run.

Query Organization

Queries are organized by logical pattern, not by dataset feature.

Each query is designed to highlight a specific decision point, such as:

When an inline view is required instead of HAVING
When EXISTS is preferable to NOT IN
When multiple query forms are logically equivalent
When similar looking queries produce different results

This mirrors how SQL is evaluated in real world technical settings.

Tooling

Oracle Live SQL was used as the execution environment to ensure compatibility with Oracle SQL semantics.

A runnable version of the queries is available via Oracle Live SQL for validation and experimentation.

Purpose

This repository serves as a personal reference and practice space for developing strong SQL reasoning on complex querying problems.

While built through independent practice, the repository is structured and documented so that others can quickly see how I approach SQL problems involving multiple layers of logic and edge case handling.

Notes on Style and Approach

Queries prioritize clarity and correctness over brevity.
Multiple valid approaches are sometimes included to illustrate tradeoffs.
Comments focus on why a query is structured a certain way, not just what it does.

The goal is to demonstrate thinking in SQL, not memorization.
