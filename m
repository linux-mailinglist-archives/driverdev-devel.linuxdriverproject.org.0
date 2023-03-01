Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C38F56A726F
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Mar 2023 18:58:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A60F6126D;
	Wed,  1 Mar 2023 17:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A60F6126D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yfYttJG17fEc; Wed,  1 Mar 2023 17:58:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 243AF6129C;
	Wed,  1 Mar 2023 17:58:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 243AF6129C
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18A231BF593
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Mar 2023 17:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70333612C4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Mar 2023 17:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70333612C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4EkrjrfkR0j9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Mar 2023 17:58:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E01E61297
Received: from pro152-36.mxout.rediffmailpro.com
 (pro152-36.mxout.rediffmailpro.com [119.252.152.36])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E01E61297
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Mar 2023 17:58:06 +0000 (UTC)
Received: from pro-237-121.rediffmailpro.com (unknown [10.50.252.5])
 by pro152-36.mxout.rediffmailpro.com (Postfix) with ESMTP id D9CA81E1677
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Mar 2023 21:34:34 +0530 (IST)
X-REDIFF-Delivered-Remotely-To: driverdev-devel@linuxdriverproject.org
Received: (qmail 28819 invoked from network); 1 Mar 2023 16:04:34 -0000
x-m-msg: 668a3125062a77846a816440d978fccd; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 1\SPAM
X-OUT-VDRT-SpamScore: 540
X-OUT-VDRT-SpamCause: "gggruggvucftvghtrhhoucdtuddrgedvhedrudelhedgjeeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutffgfffkhffhnecuuegrihhlohhuthemuceftddtnecuoghunhguihhstghlohhsvgguucdlgedtmdenogfuphgrmhffohhmrghinhdqohhuthculdehtddtmdenucfjughrpefkffggfghrhffutgfgsehtjeertddtfeejnecuhfhrohhmpedfffhrrdcuufgvrhhhihihucfvuhhluhgsfdcuoehhghgughehsehmrghvvghnmhgvughirgdrihhnqeenucggtffrrghtthgvrhhnpeegieelkefhgefhfefggedtgeekgffhvdegteelgfduudevueegheehteetffdtleenucfkphepuddtvddrieelrddvvddtrddvtddvnecuufhprghmffhomhgrihhnpehmrghvvghnmhgvughirgdrihhnnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddtvddrieelrddvvddtrddvtddvpdhmrghilhhfrhhomhephhhgughgheesmhgrvhgvnhhmvgguihgrrdhinhdpnhgspghrtghpthhtohephedprhgtphhtthhopeguihhstghushhssehjrgdrlhhisghrvghofhhfihgtvgdrohhrghdprhgtphhtthhopeguihhstghushhssehlihhsthhsrdhilhhluhhmohhsrdhorhhgpdhrtghpthhtohepughishgtuhhssheslhhishhtshdrohhpvghnuggrhihlihhghhhtrdhorhhgpdhrtghpthhtohepughishgtuhhssheslhhishhtshdrohhsghgvohdrohhrghdprhg
 tphhtthhopeguihhstghushhssehnlhdrlhhisghrvghofhhfihgtvgdrohhrghdpmhhouggvpehsmhhtphhouhht"
X-Dedup-Identifier: 1677686674_28793_26935_pro-237-121
Received: from unknown (HELO ?192.168.0.110?)
 (hgdg5@mavenmedia.in@102.69.220.202)
 by mailserver with SMTP; 1 Mar 2023 16:04:33 -0000
Message-ID: <0c770170-8865-645e-b56a-11ddb685786b@mavenmedia.in>
Date: Wed, 1 Mar 2023 16:02:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
From: "Dr. Serhiy Tulub" <hgdg5@mavenmedia.in>
Subject: REF
To: undisclosed-recipients: ;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rediffmailpro.com; s=epro; t=1677686674;
 bh=owhzKxjMCmzEGlMpUWJlU3nAf1f9zGq8kypSUj1DHzI=;
 h=MIME-Version:From:Date:Message-ID:Subject:To;
 b=r8Xq09IuPTtju6SP8skGGEPqVgliIHJpp0CshY3RZZHyl19+xHis41YT3KdQNbrSd
 0/VvNXSZzP8geEu0qDwF4laVu9XpQ7flxyYp+w/ZeJE8Hi3eXhC/ZbAFvnjxrRlkzS
 ehlp7vOBoa3dkknpYxrEi8yre5uHuLYHrML+KwMA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=rediffmailpro.com
 header.i=@rediffmailpro.com header.a=rsa-sha256 header.s=epro
 header.b=r8Xq09Iu
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
Reply-To: dr.serhiytulub.gv@zohomail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


-- 
01/03/2023

Good day Friend,

I really like to have a good relationship with you, and I have a special reason why I decided to contact you because of the urgency of my situation here.

  Please accept my sincere apologies if my email does not meet your business or personal ethics,I am pleased to get across to you with a very urgent and profitable business proposal, you might receive this message in your email InBox or Spam email.

  I know that receipt of my communication shall be a great surprise to you considering the fact that we did not know each other or had any business negotiations before now, I am also aware of the fact that there is a lot of fraudulent business proposals circulating around the world. Which makes it imperative for one to be extremely careful before accepting and venturing any business proposal.

  I however, pray your respected self not to allow the above unnatural abnormalities to influence your decision to accept my genuine proposal and intentions which undoubtedly would be of immense mutual benefits to both of us.

I got your e-mail address on the Internet while searching for a reliable and trustworthy person i can engage in business related proposal and after that, i decided to contact you and ask for your assistance in this urgent matter that requires trust and confidentiality.

  I wait for your quick reply for more details.

  Regards

Dr. Serhiy Tulub

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
