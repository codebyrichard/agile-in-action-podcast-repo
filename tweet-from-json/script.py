import os
print("HELLO WORLD!!!")
if (os.environ.get("env_twitter_access_token")=="Loremipsum"):
  print ("ENV WORKS!!!")
if (os.environ.get("twitter_access_token")=="Loremipsum"):
  print ("WITHOUT_ENV WORKS!!!")
print(os.environ.items())
