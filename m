Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E665ACF9C
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 18:10:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F15D6855CC;
	Sun,  8 Sep 2019 16:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jb8-5O0NS0qT; Sun,  8 Sep 2019 16:10:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6FF485608;
	Sun,  8 Sep 2019 16:10:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 70E681BF868
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:10:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5090686DC6
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ppd1Q2LVf0AN for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 16:10:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1820B86E5C
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 16:10:23 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 2BFB5213; Sun,  8 Sep 2019 16:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567959019;
 bh=MO5HlXTxGJraUgrw2HCLRKEZomKPEt298Si8avVe83M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WltSgCMUrh74SD1XIiuOGAJxZAEgVHTxYVAgDgnXshGuvYuwoL6UR9JRVtrlbegpS
 Gz+mdmsZHq/D1qbMqNlXbafeCRd/0UiSKsXdUgkBMSyG6xw0Uo+DYcIDCy6OctkRiF
 SBWCMtOU4mSLyj0N07HqHTZiN5CySovA79YmhS7wBkenNaK+ZWRAbCuAel/lDk9Y6U
 LTXneIL3n19LaslCA/FF8f9XgHmsEQvESuudsBa+c0dVKiizIZs5L1poflM/RlGHf6
 8Czy60XCjvGIehFk/gp0EI7aDSLPofBeyDs7RUeHkRyMG+i+GdpTdOGpeZflyFdN4f
 BsH4v5976shYg==
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 3/3] staging: exfat: add millisecond support
Date: Sun,  8 Sep 2019 16:10:15 +0000
Message-Id: <20190908161015.26000-3-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908161015.26000-1-vvidic@valentin-vidic.from.hr>
References: <20190908161015.26000-1-vvidic@valentin-vidic.from.hr>
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

Use create_time_ms modify_time_ms fields to store the millisecond
part of the file timestamp with the precision of 10 ms.

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
 drivers/staging/exfat/exfat_core.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 8476eeedba83..e87119fa8c0a 100644
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
@@ -1188,21 +1198,33 @@ void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
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
+	if (tp->sec & 1) {
+		ms += 1000;
+	}
+
 	switch (mode) {
 	case TM_CREATE:
 		SET16_A(ep->create_time, t);
 		SET16_A(ep->create_date, d);
+		ep->create_time_ms = ms / 10;
 		break;
 	case TM_MODIFY:
 		SET16_A(ep->modify_time, t);
@@ -1214,20 +1236,28 @@ void fat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 void exfat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 			  u8 mode)
 {
+	u8 ms;
 	u16 t, d;
 	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
 
 	t = (tp->hour << 11) | (tp->min << 5) | (tp->sec >> 1);
 	d = (tp->year <<  9) | (tp->mon << 5) |  tp->day;
 
+	ms = tp->millisec;
+	if (tp->sec & 1) {
+		ms += 1000;
+	}
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
