import os
print("HELLO WORLD!!!")
if (os.environ["TWITTER_ACCESS_TOKEN"]):
  print ("YAY!!!")
else:
  print ("NAH!!!")
