Colm Mccarthy
  1:24 PM
All you would need to do is get the cpd route like the following. You shouldnt have to manually do any port forwarding.
1:24
oc get routes -n lifecycle-manager


Dmitry Zakharov
  1:25 PM
Thank you  I will write it down , just forgot to do it last time (edited) 


Colm Mccarthy
  1:25 PM
cpd-lifecycle-manager.apps.qa-colm.cp.fyre.ibm.com
1:25
So this will be the route you can use then. So you can put that directly into your browser and you will be presented with the login page. So just change the above to the one specific to your deployment and it should work.
New
1:26
Then you can select the option for logging in with the admin user.
1:26
and use the following command to get the password.
1:27
oc get secrets -n ibm-common-services platform-auth-idp-credentials -o jsonpath='{.data.admin_password}' | base64 -d