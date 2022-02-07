# Access and security for inside

How to assign user permissions as an administrator on inside.econ.ubc.ca

## Private File Access

Private files are confidential files like reference letters that most people shouldn't be able to see.  These are usually files that are linked in a confidential forum.  So for example, when a assistant professor is being considered for tenure they can't be shown copies of their reference letters.  So this is a mission critical part of access.

Current permissions are top down.  There are four groups defined to control access:

1. Head - the director and sub director (at time of writing, Patrick and Brian)
2. Full Professors
3. Associate Professors
4. Faculty (in other words assistant professor, teaching faculty etc)

To get this right, each user account should belong to `at most` one of these groups.  All other private files are accessible to all authenticated users.

Most access issues that we have had recently are caused by users being assigned to more than one of these groups.  As a consequence, a full professor was incorrectly being identified as Faculty.  Their access to promotion files and letters would then be restricted.

When storing new private files, put them in subdirectories of one of the four directories listed above rather than creating a completely new private file directory.  That way, no configuration changes will be required.

## Second Line of Defense - Forum Access

Special Committees may want to block certain files.  An example might be the executive committee.  

If there are members on the committee from each academic level, the private files should be stored in the `faculty` directory so that everyone on the committee can see them.  In principle, that means that all faculty could see the files.

Forum access makes it possible to ensure that faculty who aren't on the committee will not be able to see the forum link where the files are displayed.  Since they aren't able to browse files, the only way they could view private files is if someone who is on the committee gives them the link.

## Module Permissions

Recruiting files require special permissions.  The don't normally involve any forms.  Every faculty member should have the box `read candidate info`  checked in their user profile.  Each member of the recruiting committee should have the box `recruiting committee` clicked in their user profile.

Best practice suggests that when someone finishes their stint on the recruiting committee (or any other committee for that matter), the check box for `recruiting committee` in their user profile should be unclicked.

## Identifying Users

The permissions faculty, associate professor, full professor and head allow you to find users when you need to edit permissions.  You can also use the `staff` identifier.  Open people in the admin tab at the top of your display, click on role and choose the role you'd like to see.  `Reset` undoes everything when you can't find stuff.  This kind of pre-search will give you a manageable set of users.  

## Administrator

When someone has the `administrator` role checked, they have access to everything, so there is no need to give them all kinds of additional roles.  If you have chosen a staff person as an administrator then you should continue to keep the `staff` box checked in their user profile.

Do not check the administator box for eveyone on your staff or for anyone else unless they know what they are doing.  For example, the director should not be an administrator.  He or she doesn't need such permission and I can't imagine they would want it.

## Block users

When someone leaves the department, you should block their accounts.  Don't delete accounts.  You can remove them from view without deleting them by using the `Refine` option on the people page.