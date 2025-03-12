---
layout: post
title: 'Work Sample 1: Project Overview'
date: 2024-11-25 10:00:00 -0800
author: ispeaknerd
description: Project Overview work sample for iSpeakNerd.
categories:
- work sample
- technical overview
tags:
- work sample
- poap
- farcaster
- farcaster channels
- farcaster frames
- nextjs
- vercel
- github
- neynar
- devcon
- devcon 2024
- typescript
- frog
- warpcast
- technical demo
- documentation
---

This technical overview is written for business stakeholders, product managers, and technical decision-makers who are exploring innovative ways to grow their online communities. While the implementation uses blockchain technology, prior technical knowledge is not required to understand the core concepts and business value presented.

The document outlines how we leveraged digital collectibles (POAPs) to create an streamlined invitation system for Farcaster social channels. 

Using TableTop.xyz as a case study, we'll explore how combining these technologies created a streamlined process for identifying and inviting qualified community members to relevant discussion channels. The solution demonstrates how blockchain technology can solve practical community management challenges while improving user engagement.

## Key Terms and Technologies

Before diving in, here's a quick reference for important terms used throughout this document:

- **POAP (Proof of Attendance Protocol)**: Digital collectibles that verify someone attended an event or participated in an activity.
- **Farcaster**: A decentralized social media platform.
- **Farcaster Channels**: Topic-based communities within Farcaster (similar to Discord channels or Reddit subreddits).
- **Frames**: Interactive elements within Farcaster casts that users can engage with (embedded mini-applications).
- **Warpcast**: The most popular app for accessing Farcaster 
- **cast**: A post on Farcaster.
- **Frog.fm**: A popular framework for building Farcaster Frames.
- **Neynar**: A developer service for building applications on Farcaster.
- **FID**: Farcaster ID - a unique identifier for each user on the Farcaster protocol.
- **Devcon**: The annual conference for Ethereum developers and community members.
- **Next.js**: A popular web development framework for building fast, modern websites.
- **Vercel**: A cloud platform for hosting web applications.
- **allowlist**: A list of approved users (in this case, POAP holders eligible for invites).
- **wallet address**: An account on the Ethereum blockchain that holds tokens.

## POAP Powered Pathways to Participation

