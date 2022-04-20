import os
print("HELLO WORLD!!!\n")
print ("TEST_VAR: " + os.environ.get("TEST_VAR"))
if (os.environ.get("env_twitter_access_token")=="Loremipsum"):
  print ("ENV WORKS!!!")
if (os.environ.get("twitter_access_token")=="Loremipsum"):
  print ("WITHOUT_ENV WORKS!!!")
print(os.environ.items())
