# TALENT NETWORK
**Source:** Wolftech OFFICIAL_Documentation — 0_Administration/AUTHORIZATION, AUTHENTICATION, USER GROUPS & SECURITY
**Revision:** R12
**Added to KB:** 04/06/2026
**Version scope:** R12 only — do not apply to other revisions

---

## TALENT NETWORK
### TALENT NETWORK
In Wolftech you will be able to host your full talent network of employees, freelancers, vendors or guests. Those resources can then be turned on and off as users as their collaboration is required in the platform.
Let´s look at how resources are organised:
Resource Classes
When doing bookings the different resource classes will be clearly identifiable:
- Employees will display as clear cards
- Freelancers will display with a light yellow card
- Vendors will display with a blue card
Resource Types
All of them are categorised under resource types. Each resource can belong to multiple resource types if they perform multiple roles.
Companies
Freelancers can also be tied to a company if your want to group resources under companies.
Resource Searches (Crewing)
In the global Search if you navigate to human resources you will be able to do deep searches of your talent network with a visual experience of their cards
Leveraging your Profile templates searchable and filterable fields you can find just the right talent for your production.
Search by resource type, spoken languages, locations or skills. All is customisable. The more feature rich the profiles are the more fun it is.
Searches can be saved and shared with others for true crewing collaboration.
Once you have found some interesting profile you can drag them to your story to assign them a task.  Note the dragging does not work with productions today.
Profiles
Opening their profile will reveal all of the information including their details and location,
booking history:
Or rates (if you have finance access)
Some of these fields can be restricted to people with those permissions.
### ADMIN

In this section we will cover some of the existing functionality to provide better context to how the new functionality works.
#### Intro: Resources vs Users

Wolftech can host the entire database for your employees, freelancers, guests, vendors, and companies you collaborate with, as well as your equipment. As such we list these as resources.

Some of these listed resources may need access to work in the system, becoming actual users.
This allows you to have your 10k+ talent network for tracking resourcing and contacts and have a subset of them be active as and when needed.
So let's see first how resources are categorized before we look into giving them access as users.

