---
layout:	post
title:	"virtual environments (venv)"
author: "kyle"
date:	2022-03-19 03:46:00 -0700
categories:	Blog
permalink:	/:categories/virtual-environments/
---
Sometimes (rarely, but sometimes), when I start a new Python project, I run into compatibility issues in the packages that I've installed. Whether it be because a function has been renamed, its behavior is different, or the package was written in a different version of Python: compatibility issues are a pain. Virtual environments help resolve this issue by creating a space for your work and saving the particular versions of each package that you install for your project. This way, if you have multiple projects that each use a different version of a certain package, or if someone else would like to begin working on your project at a later date, you or they may download and install the packages as they are versioned in your virtual environment -- bypassing any compatibility issues and therefore being able to use your code immediately (assuming that your code in the virtual environment works, haha).

Although there are other alternatives, I like to use the `venv` module. The following instructions are for VS Code on a Windows machine, but you can find machine specific instructions on Python's Packaging User [Guide].

Before I create anything, I make sure that I have Python, pip, and venv installed. You can find the links to download and install them here: [Python], [pip], [venv]. I usually double check that I have pip and venv installed by entering `pip list`; this command shows me all the packages that I have installed on my machine.

Once I see that I have pip and venv, I create a new workspace in VS Code. You can do this by opening up a fresh window, then going to File > Save Workspace as ...

After creating a new workspace, navigate to the terminal and enter `Python -m venv <venv-name>` where `<venv-name>` is the name of the virtual environment. I usually use the same name as the project with a `_venv` at the end, e.g. `WorkAutomation_venv`. Now, there should be three new folders in the workspace: "Lib", "Include", and "Scripts", and the python.pythonPath setting should be stated in the settings (easiest to see in the JSON view of the settings).

Edit the settings of the Workspace (hit `ctrl+,` to open up the settings and switch from "User" to "Workspace" if it's not currently editing the Workspace settings) -- specifically, change the python path to the path that your .\Scripts\Python.exe is located within your venv.

Should look something like:
{
	"python.pythonPath":
		"C:\\path\\to\\venv\\Scripts\\python.exe"
}

Note: the double backslashes are necessary on Windows machines because a single backslash is the escape character (escape from quote).

Now the venv setup is complete. Once you relaunch your terminal, your workspace should navigate to the new pythonPath from the workspace settings, launching the virtual environment's Python interpreter and indicating this with ([name of virtual environment]) preceding your terminal input line.

ex:
`(practice_env) PS C:\path\to\venv>`

[Guide]: https://packaging.python.org/en/latest/tutorials/installing-packages/#creating-virtual-environments
[Python]: https://www.python.org/downloads/
[Pip]: https://pip.pypa.io/en/stable/installation/
[venv]: https://docs.python.org/3/library/venv.html