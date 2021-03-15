Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A9833AB71
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 07:12:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF91C430BF;
	Mon, 15 Mar 2021 06:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FDjKrc5lcl6o; Mon, 15 Mar 2021 06:12:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7FD5430A7;
	Mon, 15 Mar 2021 06:12:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 04F1F1BF3A8
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 06:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC22883434
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 06:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53U2I-X758iB for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 06:12:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 85ECD83415
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 06:12:09 +0000 (UTC)
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id CFEE6CC26E;
 Mon, 15 Mar 2021 14:12:03 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [124.126.19.250])
 by smtp.263.net (postfix) whith ESMTP id
 P13099T140547744294656S1615788724196639_; 
 Mon, 15 Mar 2021 14:12:04 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6af1cf402b318c9f64df771cc8e606d9>
X-RL-SENDER: zhaoxiao@uniontech.com
X-SENDER: zhaoxiao@uniontech.com
X-LOGIN-NAME: zhaoxiao@uniontech.com
X-FST-TO: gregkh@linuxfoundation.org
X-SENDER-IP: 124.126.19.250
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: zhaoxiao <zhaoxiao@uniontech.com>
To: gregkh@linuxfoundation.org, straube.linux@gmail.com, serrazimone@gmail.com,
 lu@pplo.net, dan.carpenter@oracle.com
Subject: [PATCH] staging: rtl8192u: fixed no space coding style issue.
Date: Mon, 15 Mar 2021 14:12:02 +0800
Message-Id: <20210315061202.10219-1-zhaoxiao@uniontech.com>
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
Cc: devel@driverdev.osuosl.org, zhaoxiao <zhaoxiao@uniontech.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Added space around the binary operator for readability in
r8192U_wx.c file

Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>
---
 drivers/staging/rtl8192u/r8192U_wx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 5211b2005763..6ead461e3279 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -276,7 +276,7 @@ static int rtl8180_wx_get_range(struct net_device *dev,
 	range->min_pmp = 0;
 	range->max_pmp = 5000000;
 	range->min_pmt = 0;
-	range->max_pmt = 65535*1000;
+	range->max_pmt = 65535 * 1000;
 	range->pmp_flags = IW_POWER_PERIOD;
 	range->pmt_flags = IW_POWER_TIMEOUT;
 	range->pm_capa = IW_POWER_PERIOD | IW_POWER_TIMEOUT | IW_POWER_ALL_R;
@@ -519,14 +519,14 @@ static int r8192_wx_set_enc(struct net_device *dev,
 	/* sometimes, the length is zero while we do not type key value */
 	if (wrqu->encoding.length != 0) {
 		for (i = 0; i < 4; i++) {
-			hwkey[i] |=  key[4*i+0]&mask;
-			if (i == 1 && (4*i+1) == wrqu->encoding.length)
+			hwkey[i] |=  key[4 * i + 0] & mask;
+			if (i == 1 && (4 * i + 1) == wrqu->encoding.length)
 				mask = 0x00;
-			if (i == 3 && (4*i+1) == wrqu->encoding.length)
+			if (i == 3 && (4 * i + 1) == wrqu->encoding.length)
 				mask = 0x00;
-			hwkey[i] |= (key[4*i+1]&mask)<<8;
-			hwkey[i] |= (key[4*i+2]&mask)<<16;
-			hwkey[i] |= (key[4*i+3]&mask)<<24;
+			hwkey[i] |= (key[4 * i + 1] & mask) << 8;
+			hwkey[i] |= (key[4 * i + 2] & mask) << 16;
+			hwkey[i] |= (key[4 * i + 3] & mask) << 24;
 		}
 
 		#define CONF_WEP40  0x4
-- 
2.20.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
