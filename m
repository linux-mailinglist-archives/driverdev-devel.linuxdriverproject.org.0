Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F013244F4
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 21:10:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CE5043170;
	Wed, 24 Feb 2021 20:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jz8z6-FazrAc; Wed, 24 Feb 2021 20:10:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B69BE43161;
	Wed, 24 Feb 2021 20:10:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F06381BF83A
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EC7A74ECFC
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="bXhDJJXL";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="I8rKcqWd"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rtISrPwA1Gag for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 20:07:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 539F24ECBD
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 20:07:52 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id B9D4AA2F;
 Wed, 24 Feb 2021 15:07:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 24 Feb 2021 15:07:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Er3Hmi5TJeUs0
 D80aahpd5IOahIX1qazBhjPJ3/Qn6o=; b=bXhDJJXLmVrKbVXJUIMqYbuYRxuuc
 /kAgCPhuvVNAKqzfCFQDnTFQValMd18xCrHbVddeFp2J8CSJlRUmX+m5mtEP1pHA
 TpdTRwCH7JYFPBoE9fLCoFK+CJMLOiLwVtZ7JVTE37SwPyY5FAwK+RRgAYrjzjdi
 UG25V8pdrUfXmRZgOnwYC0N579webgDPl2sTmN10+REjyGnkG+v0cHMRnF0zDTr1
 F/hQ4AnibNAhj3/Ja48De9hze5mNE7g4ZnFbpcF3Rn5ixYUJZY8b/QSNxOACwi6o
 ikoqZxAhsPFonEB/YDQ3pbRQJLJ9fKAMdIucboRded7CQIULnBdZasHYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Er3Hmi5TJeUs0D80aahpd5IOahIX1qazBhjPJ3/Qn6o=; b=I8rKcqWd
 fkzvYY8sdUThvA8A2aA5CtxFSc0nYiNrnfyP1gJamHGlJ7W/LQyqrzPy76GFZcKk
 s+aNfIgmXQmYZxY9QwRyzt1w7944+cbMQ53l/RQru2Xu0YUPx+ihwgO7GOMA+aUU
 Rer/WmrzBhHyLdJ7f6EQDUfnhjhB6U/0mVU+yB9GZn6r8kWz3W6zoLNnx4ROZQfC
 tvjIizDArfZkEH3ulBUtGiGMxW5OCf9EmGfNnG9EnMY2TFm40O13FTt76CazxUZW
 Y+h0alzQdw8FxA2zqjRlb2vcyoMruYpPbIIWG74Lh6cnmuJILP+ZcJHHc4W2NVwO
 wezDozjoW/57mA==
X-ME-Sender: <xms:F7I2YNytT8WwyDcPcBn7tieITjyYvpNNO1KpcLewXnWqhdGcNtrKuw>
 <xme:F7I2YK2KNJO-AxhA1SEItmu32mSen34PDDN4hEqeQ_ld5zsvmmbTVHHj1ObaXX4qk
 YU3wqLBl7-I7DFcLg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 einecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:F7I2YNznIU6pMAGfdHFuxdYyKk9WL4Fe4Gfgkda4d1xp32TYGotOCQ>
 <xmx:F7I2YBE1RIlA3FdMPBBD7dbc0_IQGdXim67fp3n-DPd3YfnMlnbo6A>
 <xmx:F7I2YAY-sbWISPpkt5yFdjrCphJbvHELP6D6mNj4YKdIOMeyaUuxFg>
 <xmx:F7I2YAskeWs68IiwyY_94rvjDkKNWgEUGe8B0r4wrqWWLhyeRgDhtw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id E1414108005F;
 Wed, 24 Feb 2021 15:07:50 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 12/13] staging: rtl8192e: rename bdHT1R to bd_ht_1r in
 bss_ht struct
Date: Sat, 20 Feb 2021 17:29:08 +0000
Message-Id: <20210220172909.15812-13-will+git@drnd.me>
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

Rename bdHT1R to bd_ht_1r to silence a checkpatch warning about
CamelCase.

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
