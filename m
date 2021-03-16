Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 456B133CB93
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 03:44:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A912E83A55;
	Tue, 16 Mar 2021 02:44:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id balzR-cRM2PF; Tue, 16 Mar 2021 02:44:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC54882CA5;
	Tue, 16 Mar 2021 02:44:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EED3F1BF314
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 02:44:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB73C82CA5
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 02:44:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2sHOK9XEi5pq for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 02:44:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DAC0582C98
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 02:44:16 +0000 (UTC)
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id AF7A6C79C7;
 Tue, 16 Mar 2021 10:44:11 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [124.126.19.250])
 by smtp.263.net (postfix) whith ESMTP id
 P13099T140547637376768S1615862652113859_; 
 Tue, 16 Mar 2021 10:44:12 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <bc293e818f684546c9ed4c9b3b04b4ba>
X-RL-SENDER: zhaoxiao@uniontech.com
X-SENDER: zhaoxiao@uniontech.com
X-LOGIN-NAME: zhaoxiao@uniontech.com
X-FST-TO: gregkh@linuxfoundation.org
X-SENDER-IP: 124.126.19.250
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: zhaoxiao <zhaoxiao@uniontech.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8192u: remove extra lines
Date: Tue, 16 Mar 2021 10:44:10 +0800
Message-Id: <20210316024410.24609-1-zhaoxiao@uniontech.com>
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
 linux-kernel@vger.kernel.org, serrazimone@gmail.com, lu@pplo.net,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove extra lines in many functions in r8192U_wx.c.

Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>
---
 drivers/staging/rtl8192u/r8192U_wx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 6ead461e3279..e68d37914456 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -879,7 +879,6 @@ static iw_handler r8192_wx_handlers[] = {
 
 
 static const struct iw_priv_args r8192_private_args[] = {
-
 	{
 		SIOCIWFIRSTPRIV + 0x0,
 		IW_PRIV_TYPE_INT | IW_PRIV_SIZE_FIXED | 1, 0, "badcrc"
@@ -890,14 +889,15 @@ static const struct iw_priv_args r8192_private_args[] = {
 		IW_PRIV_TYPE_INT | IW_PRIV_SIZE_FIXED | 1, 0, "activescan"
 
 	},
+
 	{
 		SIOCIWFIRSTPRIV + 0x2,
 		IW_PRIV_TYPE_INT | IW_PRIV_SIZE_FIXED | 1, 0, "rawtx"
 	},
+
 	{
 		SIOCIWFIRSTPRIV + 0x3,
 		IW_PRIV_TYPE_INT | IW_PRIV_SIZE_FIXED | 1, 0, "forcereset"
-
 	}
 
 };
-- 
2.20.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
