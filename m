Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C673244E9
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 21:09:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AD2683EFC;
	Wed, 24 Feb 2021 20:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ItkAnnUseh9V; Wed, 24 Feb 2021 20:09:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EE2283EE2;
	Wed, 24 Feb 2021 20:08:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2332C1BF9B6
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1EAA74ECBD
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="DGsSVA2S";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="sO53xAH+"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yFhXTBxNEq2s for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 20:07:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8807E4ED00
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 20:07:48 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id F0A51A21;
 Wed, 24 Feb 2021 15:07:47 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 24 Feb 2021 15:07:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=rNTMQywQ8eBsU
 kIt/923G49A0zxSdvCTHQAiyZPzbas=; b=DGsSVA2SNt4yetEvI44HoDh5Yy1Hn
 +4Qs0ty8N126PQdwoGgvSkuMfwR/WOgZzS6n3PCw8XL7jh6iRPgKTR30SuMBBM3j
 RIxntvmL7GYz6J3bHUktwoQpzb5FaY/+6AjbPyoNeU7gnZQ7DrOffoq1hJrtcDRh
 EbZFKLDqxnhNPSwivnSpvUECF5fb2OJpiKaVWLnmmB+lZ4TjRYGof3dgQ97zVaCn
 iU7wa6vNFzkKW7D+mcS4RqMfRsiH80lyisnLNqv2UuXQwviAfx09jET1opS/hghb
 FESfjfzGhTBDtVLNRGBzdPRruFdIcwLb2a5Jhdt0oLH0i1mJQR7+6NqeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=rNTMQywQ8eBsUkIt/923G49A0zxSdvCTHQAiyZPzbas=; b=sO53xAH+
 UY3dpAnHLXX1EWLzX+Vb49J8DCqVGgwdZr0cHqa9uEw7tJzWs4Ai3bx6YfvLTrPw
 +g3vBRhDfi/kuT6vQAU1nzIIiL0lSwqezX7tQyTryhE+LNqzOItx6kEHzFACzncP
 EiBITI/3Jw4wsQhstWtEtnVlc3fgRruDGEWu5YRDcZzfuxSd8+A24ksfHrCJG2qT
 ngJyteP8ZMYzEF31oWe1vl7GnSI0Ux+0rxlRqqiGgpkMfaLTPLmdBVu3Epw9K14e
 WFww9DjIVDlCyW1kGghK7pGzDgZ88huV7u+O0j+1FsFIeyPxsQIHpAoiHjlReKKk
 nOTnf94kb9exeA==
X-ME-Sender: <xms:E7I2YMKgHvUD-cYNDQMWq4dDxxjKRWpTH9ip5E_IzEhC6aBfEoCmXw>
 <xme:E7I2YDA6srt0dnrepI-kSLv8HCWTf6-thV_cndSDjYrqtgJUTwAghh_KPkjeDMcn-
 j5DACYwhnjYY3AIXw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:E7I2YJpn-1l_UXY7fxZFehJpw6j5GmFee3A99j1-Z6RWJvP1fD0yAw>
 <xmx:E7I2YGiC6qozqadBHjgdVwkfIxZLSmGCanckTBqQoMQbi1lcFNJ97w>
 <xmx:E7I2YOC2EUKWBO_-7V8rs3b899hbFqkCxUBVlK5-sxLpdDefcjvgKg>
 <xmx:E7I2YMAd-hfXTBKlg14g2Ihcw-I2LbDQa-JyHkhRa_S1_Q9wOwnxzw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1ED8D1080054;
 Wed, 24 Feb 2021 15:07:47 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 06/13] staging: rtl8192e: rename bdHTInfoLen to
 bd_ht_info_len in bss_ht struct
Date: Sat, 20 Feb 2021 17:29:02 +0000
Message-Id: <20210220172909.15812-7-will+git@drnd.me>
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

Rename bdHTInfoLen to bd_ht_info_len to silence a checkpatch warning
about CamelCase.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_HT.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 10 +++++-----
 drivers/staging/rtl8192e/rtllib_rx.c      | 14 +++++++-------
 drivers/staging/rtl8192e/rtllib_softmac.c |  2 +-
 4 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 29650e55361a..1f1bca10753d 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -184,7 +184,7 @@ struct bss_ht {
 	u8					bd_ht_cap_buf[32];
 	u16					bd_ht_cap_len;
 	u8					bd_ht_info_buf[32];
-	u16					bdHTInfoLen;
+	u16					bd_ht_info_len;

 	enum ht_spec_ver bdHTSpecVer;
 	enum ht_channel_width bdBandWidth;
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 93fd73a7203b..1fd912d1cbe2 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -693,7 +693,7 @@ void HTInitializeBssDesc(struct bss_ht *pBssHT)
 	memset(pBssHT->bd_ht_cap_buf, 0, sizeof(pBssHT->bd_ht_cap_buf));
 	pBssHT->bd_ht_cap_len = 0;
 	memset(pBssHT->bd_ht_info_buf, 0, sizeof(pBssHT->bd_ht_info_buf));
-	pBssHT->bdHTInfoLen = 0;
+	pBssHT->bd_ht_info_len = 0;

 	pBssHT->bdHTSpecVer = HT_SPEC_VER_IEEE;

@@ -722,12 +722,12 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 			       pNetwork->bssht.bd_ht_cap_buf,
 			       pNetwork->bssht.bd_ht_cap_len);

