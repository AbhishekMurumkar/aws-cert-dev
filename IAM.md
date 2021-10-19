Notes:

IAM

* users
  * mapped to physical users, has a password for aws console
* groups
  * contains users only, we cannot include one group into another group
  * upon groups we can assing set of permissions
* Policies
  * Json documents that outlines permisssions for users and groups
  * JSON Content:
* roles
  * this is mostly used for the aws services
  * sometimes you need to start some aws from your behalf which you need to specify permissions to, at that time we use this
  *so we assign permissions to aws
  * examples:
    1. ec2 instance roles
    2. lambda function roles
    3. roles for cloud formation
  * **Hands-on**:
    1. IAM -> ROLES
    2. choose ec2 instance
    3. continue on tags section
    4. on permissions, choose IAMreadonly access
    5. then in review tab, give name as "DemoRoleforEC2" and then save it.
* AWS Shared Responsibility Model:
  * <pending>
  
* access management
* security tools
  1. **IAM Credentials report** (account-level) :
     * report of various users and status of their Credentials
     * *Hands-on* : IAM -> Crendentials Report -> Download report
  2. **IAM Access Advisor** (user-level) :
     * shows the permissions granted to user and their last usage access of that services.This helps in determining not used permissions and then remove them from user eventually.
     * *Hands-on* : IAM -> Users -> Choose a user -> Access Advisor
* Best Practises
  * Never use root account, except for aws account creation
  * for using/sharing the aws account to another user, just create one user in Users and then share the awsSIGN IN URL with new user credentials
  * Assign Users-> Groups, Permission -> Groups
  * create strong password policy with MFA
  * create and use roles for giving permissions to aws services
  * use access keys for programmatic access (CLI/SDK)
  * Audit permissions for your account with IAM credentials report, IAM Access Advisor
  * Never share IAM users & Access keys



# AWS Billing Dashboard

* present in : root user console -> root username on top bar(click on it) -> my billing dashboard(click on it)
* Understanding AWS Bills
  * Open above console -> Bills (on LHS) : Here you can how you are charged on services you used
* For getting knowledge on free tier billing/pending free tier limit 
  * open above console -> AWS Free Tier : Here you can see available usage of your service
* **Setting Budgets**
  * open above console -> Budgets (On LHS)
  * click on `Create a Budget`
  * choose `Cost Budget`
  * Then give a name, choose the time you need to this mail (monthly/daily), then choose the cost condition, in our case lets set `if acutal cost is 80% of our limit and forecast cost is 60% of limit'
  * then give emails you need to receive in above 2 cases and then save it.
* Giving access to admin to above console
  * Login into root account user
  * Goto Your account page [https://console.aws.amazon.com/billing/home?#/account](https://console.aws.amazon.com/billing/home?#/account)
  * Goto section *IAM User and Role Access to Billing Information*
  * enable above dashboard access to IAM Users by editing that section and enabling IAM Access.