[TableTop.xyz](https://tabletop.xyz), a Next.js app hosted on Vercel, gives out POAPs (Proof of Attendance Protocol) as engagement tools for onboarding board game players to blockchain and to streamline user engagement in the [/tabletop](https://warpcast.com/~/channel/tabletop) Farcaster channel. This guide explains how we implemented a POAP-based channel invite flow for new members, the lessons we learned, and how you can replicate the process.

### Overview

#### Problem Statement

During events like Devcon, we distribute POAPs to attendees who verifiably play board games. However, we faced challenges in ensuring these participants could join the Tabletop channel:
- Many attendees hadn't signed into the event platform (lu.ma).
- POAP holders lacked a direct invite flow to access the Farcaster channel.
- We had little way of associating the wallet addresses with POAPs to users' social identities on Farcaster.

#### Solution

We built a custom flow that transforms POAP claims into Farcaster channel invites. This flow:
1. Retrieves wallet addresses that claimed the POAP via [poap.tech](https://poap.tech).
2. Matches these wallet addresses to Farcaster FIDs using Neynar APIs.
3. Creates an FID allowlist for invites.
4. Delivers channel invites through a custom Farcaster frame.

#### Technical Components

1. [Poap.tech API](https://poap.tech): Handles POAP wallet address lookups.
2. [Neynar SDK/API](https://neynar.com): Resolves wallet addresses to Farcaster FIDs.
3. [Frog.fm](https://frog.fm): Delivers interactive invites or redirects users via Farcaster frame.
4. [Next.js](https://nextjs.org): API service that handles frame interactions on Warpcast to deliver invites to users.

### Implementation Details

#### Architecture

We structured the solution into four main stages:
1. POAP Lookup
  - Query the poap.tech API: `GET /event/{id}/poaps`.
  - Collect wallet addresses holding the specified POAP.
2. Convert wallet addresses to Farcaster FIDs.
  - Use the Neynar SDK/API: `GET /v2/farcaster/user/bulk-by-address`.
  - Match wallet addresses to their Farcaster user profiles.
3. Generate the Invite Allowlist
  - Compile eligible Farcaster IDs for channel invites.
  - Use the allowlist to enable interactive invite flows via Farcaster frames (Frog.fm).
4. Deliver Invites
  - Post a frame for invite interactions.
  - If a user isn't on the allowlist, redirect them to joining instructions.

> Invites could also be delivered via direct messages as a link for users to click, or as direct channel invites in Warpcast. We decided to go with the private invites in public offered by using frames to maximize attention for /tabletop channel during Devcon.
{: .prompt-info }

#### Flow Diagrams

**Sequence Diagram:**

![](assets/img/work-samples/sample-1/poap-frame-sequence-diagram.png)

**Process Diagram:**

![](assets/img/work-samples/sample-1/poap-frame-process-diagram.png)

We decided to use a public frame to leverage attention for /tabletop on Farcaster despite it being a more involved solution than private DMs.

### Deployment

We shipped the first version of this flow during Devcon on November 17 on Vercel. This deployment revealed several key insights:
1. **Dynamic Image Generation:** We encountered compatibility issues generating images with user data using Satori (an image generation library) within the Frog framework. We used static assets instead and plan to return to implement dynamic images.
2. **Distribution Impact:**
  - Folks like to engage with frames! Comments boosted the cast and the frame cast got over 1k views despite it being a very simple 2 stage frame.

### Challenges and Learnings

1. **Improving Invite Distribution:**
  - Wider Farcaster distribution increased visibility but didn't significantly boost activity.
2. **Understanding User Preferences:**
  - Users preferred standalone posts for invites over nested comments.
3. **Optimizing Dynamic Frames:**
  - We needed to fine-tune dynamic frame generation for reliability.

### Open Source Code

I open-sourced this implementation so others can make their own version and innovate on the idea:
- View the [announcement cast](https://warpcast.com/ispeaknerd.eth/0xafe8abd3) on Farcaster.
- [Source code](https://github.com/iSpeakNerd/poap-invites-frame) on GitHub.

**How to Use:**
- Refer to the [GitHub README](https://github.com/iSpeakNerd/poap-invites-frame?tab=readme-ov-file#using-this-repository) for step-by-step instructions, examples, and configurations specific to the implementation.

### Live Demo

Check out the frame in action:
- Channel [Invite Frame](https://warpcast.com/ispeaknerd.eth/0xd0cf927a) on Farcaster.

#### Invite Frame Screens

The invite frame looks like this:
1. Start frame entrypoint

![Frame Start](assets/img/work-samples/sample-1/frame-start.png)

2. Split viewers if their FID is on the allowlist or not.
- If the viewer's FID is on the allowlist they receive the invite link.

![Frame Join Now](assets/img/work-samples/sample-1/frame-join-now.png)

 - If the viewer's FID is not on the allowlist they receive a link inviting them to join an alternate way.

![Frame Join Channel](assets/img/work-samples/sample-1/frame-join-channel-alt.png)

  - The "Ways to join" link opens to another cast:

![Cast Channel Invite](assets/img/work-samples/sample-1/cast-channel-invite.png)

<hr class="section-divider">
<hr class="section-divider">

### Epilogue: Warpcast's User Onboarding with Channel Invites

Since implementing this POAP-based invite flow, Warpcast introduced a streamlined [channel invites for new users](https://warpcast.com/dwr.eth/0xbf740a94) feature. This update improves how communities onboard new members by simplifying the process:
- **Gift Farcaster Accounts:** Send an invite that creates a new Farcaster account.
- **Pre-Select Channels:** Ensure new users automatically join specific channels as part of the onboarding.
- **Share Seamlessly:** Generate a link or QR code, eliminating the need for outdated email flows.
- **Improved Claim Flow:** Users can now redeem their invite with a code, further optimizing the onboarding experience.

This innovation expands opportunities for community growth while removing barriers to entry. Future iterations of the POAP invite flow for [/tabletop](https://warpcast.com/~/channel/tabletop) and other channels could integrate these new Warpcast features, creating even smoother pathways for user participation.
