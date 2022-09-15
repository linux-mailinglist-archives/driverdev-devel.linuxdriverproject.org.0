Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EAF5B992E
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Sep 2022 12:54:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EE2E82C33;
	Thu, 15 Sep 2022 10:54:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EE2E82C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jyzBqfjAd3l0; Thu, 15 Sep 2022 10:54:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DE3E83422;
	Thu, 15 Sep 2022 10:54:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DE3E83422
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC3641BF59D
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 10:54:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9461C82C33
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 10:54:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9461C82C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i4MmeWIH-r0E for <devel@linuxdriverproject.org>;
 Thu, 15 Sep 2022 10:54:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2A66828D1
Received: from mta-out-02.alice.it (mta-out-02.alice.it [217.169.118.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2A66828D1
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 10:54:23 +0000 (UTC)
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvfedrfedukedgfeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvffgnffgvefqoffkvfetnffktedpqfgfvfenuceurghilhhouhhtmecufedtudenucgoteeftdduqddtudculdduhedmnecujfgurheptggggffuvffhffhrsehtqhdttddttddunecuhfhrohhmpedftfhifhgrrghtucetsghouhgufdcuoehgihhovghludeisehtihhmrdhitheqnecuggftrfgrthhtvghrnhepkeeflefhkeeihefhgfdttefffeduvddujeffheffgfffkeevvdejleeuiefhhfelnecukfhppedufedtrddvhedruddtkedrvdduvdenucevlhhushhtvghrufhiiigvpeegieenucfrrghrrghmpehhvghloheplgdugedurdelkedriedrieehngdpihhnvghtpedufedtrddvhedruddtkedrvdduvddpmhgrihhlfhhrohhmpehgihhovghludeisehtihhmrdhithdpnhgspghrtghpthhtohepudekpdhrtghpthhtohepuggvvhgvrghugiesuhhrihgttghhihhordgtohhmpdhrtghpthhtohepuggvvhgvsgesshgthhgvnhgtkhdrtghordhukhdprhgtphhtthhopeguvghvvggvpggvlhgvtghtrhhitggrlhesrhgvughifhhfmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvvghmuhhlthhifhhoohgusehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvghgrlhgrfiesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvvghgrghvihguvghoseifrgii
 iihurdhnvghtpdhrtghpthhtohepuggvvhgvghhofigurghgsehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggvvhgvihhnvgguseihrghhohhordgtohhmrdhtfidprhgtphhtthhopeguvghvvghlrdhmrghrihgrnhdrshgtvghrsggrkhesghhmrghilhdrtghomhdprhgtphhtthhopeguvghvvghlsegsrhhoughordguvgdprhgtphhtthhopeguvghvvghlsegtthhvrdgvshdprhgtphhtthhopeguvghvvghlsegurghvvgdrvghupdhrtghpthhtohepuggvvhgvlhesughrihhvvghruggvvhdrohhsuhhoshhlrdhorhhgpdhrtghpthhtohepuggvvhgvlhesfhhrvggvthihphgvrdhorhhgpdhrtghpthhtohepuggvvhgvlhesfhhrvghsshgvrdhorhhgpdhrtghpthhtohepuggvvhgvlhesihhonhgvshgtuhdruggvpdhrtghpthhtohepuggvvhgvlhesihhtrdhsuhdrshgvpdhrtghpthhtohepuggvvhgvlheslhhinhhugigurhhivhgvrhhprhhojhgvtghtrdhorhhgpdhrvghvkffrpehnvghtqddufedtqddvhedquddtkedqvdduvddrtghushhtrdhvohgurghfohhnvggushhlrdhithdprghuthhhpghushgvrhepghhiohgvlhduieesthhimhdrihhtpdhgvghoihhppefkvfdpmhhtrghhohhstheprhgriihorhdqohhuthdqrghlihgtvgdqtddv
X-RazorGate-Vade-Verdict: clean 15
X-RazorGate-Vade-Classification: clean
Received: from [141.98.6.65] (130.25.108.212) by mta-out-02.alice.it (5.8.810)
 (authenticated as gioel16@tim.it)
 id 62EB892D0605F83E; Thu, 15 Sep 2022 12:54:03 +0200
Message-ID: <62EB892D0605F83E@mta-out-02.alice.it> (added by
 postmaster@alice.it)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: P r o j e c t
To: gioel16@tim.it
From: "Rifaat Aboud" <gioel16@tim.it>
Date: Thu, 15 Sep 2022 03:53:53 -0700
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tim.it; s=20211207; t=1663239264; 
 bh=xY6rawfOnSMJA0kE6Yia8b+L5XTC2EPgOWgkHK1YxqI=;
 h=Message-ID:Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To;
 b=iVGOYkqiawssFhDWPAMq8fL/iYJDxBU90EPx+XFK82Ul0pXjdzGRYK4tM+BDDWM2HQMnvxEJ5OiX5GIpWwa2FnVh5pLbzEodJoQipYaE9QzONo61HUIMKxLR3/HJB66x6UFWfmPJ0scMu8yLHXz/FwyJBjaFTWPxJDjnWcP7IEISR/1Gk6RbmcbghNxpYLynU7PAHyZyVaEUcor2ycQiV/VcsE40k+CP4EJVdYrKIYsMy8F7fxGuGMinVd9f4jwonq3b6sHrh65le3+5PJIIhO9It7PaTerW+yhwsrz8yFVkGtBvRsdJIpLk7Hip8f8mHjkCttDbhQDbxVc5Srj9XA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=tim.it header.i=@tim.it header.a=rsa-sha256 header.s=20211207
 header.b=iVGOYkqi
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
Reply-To: rifaataboud@cheapnet.it, ??@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

G o o d day,

I am Mr. Rifaat  Aboud from Afghanistan. I got your contact through your country's professional business documentary profile. I found you very capable of handling this huge business magnitude, there is a genuine need for an investment of a substantial amount in your country.

I wish for a prompt response from you regarding my letter.

Warm regards,

Mr. Rifaat Aboud.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
