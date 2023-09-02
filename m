Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC8E790611
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Sep 2023 10:19:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13EE860E32;
	Sat,  2 Sep 2023 08:19:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13EE860E32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id juQT0LNP9VFV; Sat,  2 Sep 2023 08:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7E0560E13;
	Sat,  2 Sep 2023 08:19:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7E0560E13
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 46F381BF41B
 for <devel@linuxdriverproject.org>; Sat,  2 Sep 2023 08:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14BDA60E32
 for <devel@linuxdriverproject.org>; Sat,  2 Sep 2023 08:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14BDA60E32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fqsdAoqwSxhP for <devel@linuxdriverproject.org>;
 Sat,  2 Sep 2023 08:19:48 +0000 (UTC)
X-Greylist: delayed 6009 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 02 Sep 2023 08:19:47 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF15560E13
Received: from mailshield.dcgroup.com (mx1.mailshield.dcgroup.com
 [185.127.180.148])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF15560E13
 for <devel@linuxdriverproject.org>; Sat,  2 Sep 2023 08:19:47 +0000 (UTC)
Received: from User ([185.225.73.92])
 by mailshield.dcgroup.com  with SMTP id 3826caHj002976-3826caHl002976;
 Sat, 2 Sep 2023 09:38:36 +0300
Message-Id: <202309020638.3826caHj002976-3826caHl002976@mailshield.dcgroup.com>
From: "Dr. Charles Bates"<batesdrharles@dcgroup.com>
Subject: RE;   
Date: Sat, 2 Sep 2023 08:38:41 +0200
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-FEAS-Client-IP: 185.225.73.92
X-FE-Last-Public-Client-IP: 185.225.73.92
X-FE-Policy-ID: 12:4:2:dcgroup.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=dcgroup.com;
 s=dkim1; c=relaxed/relaxed; 
 h=reply-to:from:subject:date:mime-version:content-type;
 bh=YqNRUSLyykTDfe21Ilj71A4svmyJ1Xk4jLo9Ff2PTh4=;
 b=SuH41tr88KDSxshXDLVdTREkifML5tnPc1DQQ3afN6OChGiFHFBdAmQaSN94mKBh3YB/p4vZo1GM
 JDxh62no54sgaZvntnH+9U2+yXiwzsGDGwgi7Ecx2v1ZWDPk7r5kSj18pokehq3aniM2VBtOG0/g
 R9iGitzUKKDShY5sVhwu4TSbUmmbMGUy1GlPQ/73nMLN6/rdH3uiP39hpQlX4/DxvWRqQF5CZGpQ
 XT3jpRxflS5oA+6pYD79gAvHLuoP+OvpqaBS16MkpYyFY2Vm8aiZ9qdigQDCOMzLQbt/7lpHhpEe
 OauZ3VkxrLTgi7SHKyOgqrbaLmfM51ENNz2oTw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=dcgroup.com header.i=@dcgroup.com
 header.a=rsa-sha256 header.s=dkim1 header.b=SuH41tr8
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
Reply-To: batesdrharles@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Email: batesdrcharles@gmail.com
Telephone:(+27)-836-359-519

Hello

My Name is Dr. Charles Bates a top Bank Officer with Standard Bank of South Africa and I am in need of a reliable foreigner to carry out this important deal.

An account was opened in my bank by one of my customers a Dutch National from Germany who made a fixed deposit of $11,100,000.00 (Eleven Million, One hundred Thousand United States Dollars) and never show up again and I later discovered that he died with his entire family members on a plane crash that occurred in Libya on the 12th of May 2010 which I can give you a link to that crash if you care.

Since nobody is coming for this fund or knows about this fund I want to present a foreigner like you as next of kin to my late client so we can make the claim and you can contact me if you are interested so I can give you more detailed information about this transaction. For the sharing of the money will be shared in the ratio of 50% for me, 40% for you and 10% to cover our expenses after the deal.

Now the total amount to be transferred is $12.2 million because of the interest the fund has accumulated for some recent time.

Please keep this absolutely confidential and tell me if you are interested but I can assure you 100% risk free as I know how to go about it.

Waiting for your urgent reply and call.

Thanks.
Dr. Charles Bates 
Pvt: batesdrcharles@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
