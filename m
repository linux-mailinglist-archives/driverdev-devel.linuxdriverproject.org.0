Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB8F25B46F
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 21:31:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A21F386961;
	Wed,  2 Sep 2020 19:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oLkoWBT0KB7I; Wed,  2 Sep 2020 19:31:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8211386221;
	Wed,  2 Sep 2020 19:31:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C25E21BF23F
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 19:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB09F23504
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 19:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CAYuwtQKh85G for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 19:31:17 +0000 (UTC)
X-Greylist: delayed 00:08:56 by SQLgrey-1.7.6
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
 [185.70.40.133])
 by silver.osuosl.org (Postfix) with ESMTPS id 7DCF923492
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 19:31:17 +0000 (UTC)
Date: Wed, 02 Sep 2020 19:22:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bryanbrattlof.com;
 s=protonmail2; t=1599074538;
 bh=lC9yM5F2xA3iUzmvU7i6jZrbqpUBJ2c8bvsh7D8BVD4=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=WBEFxwcK4zd35J4iPHhB7yMusADtlm9QyDdVaU80lDW/H1qLqwUka9GaxdyK6bmp7
 Kw5/H8ECdxdFxS8CzSoQYUYxA5zPX415EGQmgjhketD9HKETX/sfv818Bbf5XCsYgl
 Edg9wVm9hYP6xtc2GPdJENse+w2OAZNY6GwTXj4BWnufW9WvV7WBZNWhAxNkAss/JG
 ee2J1EPdvgyamUI9cuaJtR8fxYn9JpwXIjiczeKUE7JPO1FiuOadGfVe4kT47jbsbh
 AYDs7VO5mhzUzmDF+MOXwEYXa1VC2TAr2wSBQm5u2mSj3kJhjutdiADDDQN/aSTcOy
 t2q4Vkdy93BpQ==
To: Marcus Wolf <linux@wolf-entwicklungen.de>
From: Bryan Brattlof <hello@bryanbrattlof.com>
Subject: [PATCH] staging: pi433: break long lines
Message-ID: <87y2lsrnl8.fsf@bryanbrattlof.com>
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
Reply-To: Bryan Brattlof <hello@bryanbrattlof.com>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 trivial@kernel.org, linux-kernel@vger.kernel.org,
 Nishad Kamdar <nishadkamdar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


scripts/checkpatch.pl is warning about some lines exceeding 100
charecters. This will cleanup the warnings.

Signed-off-by: Bryan Brattlof <hello@bryanbrattlof.com>
---
 drivers/staging/pi433/pi433_if.h | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.h b/drivers/staging/pi433/pi433_if.h
index 16c5b7fba249..d5c1521192c1 100644
--- a/drivers/staging/pi433/pi433_if.h
+++ b/drivers/staging/pi433/pi433_if.h
@@ -117,9 +117,15 @@ struct pi433_rx_cfg {
 
 	/* packet format */
 	enum option_on_off	enable_sync;
-	enum option_on_off	enable_length_byte;	  /* should be used in combination with sync, only */
-	enum address_filtering	enable_address_filtering; /* operational with sync, only */
-	enum option_on_off	enable_crc;		  /* only operational, if sync on and fixed length or length byte is used */
+
+	/* should be used in combination with sync, only */
+	enum option_on_off	enable_length_byte;
+
+	/* operational with sync, only */
+	enum address_filtering	enable_address_filtering;
+
+	/* only operational, if sync on and fixed length or length byte is used */
+	enum option_on_off	enable_crc;
 
 	__u8			sync_length;
 	__u8			fixed_message_length;
@@ -130,12 +136,16 @@ struct pi433_rx_cfg {
 	__u8			broadcast_address;
 };
 
-#define PI433_IOC_MAGIC			'r'
+#define PI433_IOC_MAGIC	'r'
 
-#define PI433_IOC_RD_TX_CFG	_IOR(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
-#define PI433_IOC_WR_TX_CFG	_IOW(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
+#define PI433_IOC_RD_TX_CFG                                             \
+	_IOR(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
+#define PI433_IOC_WR_TX_CFG                                             \
+	_IOW(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
 
-#define PI433_IOC_RD_RX_CFG	_IOR(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR, char[sizeof(struct pi433_rx_cfg)])
-#define PI433_IOC_WR_RX_CFG	_IOW(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR, char[sizeof(struct pi433_rx_cfg)])
+#define PI433_IOC_RD_RX_CFG                                             \
+	_IOR(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR, char[sizeof(struct pi433_rx_cfg)])
+#define PI433_IOC_WR_RX_CFG                                             \
+	_IOW(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR, char[sizeof(struct pi433_rx_cfg)])
 
 #endif /* PI433_H */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
