Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0E5510D03
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Apr 2022 02:03:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE0FC83EEA;
	Wed, 27 Apr 2022 00:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6mjnlIFsKHhX; Wed, 27 Apr 2022 00:03:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87C1E83EDB;
	Wed, 27 Apr 2022 00:03:51 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 002C61BF9B6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 Apr 2022 00:03:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF8A561140
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 Apr 2022 00:03:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=alice.it
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k5pjThM4jYZB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 Apr 2022 00:03:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mta-out-02.alice.it (mta-out-02.alice.it [217.169.118.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E07ED6063B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 Apr 2022 00:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alice.it; s=20211207;
 t=1651017827; bh=m9WtUeW5WbLyaDyXUGKspd8UYZln3gdM2y7sv04wBfE=;
 h=Message-ID:Reply-To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding;
 b=IvGaxpBHFriGRgY+duB9Tg6i+T/DHJK4dY/6ohBf9vMTlv7aTy7D5+dMzDYxUDEOURiCJGxDjTW/CO1nHI69jTq5C77nPfbr8qpoC2dW3EgdIa65ylTAqYhmuADyf3rwMndos0QFpuj11lUeDK49pejrVj2bOinrZg8KDKXyLGRIEfn75itC7gMZmhybIB5jwCttc+Ols+E95zyMr9lRVI9Yr8u5snDSf9wBwjDupVd4CZSlc7wJKkvxL7vjRy+PPXc6ii1yiPIvul8CAixaQOMaoR5GRTuD1I8kkShcQgBFAPjXFhnp8J6zUWOOhV3YYJhsB09TCKIqM8zvT63cGQ==
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvfedrudeggdeftdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfvgffngfevqffokffvtefnkfetpdfqfgfvnecuuegrihhlohhuthemuceftddunecumhhishhsihhnghcuvffquchfihgvlhguucdlfedtmdenogfpohfkffculddutddmnecujfgurheprhfhufffgggtgffrigfoqfesthejtddtuddtfeenucfhrhhomhepfdeurhgvnhhtucfvihhmmhhonhhsfdeovhgrlhgvrdhtvhgssegrlhhitggvrdhitheqnecuggftrfgrthhtvghrnhepvdethfejueefiedtueduudetheegvdeugfdtteegkedtvdfgffdtieduheduhfeknecukfhppeeivddrvdduvddrvdefledrieenucfuphgrmhfkphfpvghtfihorhhkpeeivddrvdduvddrvdefledrieenucevlhhushhtvghrufhiiigvpeejkeenucfrrghrrghmpehhvghlohepfghsvghrpdhinhgvthepiedvrddvuddvrddvfeelrdeipdhmrghilhhfrhhomhepvhgrlhgvrdhtvhgssegrlhhitggvrdhithdpnhgspghrtghpthhtohepuddtpdhrtghpthhtohepughrihhvrggsohhskhgvnhhnvghlsehgmhgrihhlrdgtohhmpdhrtghpthhtohepughrihhvvgdqkedvsehmrghilhdrrhhupdhrtghpthhtohepughrihhvvgdrhhiggiiggiigsehgmhgrihhlrdgtohhmpdhrtghpthhtohepughrihhvvghllhhisegugihmrdhithdprhgtphhtthhopegurhhivhgvrhdqlhgvgiesqhhiphdrrhhu
 pdhrtghpthhtohepughrihhvvghrsghushhgugesfihprdhplhdprhgtphhtthhopegurhhivhgvrhguvghvqdguvghvvghlsehlihhnuhigughrihhvvghrphhrohhjvggtthdrohhrghdprhgtphhtthhopegurhhivhgvrhhilhdutddttdeshigrnhguvgigrdhruhdprhgtphhtthhopegurhhivhgvrhhquhgvrhihseihrghhohhordgtohhmpdhrtghpthhtohepughrihhvvghrshhlihgtvghnshgvrghiugesghhmrghilhdrtghomh
X-RazorGate-Vade-Verdict: clean 40
X-RazorGate-Vade-Classification: clean
Received: from User (62.212.239.6) by mta-out-02.alice.it (5.8.807.04)
 (authenticated as vale.tvb@alice.it)
 id 625ED66F01E0D28C; Wed, 27 Apr 2022 02:03:40 +0200
Message-ID: <625ED66F01E0D28C@mta-out-02.alice.it> (added by
 postmaster@alice.it)
From: "Brent Timmons"<vale.tvb@alice.it>
Subject: RE:
Date: Tue, 26 Apr 2022 14:03:39 -1000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
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
Reply-To: timmonsbrent14@gmail.com, 
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I was wondering if you received the email sent to you last night? 

Brent Timmons
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
