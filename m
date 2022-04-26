Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBC7510CE0
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Apr 2022 01:55:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D57140BBC;
	Tue, 26 Apr 2022 23:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tYfHFpONqe3G; Tue, 26 Apr 2022 23:55:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D804C40BC0;
	Tue, 26 Apr 2022 23:55:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3017A1BF616
 for <devel@linuxdriverproject.org>; Tue, 26 Apr 2022 23:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D68481B99
 for <devel@linuxdriverproject.org>; Tue, 26 Apr 2022 23:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=alice.it
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kDJeqnJb6g0A for <devel@linuxdriverproject.org>;
 Tue, 26 Apr 2022 23:55:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mta-out-03.alice.it (mta-out-03.alice.it [217.169.118.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 515BA81B3E
 for <devel@driverdev.osuosl.org>; Tue, 26 Apr 2022 23:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alice.it; s=20211207;
 t=1651017323; bh=m9WtUeW5WbLyaDyXUGKspd8UYZln3gdM2y7sv04wBfE=;
 h=Message-ID:Reply-To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding;
 b=OcU85j6ehHr/LDDDjN0cZ5tGbxrSizg1qP90REjUQ3iVU+GDCK4YKkc4C2wmPRstp4qFSFUoQLjnDxJSnssxahqmbxmHnR/M/1DIR86yQL6e6i87C3PUdHI5GscSmwY7zCUXwVg8ALAkv91k2mb2OWlpRor4vkbMV7cBZeAxKHbW7t84pY/2dfavJUI0ZhOYEdIa6iaKfhnWQTGlWEpT15c/0YBHVwIcuQ+Lv1YIwn16LdKwlricUsL1o+1bn8fBjvURDYXtKiKcZWnqmTF1JTYTZc4lwmZVYuZNicfLFsce894t+x0lJjufUGxsXBJaezIDZijxftxF3m9lAVnlug==
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvfedrudeggddvkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfvgffngfevqffokffvtefnkfetpdfqfgfvnecuuegrihhlohhuthemuceftddunecumhhishhsihhnghcuvffquchfihgvlhguucdlfedtmdenogfpohfkffculddutddmnecujfgurheprhfhufffgggtgffrigfoqfesthejtddtuddtfeenucfhrhhomhepfdeurhgvnhhtucfvihhmmhhonhhsfdeovhgrlhgvrdhtvhgssegrlhhitggvrdhitheqnecuggftrfgrthhtvghrnhepvdethfejueefiedtueduudetheegvdeugfdtteegkedtvdfgffdtieduheduhfeknecukfhppeeivddrvdduvddrvdefledrieenucfuphgrmhfkphfpvghtfihorhhkpeeivddrvdduvddrvdefledrieenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhephhgvlhhopegfshgvrhdpihhnvghtpeeivddrvdduvddrvdefledriedpmhgrihhlfhhrohhmpehvrghlvgdrthhvsgesrghlihgtvgdrihhtpdhnsggprhgtphhtthhopedutddprhgtphhtthhopeguvghvvghlsegrtghpihgtrgdrohhrghdprhgtphhtthhopeguvghvvghlsegurhhivhgvrhguvghvrdhoshhuohhslhdrohhrghdprhgtphhtthhopeguvghvvghlsehiohhnvghstghurdguvgdprhgtphhtthhopeguvghvvghlsehlvghoqdhvohhnqdhklhgvnhiivgdruggvpdhrtghpthhtohepuggvvhgvlheslhhinhhugigurhhi
 vhgvrhhprhhojhgvtghtrdhorhhgpdhrtghpthhtohepuggvvhgvlheslhhishhtshdrfhgvughorhgrphhrohhjvggtthdrohhrghdprhgtphhtthhopeguvghvvghlsehsthgrshihrghnrdgtohhmpdhrtghpthhtohepuggvvhgvlhgrnhgusehitgifghhrohhuphdrtghomhdprhgtphhtthhopeguvghvvghlihelgeesmhgrihhlrdhruhdprhgtphhtthhopeguvghvvghlihgugiiggiiggiesghhmrghilhdrtghomh
X-RazorGate-Vade-Verdict: clean 40
X-RazorGate-Vade-Classification: clean
Received: from User (62.212.239.6) by mta-out-03.alice.it (5.8.807.04)
 (authenticated as vale.tvb@alice.it)
 id 624D72EF04E685D0; Wed, 27 Apr 2022 01:55:19 +0200
Message-ID: <624D72EF04E685D0@mta-out-03.alice.it> (added by
 postmaster@alice.it)
From: "Brent Timmons"<vale.tvb@alice.it>
Subject: RE:
Date: Tue, 26 Apr 2022 13:55:17 -1000
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
