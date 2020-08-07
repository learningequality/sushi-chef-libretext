# LibreTexts Chef

Kolibri is an open source educational platform to distribute content to areas with
little or no internet connectivity. Educational content is created and edited on [Kolibri Studio](https://studio.learningequality.org),
which is a platform for organizing content to import from the Kolibri applications. The purpose
of this project is to create a *chef*, or a program that scrapes a content source and puts it
into a format that can be imported into Kolibri Studio. 


## Installation

####Docker (easiest)
* Install Docker

* Build the Dockerfile

* Create and run a container of this Docker image

* Open the CLI for the container

* Enter your ./sushichef.py commands using the CLI

####Python virtualenv
* Install [Python 3](https://www.python.org/downloads/) if you don't have it already.

* Install [pip](https://pypi.python.org/pypi/pip) if you don't have it already.

* Create a Python virtual environment for this project (optional, but recommended):
   * Install the virtualenv package: `pip install virtualenv`
   * The next steps depends if you're using UNIX (Mac/Linux) or Windows:
      * For UNIX systems:
         * Create a virtual env called `venv` in the current directory using the
           following command: `virtualenv -p python3  venv`
         * Activate the virtualenv called `venv` by running: `source venv/bin/activate`.
           Your command prompt will change to indicate you're working inside `venv`.
      * For Windows systems:
         * Create a virtual env called `venv` in the current directory using the
           following command: `virtualenv -p C:/Python36/python.exe venv`.
           You may need to adjust the `-p` argument depending on where your version
           of Python is located.
         * Activate the virtualenv called `venv` by running: `.\venv\Scripts\activate`

* Run `pip install -r requirements.txt` to install the required python libraries.



## Usage
```Shell
     ./sushichef.py -v --token=".token" --subject=chem
     ./sushichef.py -v --token=".token" --subject=math
     
     #upload a custom list of LibreTexts books to a channel
     ./sushichef.py --token=".token" --channel=IntroChem --urlFile=courses.txt
```
## MathJax
MathJax files must be in a upper level folder i.e ../ or will raise an error.
An old version of MathJax v2 is already included, but you may want to update this
