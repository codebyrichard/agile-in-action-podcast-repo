import os
print("HELLO WORLD!!!")
if (os.getenv("TWITTER_ACCESS_TOKEN")):
  print ("YAY!!!")
else:
  print ("NAH!!!")
