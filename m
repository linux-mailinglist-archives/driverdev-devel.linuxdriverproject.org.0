Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3228A323257
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 21:48:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 952B14E578;
	Tue, 23 Feb 2021 20:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HtuUt9DW256K; Tue, 23 Feb 2021 20:48:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93EDC4DCCE;
	Tue, 23 Feb 2021 20:48:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C32451BF25F
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AADB74DF7C
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y2G1UZ6gEKWV for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 20:47:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DCD114DD08
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 20:47:32 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 4CD22A53;
 Tue, 23 Feb 2021 15:47:32 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 23 Feb 2021 15:47:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=/KnnBZYdXwPxG
 UfXjrStX9tstTHpJkHMzjt1EL50BqY=; b=Ulo+/JDhIHXKkHOsuQp5HUbybJqpm
 /nuRZYe54NWqBWf0jkt5DKVFsHV8X+VJQMq4hV5sgRriHCOMu6DQeTIvxudlaxJA
 KoZJxXBgsA2TB00v1XDHGSE1S5xcrzNfocpk8Duu/+QRCxNVLHE7Y97IwPwAnzw6
 JX04PpAgqLKayajL34yyGqSSQA3cXTLPVSIbs+YaS7+xLM0fDSEzqwS0YFeYvDET
 A1KT8t+WluijJJj4c0Q1uThdCEbO69C5llghoIStxyWU7TKvcSR+8dbuHGvTEe2w
 foiIX1BoJ+pjkYsHFkRNsqIFRRaKWlKTSqY51i+klgswIahBFCfHyrx5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=/KnnBZYdXwPxGUfXjrStX9tstTHpJkHMzjt1EL50BqY=; b=dp6ioWwb
 tIuRfTmVK9fsvvyttiQOfaVo1puUFrjjMkpOiV75tI/u2G1tSeUcyqvwWLBNdaxh
 w+klcXIPtpdyHdsoLDopCIrgDa+JTQMdppbZi5Bq8BioEuPgE+JJNRE9yfDfPQK4
 lPe/kzl5+BUKPNeaqgUz8HdqdqEAAAZbEwoaGhwFnvqlqm9ZPZn5z/afESt0/3lb
 XNKZCh2D1zxumKar5jHNgAw0E2ZHA2lUqR6k+PeSpHYyXRXZqnORQsRw9STfcxeI
 dR1iEjwR7yk3t+AWq/xqcAtwgJKsZdiYsUjIw26Aj79B5dN5cUPQ5JKEShNpavgI
 whusppTrl+SnIw==
X-ME-Sender: <xms:42k1YC3PtPB2RJdr-H7sTNR5-DMUWVvnEDGtjnZ0B5P75-upKEN7Fg>
 <xme:42k1YIWsGCciWRe3OOis6GIagfwcce3Z_ssQuvbnWalAP_ZGVnj3d_DThiDzGdFTT
 7hSvAMuhhkEfDdo1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:42k1YEV25xmtNEOpNatojLxr4n_dgQg3qpWPj8UZW74JOkGpFsV6-Q>
 <xmx:42k1YPfUzEPFur1cI-cHrrMvX4GKAN3XxgadiwJAEYie92yU-CRHMw>
 <xmx:42k1YFUY0nUpLV68WuEhMrKqCUj31-J5XrnHWlU-I05Ptf-oVzBgeA>
 <xmx:42k1YMesfOSFzOPs5FL41Z4q2HMGZ3GJZZhNwpcsuLPHAwmoWROkWw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 700B724005E;
 Tue, 23 Feb 2021 15:47:31 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 05/13] staging: rtl8192e: rename bdHTInfoBuf to bd_ht_info_buf
 in bss_ht struct
