Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB3084DBB9
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Feb 2024 09:46:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA59640148;
	Thu,  8 Feb 2024 08:45:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id st-HViQoYreP; Thu,  8 Feb 2024 08:45:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4C6041744
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4C6041744;
	Thu,  8 Feb 2024 08:45:57 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 323601BF831
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  8 Feb 2024 08:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C28940012
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  8 Feb 2024 08:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7C5wtX0iU6mp
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  8 Feb 2024 08:45:51 +0000 (UTC)
X-Greylist: delayed 603 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 08 Feb 2024 08:45:50 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4620740148
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4620740148
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.95.160.218;
 helo=mail.vexlyvector.com; envelope-from=ray.galt@vexlyvector.com;
 receiver=<UNKNOWN> 
Received: from mail.vexlyvector.com (mail.vexlyvector.com [141.95.160.218])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4620740148
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  8 Feb 2024 08:45:50 +0000 (UTC)
Received: by mail.vexlyvector.com (Postfix, from userid 1002)
 id 2508AA2EE7; Thu,  8 Feb 2024 08:35:41 +0000 (UTC)
Received: by mail.vexlyvector.com for <driverdev-devel@linuxdriverproject.org>;
 Thu,  8 Feb 2024 08:35:38 GMT
Message-ID: <20240208074500-0.1.bw.pqhy.0.7ut1l5i8al@vexlyvector.com>
Date: Thu,  8 Feb 2024 08:35:38 GMT
From: "Ray Galt" <ray.galt@vexlyvector.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: Meeting with the Development Team
X-Mailer: mail.vexlyvector.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=vexlyvector.com; s=mail; t=1707381345;
 bh=waaYxUsyRtmB2zEBuWcqRuRHSoYd8sJFCtgHO/3AHKE=;
 h=Date:From:To:Subject:From;
 b=qZHS7fpP99vzuxHWIvabu/bDV5QVEp/bZCDxPhZjwzaIwpG8zVtRK+TBeCq137n9l
 cueCwj2w0UVmfFc5ieOid7yB9YaUbWP3wdUvNUg8z5ozf1wqfrXxHlIXMLrmbJL1+B
 XQ2PB9XZmhqOKT4oL2d3NBpeEGTjGswSCX2Czc/Olrrj02iGiZv10kMqSG7a0NPZw7
 1VoN9WJN2IJCJLEKTcQ7eCOXuWBBAIHzeEdx1OQaQU4tM1MKtN6C1+NQfToxeK2EEN
 a7+kIaJXgMva9ak8C8cNJPIshgAGzGJvD/rbapVif6y5UHep7OBil0o+yAL8/VNtj1
 AUuFMqyzYWk6A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=vexlyvector.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vexlyvector.com header.i=@vexlyvector.com
 header.a=rsa-sha256 header.s=mail header.b=qZHS7fpP
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

I would like to reach out to the decision-maker in the IT environment within your company.

We are a well-established digital agency in the European market. Our solutions eliminate the need to build and maintain in-house IT and programming departments, hire interface designers, or employ user experience specialists.

We take responsibility for IT functions while simultaneously reducing the costs of maintenance. We provide support that ensures access to high-quality specialists and continuous maintenance of efficient hardware and software infrastructure.

Companies that thrive are those that leverage market opportunities faster than their competitors. Guided by this principle, we support gaining a competitive advantage by providing comprehensive IT support.

May I present what we can do for you?


Best regards
Ray Galt
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
