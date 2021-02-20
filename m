Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E29323263
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 21:49:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE09B6067C;
	Tue, 23 Feb 2021 20:49:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UXu9e_z6SeRs; Tue, 23 Feb 2021 20:49:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B74346066A;
	Tue, 23 Feb 2021 20:49:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 253081BF25F
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 148F36066A
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O9BJLOcWRegV for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 20:47:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BA7860666
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 20:47:36 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id BF897A55;
 Tue, 23 Feb 2021 15:47:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 23 Feb 2021 15:47:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=AyZmbpyc6ztpv
 N7tf2LuUpsQmKCN9tBi9k/tvxkXpFo=; b=lX1Fx1R4QYA3wll80nvLME4bk4A5J
 Zn0A+ovjszLJSTioC5h/ozVdgBMqZXycM/eQ6eJx4nx9G0RujpGGk6HfDWwbhYmb
 lFGFnQHqT3jV3kraWCV6lRDgePZhyGrQN6liYHRAAyE2daMdoFk8zcbyw9kAp0rw
 pvxZc/YTseRZj7+96vHGB2z5fR/yeAEvITGjDkEzuiFCWMaL0CgaiRllaUoEG3cA
 nY1WXWgRdFA5F64RXhDt3peKNJEe2kwLcRqAm1u/LRa/ZppKCQDQwysJWONvEQ7h
 ow25j1PinUpl7wNKoTJBKVBi1huKdFymKKPEfJNG0oZ9nSbNC95fWmd2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=AyZmbpyc6ztpvN7tf2LuUpsQmKCN9tBi9k/tvxkXpFo=; b=CFyykm43
 KHPrP42dilTyPQr+mdbLATQ8uBgsEBhB9eY5pJ5Lt7vUF3Pz6C6QaOEg2OdoaE3/
 qs+lxFmEbif6fWtSjCicfER4fzEsP/mgyUNmS3RbTUsE8r3QefqTLCUZNYeT/BQ+
 DKFpCoR+OmRCmUegNqWyWoBPuGTFERejUc96sAIxk1dEz969XyfdOUvRzATu6nyv
 6606KTUmZx9N8fvdXzul0jlsW6W8ILmUoMIE9yZJgynaSHvcgltcpQutdNaVbSa7
 olsy2qX33vSBPATn8oCk05zFBt1CAQr4hZD+IRmRmcOKfOrl1W98egUIYwSmP7HH
 JK8XM4Egux/dBg==
X-ME-Sender: <xms:52k1YLefk9KnbtAHyO3XMxOE5rLGy4jAxdRsEnRm_83EOr-nfsqM0A>
 <xme:52k1YKja-hztVgj6dRM3ydBoy2eXauezFr08jE-qd9gdB4apdhIYy3Ld0vUm2KDEi
 7b7KcyPSLwjtKcNVQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dunecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:52k1YLzYl2Dur3af9Z0VrRghj_AGBpN2mVXPlklvJ3RI9Dd9xKUvkg>
 <xmx:52k1YONO4PEhuEd_FeQmLVPdK1YcVNcIKtO0oHhQCGqikw2lRjeiiA>
 <xmx:52k1YEX_rSTcwB3vqKIXyBiC-XUWDchaCt6CkxK8lgp-KbES60psTg>
 <xmx:52k1YP0N4gIkMW912SegfiFkeqD92tX1VmV4tN7qvOwdd48fUhrC4w>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id EA5F124005A;
 Tue, 23 Feb 2021 15:47:34 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 10/13] staging: rtl8192e: rename bdRT2RTLongSlotTime to
 bd_rt2rt_long_slot_time in bss_ht struct
Date: Sat, 20 Feb 2021 15:54:14 +0000
Message-Id: <20210220155418.12282-11-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210220155418.12282-1-will+git@drnd.me>
References: <20210220155418.12282-1-will+git@drnd.me>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes a checkpatch CHECK issue.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 3 +--
 drivers/staging/rtl8192e/rtl819x_HT.h        | 2 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c    | 4 ++--
 drivers/staging/rtl8192e/rtllib_rx.c         | 4 ++--
 4 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 9078fadd65f9..8a3316e0bf5e 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -375,8 +375,7 @@ static void _rtl92e_update_beacon(void *data)

 	if (ieee->pHTInfo->bCurrentHTSupport)
 		HT_update_self_and_peer_setting(ieee, net);
-	ieee->pHTInfo->bCurrentRT2RTLongSlotTime =
-		 net->bssht.bdRT2RTLongSlotTime;
+	ieee->pHTInfo->bCurrentRT2RTLongSlotTime = net->bssht.bd_rt2rt_long_slot_time;
 	ieee->pHTInfo->RT2RT_HT_Mode = net->bssht.RT2RT_HT_Mode;
 	_rtl92e_update_cap(dev, net->capability);
 }
diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 6c5255af27fb..a24551af4a27 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -190,7 +190,7 @@ struct bss_ht {
 	enum ht_channel_width bd_bandwidth;

 	u8					bd_rt2rt_aggregation;
-	u8					bdRT2RTLongSlotTime;
+	u8					bd_rt2rt_long_slot_time;
 	u8					RT2RT_HT_Mode;
 	u8					bdHT1R;
 };
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index a3575272e4da..6ceeaf6eb8d1 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -698,7 +698,7 @@ void HTInitializeBssDesc(struct bss_ht *pBssHT)
 	pBssHT->bd_ht_spec_ver = HT_SPEC_VER_IEEE;

 	pBssHT->bd_rt2rt_aggregation = false;
-	pBssHT->bdRT2RTLongSlotTime = false;
+	pBssHT->bd_rt2rt_long_slot_time = false;
 	pBssHT->RT2RT_HT_Mode = (enum rt_ht_capability)0;
 }

@@ -733,7 +733,7 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 			pHTInfo->bCurrentRT2RTAggregation =
 				 pNetwork->bssht.bd_rt2rt_aggregation;
 			pHTInfo->bCurrentRT2RTLongSlotTime =
-				 pNetwork->bssht.bdRT2RTLongSlotTime;
+				 pNetwork->bssht.bd_rt2rt_long_slot_time;
 			pHTInfo->RT2RT_HT_Mode = pNetwork->bssht.RT2RT_HT_Mode;
 		} else {
 			pHTInfo->bCurrentRT2RTAggregation = false;
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 54f3bce46c0d..036eca477261 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1904,7 +1904,7 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,

 			if ((ht_realtek_agg_buf[4] == 1) &&
 			    (ht_realtek_agg_buf[5] & 0x02))
-				network->bssht.bdRT2RTLongSlotTime = true;
+				network->bssht.bd_rt2rt_long_slot_time = true;

 			if ((ht_realtek_agg_buf[4] == 1) &&
 			    (ht_realtek_agg_buf[5] & RT_HT_CAP_USE_92SE))
@@ -2467,7 +2467,7 @@ static inline void update_network(struct rtllib_device *ieee,
 	memcpy(dst->bssht.bd_ht_info_buf, src->bssht.bd_ht_info_buf,
 	       src->bssht.bd_ht_info_len);
 	dst->bssht.bd_ht_spec_ver = src->bssht.bd_ht_spec_ver;
-	dst->bssht.bdRT2RTLongSlotTime = src->bssht.bdRT2RTLongSlotTime;
+	dst->bssht.bd_rt2rt_long_slot_time = src->bssht.bd_rt2rt_long_slot_time;
 	dst->broadcom_cap_exist = src->broadcom_cap_exist;
 	dst->ralink_cap_exist = src->ralink_cap_exist;
 	dst->atheros_cap_exist = src->atheros_cap_exist;
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
