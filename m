Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7703431EE67
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 19:35:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17C3060663
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 18:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hQYIXtzrtdg0 for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 18:35:19 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 11C2F60685; Thu, 18 Feb 2021 18:35:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDE386064C;
	Thu, 18 Feb 2021 18:35:00 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BEA2C1BF33A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 18:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B9C3186BFA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 18:34:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k9-OkxKfgNwY
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 18:34:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F07D78692C
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 18:34:44 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.nyi.internal (Postfix) with ESMTP id DAB1E5C0175;
 Thu, 18 Feb 2021 13:34:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Thu, 18 Feb 2021 13:34:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=8OWJLHCZzNZu/3B7EBrKTysE8lz
 IQvJZPntuTiG2YOE=; b=MTbupi+vPWYvkYRjDQHqOuEblnnp0DXdGnzj/wJ2mtj
 qosSRg/VoCkXdwoeW5ZQMcrs9cmqRs0mLQV7jAEgqw7CMcPq2Yjzs87YYNC+FJJz
 3dbRt2G+1EBpbmC/hn6yZ3wtoHdhkmAHO0P6lnzeRWtKs/+UDhxoovYNlzq/AHiD
 /EI7xeEGTIEA0RydVTVfHJYCa5kLf6/Y+t9NXWQ3k2r9Rgsa61Ykv8yPPjGFiLc5
 RXRwKdbINpHb8FDX3xHtArufn1bVnomhtRBdyV4E0KCKpjgA0+wjwqbMKQJBQF1C
 AODpQZgaxB2XcIGeQkD4/8LdxB0/0le3ACaITFOvJbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=8OWJLH
 CZzNZu/3B7EBrKTysE8lzIQvJZPntuTiG2YOE=; b=dArdCjia+1E4ez5O8McpLE
 jch+osKjqOiWmevfqmhVlAtUt5zK/Y2PaUy7qXLPWAXElsSas6JwiWJAYlC4BrNl
 PPkOX7kCUE1UcuQyxSZ6ESt5d2SifZfQkXFGFNmEOkv1hbc805UgQwvIjaLij7YG
 79Z12Xl6R7rNQIKa1IfFg+Pqhp6NqTu4pyCGbzPNAhB+qnR05hsc6UCPgUk5vE4e
 XEm4gjbT0rhchC9iKn38Q+rmuW/idP8gVZrF/wro0J+M3ZeXAOrJK7OLwCTm3k/K
 OqIIlxn4B57PM8ExYFr1YAiEXG5S3LV/48n8K5+mkSS44WtW7jahmS7JmU6Kj6JA
 ==
X-ME-Sender: <xms:QrMuYJ8ErPe6qQYKJoCEgo0kdWHKf59mSJz8EHHAsLn7831FWD6bPg>
 <xme:QrMuYOVB3IWl5mehPgbC-TOezXmKWgJhKIAY0mrna0q3EzGmuhC-mpoE8mSdGD9P2
 LFGmfu8y2AeOA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeggdduuddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
 necuggftrfgrthhtvghrnhepieeiledttdduleduvdeugeetvdefvdeifeegkeelffetud
 eggefgudektdetvdfhnecuffhomhgrihhnpeifihhkihhpvgguihgrrdhorhhgpdgurghr
 ihhnghhfihhrvggsrghllhdrnhgvthdpkhgvrhhnvghlrdhorhhgnecukfhppeekfedrke
 eirdejgedrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
 rhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:QrMuYCKcqY35XAFXWvPblrIAXR4OAQJ1R2Zv0lJDU_rrggp7Ul9TEg>
 <xmx:QrMuYCARgTkKsD0Acx2YzW3NATAlIHS4G3aJgKwBRMTKg2rA0JUHfQ>
 <xmx:QrMuYCFqiq4rHakrlj0ZRHo2MDXuiWFLLTQo0I6xO-qjXra5E1wxLQ>
 <xmx:QrMuYOkkbzFok83RdGBllKl8ewBPzFyWU0imhhNLD3azEdux0NAJag>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8281B240065;
 Thu, 18 Feb 2021 13:34:42 -0500 (EST)
Date: Thu, 18 Feb 2021 19:34:40 +0100
From: Greg KH <greg@kroah.com>
To: roz <oroz3x@gmail.com>
Subject: Re: [PATCH v4] ks7010: enclose non-trivial defines in parentheses
Message-ID: <YC6zQJzUwn1cgai2@kroah.com>
References: <20210215132701.42748-1-oroz3x@gmail.com>
 <A1MQOQ.EDMUBBX5O0OU1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A1MQOQ.EDMUBBX5O0OU1@gmail.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Thu, Feb 18, 2021 at 11:59:34PM +0530, roz wrote:
> Hi,
> 
> I wanted to check the status on the following patch.
> I wanted the result for eudyptula task 10 submission.

There's no deadlines here, and the first rule of the eudyptula challenge
is that you can not talk about the eudyptula challenge without getting
in trouble :(

> It would be great if i can check if the mail is being
> processed or rejected. I appologise for any troubles.

I rejected it a while ago, you got the email from my patch bot, right?
See here:
	https://lore.kernel.org/r/YCY2FTmycppYXY0O@kroah.com

Why did you resend it if you didn't do what that email said to do?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