-		if (pNetwork->bssht.bdHTInfoLen > 0 &&
-		    pNetwork->bssht.bdHTInfoLen <=
+		if (pNetwork->bssht.bd_ht_info_len > 0 &&
+		    pNetwork->bssht.bd_ht_info_len <=
 		    sizeof(pHTInfo->PeerHTInfoBuf))
 			memcpy(pHTInfo->PeerHTInfoBuf,
 			       pNetwork->bssht.bd_ht_info_buf,
-			       pNetwork->bssht.bdHTInfoLen);
+			       pNetwork->bssht.bd_ht_info_len);

 		if (pHTInfo->bRegRT2RTAggregation) {
 			pHTInfo->bCurrentRT2RTAggregation =
@@ -786,7 +786,7 @@ void HT_update_self_and_peer_setting(struct rtllib_device *ieee,
 		 (struct ht_info_ele *)pNetwork->bssht.bd_ht_info_buf;

 	if (pHTInfo->bCurrentHTSupport) {
-		if (pNetwork->bssht.bdHTInfoLen != 0)
+		if (pNetwork->bssht.bd_ht_info_len != 0)
 			pHTInfo->CurrentOpMode = pPeerHTInfo->OptMode;
 	}
 }
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 5facd55839f5..8c7b0e21de95 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1878,11 +1878,11 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 						MAX_IE_LEN);
 			if (*tmp_htinfo_len != 0) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-				network->bssht.bdHTInfoLen = min_t(u16, *tmp_htinfo_len,
-								   sizeof(network->bssht.bd_ht_info_buf));
+				network->bssht.bd_ht_info_len = min_t(u16, *tmp_htinfo_len,
+								      sizeof(network->bssht.bd_ht_info_buf));
 				memcpy(network->bssht.bd_ht_info_buf,
 				       info_element->data,
-				       network->bssht.bdHTInfoLen);
+				       network->bssht.bd_ht_info_len);
 			}
 		}
 	}
@@ -2235,13 +2235,13 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
 					       MAX_IE_LEN);
 			if (tmp_htinfo_len) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_IEEE;
-				network->bssht.bdHTInfoLen = tmp_htinfo_len >
+				network->bssht.bd_ht_info_len = tmp_htinfo_len >
 					sizeof(network->bssht.bd_ht_info_buf) ?
 					sizeof(network->bssht.bd_ht_info_buf) :
 					tmp_htinfo_len;
 				memcpy(network->bssht.bd_ht_info_buf,
 				       info_element->data,
-				       network->bssht.bdHTInfoLen);
+				       network->bssht.bd_ht_info_len);
 			}
 			break;

@@ -2463,9 +2463,9 @@ static inline void update_network(struct rtllib_device *ieee,
 	dst->bssht.bd_ht_cap_len = src->bssht.bd_ht_cap_len;
 	memcpy(dst->bssht.bd_ht_cap_buf, src->bssht.bd_ht_cap_buf,
 	       src->bssht.bd_ht_cap_len);
-	dst->bssht.bdHTInfoLen = src->bssht.bdHTInfoLen;
+	dst->bssht.bd_ht_info_len = src->bssht.bd_ht_info_len;
 	memcpy(dst->bssht.bd_ht_info_buf, src->bssht.bd_ht_info_buf,
-	       src->bssht.bdHTInfoLen);
+	       src->bssht.bd_ht_info_len);
 	dst->bssht.bdHTSpecVer = src->bssht.bdHTSpecVer;
 	dst->bssht.bdRT2RTLongSlotTime = src->bssht.bdRT2RTLongSlotTime;
 	dst->broadcom_cap_exist = src->broadcom_cap_exist;
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 2d6d629685f4..f9a51f3620d2 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -2242,7 +2242,7 @@ rtllib_rx_assoc_resp(struct rtllib_device *ieee, struct sk_buff *skb,
 				       network->bssht.bd_ht_cap_len);
 				memcpy(ieee->pHTInfo->PeerHTInfoBuf,
 				       network->bssht.bd_ht_info_buf,
-				       network->bssht.bdHTInfoLen);
+				       network->bssht.bd_ht_info_len);
 				if (ieee->handle_assoc_response != NULL)
 					ieee->handle_assoc_response(ieee->dev,
 						 (struct rtllib_assoc_response_frame *)header,
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
