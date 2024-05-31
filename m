Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8478D5BAA
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2024 09:41:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A960741466;
	Fri, 31 May 2024 07:41:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id arXJbRPmUI6G; Fri, 31 May 2024 07:41:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 997E94146B
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 997E94146B;
	Fri, 31 May 2024 07:41:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B29C1D4F14
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2024 07:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14A4B84499
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2024 07:41:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SED4kUMB6Xez for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2024 07:41:10 +0000 (UTC)
X-Greylist: delayed 341 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 31 May 2024 07:41:09 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0C39F84474
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C39F84474
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=51.210.151.11;
 helo=mail.revenueraft.com; envelope-from=martin.juve@revenueraft.com;
 receiver=<UNKNOWN> 
Received: from mail.revenueraft.com (mail.revenueraft.com [51.210.151.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C39F84474
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2024 07:41:09 +0000 (UTC)
Received: by mail.revenueraft.com (Postfix, from userid 1002)
 id 8FF1B24020; Fri, 31 May 2024 07:35:22 +0000 (UTC)
Received: by mail.revenueraft.com for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2024 07:35:20 GMT
Message-ID: <20240531064500-0.1.f.lfa.0.edmmpdzwgk@revenueraft.com>
Date: Fri, 31 May 2024 07:35:20 GMT
From: "Martin Juve" <martin.juve@revenueraft.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: Question from developers
X-Mailer: mail.revenueraft.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=revenueraft.com; s=mail; t=1717140925;
 bh=tVslr6M9x1pIHGiSzdyYljX75LuTQ7r8zoSPK9nueHs=;
 h=Date:From:To:Subject:From;
 b=Gdy0Q3gU8EXnu6A6O6+wp4HYnCjTGvW+LjAK+QC3UbCGIfTJ55GbhZ2/dq66GBylU
 lrnCyu7Mq1tFGTIrn1V/GbHCgo3dW6fExS8CRC3c3I4uBUMEFjy2XTxTgjCUAoq3pb
 SeUpkeWaqSeNEL6EKgoytlMn3tjO1rsVS5ApBXoNd5Z5iSta3MGCH/rRo4IrhQzQ1q
 XB9nnIBL+RA/AH3q1BrJ0qpz+CwkrWX2i7XuNEz1k0E49WrLK/iU5I1cx2Ka8HJ8xy
 UKFP6bV0Ep+62wy7VVOwI7SOCQUlFnkIwGhSHEpKUrRDMVeucqLqDc8j7PTwFnowU9
 FVlLoaojP4fHg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=revenueraft.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=revenueraft.com header.i=@revenueraft.com
 header.a=rsa-sha256 header.s=mail header.b=Gdy0Q3gU
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

we are a software house specializing in software development and cloud services.

We provide our clients with cloud service support and security, as well as Office 365 management.

We have been operating in the market for over 13 years, during which many companies like yours have benefited from our services.

We have a complete technology team with experience in virtually every programming language.

Do you have a need for support in the field of cloud services?


Best regards
Martin Juve
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
