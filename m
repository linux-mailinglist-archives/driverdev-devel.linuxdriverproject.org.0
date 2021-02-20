Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87101323265
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 21:49:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4162F4302E;
	Tue, 23 Feb 2021 20:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NDPVQXMLGsjm; Tue, 23 Feb 2021 20:49:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A3BA43026;
	Tue, 23 Feb 2021 20:49:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DF301BF25F
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BB606066A
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qTZbb6PQaRH8 for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 20:47:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 889CC60666
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 20:47:37 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 0B60BA93;
 Tue, 23 Feb 2021 15:47:36 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 23 Feb 2021 15:47:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=0AV7DOJs/BB2G
 2+ZYpebkDXv9Eoiz/bZoB3mZuyHh3Q=; b=t0DhBwW2VU3qVCdrUcIw7ymuslIX5
 DYQRnMHgsNWD9GTMvNt+7ctn0dJaGBTckAvPKmn24kw7C3Fk4cf5VJpmx3bT7tFF
 pocHwz3bYWhtt2SXeenc+u2Zio9f/BnXQEA6pJP+Xfjpiy+TK+36QYnoD/gZT9ty
 1w47Ffhkn77CmM1XoDHis7daBPJjTjVAK+6Kr1oOjXaMXa16CRZbrWMZk7CEaQaW
 RmnkHOVzfu1EaZb0SuF1JcKSoqyfGM4D7iGZ+ZAF/LK8jKi6np2YBWKpP0P5f27v
 H9Zb4ULwpaCm/YQqXNH7nkXNMeyuJdWyoBOhjIXVTz0yLjDNiBVeTOQYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=0AV7DOJs/BB2G2+ZYpebkDXv9Eoiz/bZoB3mZuyHh3Q=; b=ZhAuVnPb
 jcB6u7UzKjLsDfKDifXJsC+NrUhy8D5habR41GY67CZqoan+ITrH1t6Ndtaj6BA3
 hgcNWxbKRsXewLsVckTpdIj8AMBjGEovNDXf5HzZCZ9aT5PGlJQAXZBAItAF30+T
 LfJ7n5VnwzgIcax909s7ZG/OV4r7olvfy864Z3FAGq/KuNyqbbivYduU1/+J4kkt
 R0PtfNwLVLDxK8rVtfBSR/v5+uewJZ8pATuvpg+iySrUPR9fPG8Es3yLcVxTAvlJ
 Z9h+78UtzNu3Fz1gozvAFU5bPYPxhzQrSUWIKE3+EfzcEA11XVI2iGyyIegxd/iL
 2dXFUoOsIruz+w==
X-ME-Sender: <xms:6Gk1YEbbIwFd0yvXK3D1JEW4lEVkiUQt0SL_Bgy_G7TG4Q7j8H5dOg>
 <xme:6Gk1YM8cEXc5Jh8M9DCyot8Gh5JKqTuQhlfvkrOC8o7zjycDLz8Fdr1KesqJsTQCN
 Meh8ZhjyIQELIQZEQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:6Gk1YFasrrE42W4T-HxPbM7VbgtQHloNJPgNMFgpWcf6FWGhT9VNSA>
 <xmx:6Gk1YAN5MVHzFINVGaIs0z8N8OrbIacUi2Syex3V8xo_m7npuQYyEg>
 <xmx:6Gk1YBCY2n8DtTUYoE9jw9KJjSYRDnzFP8ShjuLw7V3v60JP6O1xYQ>
 <xmx:6Gk1YMU9SNqSGiozQQr__fgkS8lHiwrmedYtUsOa3hDLBsLvA264Aw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 340A424005E;
 Tue, 23 Feb 2021 15:47:36 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 12/13] staging: rtl8192e: rename bdHT1R to bd_ht_1r in bss_ht
 struct
Date: Sat, 20 Feb 2021 15:54:16 +0000
Message-Id: <20210220155418.12282-13-will+git@drnd.me>
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
 drivers/staging/rtl8192e/rtl819x_HT.h | 2 +-
 drivers/staging/rtl8192e/rtllib_rx.c  | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 0b4ff153fdb6..33a58c87f4c1 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -192,7 +192,7 @@ struct bss_ht {
 	u8					bd_rt2rt_aggregation;
 	u8					bd_rt2rt_long_slot_time;
 	u8					rt2rt_ht_mode;
-	u8					bdHT1R;
+	u8					bd_ht_1r;
 };

 extern u8 MCS_FILTER_ALL[16];
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index af93eee57038..b8ab34250e6a 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1860,10 +1860,10 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 		}
 		if (*tmp_htcap_len != 0) {
 			network->bssht.bd_support_ht = true;
-			network->bssht.bdHT1R = ((((struct ht_capab_ele *)(network->bssht.bd_ht_cap_buf))->MCS[1]) == 0);
+			network->bssht.bd_ht_1r = ((((struct ht_capab_ele *)(network->bssht.bd_ht_cap_buf))->MCS[1]) == 0);
 		} else {
 			network->bssht.bd_support_ht = false;
-			network->bssht.bdHT1R = false;
+			network->bssht.bd_ht_1r = false;
 		}
 	}

@@ -2028,7 +2028,7 @@ static void rtllib_parse_mfie_ht_cap(struct rtllib_info_element *info_element,
 		memcpy(ht->bd_ht_cap_buf, info_element->data, ht->bd_ht_cap_len);

 		ht->bd_support_ht = true;
-		ht->bdHT1R = ((((struct ht_capab_ele *)
+		ht->bd_ht_1r = ((((struct ht_capab_ele *)
 				ht->bd_ht_cap_buf))->MCS[1]) == 0;

 		ht->bd_bandwidth = (enum ht_channel_width)
@@ -2036,7 +2036,7 @@ static void rtllib_parse_mfie_ht_cap(struct rtllib_info_element *info_element,
 					     (ht->bd_ht_cap_buf))->ChlWidth);
 	} else {
 		ht->bd_support_ht = false;
-		ht->bdHT1R = false;
+		ht->bd_ht_1r = false;
 		ht->bd_bandwidth = HT_CHANNEL_WIDTH_20;
 	}
 }
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
