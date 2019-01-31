/**
 * Synapse Table
 */
CREATE TABLE htm.synapse (
  id          INT NOT NULL PRIMARY KEY,
  segment_id INT NOT NULL,
  permanence  NUMERIC NOT NULL,

  CHECK ((permanence >= 0.0) AND (permanence <= 1.0)),
  FOREIGN KEY (segment_id)
    REFERENCES htm.segment(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

