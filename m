Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5D630F7C8
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 17:27:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6490B87224;
	Thu,  4 Feb 2021 16:27:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P-YdwwszamuD; Thu,  4 Feb 2021 16:27:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 86DB687219;
	Thu,  4 Feb 2021 16:27:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A53651BF410
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 16:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9F1CC87211
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 16:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v5jwotIhmNUR for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 16:27:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 23E038720F
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 16:27:36 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0E75564F42;
 Thu,  4 Feb 2021 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612456055;
 bh=HBfKOV5RuyAgb5pTWas7BF7KjE/lHPDguTOnk70YnVY=;
 h=From:To:Cc:Subject:Date:From;
 b=L6HVI76SKfA6rUAHHdliYYmHKGgOnYsB3U+ov725YoRCXoJ5/7McpUummzwSBHTFx
 voruiXeWZI7U6RGjngkLdRgITl9HafC0KjwdrsdGWT8ccnBeg6h8vZWjXoKMPKTXPT
 ghR1FseJRVOFv6vxZmapc8EdJK4EaGKzId+YgJIBT4EU75HszSH6vopVTFxHxY/pAv
 d3JYw+b/bHh1EkHGMFL/D5iuzSETyVU31w7sflWrIF8GOkQxFlaFncKwKwUgs2Gb3S
 hcZQ+QKCRikBbMtM9rWLPPI8MdvDVtuA9jRUHBhRg59NgyyHxO+krvwg2US0RHZ8AV
 jVUl+xJTyLZqQ==
From: Arnd Bergmann <arnd@kernel.org>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt665x: fix alignment constraints
Date: Thu,  4 Feb 2021 17:27:17 +0100
Message-Id: <20210204162731.3132069-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Payal Kshirsagar <payalskshirsagar1234@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

multiple structures contains a ieee80211_rts structure, which is required to
have at least two byte alignment, but are annotated with a __packed attribute
to force single-byte alignment:

staging/vt6656/rxtx.h:98:1: warning: alignment 1 of 'struct vnt_rts_g' is less than 2 [-Wpacked-not-aligned]
staging/vt6656/rxtx.h:106:1: warning: alignment 1 of 'struct vnt_rts_ab' is less than 2 [-Wpacked-not-aligned]
staging/vt6656/rxtx.h:116:1: warning: alignment 1 of 'struct vnt_cts' is less than 2 [-Wpacked-not-aligned]

I see no reason why the structure itself would be misaligned, and all members
have at least two-byte alignment within the structure, so use the same
constraint on the sturcture itself.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/vt6655/rxtx.h | 8 ++++----
 drivers/staging/vt6656/rxtx.h | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.h b/drivers/staging/vt6655/rxtx.h
index 464dd89078b2..e7061d383306 100644
--- a/drivers/staging/vt6655/rxtx.h
+++ b/drivers/staging/vt6655/rxtx.h
@@ -111,7 +111,7 @@ struct vnt_rts_g {
 	__le16 duration_bb;
 	u16 reserved;
 	struct ieee80211_rts data;
-} __packed;
+} __packed __aligned(2);
 
 struct vnt_rts_g_fb {
 	struct vnt_phy_field b;
@@ -125,14 +125,14 @@ struct vnt_rts_g_fb {
 	__le16 rts_duration_ba_f1;
 	__le16 rts_duration_aa_f1;
 	struct ieee80211_rts data;
-} __packed;
+} __packed __aligned(2);
 
 struct vnt_rts_ab {
 	struct vnt_phy_field ab;
 	__le16 duration;
 	u16 reserved;
 	struct ieee80211_rts data;
-} __packed;
+} __packed __aligned(2);
 
 struct vnt_rts_a_fb {
 	struct vnt_phy_field a;
@@ -141,7 +141,7 @@ struct vnt_rts_a_fb {
 	__le16 rts_duration_f0;
 	__le16 rts_duration_f1;
 	struct ieee80211_rts data;
-} __packed;
+} __packed __aligned(2);
 
 /* CTS buffer header */
 struct vnt_cts {
diff --git a/drivers/staging/vt6656/rxtx.h b/drivers/staging/vt6656/rxtx.h
index 6ca2ca32d036..f23440799443 100644
--- a/drivers/staging/vt6656/rxtx.h
+++ b/drivers/staging/vt6656/rxtx.h
@@ -95,7 +95,7 @@ struct vnt_rts_g {
 	u16 wReserved;
 	struct ieee80211_rts data;
 	struct vnt_tx_datahead_g data_head;
-} __packed;
+} __packed __aligned(2);
 
 struct vnt_rts_ab {
 	struct vnt_phy_field ab;
@@ -103,7 +103,7 @@ struct vnt_rts_ab {
 	u16 wReserved;
 	struct ieee80211_rts data;
 	struct vnt_tx_datahead_ab data_head;
-} __packed;
+} __packed __aligned(2);
 
 /* CTS buffer header */
 struct vnt_cts {
@@ -113,7 +113,7 @@ struct vnt_cts {
 	struct ieee80211_cts data;
 	u16 reserved2;
 	struct vnt_tx_datahead_g data_head;
-} __packed;
+} __packed __aligned(2);
 
 union vnt_tx_data_head {
 	/* rts g */
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
