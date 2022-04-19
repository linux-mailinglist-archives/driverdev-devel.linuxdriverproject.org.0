Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0A75067DD
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Apr 2022 11:40:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5518960BBA;
	Tue, 19 Apr 2022 09:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UoLxQS5xUYkx; Tue, 19 Apr 2022 09:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21B9A60777;
	Tue, 19 Apr 2022 09:40:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D263F1BF299
 for <devel@linuxdriverproject.org>; Tue, 19 Apr 2022 09:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BFCAE424AC
 for <devel@linuxdriverproject.org>; Tue, 19 Apr 2022 09:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=tin.it
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4IWQivh8-RAx for <devel@linuxdriverproject.org>;
 Tue, 19 Apr 2022 09:40:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mta-out-03.tin.it (mta-out-03.tin.it [217.169.118.6])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0684D4187C
 for <devel@driverdev.osuosl.org>; Tue, 19 Apr 2022 09:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tin.it; s=20211207;
 t=1650361202; bh=oxntU83NwWS+SYY+zybT5/gIeyl5BzJtfAbHzlHik5M=;
 h=Message-ID:Reply-To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding;
 b=XmlS69s28O5Nau4UQSjbBHqsREiQDue4mMyAAx9IEJG/E79YfhtRmsaJ3pNm1pEPaMhMwggQBnpMuGN/kwBcwRwZbudu7WbWslF2hondnxI5UVpKUGdjN7YK/Y0TCvHbx/iapZFeZhVRBaSIPrc/ixJvfXriNJOjrkhBT8DvVBJGD+E/qx9SAkq8MmxXv3/wqgk5hdo0wOMtKS4hz4uSfszHGoAdtmTiItUj/sbGNMej31txzOR9dgGgPoeoHV8m2CXmicq3FZ1bHLlSyOCsOCJL40Mnk1mHQFdJWv6s5x5PAgKoSuKzJtsuuI17HsU80mpNvZYUSkgSzvNtVXTpxQ==
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvvddrvddtfedgudejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvffgnffgvefqoffkvfetnffktedpqfgfvfenuceurghilhhouhhtmecufedtudenuchmihhsshhinhhgucfvqfcufhhivghlugculdeftddmnegopfhokfffucdluddtmdenucfjughrpehrhffuffggtgfgrfgioffqsehtjedttddutdefnecuhfhrohhmpedfuehrvghnthcuvfhimhhmohhnshdfoehluhgtihhluhhsshhusehtihhnrdhitheqnecuggftrfgrthhtvghrnhepudejffeigeeifeekudeljeeugedvkeehtefgiedugfeiudehtefgfedvgeeivddunecukfhppedufeekrdduleelrdduledrudehheenucevlhhushhtvghrufhiiigvpeegieenucfrrghrrghmpehhvghlohepfghsvghrpdhinhgvthepudefkedrudelledrudelrdduheehpdhmrghilhhfrhhomheplhhutghilhhushhsuhesthhinhdrihhtpdhnsggprhgtphhtthhopedvtddprhgtphhtthhopeguvghvuggvlhhoughsuggvnhhrsegrohhlrdgtrgdprhgtphhtthhopeguvghvvghlsegurhhivhgvrhguvghvrdhoshhuohhslhdrohhrghdprhgtphhtthhopeguvghvvghlsehlihhsthhsrdhfvgguohhrrghprhhojhgvtghtrdhorhhgpdhrtghpthhtohepuggvvhgvlhgrnhgusehitgifghhrohhuphdrtghomhdprhgtphhtthhopeguvghvvghlihgugiiggiiggiesghhmrghilhdrtghomhdp
 rhgtphhtthhopeguvghvvghlihhrrghmsehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvlhhirhgrmheshhhothhmrghilhdrtghomhdprhgtphhtthhopeguvghvvghlohhppghinhiggiiggiigseihrghhohhordhfrhdprhgtphhtthhopeguvghvvghlohhpvghruddtudesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvvghlohhpmhgvnhhtsehrvghlihgrsghlvghsohhfthifrghrvgdrtghomhdprhgtphhtthhopeguvghvvghnheegiehnrghruhhtoheshigrhhhoohdrtghomhdprhgtphhtthhopeguvghvvghnrghngiiggiiggiesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvvghnsghushhsrgeshigrhhhoohdrtghomhdprhgtphhtthhopeguvghvvghnughrrghnpghmrghnnhgrnhesihhnfhhoshihshdrtghomhdprhgtphhtthhopeguvghvvghnughrrghnrghthhdrthhhohhtrgesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvvghnughrrghpohhonhgrseihrghhohhordgtohhmpdhrtghpthhtohepuggvvhgvshhhrdhsihhnghhhsehvvghrthgvgidrtghordhukhdprhgtphhtthhopeguvghvvghshhhthigrghhivdehseihrghhohhordhinhdprhgtphhtthhopeguvghvfhgrnhhnhidrrghrthhhrgesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvihgrtghhvghnsehgmhgrihhlrdgtohhm
X-RazorGate-Vade-Verdict: clean 40
X-RazorGate-Vade-Classification: clean
Received: from User (138.199.19.155) by mta-out-03.tin.it (5.8.807.04)
 (authenticated as lucilussu@tin.it)
 id 624C2107021971B0; Tue, 19 Apr 2022 11:39:59 +0200
Message-ID: <624C2107021971B0@mta-out-03.tin.it> (added by postmaster@tin.it)
From: "Brent Timmons"<lucilussu@tin.it>
Subject: RE:
Date: Mon, 18 Apr 2022 23:39:59 -1000
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

Did you receive my email sent to you last night?

Brent Timmons
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
