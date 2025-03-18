---
layout: post
title: 'Work Sample 3: How-to User Guide'
date: 2023-12-04 14:00:00 -0800
author: ispeaknerd
description: "Token-Gating Rule Management Guide: ERC721 Collections"
categories:
- work sample
- how to guide
tags:
- work sample
- tutorial
- documentation
- collab.land
- user guide
- markdown
- github
- docusaurus
published: true
sitemap: false
---

This guide explains how to set up and manage Token-Gating Rules (TGRs) for NonFungible Token (NFT) collections in Discord communities using Collab.Land. Token-gating rules allow Collab.Land to assign Discord roles to members based on blockchain token ownership. The assigned Discord roles grant access to exclusive spaces and privileges for blockchain token holders. For example, a TGR may grant access to a "VIP" role for members who hold more than 4 tokens.

## Who is this guide for?

This guide is intended for Discord server administrators and community managers who:
- Manage communities with blockchain NFT-based membership
- Want to set up automated role management based on token ownership
- Are familiar with basic Discord server administration
- Have basic knowledge of NFTs and blockchain terminology

No coding knowledge is required to follow this guide.

## What you'll learn

After reading this guide, you'll understand how to:
- Create basic token-gated roles for ERC721 NFT collections
- Set up roles based on NFT quantity (**Balance-based**)
- Configure roles based on NFT traits (**Attributes-based**)

## Prerequisites

Before starting, make sure you have:
- Admin permissions on your Discord server
- Access to Collab.Land's [Command Center](https://cc.collab.land)
- Your NFT collection's contract address, ex. `0x123...`

## The ERC721 Token Type

Use the `ERC721` token type for NFT collections that use the ERC-721 standard. The ERC-721 standard is used across Ethereum, Ethereum layer 2's, and all of Collab.Land's supported Ethereum Virtual Machine (EVM) chains.

## TGRs for ERC721 Collections

Collab.Land supports two types of TGRs for ERC721 collections. 

1. [Balance-based](https://docs.collab.land/help-docs/command-center/create-a-tgr/how-to-create-a-tgr#create-a-balance-based-tgr) TGRs assign a role based on the quantity of NFTs from the collection a member holds. 
2. [Attributes-based](https://docs.collab.land/help-docs/command-center/create-a-tgr/how-to-create-a-tgr#create-a-attributes-based-tgr-nft-only) TGRs assign a role based on the type of NFT from the collection that a member holds.

### How to Create a Balance-Based TGR for an ERC721 NFT Collection

> Balance-Based TGRs mean that a member will receive a role if they hold the minimum number of tokens or more from the ERC721 NFT collection.
{: .prompt-info }

To create a Balance-based TGR for an `ERC721` NFT collection in Discord, follow these steps:

1. Log in to the [Command Center](https://docs.collab.land/help-docs/key-features/command-center) at [https://cc.collab.land](https://cc.collab.land) using Discord.
2. From the left panel, select the server in which you would like to create the TGR. Then, click on "TGRs".

3. Click the "+ Select Role" button and choose the Discord role you would like to use for your TGR.
4. You will be taken to the TGR configuration page. Fill in the fields to create your TGR. If any information provided is incorrect, an error message will appear. The fields include:
     - Description (optional): A description of your TGR that will only be displayed in the CC for reference purposes.

     - Chain Type: The blockchain network that the token for this TGR is on. See the [full list of Collab.Land-supported chains](https://docs.collab.land/help-docs/key-features/token-gate-communities#supported-blockchains--tokens) and corresponding token types.
     - Token Type: Select `ERC721` or the equivalent NFT standard for the selected blockchain.
  
     - Address: The contract address of your NFT collection, ex `0x123...`.
     - Token ID (optional): Give the specific `tokenId`s of the tokens required to obtain the role.
     - Balance: The minimum and maximum (optional) amount of tokens required to obtain the role.
5.  Set the minimum amount of tokens (**required**).

7.  Set the maximum amount of tokens (not required).
8.  Click “Save” to create the Balance-based TGR.

Your Balance-based TGR is ready! A complete Balance-based TGR should look like this:

![ERC721 Balance-based TGR example](assets/img/work-samples/sample-3/erc721-balance-based-tgr.png)

### How to Create an Attributes-Based TGR for an ERC721 NFT Collection

This type of TGR is used to create roles based on ownership of specific kinds of NFTs from a collection.
For example, an admin can use an Attributes-Based TGR to grant a role to members who hold a BAYC ape *with blue fur*.

> Check out Collab.Land's [ERC721 Attributes-based TGR video tutorial](https://www.youtube.com/watch?v=pYhBPm7ixak&list=PLQbEq7a9kYPlvjfdJp3msChLJ7kFufyI2).
{: .prompt-tip }

To create an Attributes-based TGR for an `ERC721` NFT collection in Discord, follow these steps:

1. Log in to the [Command Center](https://docs.collab.land/help-docs/key-features/command-center) at [https://cc.collab.land](https://cc.collab.land) using Discord.
2. From the left panel, select the server in which you would like to create the TGR. Then, click on "TGRs".

3. Click the "+ Select Role" button and choose the Discord role you would like to use for your TGR.
4. You will be taken to the TGR configuration page. Fill in the fields to create your TGR. If any information provided is incorrect, an error message will appear. The fields include:
     - Description (optional): A description of your TGR that will only be displayed in the CC for reference purposes.

     - Chain Type: The blockchain network that the token for this TGR is on. See the [full list of Collab.Land-supported chains](https://docs.collab.land/help-docs/key-features/token-gate-communities#supported-blockchains--tokens) and corresponding token types.
     - Token Type: Select `ERC721` or the equivalent NFT standard for the selected blockchain.
     - Address: The contract address of your token `0x123...`.
     - Token ID (optional): Give the specific `tokenId`s of the tokens required to obtain the role.
     - Balance: The minimum and maximum (optional) amount of tokens required to obtain the role.
5. Set the minimum amount of tokens (**required**).

6. Set the maximum amount of tokens (not required).
7. Since you have chosen to create an Attributes-based TGR, when you picked the `ERC721` token type, an “Attributes” button appeared next to the “Balance” option.
8. Select “Attributes”.
9.  Click on the “+ Add Metadata” button.
10. A window will appear, allowing you to enter the `Trait` and its `Value`.

![ERC721 Attributes-based metadata example](assets/img/work-samples/sample-3/erc721-attributes-based-metadata.png)

> Attributes-based TGRs must be EXACT matches to the `Trait`s and `Value`s specified in the contract's metadata.
{: .prompt-danger }

1.  If you want to add multiple Traits:
  - Select `AND` if all the traits should match. `AND` (default) means that the member will have to hold one NFT with all of the specified traits.
  - Select `OR` if one or more of the traits should match. `OR` means the member will have to hold one NFT with any of the specified traits.
2.  Click on the “Add Trait” button to specify another `Trait` and `Value` metadata pair. Repeat this step as many times as needed.

3.  Click “Save Traits”.
4.  Click "Save" to create the Attributes-based TGR.

Your Attributes-based TGR is ready! A complete Attributes-based TGR will look like this:

![ERC721 Attributes-based TGR example](assets/img/work-samples/sample-3/erc721-attributes-based-tgr.png)