#### Resources
Departments (Organizational Levels)
A most important aspect of your resources will be to organize them under departments. Departments classify both your content and your resources, so people working under that department will automatically have access to the stories they work across (while accessing other departments' stories can be enabled separately).
Your departments can be managed under the Organizational Levels section.

Here you can describe them by giving them a name, a unique ID if needed for integrations, a description

You can also set if you can greenlight projects from this department level (some may be hierarchical, some may host content only in development, etc,.)
You can also define whether any content should be associated with this department level at all.
And from a production perspective you can enable the department to host long form shows.
On the Content and Note Permissions you can define which user groups can access these stories-productions and whether a different subset should access the Pitches (Notes).

Resource Permissions
In this page you can also restrict who gets access to see the resources that are tagged with this department. In the resource permissions you will be able to define if your complete user base has full access to all resources or if you need to separate the access to specific talent to collaborate between them.
By default, those users that belong to the same department (see All users in ITV) will have access to them but you may want to add everyone or have selected access to resources.

Offices
The secondary way to categorize your resources is in their respective Offices. This allows you to know if someone or a piece of equipment is available for the required office. Your offices can be managed under the Offices section
Note: If you enable the booking only option that office will not be available to categorize your stories or productions or your people and will only be used as an option when doing requests.

Resource Types
Your resources will have different skill sets that are important to define. This allows you to differentiate Producers from Journalists or Designers so when you go about resourcing them it is easy to find them. A Resource can belong to more than one resource type if they perform several functions.
Under each resource type there will be a lot of options available to set up the correct workflows for searching and requesting those resources. For more info go to the resourcing guides.

Resource Profile Template
It is important to note however that you can set up a resource profile template for all of your people by selecting the Human level and defining a template. We encourage people to do so at the very top level so you can search all of your people according to the same fields for consistency:

The template will always include
- Resource class
- Name
- Picture
- Description
- Department
- Office
- Location

Some use cases of custom fields that have been useful in this template include
- Pronouns
- Official Name
- Cost Centre
- Phone number
- Company Email (typically this is the identifer for SSO)
- Secondary email account
- Language(s) filterable and searchable
- Work Preference (Editorial vs commercial etc) filterable and searchable
- Vetting (internal vetting status) filterable and searchable
- Internal Contact (email of for the person who knows them in the company for question)
- Notable Skills
- Awards
- Owned Kit
- HR Mandatory Training Completion (For checking which freelancers have gone through required training)
- Employee-Freelancer ID (for HR system)
- Manager (For employees)
- Social account handles (Mainly for on screen talent and journalists)

SSO - Mapping of Users and Fields

Through your single sign on connector you can not only manage the creation of users with the correct permission and access to Wolftech but you can also map information on the SSO profile to the wolftech user profile.

In the resource type template you will see an option for application claim.
Depending on how your SSO is set up you will be able to map values coming from your SSO system to values on the resource profile template in Wolftech.

Think of mapping emails,  names, departments, phones, etc directly from your SSO for always up to date data.

For more information on how to set this up contact your project manager

Below, the field marked as “use as identifier” will be the field value used by the SSO to map the user in Wolftech to the user in the SSO. Typically this can be an email or an ID.

Talent Specific Fields
Note how for on screen talents and guest you have the option to make certain fields restricted so they are not visible to most users

You can also mark certain fields as not needed for guests (Hide for guest) (Like employee or crew specific data like Employee ID, etc.)

Resource Costs
In the resource type you will be able to determine a cost if you want to have a blended rate for different roles so that employee costs are not visible but a rate is available to manage estimated costs

To do so add a cost at the resource type level
You can decide on the currency used
Rates can be set as
- Hourly (Per hour booked)
- Per Booking Fee (Daily booking regardless of hours on that day)

At the Resource level you can define rates again, which will override the resource type blended rate when assigning this specific resource to a job.

Here you will be able to add more options like:

- Flat Fee (Flat fee for a story or production regardless of number of days worked)
- You can also leave cost notes: comments for others doing crewing regarding rates.

All of this information will then be available in the resource profile provided that the user has finance permissions

Resource Profile
Once you have all of the framework defined the users will be able to begin creating Resources and filling out the profile templates or editing after the fact.
The “About” section has a full Froala text editor for full styling.
Do note the “About” section has a 5000 character limit.

#### Users
Now that we have a good framework for how your resources are managed let's look at how your active users are configured.

Abilities and Auth Roles
Abilities are the type of actions your users will be able to perform and are listed in the  Authorisation Page. By grouping these abilities into “Roles” an admin can define a user profile that will be able to perform a combination of abilities.
A user can belong to multiple authorisation roles to gain additive abilities. So you may define a role for managing resources and another one for finance and a user could be in both.

As an Admin you can go to the Admin-Authorisation Page to set them up. You can name them, edit them or delete them all from the left column:
Now, you may not need to use all of the abilities that exist in the system because perhaps you don't want to restrict permissions at all for those actions.

In that case you can enable or disable the abilities you don´t need in the Abilities tab:
Manually Assigning Authorisation Roles
Once you have your resources in the system it is easy to give them the right permissions by assigning roles to them in the Assign Roles tab:
SSO-AD Assignment of Roles
SSO or AD groups can be a great way to externally manage the permissions and access to your users. They provide a good single source of truth and allow our clients to securely know that once a resource leaves the company and their company email no longer is activated they will in turn lose access to Wolftech.

Through the SSO profile you will be able to create a user, give it a Username and an Email as well as add it to an auth role. Note that department and office cannot be mapped via SSO and will need to be done manually.

To configure the connection, add your active SSO groups in the Configure SSO section. Be sure to name them exactly the same as your system naming.
Once you have them listed you can select a role from the left and click on the corresponding SSO group on the right.

Mapping Resource Types
For a full end to end workflow from the SSO system to Wolftech you may want to automatically assign both authorisation roles as well as the resource type. To do so you can enable this option in the settings section.
This can be a great way to manage your resources fully from your SSO or AD system so you have a single source of truth in your IT system of choice and your human resources or tech support team can simply add or remove them from their existing system to manage their permissions and the resource types.

Note, as a user can be in multiple auth roles so combining auth roles and multiple resource types is welcomed.
#### User Groups
Giving your different functional teams some permissions and categorisations is the first part to set up the right collaboration workflows for your organization.

Next you will want to give them access to the right View Collections (Dashboards) as well as setup the right communication flows for clear and easy collaboration.
Both of these are possible by leveraging user groups.

So what are user groups? A group of users can be:
- The users that belong to a Department
- Those belonging to an Authorisation Role, or
- A custom made group of users, one that you want to create to group people that don't fall into those categories.
Department are enabled by default to function as a user group please check this option in the admin organizational levels - department page if you want to disable them:

Authorisation roles need to be enabled to be a user group. You can do so in the Authorisation admin page by clicking on the 3 dot menu and selecting “Allow role to be reused”

With any of those existing groups you can then configure what you´d like to use them for in the admin - user groups section:

You can use a group to
- @mention the group in chats
- Send alerts to such the group
- Share searches
- Share Plan or Feeds view collections

In the user group admin section simply click the options to configure the possibilities.
