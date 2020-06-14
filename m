Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD531F89E9
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jun 2020 19:31:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDB1C88FBF;
	Sun, 14 Jun 2020 17:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RRaCsHnx-YgK; Sun, 14 Jun 2020 17:31:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E609188FBB;
	Sun, 14 Jun 2020 17:31:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57ACB1BF5A2
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 17:31:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5435F86C1D
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 17:31:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F5zWnVL6PkCJ for <devel@linuxdriverproject.org>;
 Sun, 14 Jun 2020 17:31:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4978C86DC6
 for <devel@driverdev.osuosl.org>; Sun, 14 Jun 2020 17:31:50 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id y20so12558112wmi.2
 for <devel@driverdev.osuosl.org>; Sun, 14 Jun 2020 10:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WYGjon3wve4rdBC7tZxSycSKWB6VVUVYfrABigYDyso=;
 b=ceXLh1hNq3ViCFYJ+T7zQL/SsNnO/9ICXUOOubY17/Hf88GK8HotoTS0GB6pnhqnW/
 cqiR/Dg2i3FBvkd2uE0HvbUVCjQ+p3Hlly+W7bJO7ogQe/313h/3mBor+qX+zIUKkl8U
 UPLA7SySMOcjhDlLgLrz9FKCmv3EODJHpceKvQ+u11SsMsYah3JrxpYqNyqxHQqFw/m3
 pz643iEpVwXT0qUtc827OxlbtUAMqIxgPXu2nD7eXsInB7WvqKLY6LHwW6qxD3+bF9LH
 NHCWRo8zDiN5x17+88P7rnmjHfvuZCjrQPkCqzEdmXud6nzl3JoU8/5NXJFZDwTWrfJ+
 3FHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WYGjon3wve4rdBC7tZxSycSKWB6VVUVYfrABigYDyso=;
 b=hkJdMssPlP8vfxmk+qTWHJhtVWJHkahZ0KYxfNyHaoeMnDZeBydDbEfMaiewLK6xZm
 13sJkMMdG4XQl4zxNvHELynlZTvwii8k0OPaIH7VVud80H4oC0UqOhv5kpUOIz6JUHeB
 /AID4cvbqgZK455auWOfEMmLPYDeIICcL5N3uATksIEAvh1LESOhddmLL+5LL9Q+YKZE
 rE5tROlxVRokhOJUNyJJQeQyclM163GYESpgtV854SGG1LU2nfZllNZBw2YprJ7UVhcI
 VzW1ilsX+N2xmpUEof+bx06XzQeZQJCTlclmTktUZcc4yKraNtY17jtJZ9ybAWBdaxbi
 hAAw==
X-Gm-Message-State: AOAM530aa6KAlWFpuPyr8nzfiOtzRMcxr8112ofc5gPQmrbZvgNd+K+L
 QunRVt9fAdDhyUVElvpYCI4=
X-Google-Smtp-Source: ABdhPJzdr4mqllZWTj2LVsIrJYSOJVNkCLozpWvilcopkpAdfYiX1ubyrzkGhQy5cQ0awQ1e65aQgQ==
X-Received: by 2002:a1c:a906:: with SMTP id s6mr9533529wme.171.1592155908639; 
 Sun, 14 Jun 2020 10:31:48 -0700 (PDT)
Received: from localhost ([2001:818:dd30:9900:ea5e:f314:5497:ebdb])
 by smtp.gmail.com with ESMTPSA id a1sm19429654wmd.28.2020.06.14.10.31.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jun 2020 10:31:48 -0700 (PDT)
From: Ricardo Ferreira <rikajff@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH v2] Staging: rtl8712: Addressed checkpatch.pl issues related
 to macro parameter wrapping in parentheses.
Date: Sun, 14 Jun 2020 18:31:46 +0100
Message-Id: <20200614173146.28292-1-rikajff@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ricardo Ferreira <rikajff@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attempting to wet my feet in kernel patch submission by submitting a checkstyle
fix for the rtl8712 driver.

Signed-off-by: Ricardo Ferreira <rikajff@gmail.com>
---
 drivers/staging/rtl8712/basic_types.h   | 2 +-
 drivers/staging/rtl8712/osdep_intf.h    | 2 +-
 drivers/staging/rtl8712/rtl8712_efuse.h | 8 ++++----
 drivers/staging/rtl8712/rtl8712_recv.h  | 4 ++--
 drivers/staging/rtl8712/rtl871x_xmit.h  | 6 +++---
 drivers/staging/rtl8712/wifi.h          | 6 +++---
 6 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8712/basic_types.h b/drivers/staging/rtl8712/basic_types.h
index 4ad7f35b1644..3e6d4ff45a75 100644
--- a/drivers/staging/rtl8712/basic_types.h
+++ b/drivers/staging/rtl8712/basic_types.h
@@ -21,7 +21,7 @@
 
 #define SIZE_T __kernel_size_t
 #define sint signed int
-#define FIELD_OFFSET(s, field)	((addr_t)&((s *)(0))->field)
+#define FIELD_OFFSET(s, field)	((addr_t)&(((s) *)(0))->(field))
 
 /* Should we extend this to be host_addr_t and target_addr_t for case:
  *	host : x86_64
diff --git a/drivers/staging/rtl8712/osdep_intf.h b/drivers/staging/rtl8712/osdep_intf.h
index 2cc25db1a91d..058287fd0f85 100644
--- a/drivers/staging/rtl8712/osdep_intf.h
+++ b/drivers/staging/rtl8712/osdep_intf.h
@@ -17,7 +17,7 @@
 #include "osdep_service.h"
 #include "drv_types.h"
 
-#define RND4(x)	(((x >> 2) + (((x & 3) == 0) ?  0 : 1)) << 2)
+#define RND4(x)	((((x) >> 2) + ((((x) & 3) == 0) ?  0 : 1)) << 2)
 
 struct intf_priv {
 	u8 *intf_dev;
diff --git a/drivers/staging/rtl8712/rtl8712_efuse.h b/drivers/staging/rtl8712/rtl8712_efuse.h
index 4969d307e978..f22993d94508 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.h
+++ b/drivers/staging/rtl8712/rtl8712_efuse.h
@@ -13,10 +13,10 @@
 #define PGPKT_DATA_SIZE	8 /* PGPKG_MAX_WORDS*2; BYTES sizeof(u8)*8*/
 #define MAX_PGPKT_SIZE	9 /* 1 + PGPKT_DATA_SIZE; header + 2 * 4 words (BYTES)*/
 
