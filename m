Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADE13244E7
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 21:08:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1B6F83EF6;
	Wed, 24 Feb 2021 20:08:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vGkKiAOgt376; Wed, 24 Feb 2021 20:08:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9C6983EEC;
	Wed, 24 Feb 2021 20:08:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 05F201BF83A
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9FF94ECBD
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="pL2zZidq";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="SdgPcGAx"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uwy2rDb6BlYA for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 20:07:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F2144ECFC
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 20:07:48 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 8BD3FA2E;
 Wed, 24 Feb 2021 15:07:47 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Wed, 24 Feb 2021 15:07:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=gOVkHzBiMD5kM
 XchQXndD+qX1yOb5LjqPXKgh0wkmKU=; b=pL2zZidqn7CZarWplTnTmoChjL+BQ
 kubDee3S2W/zOmT2V5IZ6WZum0IbHUexdiI7esDMntGiezrRmDkXZxihz8sJTUpB
 6YRV3N0rMLmM2HZCKlxizrldaldii9ym+a2TBlWL7dEdb+CqYPZi96qiKUsoZAuK
 pAy+htm1vRGBuOYDVnkkdPAGTHD/yM9GSlvar8pbkX+U/Kw6GrsTvvJkJ7FlHmR+
 eLKVgzXY8tkuy+6NBLyy7XEIGCzkiLJrGcV9Agc89f/K2qJ3GoKjCQNy4DMCO9AN
 dIBAzHdF/g3Rr8NNSmP0jJlO5YBImvyDstZmBhzPUTknXwkn24vRiAzmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=gOVkHzBiMD5kMXchQXndD+qX1yOb5LjqPXKgh0wkmKU=; b=SdgPcGAx
 QQ6HVf76Yj8hMML9EJF8E0Il/88RuL/6TdWSQwe/FbUmr7WyLO6ZE6eYv088EHoO
 o6BqAs+RfVtdPDeYZ+Y7wFjoh8i2rjhp/I/W35sqKADNE9D0TFhqoSH+HGQIhkYg
 7Gv4Lp0Q/hGSK9+/go18ZpvyvZetuyC3+c7/imY2uMQ4fQfZtSTD/hkTCteyVSVm
 4FBNs57hQIHJnFcvR/oC5JffuXrarRmHeol7CJHHSrANL+U+ejb75I9LyGod9Wn+
 V7x1S+Doy9IUpHGRoMBYsXHZnGS8d9Ptr2xwSJTwVLcoD+9FBJdMTExdlYua0W2B
 eMZ0Q9UHnPAYhw==
X-ME-Sender: <xms:ErI2YNUWbbFK1VzRuD2uOZ25BnNIvSBoYxVpY-e9S5z82eTsqtApAg>
 <xme:ErI2YHPJ5iu1yk2SZie0xsIRYGe6Or04nh9oJb8t_U7cxJ_xguGvlV_DNKQKGTsgs
 r7gHbw1KHr3S1imxg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:ErI2YJYPFyzkaqGuKhDiBd1nsQD8TayUtngnWdRorP6955t1n3iSoQ>
 <xmx:ErI2YDpvmCSpfy0yojBS2fS4VfVXeXmaQZusso8Uhq-BWLVyCgjZPQ>
 <xmx:ErI2YFb7F0ezyJ9YAN6Kl9eJ2ExwcrXXmzCpPtIpSY5FbAnafA62Ew>
 <xmx:E7I2YNYdGs35zHlO_uh21UPPpZQ7k4SsD_WjmOfk5x6-52Q4BzDLkw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6FF631080064;
 Wed, 24 Feb 2021 15:07:46 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 05/13] staging: rtl8192e: rename bdHTInfoBuf to
 bd_ht_info_buf in bss_ht struct
Date: Sat, 20 Feb 2021 17:29:01 +0000
Message-Id: <20210220172909.15812-6-will+git@drnd.me>
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

Rename bdHTInfoBuf to bd_ht_info_buf to silence a checkpatch warning
about CamelCase.

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
