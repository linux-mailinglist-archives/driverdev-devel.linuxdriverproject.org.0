Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E7F8B4D8C
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Apr 2024 21:00:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE58881E7E;
	Sun, 28 Apr 2024 19:00:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hAqASHyw-ziH; Sun, 28 Apr 2024 19:00:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 639F781E84
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 639F781E84;
	Sun, 28 Apr 2024 19:00:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 363C91BF344
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2024 19:00:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1FF9740429
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2024 19:00:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zRA7-wEQ7_S9 for <devel@linuxdriverproject.org>;
 Sun, 28 Apr 2024 19:00:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.79.96.173;
 helo=mail.unimedika.com; envelope-from=admintele.umst@unimedika.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 81D65403C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81D65403C7
Received: from mail.unimedika.com (smtp.unimedika.com [103.79.96.173])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 81D65403C7
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2024 19:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.unimedika.com (Postfix) with ESMTP id BFA0048E1892;
 Sat, 27 Apr 2024 23:37:07 +0700 (WIB)
Received: from mail.unimedika.com ([127.0.0.1])
 by localhost (mail.unimedika.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id wuTYHP4z8l8U; Sat, 27 Apr 2024 23:37:07 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mail.unimedika.com (Postfix) with ESMTP id 1E8DA465B75D;
 Sat, 27 Apr 2024 22:32:20 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.unimedika.com 1E8DA465B75D
X-Virus-Scanned: amavisd-new at unimedika.com
Received: from mail.unimedika.com ([127.0.0.1])
 by localhost (mail.unimedika.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id rQleby1JIecD; Sat, 27 Apr 2024 22:32:20 +0700 (WIB)
Received: from [156.96.115.93] (unknown [156.96.115.93])
 by mail.unimedika.com (Postfix) with ESMTPSA id B99994694AA4;
 Sat, 27 Apr 2024 22:05:06 +0700 (WIB)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: I Request your Attention
To: Recipients <admintele.umst@unimedika.com>
From: "Mrs. Reem E. Al-Hashimi" <admintele.umst@unimedika.com>
Date: Sat, 27 Apr 2024 08:05:00 -0700
Message-Id: <20240427150506.B99994694AA4@mail.unimedika.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=unimedika.com; 
 s=C0D54D52-E252-11E8-BC0B-A0FABF73D6AF; t=1714231940;
 bh=NW0cd4+qiRrtsmO3+RTo9B4WE35wO+S5S3T2Bw8z8r8=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=qr83AMM/r0lCE916Fps090ztZfj+LOZV3tOvEbbSYoWJrVnJK7NoLeTEJ7pTjHSYH
 yU3q1WK6KLrbb2vFsze9gk2Vx3X0RKLgV37o/ZLGXeM7gVwRb29xeztp1Aqc4EV0gP
 qqm/60MhY5uEbWvIKayVMZ1xGpQEm+6ZU5uhuzPemyPFyAYDquYBcAtWN82XUrR7ic
 w31/YGYN6mHObprF6SrI6kpE9BKw6Hm9JWhdodzPAsKt3Xdz8rpBpK28pmr86t3awh
 2MVXFOauhtWm/f5a3RYKr6saX4mqGbe0tlCAD8iLWs8u4Bt6oYLhAa/+AuiZJoaBrg
 qyxfC+KbxXlVQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=unimedika.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=unimedika.com header.i=@unimedika.com
 header.a=rsa-sha256 header.s=C0D54D52-E252-11E8-BC0B-A0FABF73D6AF
 header.b=qr83AMM/
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
Reply-To: a0976047327@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My name is Reem E. Al-Hashimi, the Emirati Minister of State. I am writing to you to stand as my partner to receive my share of the gratification from the foreign companies that I helped during the bidding process to the Dubai World Expo 2020/2021 Committee.

I am serving as a minister and I have a limit to my personal income and investment level, I cannot receive such a huge amount back to my country or my personal account.

I have agreed with the foreign companies to transfer the gratuities to an open beneficiary account at a financial institution where I will be able to direct further transfer of the funds to a third party account.

The amount is valued at $47,745,533.00 with a financial institution awaiting my instructions for further transfer to a destination account as soon as I have your information indicating interest and I will compensate you with 30% of the total amount and you will also benefit from the investment.

Please note that the above details are subject to my working with you as a partner. reply to me by email: reem.alh2023@gmail.com

If you can make the fund a good investment.
Kind regards,
Reem 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
