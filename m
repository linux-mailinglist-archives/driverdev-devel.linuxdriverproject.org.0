Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF54A30D921
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 12:47:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8E23867D2;
	Wed,  3 Feb 2021 11:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f37MWn8QFuTj; Wed,  3 Feb 2021 11:47:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 17D9786690;
	Wed,  3 Feb 2021 11:47:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 139FD1BF386
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 11:47:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0FF1686CB6
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 11:47:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kuC+tfdnM-fd for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 11:47:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 40B4B86132
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 11:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id B44B250DCE;
 Wed,  3 Feb 2021 12:47:38 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0PHxJMcV63j; Wed,  3 Feb 2021 12:47:37 +0100 (CET)
From: Ayush <ayush@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1612352857; bh=Vp8WSWs2HCMu3PWj9nuHcHUGOe/dyFvAXQ+Cbjl9rAc=;
 h=From:To:Cc:Subject:Date;
 b=GwPW2f+JxV4fpRZURPObmifWSUgtImprFmZx9k012jv+YxkWj4IDxeR41B9OANiNG
 74Y8kO5tQhr6N86yQoIuT/beO6+7pj32d4NkIRmjtAxBzE5J5/erfv3/sOsEtRn33/
 in/Behs59Sfk6LJfv+z40AamQC1PB0RkiUmOYT3EJW5xSZuG8Diy5wEsD7F2FjZQUP
 M5zI208tffY9/8I0ZCmECih8acFG/Tk38R57F5S0/eOS1r0YUENKhqiNw8QTUTTcaM
 /fkX8lYc8lsFcp6T3dTeogv/IRT+HRrHhF3v/U97Y00FgFqWiSbCg7HpnTBvrh4dfj
 e8beC0rkHyb/w==
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wimax/i2400m: fix coding style issues
Date: Wed,  3 Feb 2021 17:17:20 +0530
Message-Id: <20210203114720.263651-1-ayush@disroot.org>
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, kuba@kernel.org, ayush@disroot.org,
 arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

- fix "multiple blank lines" issues.
- fix a couple of parenthesis alignment issues.
- fix no space before parenthesis issue.
- fix no blank line after declaration.

compile tested only (on next-20210202).

Signed-off-by: Ayush <ayush@disroot.org>
---
 drivers/staging/wimax/i2400m/debugfs.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/debugfs.c b/drivers/staging/wimax/i2400m/debugfs.c
index 1c640b41ea4c..80a6f833d1c2 100644
--- a/drivers/staging/wimax/i2400m/debugfs.c
+++ b/drivers/staging/wimax/i2400m/debugfs.c
@@ -15,7 +15,6 @@
 #include <linux/export.h>
 #include "i2400m.h"
 
-
 #define D_SUBMODULE debugfs
 #include "debug-levels.h"
 
@@ -27,8 +26,8 @@ int debugfs_netdev_queue_stopped_get(void *data, u64 *val)
 	return 0;
 }
 DEFINE_DEBUGFS_ATTRIBUTE(fops_netdev_queue_stopped,
-			debugfs_netdev_queue_stopped_get,
-			NULL, "%llu\n");
+			 debugfs_netdev_queue_stopped_get,
+			 NULL, "%llu\n");
 
 /*
  * We don't allow partial reads of this file, as then the reader would
@@ -59,7 +58,6 @@ ssize_t i2400m_rx_stats_read(struct file *filp, char __user *buffer,
 	return simple_read_from_buffer(buffer, count, ppos, buf, strlen(buf));
 }
 
-
 /* Any write clears the stats */
 static
 ssize_t i2400m_rx_stats_write(struct file *filp, const char __user *buffer,
@@ -89,7 +87,6 @@ const struct file_operations i2400m_rx_stats_fops = {
 	.llseek =	default_llseek,
 };
 
-
 /* See i2400m_rx_stats_read() */
 static
 ssize_t i2400m_tx_stats_read(struct file *filp, char __user *buffer,
@@ -142,21 +139,21 @@ const struct file_operations i2400m_tx_stats_fops = {
 	.llseek =	default_llseek,
 };
 
-
 /* Write 1 to ask the device to go into suspend */
 static
 int debugfs_i2400m_suspend_set(void *data, u64 val)
 {
 	int result;
 	struct i2400m *i2400m = data;
+
 	result = i2400m_cmd_enter_powersave(i2400m);
 	if (result >= 0)
 		result = 0;
 	return result;
 }
 DEFINE_DEBUGFS_ATTRIBUTE(fops_i2400m_suspend,
-			NULL, debugfs_i2400m_suspend_set,
-			"%llu\n");
+			 NULL, debugfs_i2400m_suspend_set,
+			 "%llu\n");
 
 /*
  * Reset the device
@@ -170,7 +167,8 @@ int debugfs_i2400m_reset_set(void *data, u64 val)
 	int result;
 	struct i2400m *i2400m = data;
 	enum i2400m_reset_type rt = val;
-	switch(rt) {
+
+	switch (rt) {
 	case I2400M_RT_WARM:
 	case I2400M_RT_COLD:
 	case I2400M_RT_BUS:
@@ -184,8 +182,8 @@ int debugfs_i2400m_reset_set(void *data, u64 val)
 	return result;
 }
 DEFINE_DEBUGFS_ATTRIBUTE(fops_i2400m_reset,
-			NULL, debugfs_i2400m_reset_set,
-			"%llu\n");
+			 NULL, debugfs_i2400m_reset_set,
+			 "%llu\n");
 
 void i2400m_debugfs_add(struct i2400m *i2400m)
 {
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
