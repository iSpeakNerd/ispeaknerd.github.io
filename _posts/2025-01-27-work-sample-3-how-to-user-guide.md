---
layout: post
title: 'Work Sample 3: How-to User Guide'
date: 2025-01-27 14:00:00 -0800
author: ispeaknerd
description: How-to User Guide work sample for iSpeakNerd.
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

# Work Sample 3: How-to Guide

**Project:** Create Token Gating Rules with Collab.Land

**Context:** The defining feature of Collab.Land is the ability to create gating rules that communities can use to define boundaries on their content and spaces based on web3 token holdings, both fungibles and nonfungible. We found the UX to be confusing and cognitively demanding for users. Users had to make several decisions regarding gating configuration without knowing factors to consider, where to obtain required configuration settings, and potential gating implications. This documentation uses mdx within the Docusaurus framework.

**Achievements:** I created a number of documents walking users through the creation of token gating rules for individual token standards as well as guidance for which type of token gate was appropriate based on their requirements.

**PR:** [https://github.com/abridged/collabland-dev/pull/200](https://github.com/abridged/collabland-dev/pull/200)

<hr class="section-divider">

## ERC721 Collections

Use the `ERC721` token type for NFT collections using the ERC-721 standard across all of Collab.Land's supported EVM chains and the equivalent NFT standards for other blockchains.

### Create TGRs for ERC721 Collections

Collab.Land supports both [balance-based](https://docs.collab.land/help-docs/command-center/create-a-tgr/how-to-create-a-tgr#create-a-balance-based-tgr) and [attributes-based](https://docs.collab.land/help-docs/command-center/create-a-tgr/how-to-create-a-tgr#create-a-attributes-based-tgr-nft-only) TGRs for `ERC721` collections.

#### Create a Balance-Based TGR for ERC721 Collection

> Balance-Based TGRs mean that a member will receive a role if they hold the minimum number of tokens or more from the ERC721 NFT collection.
{: .prompt-info }

To create a Balance-based TGR for an `ERC721` NFT collection in Discord, follow these steps:

1. Log in to the [Command Center](https://docs.collab.land/help-docs/key-features/command-center) at [https://cc.collab.land](https://cc.collab.land) using Discord.
2. From the left panel, select the server in which you would like to create the TGR. Then, click on "TGRs".
3. Click the "+ Select Role" button and choose the Discord role you would like to use for your TGR.
4. You will be taken to the TGR configuration page. Fill in the fields to create your TGR. If any information provided is incorrect, an error message will appear. The fields include:
     - Description (optional): A description of your TGR that will only be displayed in the CC for reference purposes.
     - Chain Type: The blockchain network that the token for this TGR is on. See the [full list of Collab.Land-supported chains](https://docs.collab.land/help-docs/key-features/token-gate-communities#supported-blockchains--tokens) and corresponding token types.
     - Token Type: The type of token used for the TGR.
     - Address: The contract address of your token.
     - Token ID (optional): Give the specific `tokenId`s of the tokens required to obtain the role.
     - Balance: The minimum and maximum (optional) amount of tokens required to obtain the role.
5.  Set the minimum amount of tokens (**required**)
6.  Set the maximum amount of tokens (not required)
7.  Click “Save”

Your balance-based TGR is ready! A complete balance-based TGR should look like this:

![ERC721 Balance-based TGR example](assets/img/work-samples/sample-3/erc721-balance-based-tgr.png)

#### Create an Attributes-Based TGR for ERC721 Collection

This type of TGR is used to create roles based on ownership of specific kinds of NFTs from a collection.
For example, an admin can use an Attributes-Based TGR to check for a BAYC ape *with blue fur* in the member's wallet.

> Check out Collab.Land's [ERC721 Attributes-based TGR tutorial](https://www.youtube.com/watch?v=pYhBPm7ixak&list=PLQbEq7a9kYPlvjfdJp3msChLJ7kFufyI2).
{: .prompt-tip }

To create an Attributes-based TGR for an `ERC721` NFT collection in Discord, follow these steps:

1. Log in to the [Command Center](https://docs.collab.land/help-docs/key-features/command-center) at [https://cc.collab.land](https://cc.collab.land) using Discord.
2. From the left panel, select the server in which you would like to create the TGR. Then, click on "TGRs".
3. Click the "+ Select Role" button and choose the Discord role you would like to use for your TGR.
4. You will be taken to the TGR configuration page. Fill in the fields to create your TGR. If any information provided is incorrect, an error message will appear. The fields include:
     - Description (optional): A description of your TGR that will only be displayed in the CC for reference purposes.
     - Chain Type: The blockchain network that the token for this TGR is on. See the [full list of Collab.Land-supported chains](https://docs.collab.land/help-docs/key-features/token-gate-communities#supported-blockchains--tokens) and corresponding token types.
     - Token Type: The type of token used for the TGR.
     - Address: The contract address of your token.
     - Token ID (optional): Give the specific `tokenId`s of the tokens required to obtain the role.
     - Balance: The minimum and maximum (optional) amount of tokens required to obtain the role.
5. Set the minimum amount of tokens (**required**)
6. Set the maximum amount of tokens (not required)
7. Since you have chosen to create an Attributes-based TGR, when you picked the `ERC721` token type, an “Attributes” button appeared next to the “Balance” option.
8. Select “Attributes”.
9. Click on the “+ Add Metadata” button.
10. A window will appear, allowing you to enter the `Trait` and its `Value`.

![ERC721 Attributes-based metadata example](assets/img/work-samples/sample-3/erc721-attributes-based-metadata.png)

> Attributes-based TGRs must be EXACT matches to the `Trait`s and `Value`s specified in the contract's metadata.
{: .prompt-danger }

1.  If you want to add multiple Traits:
  - Select AND if all the traits should match. If you choose the AND option (default) then the member will have to hold one NFT with all of the trait value pairs which have been listed here.
  - Select OR if at least one of the traits should match. If you choose the OR option, the member will have to hold one NFT with at least one of the trait value pairs which have been listed.
2.  Click on the “Add Trait” button.
3.  Click “Save”

Your Attributes-based TGR is ready! This is what it should look like:

![ERC721 Attributes-based TGR example](assets/img/work-samples/sample-3/erc721-attributes-based-tgr.png)

### Create TGRs for ERC7160 Collections

Collab.Land currently supports `ERC7160` collections through OpenSea only. Congratulations to [Perils of Sēsē](https://www.perilsofsese.com) by All Seeing Seneca for being the first to use this new NFT standard.

> The [`ERC7160` token standard](https://eips.ethereum.org/EIPS/eip-7160) extends `ERC721` with multiple metadata URIs.
{: .prompt-info }

To create a TGR for an `ERC7160` collection:
1. Log in to the [Command Center](https://docs.collab.land/help-docs/key-features/command-center) at [https://cc.collab.land](https://cc.collab.land).
2. From the left panel, select the server in which you would like to create the TGR. Then, click on "TGRs".
3. Click the "+ Select Role" button and choose the Discord role you would like to use for your TGR.
4. Enter the token details for your NFT.
     - Description (optional): A description of your TGR that will only be displayed in the CC for reference purposes.
     - Chain Type: Mainnet
     - Token Type: Opensea
     - Collection Name: The collection name of your token
     - Balance: The minimum and maximum (optional) amount of tokens required to obtain the role
5. Click "Save"

> The collection name must match the OpenSea collection exactly. Copy the collection name from the URL of the collection on OpenSea.
> 
> For example, if the URL of your collection is "opensea.io/collection/liquiddreams2-0", then use `liquiddreams2-0` as the Collection Name.
{: .prompt-warning }

![ERC7160 Opensea TGR example](assets/img/work-samples/sample-3/erc7160-opensea-tgr.png)
