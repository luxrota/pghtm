/**
 * Dendrite Table
 */
CREATE TABLE htm.dendrite (
  id    INT NOT NULL PRIMARY KEY,
  class htm.DENDRITE_CLASS NOT NULL DEFAULT 'distal'::htm.DENDRITE_CLASS
);

