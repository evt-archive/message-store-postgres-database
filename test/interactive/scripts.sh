#!/usr/bin/env bash

scripts/evt-pg-create-db

scripts/evt-pg-write-test-message

scripts/evt-pg-print-category-type-summary
scripts/evt-pg-print-messages
scripts/evt-pg-print-stream-summary
scripts/evt-pg-print-stream-type-summary
scripts/evt-pg-print-type-category-summary
scripts/evt-pg-print-type-stream-summary
scripts/evt-pg-print-type-summary

scripts/evt-pg-clear-messages

scripts/evt-pg-delete-db
scripts/evt-pg-recreate-db

scripts/evt-pg-install-functions
scripts/evt-pg-install-indexes
scripts/evt-pg-install-privileges
scripts/evt-pg-install-views

scripts/evt-pg-update-db

scripts/evt-pg-open-database-scripts-dir
