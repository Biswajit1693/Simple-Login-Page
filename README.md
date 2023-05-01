<h1> Simple Login Page using Flask </h1>
Created simple login page using flask and html/css.Dockerized the application and push it onto dockerhub
<h2> Install the necessary packages needed to create the application </h2>
<ul>
<li>Python</li>
<li>Flask</li>
<li>Docker</li>
</ul>


<h3>Installing Python</h3>

<p>In the modern version of any linux distribution like ubuntu which is the base os here python is already installed </p>
<p>You can check if Python 3 is already installed on your Ubuntu machine by running the following command in the terminal:</p>
  <pre><code>python3 --version</code></pre>
  
<p>If Python 3 is installed, this command will print the version number. If not, you can install Python 3 by following these steps:
  <li>Open a terminal window by pressing Ctrl+Alt+T or by searching for "Terminal" in the Applications menu.</li>
  <li>Update the package index by running the following command:</p></li>
  
  <pre><code>sudo apt update</code></pre>
  
  <li> Install Python 3 by running the following command:</li>
  <pre><code>sudo apt install python3</code></pre>
  
  <li> Once the installation is complete, you can verify that Python 3 is installed by running the following command:</li>
  <pre><code>python3 --version</code></pre>
  
  <h3> Installing Flask </h3>
  <p>When creating a Flask application it si best practice to install Flask (or any Python package) in a separate environment using a package manager like virtualenv or conda.</p>
  <p> It helps in avoiding version conflicts, maintaining reproducibility, security and makes it easier to manage dependencies for the project.</p>

<p>Here are the steps to install Flask with venv (virtual environment) in Ubuntu:</p>

<li>Open a terminal window by pressing Ctrl+Alt+T or by searching for "Terminal" in the Applications menu.</li>
<li>Update the package index by running the following command:</li>

  <pre><code>sudo apt update</code></pre>

<li>Install Python and venv module by running the following command:</li>
  <pre><code>sudo apt install python3 python3-venv</code></pre>

<li>Create a new directory for your Flask application by running the following command:</li>

  <pre><code>mkdir flaskapp</code></pre>

<li>Navigate to the app directory by running:</li>

  <pre><code>cd flaskapp</code></pre>

<li>Create a new virtual environment by running the following command:</li>

  <pre><code>python3 -m venv venv</code></pre>

<p>This will create a new directory called venv in your project directory.</p>

<li>Activate the virtual environment by running the following command:</li>

  <pre><code>source venv/bin/activate</code></pre>

<p>You will see that the prompt in your terminal changes to indicate that the virtual environment is active.</p>

<li>Once the virtual environment is activated, you can install Flask by running the following command:</li>

  <pre><code>pip install Flask</code></pre>

<p>This will install Flask in the virtual environment.</p>

<li>To verify that Flask is installed correctly, you can create a new Python file called test.py with the following contents:</li></ul>

  <pre><code> from flask import Flask

  app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(debug=True)</code></pre>

<p>Run the app.py file by running the following command:</p>
  <pre><code>python app.py</code></pre>
  
<p>This will start the Flask development server. Open a web browser and go to http://localhost:5000 to see the "Hello, World!" message.</p>

<h2> Installing Docker </h2>
<p>Packaging the application into containers using docker provides an efficient way to run the application in various environment.Docker helps us achieve that</p>
<p>To install Docker follow the official documentation of Docker.Here is the link to doc <link>https://docs.docker.com/engine/install/ubuntu/</link></p>

<li> Using the above tools and configuration we can create a web application.</li><li>Remember  Flask uses the <code>__name__</code> variable to locate the root directory of the application and other files, such as templates and static files.<p>This is important because Flask uses the application's root directory to locate resources like templates and static files.</p></li>
<p>The templates folder should contain the html file and the static folder should contain the css file.</p>

