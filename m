Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1E31C24BF
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 May 2020 13:33:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7ACC520455;
	Sat,  2 May 2020 11:33:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z-6Au2vD8GTa; Sat,  2 May 2020 11:33:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1C4C720243;
	Sat,  2 May 2020 11:33:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E13691BF859
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 11:33:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C7C3920243
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 11:33:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L3mzae84RlaQ for <devel@linuxdriverproject.org>;
 Sat,  2 May 2020 11:33:09 +0000 (UTC)
X-Greylist: delayed 00:06:12 by SQLgrey-1.7.6
Received: from pokefinder.org (sauhun.de [88.99.104.3])
 by silver.osuosl.org (Postfix) with ESMTP id 985661FE41
 for <devel@driverdev.osuosl.org>; Sat,  2 May 2020 11:33:09 +0000 (UTC)
Received: from localhost (p5486C608.dip0.t-ipconnect.de [84.134.198.8])
 by pokefinder.org (Postfix) with ESMTPSA id 9B8762C052E;
 Sat,  2 May 2020 13:26:55 +0200 (CEST)
From: Wolfram Sang <wsa@the-dreams.de>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: ks7010: remove me from CC list
Date: Sat,  2 May 2020 13:26:44 +0200
Message-Id: <20200502112648.6942-1-wsa@the-dreams.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I lost interest in this driver years ago because I could't keep up with
testing the incoming janitorial patches. So, drop me from CC.

Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
---
 drivers/staging/ks7010/TODO | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/ks7010/TODO b/drivers/staging/ks7010/TODO
index 87a6dac4890d..ab6f39175d99 100644
--- a/drivers/staging/ks7010/TODO
+++ b/drivers/staging/ks7010/TODO
@@ -30,5 +30,4 @@ Now the TODOs:
 
 Please send any patches to:
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
-Wolfram Sang <wsa@the-dreams.de>
 Linux Driver Project Developer List <driverdev-devel@linuxdriverproject.org>
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
