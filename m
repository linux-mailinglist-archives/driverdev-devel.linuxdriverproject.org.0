Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D95BC5BB49C
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Sep 2022 01:06:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF2B884320;
	Fri, 16 Sep 2022 23:06:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF2B884320
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JTcJLoRzOuwP; Fri, 16 Sep 2022 23:06:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AF2C8431E;
	Fri, 16 Sep 2022 23:06:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AF2C8431E
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D4BD01BF3A0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 16 Sep 2022 23:06:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFF816FAEF
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 16 Sep 2022 23:06:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFF816FAEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MlkJQAf51wmM
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 16 Sep 2022 23:06:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2319C610EA
Received: from mta0.lukesengineering.com (mta0.lukesengineering.com
 [85.239.52.125])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2319C610EA
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 16 Sep 2022 23:06:46 +0000 (UTC)
From: Northey Peter<call@lukesengineering.com>
To: driverdev-devel@linuxdriverproject.org
Subject: Business Proposal
Date: 16 Sep 2022 19:06:44 -0400
Message-ID: <20220916190644.C353B89EE0DE0C5C@lukesengineering.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=lukesengineering.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=call@lukesengineering.com;
 bh=62iEd6g3uAsdNWFQ+6C/KLYPsXQB2Gh1jIwXfTdBSwk=;
 b=zwvTmDEJXykKxQ7aBwf1HA/+u6JmJvodcevEuK9KFJcEGDC3h+MbRmQFZtJ+gdOM/1lwfX3PrO3l
 Dx098ADZkHMIm6ASeCKkf9rWEtb8mvcQXJ5nE+KYpH377l01iWwzn4tfusJDY37fvSsbggyqpDAG
 IWM73GDnJFylAOS3dVs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lukesengineering.com
 header.i=call@lukesengineering.com header.a=rsa-sha256 header.s=default
 header.b=zwvTmDEJ
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
Reply-To: northeypeter112@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear driverdev-devel@linuxdriverproject.org,

I am Peter Northey, Research Assistant at one of the leading 
UK Pharmaceutical Companies. I have a business proposal for 
you which is worth a substantial amount and will save lives 
too. I would be glad to receive your acknowledgement of this 
email so I can furnish you more with details of my proposal 
for your consideration. Please give me the opportunity to 
explain to you in detail what the business is all about by 
replying back to me. Note: You have the right to quit by the 
end of my detailed explanation and you don't feel like 
moving forward with me. But Trust me, you won't regret it.


Best Regards,
Mr Peter Northey
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
