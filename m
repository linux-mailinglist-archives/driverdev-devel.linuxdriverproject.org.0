Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A65512961
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Apr 2022 04:12:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C13840918;
	Thu, 28 Apr 2022 02:12:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zk1MTXhVrcrY; Thu, 28 Apr 2022 02:12:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4481408F1;
	Thu, 28 Apr 2022 02:12:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5262C1BF3D8
 for <devel@linuxdriverproject.org>; Thu, 28 Apr 2022 02:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 40F9581774
 for <devel@linuxdriverproject.org>; Thu, 28 Apr 2022 02:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=alice.it
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T2VquowQVxzd for <devel@linuxdriverproject.org>;
 Thu, 28 Apr 2022 02:12:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mta-out-06.alice.it (mta-out-06.alice.it [217.169.118.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FCCB81757
 for <devel@driverdev.osuosl.org>; Thu, 28 Apr 2022 02:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alice.it; s=20211207;
 t=1651111928; bh=m9WtUeW5WbLyaDyXUGKspd8UYZln3gdM2y7sv04wBfE=;
 h=Message-ID:Reply-To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding;
 b=s6RcCvH5n0EgeVsblJROfAXuc/ZVY8Vgeuxl19fd4B2INSOImGoe8ynPdi0Xxt/qJDkUDmFMkSaavMKT2U3IKFX4NTVFXun0VMdxQC4Et357KhEDiCe8CG2itjRmAXP9UHjHNNZjoYNcHXygVyatb/oTu+KQvR1MEmM5E+7UnQCJby2Dik4vvgO58FjLTTVO0f/xKxLHjME7ufbp6A1m5wN5FPOgds4IH1iqjpES0GJrc7lzJ5VEqjCJApudsq1XEVMGYjrIq02N+JKhwWvM3hDMJjktY/QEEph9Qqt2v8QhhHPUUxxLZwiHwnxOefgY8o5E3myUa1MkeHnShXh2nQ==
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvfedrudeigdehhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfvgffngfevqffokffvtefnkfetpdfqfgfvnecuuegrihhlohhuthemuceftddunecumhhishhsihhnghcuvffquchfihgvlhguucdlfedtmdenogfpohfkffculddutddmnecujfgurheprhfhufffgggtgffrigfoqfesthejtddtuddtfeenucfhrhhomhepfdeurhgvnhhtucfvihhmmhhonhhsfdeonhgrughirgdrihgrtghhvghtthhisegrlhhitggvrdhitheqnecuggftrfgrthhtvghrnhepgefgffelhfdtudeuieefteefhfefveefveejhfdvjeduueelueevhfdvffejfedvnecukfhppeduleefrdduledrvddtgedrkeehnecuvehluhhsthgvrhfuihiivgepjeehnecurfgrrhgrmhephhgvlhhopegfshgvrhdpihhnvghtpeduleefrdduledrvddtgedrkeehpdhmrghilhhfrhhomhepnhgrughirgdrihgrtghhvghtthhisegrlhhitggvrdhithdpnhgspghrtghpthhtohepuddtpdhrtghpthhtohepuggvvhguvghlohgushguvghnrhesrgholhdrtggrpdhrtghpthhtohepuggvvhgvlhesughrihhvvghruggvvhdrohhsuhhoshhlrdhorhhgpdhrtghpthhtohepuggvvhgvlheslhhishhtshdrfhgvughorhgrphhrohhjvggtthdrohhrghdprhgtphhtthhopeguvghvvghlrghnugesihgtfihgrhhouhhprdgtohhmpdhrtghpthhtohepuggvvhgvlhhiugiggiiggiig
 sehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvlhhirhgrmhesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvvghlihhrrghmsehhohhtmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvlhhophgpihhngiiggiiggieshigrhhhoohdrfhhrpdhrtghpthhtohepuggvvhgvlhhophgvrhdutddusehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvlhhophhmvghnthesrhgvlhhirggslhgvshhofhhtfigrrhgvrdgtohhm
X-RazorGate-Vade-Verdict: clean 40
X-RazorGate-Vade-Classification: clean
Received: from User (193.19.204.85) by mta-out-06.alice.it (5.8.807.04)
 (authenticated as nadia.iachetti@alice.it)
 id 6259240D03C1C883; Thu, 28 Apr 2022 04:12:06 +0200
Message-ID: <6259240D03C1C883@mta-out-06.alice.it> (added by
 postmaster@alice.it)
From: "Brent Timmons"<nadia.iachetti@alice.it>
Subject: RE:
Date: Wed, 27 Apr 2022 16:12:04 -1000
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
