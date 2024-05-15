Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F4A8C5E5E
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2024 02:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD7BC606AA;
	Wed, 15 May 2024 00:40:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dchaSG1B-RbL; Wed, 15 May 2024 00:40:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C843060BB7
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C843060BB7;
	Wed, 15 May 2024 00:40:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 665DA1BF966
 for <devel@linuxdriverproject.org>; Wed, 15 May 2024 00:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5ED924082E
 for <devel@linuxdriverproject.org>; Wed, 15 May 2024 00:40:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VHrpopiLzSZV for <devel@linuxdriverproject.org>;
 Wed, 15 May 2024 00:40:54 +0000 (UTC)
X-Greylist: delayed 1803 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 May 2024 00:40:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 34FDB40622
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34FDB40622
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=194.169.172.163;
 helo=cover.elbimilast.com; envelope-from=lyra@elbimilast.com;
 receiver=<UNKNOWN> 
Received: from cover.elbimilast.com (cover.elbimilast.com [194.169.172.163])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34FDB40622
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2024 00:40:53 +0000 (UTC)
From: ADNOC - Abu Dhabi National Oil Company<lyra@elbimilast.com>
To: devel@driverdev.osuosl.org
Subject: Re: - :EOI-UE# No:SL5C1166AE99056E4831- Invitation to Tender (ITT) or
 Request for Quotation (RFQ)- [WE_ID:H-99929622574460P]
Date: 15 May 2024 00:10:46 +0000
Message-ID: <20240515001046.E94C0B848335C71B@elbimilast.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim;
 d=elbimilast.com; 
 b=EVs+fr2Xj8xkBF3+culqnxUmqUQt7cgnTNbj0sPDaM5c7oDAYX8cGhLIay83kIqJsg1X/LAPOOfI
 Pa5KOcZd4vwXsWm8VRbdVI8PXK16mja0Q6uZmYmxZhSQOnWkmc33AZTaUj8IZunrI25/CKUrjJUj
 OlxMmyzURNp6DVt5kkyw/Icg6Y+81S4euMKcFNHPzcKc8e0Id91LpXSaExm72ki5OrNuCXJBJ4mN
 zN04252h+Jhhtg/Wnx4lPDWjaU4U28pNXSCM+4DLmm626eE+LUHyZlhx+fC3ovT68oJTe3rl2oqw
 AYhHE/NctKSET6c5iTKpqF0HdYv3t0g3liH2wg==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim;
 d=elbimilast.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=lyra@elbimilast.com; 
 bh=mXDyLnNwVmsKe4KF6Z23jFddq+k=;
 b=Qf8bXeGEr/bUwZy8t7eLl2ovwfyunJ7mut6AMQYP8ipPd9KoBMcHQvWx6oCRApcfKrq8wLOhdyQp
 nXQ8ARTKIcHX/23hDkMBIfLqjFf8aEKn/U9ZKsfJMAMjJLvGnQoxL/i18RzDbnDOsGJf5NgEgVRi
 waaNCoDZJiindOpzO1D3339hBeJOAdb3QnZqk+TW17Obd5FXqdF6BvpDAbHw5ALwulfVbMcla785
 86562o8l36L64/E6pvDbGXSNJV9A41NC/Qd8iFFY7htQRXqdTH+W5DyrJTrDAKEfJkViTw4u6wk8
 N25SUY7PGlvASv7IhjwiYSD4oZA+e5CCsM7YDQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=elbimilast.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=elbimilast.com header.i=lyra@elbimilast.com
 header.a=rsa-sha1 header.s=dkim header.b=Qf8bXeGE
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
Reply-To: ADNOC - Abu Dhabi National Oil Company <vendor@adnocae.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn: Dear Sir / Madam,
 
 
Greetings of the day.
 
 
       RE: A REMINDER - ADNOC TENDER INVITATION AND VENDOR ENROLMENT
 
 
 
We of Abu Dhabi National Oil Company (ADNOC) is sending this invitation in line with our ongoing projects of interest hence the extension of the Invitation to you and your esteemed organization.
 
This notification of invitation is In line with the development and expansion of Abu Dhabi National Oil Company.
 
We notify your organization about the ongoing enrollment of Vendors, contractors, suppliers and intending partners as well as Validation of the existing ones.
 
This enrollment is open for 2023/2024 projects and will be closing in 10 days.
 
Therefore, intending Contractors/Vendors and existing vendors who are interested in receiving the Invitation to Tender (ITT) or Request for Quotation(RFQ) are to provide us with sufficient information to make an initial assessment of their competence to handle any of the projects as shall be listed.
 
These projects are open to both local and international organizations.
 
Please confirm your interest to receive the EOI and Vendor registration questionnaires for onward enrollment
 
We appreciate your interest in this invitation, and we look forward to your early response.
 
________________________
 
 
Kind Regards,
 
Omar Bin Al Qassim Mamoud,
 
Group Procurement Vendor Coordinator
ADNOC - Abu Dhabi National Oil Company, U.A.E Contracts Shared Services Center
Website: www.adnoc.ae
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
