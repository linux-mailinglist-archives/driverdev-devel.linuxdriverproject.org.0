Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82BAAD032
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 19:35:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 171AA8733D;
	Sun,  8 Sep 2019 17:35:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gMsXjnYmVpDO; Sun,  8 Sep 2019 17:35:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 705C6855F7;
	Sun,  8 Sep 2019 17:35:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B50341BF407
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 17:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B275720451
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 17:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qE2mTQhHFAwn for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 17:35:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by silver.osuosl.org (Postfix) with ESMTPS id 322E22043A
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 17:35:51 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 7F20D213; Sun,  8 Sep 2019 17:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567964146;
 bh=XroL0aeRw1GulK+zsCktbOwBMfaNEGXyCrOVr81n3Zs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UrkkEd0M3eFJNqdMU7revVr1/Nlkteb3l48MdZ/V76mruhDSFwJMivr+rDz9fMGyS
 K7g6KiwjCCazk9UhjEDq2I1gOlCZ9DpyYyWqkXIArQZaNrIa38W990nn9WOsZsNp52
 zEokwHupJwz2NSZeN5TyMwRlcMn5Or1mqCpMKHB1T+RIiTxMWZdOtTKh/Jf8mPE0Yf
 ENnVDwJCANHWVczoCvgxgEmXw93/0mMXuequaMXdMEYcAF5ZhW62mEu0/XaafpZQe1
 6XJ4CMNNizMrOoWaHfMVG7JV7sSWJMAjY9VamjPQ/zY3f+YJF+qjjXiEyXt87Pb94l
 8HCQ9aDNGyB6Q==
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 4/4] staging: exfat: add millisecond support
Date: Sun,  8 Sep 2019 17:35:39 +0000
Message-Id: <20190908173539.26963-4-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
References: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
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
Cc: devel@driverdev.osuosl.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use create_time_ms and modify_time_ms fields to store the millisecond
part of the file timestamp with the precision of 10 ms.

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
 drivers/staging/exfat/exfat_core.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index d21f68d786b8..d6e33a485d5f 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1139,6 +1139,7 @@ void exfat_set_entry_size(struct dentry_t *p_entry, u64 size)
 void fat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 			u8 mode)
 {
+	u8 ms = 0;
 	u16 t = 0x00, d = 0x21;
 	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
 
@@ -1146,6 +1147,7 @@ void fat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 	case TM_CREATE:
 		t = GET16_A(ep->create_time);
 		d = GET16_A(ep->create_date);
+		ms = ep->create_time_ms * 10;
 		break;
 	case TM_MODIFY:
 		t = GET16_A(ep->modify_time);
@@ -1159,11 +1161,17 @@ void fat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 	tp->day  = (d & 0x001F);
 	tp->mon  = (d >> 5) & 0x000F;
 	tp->year = (d >> 9);
+
+	if (ms >= 1000) {
+		ms -= 1000;
+		tp->sec++;
+	}
 }
 
 void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 			  u8 mode)
 {
+	u8 ms = 0;
 	u16 t = 0x00, d = 0x21;
 	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
 
@@ -1171,10 +1179,12 @@ void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 	case TM_CREATE:
 		t = GET16_A(ep->create_time);
 		d = GET16_A(ep->create_date);
+		ms = ep->create_time_ms * 10;
 		break;
 	case TM_MODIFY:
 		t = GET16_A(ep->modify_time);
 		d = GET16_A(ep->modify_date);
+		ms = ep->modify_time_ms * 10;
 		break;
 	case TM_ACCESS:
 		t = GET16_A(ep->access_time);
@@ -1188,21 +1198,32 @@ void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 	tp->day  = (d & 0x001F);
 	tp->mon  = (d >> 5) & 0x000F;
 	tp->year = (d >> 9);
+
+	if (ms >= 1000) {
+		ms -= 1000;
+		tp->sec++;
+	}
 }
 
 void fat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 			u8 mode)
 {
+	u8 ms;
 	u16 t, d;
 	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
 
 	t = (tp->hour << 11) | (tp->min << 5) | (tp->sec >> 1);
 	d = (tp->year <<  9) | (tp->mon << 5) |  tp->day;
 
+	ms = tp->millisec;
+	if (tp->sec & 1)
+		ms += 1000;
+
 	switch (mode) {
 	case TM_CREATE:
 		SET16_A(ep->create_time, t);
 		SET16_A(ep->create_date, d);
+		ep->create_time_ms = ms / 10;
 		break;
 	case TM_MODIFY:
 		SET16_A(ep->modify_time, t);
@@ -1214,20 +1235,27 @@ void fat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 void exfat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 			  u8 mode)
 {
+	u8 ms;
 	u16 t, d;
 	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
 
 	t = (tp->hour << 11) | (tp->min << 5) | (tp->sec >> 1);
 	d = (tp->year <<  9) | (tp->mon << 5) |  tp->day;
 
+	ms = tp->millisec;
+	if (tp->sec & 1)
+		ms += 1000;
+
 	switch (mode) {
 	case TM_CREATE:
 		SET16_A(ep->create_time, t);
 		SET16_A(ep->create_date, d);
+		ep->create_time_ms = ms / 10;
 		break;
 	case TM_MODIFY:
 		SET16_A(ep->modify_time, t);
 		SET16_A(ep->modify_date, d);
+		ep->modify_time_ms = ms / 10;
 		break;
 	case TM_ACCESS:
 		SET16_A(ep->access_time, t);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
