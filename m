Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E156D456B05
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Nov 2021 08:42:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0995A823AA;
	Fri, 19 Nov 2021 07:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9OF5uYyyvvD7; Fri, 19 Nov 2021 07:42:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F9A981D2D;
	Fri, 19 Nov 2021 07:42:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E49241BF2E5
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 07:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CCAB6409AD
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 07:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iVi7IqQNDmrr for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 07:42:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx08-00227901.pphosted.com (mx08-00227901.pphosted.com
 [91.207.212.184])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 178E3405BA
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 07:42:09 +0000 (UTC)
Received: from pps.filterd (m0097674.ppops.net [127.0.0.1])
 by mx08-.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 1AJ6lPA3018132;
 Fri, 19 Nov 2021 08:41:58 +0100
Received: from zbw2k16ex01.bardusch.net ([185.80.186.174])
 by mx08-.pphosted.com (PPS) with ESMTPS id 3cdmdm1026-19
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 19 Nov 2021 08:41:58 +0100
Received: from zbw2k16ex03.bardusch.net (172.25.1.3) by
 ZBW2K16EX01.bardusch.net (172.25.1.1) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id 15.1.2308.20;
 Fri, 19 Nov 2021 08:41:51 +0100
Received: from User (172.25.1.131) by zbw2k16ex03.bardusch.net (172.25.1.3)
 with Microsoft SMTP Server id 15.1.2308.20 via Frontend Transport; Fri, 19
 Nov 2021 08:41:41 +0100
From: Joseph Choondak <info@ndd.co.mz>
Subject: I hope this email finds you well.
Date: Thu, 18 Nov 2021 23:41:54 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <acfb95b1-0ecf-4e90-bebb-364e47660fdd@zbw2k16ex03.bardusch.net>
To: Undisclosed recipients:;
X-Proofpoint-GUID: CV7cgJuyrENwNbejiI6OXt-vmVzTEv8e
X-Proofpoint-ORIG-GUID: CV7cgJuyrENwNbejiI6OXt-vmVzTEv8e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-19_07,2021-11-17_01,2020-04-07_01
X-Proofpoint-Spam-Reason: orgsafe
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
Reply-To: josechoondak@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

May I please ask with considerable urgency for your kind assistance with the following matter.
I'm a financial person, I think  I have something huge you might be interested in.

Looking forward to hearing from you.


Respectfully!!
Joseph Choondak
Account Executive.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
