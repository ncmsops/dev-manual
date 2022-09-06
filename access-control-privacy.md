# Access control

`admin-password` The system restricts access to the Numo CMS Admin tool to authenticated users.
Authentication may be done via user-name and password, or via IDP / biometrics.

`identifying-info` Only a customer-business can grant role-based access to Personal Identifiable Information. 

> User: An individual who avails the services of the platform. It excludes Admins and other personnel, who are part of the customer-business.

> Personal Identifiable Information: Information that helps in identifying a person, without aid from other data-sources. 
Includes information such as phone-numbers and addresses. Excludes information like first-name, time-of-service (which can be used for identification only by correlating with other data-sources).

`infrastructure-keys` TODO - customer can manage infra keys like firebase account, payment-gateway, etc.

`intellectual-property` TODO - source code, customer-proprietary algorithms
