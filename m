Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3663244F2
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 21:09:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CF3E6F6AE;
	Wed, 24 Feb 2021 20:09:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gfvqjdn1y2pX; Wed, 24 Feb 2021 20:09:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21FDC6F6BC;
	Wed, 24 Feb 2021 20:09:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A83E1BF83A
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 96D9E83EE3
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="TKWk7TAW";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="ePlT2H3V"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AipuZTixSTvL for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 20:07:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 057D083EE6
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 20:07:50 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 76397A0D;
 Wed, 24 Feb 2021 15:07:50 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 24 Feb 2021 15:07:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=zEbByos+4K7lp
 SuTKHy2/eS/RNdVeDiX+n0VMmzagjg=; b=TKWk7TAWeOsEHI1nGrRkJMFBOcKdX
 SRY3XWDfF72vhrOXCNtHl3LaHB3q3PK+Ud9a7O8vYW6CnKM5MvptKG4rtF2DGMnx
 Pk3DNeiv1KoBRPG203Jg8nEmWdK90KJ47Q2YZMJsq4h97+N1oiA/drbCgolfynaT
 vDkdoF4o7jawybhObbqIuxUh8s8EQnUwcAQFEsFxU3HMgsgkq+F+OkU5Zh/0IQyv
 X5U47gw8huWAYmGk4HJxeVXFMzPIVgwnSQyi01w7OMmq0WugFIoMrySyeRyfoLVa
 GkRrkwm7wxJt0+KRN/be+6Kmi9oOFlg05KEdiWV7BTF8OPkqQIbzK6bIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=zEbByos+4K7lpSuTKHy2/eS/RNdVeDiX+n0VMmzagjg=; b=ePlT2H3V
 jdfB25OYiTPu+APjgUR87NDWdptJ+IgzwBt8njVmUeMO2PvZ8kjkojXytw8rxlnR
 qYy9XEK+N78VK7ocpzaykwuGKcEdCNIMhvAjoreUCXpcYEWrbKOhSNen+vFKRSvi
 7lZAaPesSjTepRozbabgJavdBfCk9+MPMLxheGau0kmCzDt+nhxrCx7Fd8E2UCWp
 BrK5bqmli5pxxPXPKWlJQhwMxPCJ/B0xfnyKrqSAupFGae/kOlTBlFR43gYEfdk6
 II1YRlkKCysoOiJNMw9YtqGMrYeWyDSVxjcNp4oEIT8WF5UvxCApf24tgoeHrlSC
 aTQZjF+KE5jgeg==
X-ME-Sender: <xms:FrI2YE-BDWifsBvM5Odq_5pDT2MD9UM0VM4Y-kyfhXQE9S-6Ny-tSg>
 <xme:FrI2YDnv7UEkRrOiR7TQA1HmzriWkoZyYmGEvaTyijHdioAViYKgdStksxgFQQIgR
 iiN5GpL_AG6LwE7xA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 einecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:FrI2YCWk2nB2zhe5gNif92fI4DrtXR8Cs-jcCY6UZt0bGI6uBr3W1g>
 <xmx:FrI2YAFMTmplI751hfVWbSoazPoaJ9A9izZN8ssJku_OCzFu6aZF3g>
 <xmx:FrI2YGf_oL8oMRMrBWwwd_jyqY_XZEedY44VgQ2cHbZ7Gd4zpTaQeA>
 <xmx:FrI2YLTdMx3Bnh21BcZRIvlWNarmIWQuKWU8PrySZoVQspQfQFmlyg>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id A268B1080057;
 Wed, 24 Feb 2021 15:07:49 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 10/13] staging: rtl8192e: rename bdRT2RTLongSlotTime to
 bd_rt2rt_long_slot_time in bss_ht struct
Date: Sat, 20 Feb 2021 17:29:06 +0000
Message-Id: <20210220172909.15812-11-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210220172909.15812-1-will+git@drnd.me>
References: <20210220172909.15812-1-will+git@drnd.me>
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

Rename bdRT2RTLongSlotTime to bd_rt2rt_long_slot_time to silence a
checkpatch warning about CamelCase.

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
