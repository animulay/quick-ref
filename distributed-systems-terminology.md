

| **Term**          | **Explanation**                                     | **Links for further exploration** |
|:--------------------------------|:----------------------------------------------------|:----------------------------------|
| Day 0 | • Refers to the planning and design phase of the deployment | |
| Day 1 | • Refers to the actual deployment work | |
| Day 2 | • Refers to the ongoing monitoring and maintenance work post deployment (i.e. post Day 1 activities) | |
| Head-of-the-line (HOL) blocking | • Typically the work gets queued and is processed in a First-In, First-Out (FIFO) manner.<br> • If processing of the first job gets delayed, then it delays processing of all other jobs in the queue.<br>• Mitigation Strategy: multiple queues | |
| Noisy Neighbor | • Refers to a situation where one tenant (or workload) on shared infrastructure consumes a disproportionate amount of shared resources — such as CPU, memory, or network bandwidth — thereby degrading the performance for other tenants on the same system | [Noisy Neighbor antipattern](https://learn.microsoft.com/en-us/azure/architecture/antipatterns/noisy-neighbor/noisy-neighbor) |
| Tail Latency | • Refer to a situation where servicing a small fraction of the requests take significantly longer to complete compared to most of the requests.<br>• Usually described as percentile e.g. say, the 99th percentile latency<br><br>• Potential causes:<br> - resource contention<br> - system overload<br> - queuing delays<br> - replication lag<br> - unusual code path<br> - garbage collection | |
