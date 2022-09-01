Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CACBC5A89D8
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Sep 2022 02:36:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32A5041997;
	Thu,  1 Sep 2022 00:36:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32A5041997
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g2Ep8LqYes5r; Thu,  1 Sep 2022 00:36:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97FD141994;
	Thu,  1 Sep 2022 00:36:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97FD141994
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C99F1C1189
 for <devel@linuxdriverproject.org>; Thu,  1 Sep 2022 00:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4794383404
 for <devel@linuxdriverproject.org>; Thu,  1 Sep 2022 00:36:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4794383404
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3-VYpuEiUGwd for <devel@linuxdriverproject.org>;
 Thu,  1 Sep 2022 00:36:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8023D83403
Received: from mta-out-02.alice.it (mta-out-02.alice.it [217.169.118.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8023D83403
 for <devel@driverdev.osuosl.org>; Thu,  1 Sep 2022 00:36:20 +0000 (UTC)
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvfedrvdekjedgfeekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvffgnffgvefqoffkvfetnffktedpqfgfvfenuceurghilhhouhhtmecufedtudenucgoteeftdduqddtudculdduhedmnecujfgurheptggggffuvffhffhrsehtqhdttddttddunecuhfhrohhmpedfofgrrhhkucfuuhiimhgrnhdfuceotghrihdrsghothesrghlihgtvgdrihhtqeenucggtffrrghtthgvrhhnpeekjeefffevieefveehvedtgfejfeffuefguefgffdukeekfeegvefhjeelheehteenucfkphepfeejrdduheelrddukedvrddugeejnecuvehluhhsthgvrhfuihiivgepuddunecurfgrrhgrmhephhgvlhhopegludeguddrleekrdeirdeihegnpdhinhgvthepfeejrdduheelrddukedvrddugeejpdhmrghilhhfrhhomheptghrihdrsghothesrghlihgtvgdrihhtpdhnsggprhgtphhtthhopeefiedprhgtphhtthhopeguvghvvggtshgvrhhiuhhjshgrghesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvvggurgdrfhhrrghntghoihhsseihrghhohhordgtohhmpdhrtghpthhtohepuggvvhgvuggrrhhshhgrnhgrsehrvgguihhffhhmrghilhdrtghomhdprhgtphhtthhopeguvghvvggurghssehhohhtmhgrihhlrdgtohdruhhkpdhrtghpthhtohepuggvvhgvuggvvhgrtdejsehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvvgdrtggv
 nhhtvghrsehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvvgduleeiieesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvvggvfedtsehrvgguihhffhhmrghilhdrtghomhdprhgtphhtthhopeguvghvvggvpggvlhgvtghtrhhitggrlhesrhgvughifhhfmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvvghnrgdrghhilhgsvghrthesnhgvthhstggrphgvrdhnvghtpdhrtghpthhtohepuggvvhgvvghnrgdrrhdrsggrnhgvrhhjvggvsehvrghnuggvrhgsihhlthdrvgguuhdprhgtphhtthhopeguvghvvggvnhgrtdehsehhohhtmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvvghnrgeshhhothhmrghilhdrtghomhdprhgtphhtthhopeguvghvvggvnhgrghesnhgvthhstggrphgvrdhnvghtpdhrtghpthhtohepuggvvhgvvghnrghpseihrghhohhordgtohhmpdhrtghpthhtohepuggvvhgvvghnshgvvhholhhkshhtuhhinhesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvvggvrhegieesrgholhdrtghomhdprhgtphhtthhopeguvghvvggvshhhrhgvvgesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvvggvvhgrhheshhhothhmrghilhdrtghomhdprhgtphhtthhopeguvghvvghgihhsihhvrghrrghjsehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvhhgvrhgsvghssehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvihhkihgvnhgvjheshigrhhhoohdrt
 ghomhdprhgtphhtthhopeguvghvvghilhdrmhgtughonhgrlhguseihrghhohhordgtohhmpdhrtghpthhtohepuggvvhgvihhnihesrhgvughifhhfmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvihhnvhgvshhtsehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvjhgrshhrrghjseihrghhohhordgtohdrihhnpdhrtghpthhtohepuggvvhgvkhhtrgeshigrhhhoohdrtghomhdprhgtphhtthhopeguvghvvghlrdhlrghurhgvthhtvgesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvvghlsegslhhouhhghhdruhhspdhrtghpthhtohepuggvvhgvlhesughrihhvvghruggvvhdrohhsuhhoshhlrdhorhhgpdhrtghpthhtohepuggvvhgvlhesvggukhdvrdhgrhhouhhpshdrihhopdhrtghpthhtohepuggvvhgvlheskhgrnhhnvghlrdhorhhgpdhrtghpthhtohepuggvvhgvlhesphhiughgihhnrdhimhdprhgtphhtthhopeguvghvvghlsehrvghigigurdhnvghtpdhrtghpthhtohepuggvvhgvlhesrhhtvghmshdrohhrghdprhgtphhtthhopeguvghvvghlsehsvghlgedrshihshhtvghmshdprhgvvhfkrfepnhgvthdqfeejqdduheelqddukedvqddugeejrdgtuhhsthdrvhhouggrfhhonhgvughslhdrihhtpdgruhhthhgpuhhsvghrpegtrhhirdgsohhtsegrlhhitggvrdhithdpghgvohhiphepkffvpdhmthgrhhhoshhtpehrrgiiohhrqdhouhhtqdgrlhhitggvqddtvd
X-RazorGate-Vade-Verdict: clean 15
X-RazorGate-Vade-Classification: clean
Received: from [141.98.6.65] (37.159.182.147) by mta-out-02.alice.it (5.8.810)
 (authenticated as cri.bot@alice.it)
 id 62EB892D03F63DF8; Thu, 1 Sep 2022 02:36:02 +0200
Message-ID: <62EB892D03F63DF8@mta-out-02.alice.it> (added by
 postmaster@alice.it)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: G r a n t A p p r o v e d!
To: cri.bot@alice.it
From: "Mark Suzman" <cri.bot@alice.it>
Date: Wed, 31 Aug 2022 17:35:43 -0700
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=alice.it; s=20211207; t=1661992580; 
 bh=eLX93yXqYuzSgSkTwfqHsZ1uXuzevGOwgx3sQIGwOw8=;
 h=Message-ID:Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To;
 b=rDs7Q0ogvuSUOkI+YtEVtGw5YBn4133+AVcaOFnu6Ff8xonOJXOtPxaLLuwCI2NNQHSFFqw5pzLkKElhklm80PBhfTET9weX/CIFpNhzBhVtpkTJbgm7NbQQB697j5aq+evckHac5GqPpIQqfq6C2bdfLtjbY+y3KN7Zc/EKcvUik61lTumu+at0pLt7Q76RBdtj10ScZPYxV5c0DUk1oEbLNrm/GrWe8REZ2C3A+rdrizvfBmV7MyXBMbUgmPuuSzZj9lQOX9j9j4a3M/85BG3ZlAZm95KvmeJdggYPwh7yTtB2QoCVL/iEbu5rUvto7sYeP8M+XuRBxhoW2va4ng==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=alice.it header.i=@alice.it header.a=rsa-sha256 header.s=20211207
 header.b=rDs7Q0og
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
Reply-To: claims.your@cheapnet.it, ??@osuosl.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

C o n g r a t u l a t i o n s!

As regards our funding commitments to fight COVID-19, the Bill and Melinda =
Gates Foundation has committed more than US$2 b i l l i o n to the global C=
OVID-19 response.

We are pleased to announce that your E M A I L ADDRESS has been selected as=
 one of the lucky beneficiaries to receive a grant of US$1,500,000 under th=
e Bill and Gates foundation. All beneficiaries were selected through the Gl=
obal Random Integrated System.

Please use the contact information below to connect with a specific office =
or department that can best meet your needs.

E m a i l Contact: claims.your @cheapnet.it

Regards,

Mark Suzman
CEO, Board Member, Bill & Melinda Gates Foundation

=A91991-2022 Bill & Melinda Gates Foundation. All rights reserved.

***************************************************************************=
***************************************************************************=
*****
NOTE: If you have received this message in your SPAM / BULK folder because =
your ISP has introduced restrictions, we (IFC Team) kindly ask you to handl=
e it.
************************************************** ************************=
***************************************************************************=
*****
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
