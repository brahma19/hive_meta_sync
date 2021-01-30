--------------------------------------------------------------------------
-- Author:       Brahmanand Singh
-- Description:  This will add partitions for ien external tables
--               to hcatalog
--
--------------------------------------------------------------------------
ALTER TABLE ${DBSCHEMA}.test_table 
      ADD IF NOT EXISTS PARTITION (part_key='${BATCHDATE}') LOCATION '${sample_loc}';
