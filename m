Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 801DE6B86DA
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Mar 2023 01:24:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B57381BCB;
	Tue, 14 Mar 2023 00:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B57381BCB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w_GLy11xUUpE; Tue, 14 Mar 2023 00:24:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FDE58142E;
	Tue, 14 Mar 2023 00:24:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FDE58142E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C187D1BF951
 for <devel@linuxdriverproject.org>; Tue, 14 Mar 2023 00:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9CF7040570
 for <devel@linuxdriverproject.org>; Tue, 14 Mar 2023 00:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CF7040570
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KZ5s0Gi58lSy for <devel@linuxdriverproject.org>;
 Tue, 14 Mar 2023 00:24:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F346940182
Received: from notifications1.foundit.sg (notifications1.monsterindia.com
 [20.198.97.41])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F346940182
 for <devel@driverdev.osuosl.org>; Tue, 14 Mar 2023 00:24:30 +0000 (UTC)
Received: from User (unknown [47.60.33.185])
 by notifications1.foundit.sg (Postfix) with ESMTPA id ECD0614A9D2;
 Tue, 14 Mar 2023 04:59:26 +0530 (IST)
DKIM-Filter: OpenDKIM Filter v2.11.0 notifications1.foundit.sg ECD0614A9D2
From: "Manuel Clara"<sentry@foundit.sg>
Subject: PROPOSAL
Date: Tue, 14 Mar 2023 00:29:34 +0100
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2800.1081
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1081
Message-Id: <20230313232926.ECD0614A9D2@notifications1.foundit.sg>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=foundit.sg; s=default; t=1678750175;
 bh=svZ5XiuYx51bpSdoMfKeu95yZMfFN3Ro1GPMWSSBlVM=;
 h=Reply-To:From:Subject:Date:From;
 b=AwPyJHPcnu+S09HHZ6YND7u2XAb2EmIjTIp9Yd9MwRvParfaRJRHQzaJyHTd79yZI
 vFkxWUCrRQEP88mnEG3AhHB5ViqQOM97jd/MNl6Y042RHkFTWQhBoNfWq/rykzcvIy
 HwGvVcey1M+18h+LQXMneh+mR3GllOCBvR5ud6vs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=foundit.sg header.i=@foundit.sg
 header.a=rsa-sha256 header.s=default header.b=AwPyJHPc
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
Reply-To: clarajuanmanuel@yandex.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I have very important information for you. Reply and confirm this
e-mail address is still valid so I can send you detailed information.

That needs your urgent attention.

Mrs CLara Juan Emanuel
Email: clarajuanmanuel@yandex.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