-#define GET_EFUSE_OFFSET(header)	((header & 0xF0) >> 4)
-#define GET_EFUSE_WORD_EN(header)	(header & 0x0F)
-#define MAKE_EFUSE_HEADER(offset, word_en)	(((offset & 0x0F) << 4) | \
-						(word_en & 0x0F))
+#define GET_EFUSE_OFFSET(header)	(((header) & 0xF0) >> 4)
+#define GET_EFUSE_WORD_EN(header)	((header) & 0x0F)
+#define MAKE_EFUSE_HEADER(offset, word_en)	((((offset) & 0x0F) << 4) | \
+						((word_en) & 0x0F))
 /*--------------------------------------------------------------------------*/
 struct PGPKT_STRUCT {
 	u8 offset;
diff --git a/drivers/staging/rtl8712/rtl8712_recv.h b/drivers/staging/rtl8712/rtl8712_recv.h
index 3e385b2242d8..cdce24efaeda 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.h
+++ b/drivers/staging/rtl8712/rtl8712_recv.h
@@ -33,8 +33,8 @@
 #define RECVBUFF_ALIGN_SZ 512
 #define RSVD_ROOM_SZ (0)
 /*These definition is used for Rx packet reordering.*/
-#define SN_LESS(a, b)		(((a-b) & 0x800) != 0)
-#define SN_EQUAL(a, b)	(a == b)
+#define SN_LESS(a, b)		((((a)-(b)) & 0x800) != 0)
+#define SN_EQUAL(a, b)	((a) == (b))
 #define REORDER_WAIT_TIME	30 /* (ms)*/
 
 struct recv_stat {
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index c0c0c781fe17..23553360c6e4 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -41,7 +41,7 @@ do { \
 	pattrib_iv[0] = txpn._byte_.TSC0;\
 	pattrib_iv[1] = txpn._byte_.TSC1;\
 	pattrib_iv[2] = txpn._byte_.TSC2;\
-	pattrib_iv[3] = ((keyidx & 0x3) << 6);\
+	pattrib_iv[3] = (((keyidx) & 0x3) << 6);\
 	txpn.val = (txpn.val == 0xffffff) ? 0 : (txpn.val+1);\
 } while (0)
 
@@ -53,7 +53,7 @@ do { \
 	pattrib_iv[0] = txpn._byte_.TSC1;\
 	pattrib_iv[1] = (txpn._byte_.TSC1 | 0x20) & 0x7f;\
 	pattrib_iv[2] = txpn._byte_.TSC0;\
-	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3)<<6);\
+	pattrib_iv[3] = BIT(5) | (((keyidx) & 0x3)<<6);\
 	pattrib_iv[4] = txpn._byte_.TSC2;\
 	pattrib_iv[5] = txpn._byte_.TSC3;\
 	pattrib_iv[6] = txpn._byte_.TSC4;\
@@ -67,7 +67,7 @@ do { \
 	pattrib_iv[0] = txpn._byte_.TSC0;\
 	pattrib_iv[1] = txpn._byte_.TSC1;\
 	pattrib_iv[2] = 0;\
-	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3)<<6);\
+	pattrib_iv[3] = BIT(5) | (((keyidx) & 0x3)<<6);\
 	pattrib_iv[4] = txpn._byte_.TSC2;\
 	pattrib_iv[5] = txpn._byte_.TSC3;\
 	pattrib_iv[6] = txpn._byte_.TSC4;\
diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 91b65731fcaa..aca63104e479 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -245,7 +245,7 @@ static inline unsigned char get_tofr_ds(unsigned char *pframe)
 #define SetSeqNum(pbuf, num) ({ \
 	*(__le16 *)((addr_t)(pbuf) + 22) = \
 	cpu_to_le16((le16_to_cpu(*(__le16 *)((addr_t)(pbuf) + 22)) & \
-	0x000f) | (0xfff0 & (num << 4))); \
+	0x000f) | (0xfff0 & ((num) << 4))); \
 })
 
 #define SetDuration(pbuf, dur) ({ \
@@ -254,13 +254,13 @@ static inline unsigned char get_tofr_ds(unsigned char *pframe)
 })
 
 #define SetPriority(pbuf, tid) ({ \
-	*(__le16 *)(pbuf) |= cpu_to_le16(tid & 0xf); \
+	*(__le16 *)(pbuf) |= cpu_to_le16((tid) & 0xf); \
 })
 
 #define GetPriority(pbuf)	((le16_to_cpu(*(__le16 *)(pbuf))) & 0xf)
 
 #define SetAckpolicy(pbuf, ack) ({ \
-	*(__le16 *)(pbuf) |= cpu_to_le16((ack & 3) << 5); \
+	*(__le16 *)(pbuf) |= cpu_to_le16(((ack) & 3) << 5); \
 })
 
 #define GetAckpolicy(pbuf) (((le16_to_cpu(*(__le16 *)pbuf)) >> 5) & 0x3)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
