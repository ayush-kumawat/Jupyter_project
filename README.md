# Jupyter_project
Software As A Service (Jupyter notebook on browser from anywhere anytime)
==================================================================================================================================
The Jupyter Notebook is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and narrative text. Uses include: data cleaning and transformation, numerical simulation, statistical modeling, data visualization, machine learning, and much more.
==================================================================================================================================
Xpra is an open-source multi-platform persistent remote display server and client for forwarding applications and desktop screens. It gives you remote access to individual applications or full desktops. On X11, it is also known as screen for X11: it allows you to run programs, usually on a remote host, direct their display to your local machine, and then to disconnect from these programs and reconnect from the same or another machine, without losing any state.
==================================================================================================================================
Docker is one of th great tool for containerization technology. But it does not provide the default way to use or launch grphical applications in it. 
We can install firefox in it but it can't be run because it does not have the graphical window. 
But we know docker don't have anything of it's own, it uses the host resources and that is also one of the reason for it's instant and fast service.
I have created a dockerfile which can be used to build the image and them used compose to build the environment for jupyter notebook launch.

To provide internet access we can a program 'ngrok', it works on the concept if tunneling which helps us to get access over internet without Public ip address.
