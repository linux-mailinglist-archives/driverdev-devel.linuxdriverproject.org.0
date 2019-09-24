Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E86ABD219
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Sep 2019 20:52:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 025A8879A3;
	Tue, 24 Sep 2019 18:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tl+t0WgjpDSi; Tue, 24 Sep 2019 18:52:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F49086FCD;
	Tue, 24 Sep 2019 18:52:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35B5A1BF3B9
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 18:52:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3173E2041B
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 18:52:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OOuEi+cD+mG1 for <devel@linuxdriverproject.org>;
 Tue, 24 Sep 2019 18:52:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic317-26.consmr.mail.bf2.yahoo.com
 (sonic317-26.consmr.mail.bf2.yahoo.com [74.6.129.81])
 by silver.osuosl.org (Postfix) with ESMTPS id 279BD203E3
 for <devel@driverdev.osuosl.org>; Tue, 24 Sep 2019 18:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1569351143; bh=g9QLfkMjZs0KcOOwLtkloQIOUrMY/mwOqlKM2L52000=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=Ic0/PzA4RiRvP8Gg3FZSwJERB5pgoNyUOaeyI25TMrEoq8wXit3AabGG65DmILiPLpUYnLvWxaheIy7tZIWr50WGFZqn9jvvpWPfxroUcJymZoGz0NIGSJose16emEkTb06YoE9wJIiGJVa9qlD0gjJrbeohuMlGp/SKkGTfBKdrStcopLqhMmJVv/LybBv0atv0Data4NImfV4FEfsYFoUThxl6yW61hMDKxNrTa8NuYRcZyT0cwYXA3DzOxI5bOiLIgEcy4DcLRu0C461hEPJu6Tm8hULVx832xo80Jv6wMmRbBrYOIKS+7CVgGlrNzzddVTaERjTELD2v34Lh2g==
X-YMail-OSG: qjDn49EVM1mQ.6j4oenLeMabnNzkrBtEad44FNHMEEIasKwqXR70TaG.ahPiGHk
 Onx7P8gaosqC6LudZAHgU9fOAFyg_CajJ4bHBlmi407MFgjHYik_tv9ImqWzPXY5ucd81hPD5c6e
 4vlxGTRwIVOdm1vCYHcboRBYaE50ttWiqw7ezmd.KuqQAXMQV179j0cXGbmeqJ_aYyPT31F4aer4
 Ntc9Pxtl6OFrJ8kNLaQrazEU53G5I40nEQqG__aL.RHXB4gUqwbHO8ZTWsXHSEYFsMGkQC3r3Ybv
 0E.SLVvXRyVvWrL9oVarffNebXKOxPlmwHQzwj0WLDg9JSJm3Uca7fUyQhCatl1Kuco8oaIgxWQe
 NP7idZHo.TiSDbnOgHWzrogjgyW5VV.QMMJsLrK6YXHf5b5O0CKsgrdR4.sJxxabLJ8Nh0vJ3Z.V
 fmZr0tBm6LYE7GFKmeQR7QneMNbETwZ2rRUQyJQkU9.EGmcFtBZbD9HMu8XG1xePUunazGVW70T5
 MBvNPgCnAuzGh4ryzMJqAZEcPFcKnj6yb6zSbhwVPwgdJ1vnf2fiaXbfaOywxEZsn3ePolxJJwAT
 UwZrJWvGX3PdjTsOAWMK5gygNcQAPhtcw6Flxn32mOfmgczgQGoHsUBNz4fzqEqWHKGklKOtTZUA
 tYiVjcBckVIXvibEk9kBR99N3azyuoK43u22iRtltQiPAkzMKS2NWESJSxVY6_X9gV9Qp9ztKO08
 Tm97DHYepcEy1.4MOy2Gl.joYlW2fThsKAGbMVl3XqiVmdOnecQZUVgvwUV7yTvOZqGBuvkxGP0Q
 duPGv6amgebwfPC.6TRPI91Ih0rPEwkVMqSLGULwb_Y7rh_F3uTSrGZyn3IFDGi3XJKJaSKzs7FF
 ORfWOKrJgFhFyfbxSPZW32JvJokpdyQH53fn5b05dT3JZT3UBiZ8SgdHq3mJrUpQ9AtsZlwFXCQV
 ItRvDUqTu5tFsK4CCWP7eOEELFf3ER4h.AU9wpPDmfQ0Pgmvj3xDqrfN9WAw1OZB9jO47EbhvA60
 o1QTrzMXPuMeMwI3mK6QaQSPhm0gamBWF.cH2Y0BCL0zKfqJQVFyI6iK0uqRN9xYx2jF8qlSuKLM
 lz8LBpoba9I.veUV.DmFbSKleGGRkz6v4zH.tjfpSlDFboa0KMw8mFdeFqhrYvALtAntHLvTKVyZ
 BVOxs6PEea6Uoab6yy_kErFjMtNMszLdYQynRrEzimDUXWIRGDZu8q_eRdLKmMZnKqGMynh3RRLR
 V6J_ispOd8R0kptR.pelnizqE.oDAE6dwf.XQg8qBqhm9HLhbiGYCaw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.bf2.yahoo.com with HTTP; Tue, 24 Sep 2019 18:52:23 +0000
Date: Tue, 24 Sep 2019 18:52:20 +0000 (UTC)
From: Clake <jude.clake23@gmail.com>
Message-ID: <1719020448.8241485.1569351140141@mail.yahoo.com>
Subject: Dear Friend,
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: jude.clake23@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

 
Dear Friend,

I am Mr Jude Clacke, the director of the accounts & auditing dept .at the Bank OF Africa Ouagadougou-west Africa. (B O A) With due respect, I have decided to contact you on a business transaction that will be beneficial to both of us.

At the bank's last accounts/auditing evaluations, my staff came across an old account which was being maintained by a foreign client who we learnt was among the deceased passengers of motor accident.

Since his death, even the members of his family haven't applied for claims over this fund and it has been in the safe deposit account until I discovered that it cannot be claimed since our client is a foreign national and we are sure that he has no next of kin here to file claims over the money. As the director of the department, this discovery was brought to my office so as to decide what is to be done. I decided to seek ways through which to transfer this money out of the bank and out of the country too. 

The total amount in the account is thirty three million five hundred thousand dollars (USD 33,500,000.00).with my positions as staffs of the bank, I am handicapped because I cannot operate foreign accounts and cannot lay bonafide claim over this money. The client was a foreign national and you will only be asked to act as his next of kin and I will supply you with all the necessary information and bank data to assist you in being able to transfer this money to any bank of your choice where this money could be transferred into.

I want to assure you that this transaction is absolutely risk free since I work in this bank that is why you should be confident in the success of this transaction because you will be updated with information as at when desired.

I will wish you to keep this transaction secret and confidential as I am hoping to retire with my share of this money at the end of transaction which will be when this money is safety in your account. I will then come over to your country for sharing according to the previously agreed percentages. You might even have to advise me on possibilities of investment in your country or elsewhere of our choice. May God help you to help me to a restive retirement, Amen.

Please for further information and enquiries feel free to contact me back immediately for more explanation and better understanding through this email address (jude.clake23@gmail.com)
 
I am waiting for your urgent response!!!
Thanks and remain blessed.
Mr Jude Clacke
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
