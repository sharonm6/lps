# lps

## How To Run
1. `git clone` and then `cd` into lps
  
2. Create a virtual environment
   - use Python version `3.11`
   - if 3.11 is already in-use `python -m venv [name]`
   - else `virtualenv [name] --python=python3.11`
     
3. Activate the environment
   - Windows: `source [name]/Scripts/activate`
   - MacOS: `source [name]/bin/activate`
  
3. Install requirements
   - `pip install -r requirements.txt`
  
## Inspiration
Created to tackle the stratascratch "Market Analysis in Dublin" data challenge

## What it does
We used the given data from searches and contacts of Airbnbs in Dublin to create a random forest machine learning model that can recognize when people are most likely to book a listing.

## How we built it
* Data Management: MySQL database
* Data Manipulation and Analysis: pandas, sklearn
* Data Visualization: plotly

## Challenges we ran into
We all had different experience levels in data visualizations and analysis coming into the datathon. Learning how to use different plotting libraries to fulfill our ideas was an uphill battle.

## Accomplishments that we're proud of
We're proud that we were able to draw conclusions from the data and produce a high-accuracy random forest model.

## What we learned
We learned how to analyze a dataset for use in machine learning and pre-process the data to make the ingest easier. We also learned how to create a story with data to convey all of our research!

## What's next for Dublin Determiner
Evolving the ML to be able to predict visitors/inquiries based on month of the year
