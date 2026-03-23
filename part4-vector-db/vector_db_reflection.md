## \## Vector DB Use Case



A traditional keyword based database search would not be sufficient for searching complex legal contracts. Keyword search relies on exact word matches and cannot understand the meaning of a user's query. In large legal documents, important clauses may be phrased differently from the words used in the search query. For ex, a lawyer might search for "Termination clauses" but the document may contain phrases like "Agreement Cancellation Conditions" or " Contract Termination Provisions". A keyword based search might miss these relevant sections because it cannot recognise semantic similarity.



Vector databases solve this problem by enabling semantic search. In this approach, both the contract text and the user's question are converted into numerical embeddings using language models. These embeddings capture the semantic meaning of the text rather than just individual keywords. The lawyer when asks the query in plain English, the system converts it into an embedding and compares it with embeddings of the contract sections using similarity metrics such as cosine similarity.



A vector database stores and indexes these embeddings efficiently, allowing the system to quickly retrieve the most semantically relevant sections of the document. This means the search system can return relevant clauses even if the working differs from the user's query.



In this scenario, the Vector database acts as the core retrieval layer in a semantic search system. It enables lawyers to ask natural language questions and receive accurate results from lengthy legal contracts, significantly improving efficiency and reducing the time required for manual document review.



