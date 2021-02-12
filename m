Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D7631A6F2
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 22:36:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7EE4D876BB;
	Fri, 12 Feb 2021 21:36:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P2QghJylsPEk; Fri, 12 Feb 2021 21:36:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFFCD876A3;
	Fri, 12 Feb 2021 21:36:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0ACCC1BF370
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 21:36:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 05B4B870A1
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 21:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 10QhkiRfCj2e for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 21:36:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1C0F88708C
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 21:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id AF7F450E75;
 Fri, 12 Feb 2021 22:36:41 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9VcQA0ueJNLd; Fri, 12 Feb 2021 22:36:40 +0100 (CET)
From: Ayush <ayush@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1613165800; bh=3aQ6TtN32LfgMPe3fUDUM5GcA/iKbEuVmOqU5uWcg/0=;
 h=From:To:Cc:Subject:Date;
 b=IZBvu2cGiiBKXaCC2QDqV30DiPfcyVYdOlY9apDdUuWFi7SjzCAdZVI0lNZBFfg+0
 Lsfpv3Bwn5/DVj7mrhe7Kytuq6ciBuRO7ybHu6ZmX5oClY7t3PtSmxeREBUSh6aHej
 lnXjZrzPQXvlxHXuN8xv4lAnYb2dzf2Y6fb3Z2EMjIHJITuxfKYmzrDWjvCppRqseK
 6qN7zOK4pvkrCUmkD0kpomylGWHILHNYj2Vf++n0744KTBF4nWO3lw33JrTvl1NLQA
 fITcVMhPQFGP3lDSERKtnY/jf4pDRYpdrAxK8HJctDKJYq9OOHz2qtxNFuBhE2yOlg
 fgnwPJsnP/2WQ==
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wimax: i2400m: fix some incorrect type warnings
Date: Sat, 13 Feb 2021 03:06:28 +0530
Message-Id: <20210212213628.801642-1-ayush@disroot.org>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, kuba@kernel.org,
 johannes@sipsolutions.net, lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix some "incorrect type in assignment" warnings reported
by sparse in tx.c

sparse warnings:
wimax/i2400m/tx.c:788:35: warning: cast to restricted __le16
wimax/i2400m/tx.c:788:33: warning: incorrect type in assignment
(different base types)
wimax/i2400m/tx.c:788:33:    expected restricted __le16 [usertype] num_pls
wimax/i2400m/tx.c:788:33:    got unsigned short [usertype]
wimax/i2400m/tx.c:896:32: warning: cast to restricted __le32
wimax/i2400m/tx.c:896:30: warning: incorrect type in assignment
(different base types)
wimax/i2400m/tx.c:896:30:    expected restricted __le32 [usertype] barker
wimax/i2400m/tx.c:896:30:    got unsigned int [usertype]
wimax/i2400m/tx.c:897:34: warning: cast to restricted __le32
wimax/i2400m/tx.c:897:32: warning: incorrect type in assignment
(different base types)
wimax/i2400m/tx.c:897:32:    expected restricted __le32 [usertype] sequence
wimax/i2400m/tx.c:897:32:    got unsigned int [usertype]
wimax/i2400m/tx.c:899:15: warning: cast to restricted __le32
wimax/i2400m/tx.c:899:15: warning: cast from restricted __le16

Signed-off-by: Ayush <ayush@disroot.org>
---
compile tested on linux-next (tag: next-20210212).

 drivers/staging/wimax/i2400m/tx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/tx.c b/drivers/staging/wimax/i2400m/tx.c
index e9436212fe54..8c01f42876ea 100644
--- a/drivers/staging/wimax/i2400m/tx.c
+++ b/drivers/staging/wimax/i2400m/tx.c
@@ -785,7 +785,7 @@ int i2400m_tx(struct i2400m *i2400m, const void *buf, size_t buf_len,
 		d_printf(3, dev, "pld 0x%08x (type 0x%1x len 0x%04zx\n",
 			 le32_to_cpu(tx_msg->pld[num_pls].val),
 			 pl_type, buf_len);
-		tx_msg->num_pls = le16_to_cpu(num_pls+1);
+		tx_msg->num_pls = cpu_to_le16(num_pls + 1);
 		tx_msg->size += padded_len;
 		d_printf(2, dev, "TX: appended %zu b (up to %u b) pl #%u\n",
 			padded_len, tx_msg->size, num_pls+1);
@@ -893,10 +893,10 @@ struct i2400m_msg_hdr *i2400m_tx_msg_get(struct i2400m *i2400m,
 		 current->pid, (void *) tx_msg - i2400m->tx_buf,
 		 (size_t) tx_msg->offset, (size_t) tx_msg->size,
 		 (size_t) tx_msg_moved->size);
-	tx_msg_moved->barker = le32_to_cpu(I2400M_H2D_PREVIEW_BARKER);
-	tx_msg_moved->sequence = le32_to_cpu(i2400m->tx_sequence++);
+	tx_msg_moved->barker = cpu_to_le32(I2400M_H2D_PREVIEW_BARKER);
+	tx_msg_moved->sequence = cpu_to_le32(i2400m->tx_sequence++);
 
-	pls = le32_to_cpu(tx_msg_moved->num_pls);
+	pls = le16_to_cpu(tx_msg_moved->num_pls);
 	i2400m->tx_pl_num += pls;		/* Update stats */
 	if (pls > i2400m->tx_pl_max)
 		i2400m->tx_pl_max = pls;
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
