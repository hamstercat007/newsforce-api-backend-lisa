# Goals
We are creating a single-page web app to synthesise various news sources into one consolidated feed. This will consist of a backend API and a front end that calls this API to get news information

# MVP
## What it will include
- A feed pulling from 3 news sources (Guardian and 2 others TBC) showing a maximum of 30 articles on the page
- The articles will appear in reverse chronological order
- Signing up and logging in
- A default feed if not logged in

## What it will not include
A variety of other features designed for Day 2 that may or may not be implemented:
- Filtering by news source
- Filtering by article tags (e.g. sport/politics)
- Top tweets related to the news article
- Bookmarks
- Quiz/user preference form to define which tags you see most of

# Tech Stack
- DB: postgres
- Backend API: Ruby on Rails
- Front-end app: React.js