Date: Sat, 20 Feb 2021 15:54:09 +0000
Message-Id: <20210220155418.12282-6-will+git@drnd.me>
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
 drivers/staging/rtl8192e/rtl819x_HT.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c |  6 +++---
 drivers/staging/rtl8192e/rtllib_rx.c      | 13 +++++++------
 drivers/staging/rtl8192e/rtllib_softmac.c |  2 +-
 4 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index cd5dc4a3abe3..29650e55361a 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -183,7 +183,7 @@ struct bss_ht {

 	u8					bd_ht_cap_buf[32];
 	u16					bd_ht_cap_len;
-	u8					bdHTInfoBuf[32];
+	u8					bd_ht_info_buf[32];
 	u16					bdHTInfoLen;

 	enum ht_spec_ver bdHTSpecVer;
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 786df3fbedc2..93fd73a7203b 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -692,7 +692,7 @@ void HTInitializeBssDesc(struct bss_ht *pBssHT)
 	pBssHT->bd_support_ht = false;
 	memset(pBssHT->bd_ht_cap_buf, 0, sizeof(pBssHT->bd_ht_cap_buf));
 	pBssHT->bd_ht_cap_len = 0;
-	memset(pBssHT->bdHTInfoBuf, 0, sizeof(pBssHT->bdHTInfoBuf));
+	memset(pBssHT->bd_ht_info_buf, 0, sizeof(pBssHT->bd_ht_info_buf));
 	pBssHT->bdHTInfoLen = 0;

 	pBssHT->bdHTSpecVer = HT_SPEC_VER_IEEE;
@@ -726,7 +726,7 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 		    pNetwork->bssht.bdHTInfoLen <=
 		    sizeof(pHTInfo->PeerHTInfoBuf))
 			memcpy(pHTInfo->PeerHTInfoBuf,
-			       pNetwork->bssht.bdHTInfoBuf,
+			       pNetwork->bssht.bd_ht_info_buf,
 			       pNetwork->bssht.bdHTInfoLen);

 		if (pHTInfo->bRegRT2RTAggregation) {
@@ -783,7 +783,7 @@ void HT_update_self_and_peer_setting(struct rtllib_device *ieee,
 {
 	struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;
 	struct ht_info_ele *pPeerHTInfo =
-		 (struct ht_info_ele *)pNetwork->bssht.bdHTInfoBuf;
+		 (struct ht_info_ele *)pNetwork->bssht.bd_ht_info_buf;

 	if (pHTInfo->bCurrentHTSupport) {
 		if (pNetwork->bssht.bdHTInfoLen != 0)
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 697fd7fcb48b..5facd55839f5 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1878,8 +1878,9 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 						MAX_IE_LEN);
 			if (*tmp_htinfo_len != 0) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-				network->bssht.bdHTInfoLen = min_t(u16, *tmp_htinfo_len, sizeof(network->bssht.bdHTInfoBuf));
-				memcpy(network->bssht.bdHTInfoBuf,
+				network->bssht.bdHTInfoLen = min_t(u16, *tmp_htinfo_len,
+								   sizeof(network->bssht.bd_ht_info_buf));
+				memcpy(network->bssht.bd_ht_info_buf,
 				       info_element->data,
 				       network->bssht.bdHTInfoLen);
 			}
@@ -2235,10 +2236,10 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
 			if (tmp_htinfo_len) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_IEEE;
 				network->bssht.bdHTInfoLen = tmp_htinfo_len >
-					sizeof(network->bssht.bdHTInfoBuf) ?
-					sizeof(network->bssht.bdHTInfoBuf) :
+					sizeof(network->bssht.bd_ht_info_buf) ?
+					sizeof(network->bssht.bd_ht_info_buf) :
 					tmp_htinfo_len;
-				memcpy(network->bssht.bdHTInfoBuf,
+				memcpy(network->bssht.bd_ht_info_buf,
 				       info_element->data,
 				       network->bssht.bdHTInfoLen);
 			}
@@ -2463,7 +2464,7 @@ static inline void update_network(struct rtllib_device *ieee,
 	memcpy(dst->bssht.bd_ht_cap_buf, src->bssht.bd_ht_cap_buf,
 	       src->bssht.bd_ht_cap_len);
 	dst->bssht.bdHTInfoLen = src->bssht.bdHTInfoLen;
-	memcpy(dst->bssht.bdHTInfoBuf, src->bssht.bdHTInfoBuf,
+	memcpy(dst->bssht.bd_ht_info_buf, src->bssht.bd_ht_info_buf,
 	       src->bssht.bdHTInfoLen);
 	dst->bssht.bdHTSpecVer = src->bssht.bdHTSpecVer;
 	dst->bssht.bdRT2RTLongSlotTime = src->bssht.bdRT2RTLongSlotTime;
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 82863f737906..2d6d629685f4 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -2241,7 +2241,7 @@ rtllib_rx_assoc_resp(struct rtllib_device *ieee, struct sk_buff *skb,
 				       network->bssht.bd_ht_cap_buf,
 				       network->bssht.bd_ht_cap_len);
 				memcpy(ieee->pHTInfo->PeerHTInfoBuf,
-				       network->bssht.bdHTInfoBuf,
+				       network->bssht.bd_ht_info_buf,
 				       network->bssht.bdHTInfoLen);
 				if (ieee->handle_assoc_response != NULL)
 					ieee->handle_assoc_response(ieee->dev,
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
