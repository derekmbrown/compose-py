import os
from emoji import emojize

def test():
    container_name = os.environ['CONTAINER_NAME']
    hostname = os.environ['HOSTNAME']
    emoji = emojize(":sunglasses:", use_aliases=True)

    print(container_name + ' (' + hostname + ')' + ' container is running! ' + emoji + '\n')

    # Write code here ...

    

    # End code

if __name__ == '__main__':
    test()
