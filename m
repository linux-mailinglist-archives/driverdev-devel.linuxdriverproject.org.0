Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A285B473B
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Sep 2022 17:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE21341BE7;
	Sat, 10 Sep 2022 15:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE21341BE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tuEoyJcGEsRN; Sat, 10 Sep 2022 15:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DBFA419F9;
	Sat, 10 Sep 2022 15:12:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DBFA419F9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83C181BF357
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 15:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E5DC40128
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 15:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E5DC40128
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MPEGGaIu65mP for <devel@linuxdriverproject.org>;
 Sat, 10 Sep 2022 15:12:33 +0000 (UTC)
X-Greylist: delayed 00:58:58 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4246C4010C
Received: from xvfrnscf.outbound-mail.sendgrid.net
 (xvfrnscf.outbound-mail.sendgrid.net [168.245.38.207])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4246C4010C
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 15:12:33 +0000 (UTC)
Received: by filterdrecv-5855cf585f-ns26c with SMTP id
 filterdrecv-5855cf585f-ns26c-1-631C9B8C-109
 2022-09-10 14:13:32.904905751 +0000 UTC m=+1353761.070216004
Received: from APP-30106.karmakxcelerate.com (unknown)
 by geopod-ismtpd-4-2 (SG) with ESMTP id U1gJJR0rR_CQA3x4VFl36g
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 14:13:32.685 +0000 (UTC)
Received: from [195.178.120.195] ([195.178.120.195]) by
 APP-30106.karmakxcelerate.com with Microsoft SMTPSVC(10.0.17763.1697); 
 Sat, 10 Sep 2022 10:13:32 -0400
MIME-Version: 1.0
Content-Description: Mail message body
Subject: 20.10.199.124
From: "Mrs. cititiclster" <ctng@noreply.com>
Date: Sat, 10 Sep 2022 14:13:32 +0000 (UTC)
Message-ID: <APP-301063SOlbpH71y000080ef@APP-30106.karmakxcelerate.com>
X-OriginalArrivalTime: 10 Sep 2022 14:13:32.0501 (UTC)
 FILETIME=[821CC050:01D8C51F]
X-SG-EID: =?us-ascii?Q?+cDjL7XE=2FxKOF0BB68KHf2O0CeC1gC021tnKTxW+K0TaUf1G2tNG7yIV+N1e6Q?=
 =?us-ascii?Q?YEvgwUttvabR3pVxUCZuBRTWpq9Q=2FppNB1r8sJC?=
 =?us-ascii?Q?Qmg6KnLUv5uBo9FeTGQsfYuWEpd0IBOyJ2uklEi?=
 =?us-ascii?Q?WaH8P=2F7DqHIsHvopNc2IAvwTkKpBQlVxKcsUgHP?=
 =?us-ascii?Q?yBO2=2FJibRh55JjAIqcOQ+SYAIfSjxG1j3208MFt?=
 =?us-ascii?Q?ehUGRlhRlvmN7MueF4G0F2rusYROxxMbZ1afW1H?=
 =?us-ascii?Q?RsSTmTLMdKcFGMBd1DHKg=3D=3D?=
To: Recipients <ctng@noreply.com>
X-Entity-ID: eN8NfSccfPSNVgM/qSDjvw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sendgrid.net; 
 h=content-type:mime-version:content-transfer-encoding:
 content-description:subject:from:reply-to:to:cc;
 s=smtpapi; bh=VK6/zVUQpZ16f88Dbt1i8v7bw9lncXVkjBStHqHP0EA=;
 b=wr3VN1qMA55Toa7/4UopDXeWWNimQvEeBUU6kAaimDMMrEp1g6q0d7mZw+qZb2L7KIXM
 NiTPDM1LkLe8nQ+1zY/ans8FJ/ON34pqOiAztR8f90MyiF2tRSrqv/t+7aF5eyNHFwFcMY
 iqvCV02OD0bJXu4NUReN15rfeXnCF6C74=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=sendgrid.net header.i=@sendgrid.net
 header.a=rsa-sha256 header.s=smtpapi header.b=wr3VN1qM
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
Reply-To: vcgundotrasvp@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Am a citizen of Lebanon,MENA Cluster HEAD & CEO CITI Groups UAE.

I have a business proposal that will beneficial to both of us which I
wish to discuss with you. kindly get back to me your full name for more details.

Regards,
Elissar Farah .A.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
