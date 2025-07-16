CREATE TABLE project_embeddings (
  id UUID PRIMARY KEY,
  entity_type TEXT NOT NULL,
  entity_id UUID NOT NULL,
  model TEXT NOT NULL,
  embedding JSONB NOT NULL,
  created_at TIMESTAMPTZ DEFAULT now()
);
CREATE INDEX ON project_embeddings USING GIN (embedding);
