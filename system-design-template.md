
## System Design Template

We often come across Sytsem Design problems.

Creating a checklist / template to cover various aspects of System Design.

*Note:*<br><br>
This document is still work-in-progress.<br>
This document is still work-in-progress.<br>
This document is still work-in-progress.<br>

#### Goals / Requirements

- Functional Requirements
  - Desired Scale (back-of-the envelop calculations)
  - Constraints / Known Limitations, if any
  
- Behavioral Requirements
  - SLA

#### High Level Design
- Is there scope for partitioning the problem?
- Identify the main entities / components and the relationship between them

#### Interface Design
- API Design
- Authentication & Authorization

#### Data Management
- Is there scope for Data Buffering / Caching?
- Data Persistence

#### High Availability (HA), Fault Tolerance / Failover Handling

#### Other Aspects

*Note:*<br>
1. The following topics are absolutely critical for any system in production. But, if you are using this template for *_interview preparation_*, then most likely you won't have to cover them.
2. The listing does *not* imply order of importance.
 
- Testing at scale
  - Q. How do we verify that the system is able to deliver the desired performance?
 
- Debugging / Diagnostics in production
  - Q. How do we diagnose various modules within the system?
 
- Monitoring, Alerting and Observability (O11y)

- Strategy for Data Backup

- Strategy for purging unwanted data
 
- Security
  - Q. How do we ensure that the system is secure?
 
- Compliance / Certification Requirements e.g. [HIPAA](https://en.wikipedia.org/wiki/Health_Insurance_Portability_and_Accountability_Act), 

- System Upgrade<br>
  Q. How do we handle
  - OS and 3rd party component software upgrade
  - other software updates

