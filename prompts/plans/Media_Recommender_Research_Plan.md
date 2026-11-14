# Research Plan: Personal Show, Movie & Anime Recommender (Claude Code)
Created 2026-11-14 · Platform: **Claude Code** · User: just me (adult; no content filtering needed beyond showing content ratings)

**What the recommender will do:**
- Ask what I'm in the mood for.
- Recommend shows, movies, and anime based on the shows, movies, and anime I like. Optional inputs: hobbies and interests, books and manga, and video game preferences.
- Recommendations must truly reflect my tastes. The streaming platform doesn't matter.

## How to run each topic (one new Claude Code chat per topic, one at a time)
1. Start a new Claude Code chat in dballage777/AI-Prompts. First message:
   > Check out the branch `claude/eager-cannon-i5x78b`, pull the latest changes, and commit and push all your work to that branch. You have my permission to push there.
2. Paste `prompts/claude/Top30_Resource_Research_Prompt_v3.txt`. When it asks for the topic, paste the topic line below.
3. In the same chat, paste `prompts/claude/Topic_Learning_Master_Prompt_v2.txt`, then paste the Top 30 list.
4. At the end: "Commit and push all research files." Then check the box below.

| Order | Topic line to paste | Done? |
|---|---|---|
| 1 | Readers' advisory and appeal factors across media: how librarians and experts match people to books, films, TV, anime, manga, and video games by pacing, tone, characterization, story, and setting (cross-media "whole collection" advisory). Audience: adults · Recency: any (classic methods OK) + 2018+ · Language: English | ☐ |
| 2 | How good recommendations work: personalization, explainable recommendations ("because you liked X"), diversity, novelty and serendipity, avoiding popularity bias, the cold-start problem, and research on LLM-based recommenders (including hallucinated items). Recency: 2018+ · Language: English | ☐ |
| 3 | Accurate title data and media knowledge for recommendations: reliable title databases (TMDB, IMDb, AniList, MyAnimeList, IGDB), anime demographics and genre or theme tags, franchise watch orders and entry points, manga-to-anime adaptation status, and content ratings (MPA, TV Parental Guidelines). Recency: 2022+ · Language: English | ☐ |

## After all three are done
Start a chat and say: "Build the media recommender prompt for Claude Code using the three recommender knowledge bases." Use the Prompt Architect master prompt v2, with platform **Claude Code**.
