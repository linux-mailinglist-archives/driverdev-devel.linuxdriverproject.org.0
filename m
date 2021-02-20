Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 650AC3244E3
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 21:08:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 014C46F697;
	Wed, 24 Feb 2021 20:08:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3pmLkD5jGh0u; Wed, 24 Feb 2021 20:08:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 081EB6F679;
	Wed, 24 Feb 2021 20:08:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A65D1BF83A
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4611D4315E
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="XMDqBAEE";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="PmIfmOk8"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B_uH-zXF4Ni8 for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 20:07:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ABC4F43159
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 20:07:46 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 1B64C77D;
 Wed, 24 Feb 2021 15:07:46 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 24 Feb 2021 15:07:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=I6qi5dszI+0RC
 kqG03cRgeEzK0+QgMpiUsgMnEr7Eps=; b=XMDqBAEE9bRkFqt86t/2jOyRfCnoR
 H4HfRH3kWXTijSdgfZ7aH6Zid+W+VefR0FHoTwf6YVcdlyem+9ZCO/OXvy4XYggi
 DvpD1cmP0i5L+hujUpfSYRPkYu8EtTbixeUsoDykqn2razPbdjiIj8/e7IrJU+sj
 gYMRIdNxP/8+uNephm1Td8HQnDtDdpvcE4jqT0SwKo1QhcwnjxR0UkwB6dRBTQki
 AavN1cwxtpGTpdzhKP52/j/mRqPuMqNwrbqBptxRPo4eMDCp11CQn1dOi19ik2iA
 QCUh3ERnt3qe+/Ggh6Iq+juPu3gKBEkMxeHVMVcb24v9rc6bK4sZOy+UQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=I6qi5dszI+0RCkqG03cRgeEzK0+QgMpiUsgMnEr7Eps=; b=PmIfmOk8
 vSk9esn/KlmS5jjvzTTKVAq+JUwekGHSPrP1KwAdAZ1ZaU1tLH2UlK7CIB5e/U5o
 fCuhX1RFZlrundja8kORUOHOE2dRn3q+Y/3mMLJS/TWufGEtWw/a544qkV1pUP6l
 3EP/7ZTouEEXc7xDqCmgPJOoUk5AY29Vm6HQG3pLO7Vebx9yAo4NJRmE3rXPwpUN
 WBcW01Ev3ncJ0Qw+JFQQ1vftCrJCMfTJNoOm6+XlKPn41ue2OmQlsnQxjgwFIXGx
 3aogRAUQebk5QIHyTKO3nywxLabCIj0KO8teuIFDWEdlD+m9AQ+mjYsbV4qzfjfp
 KAnJtikPshFYAw==
X-ME-Sender: <xms:EbI2YHkkCFHsW9i4__KnvFxHopLPvYQgo3XNhC9Ijt5xBdcA3jv_Cw>
 <xme:EbI2YK1ZvqZpSyaLH_UzANoLtAFIZlGB2WlZLyA3TQw4EikNe-_Qna-Sdkr-gHGFQ
 267T1ZU9hgrToOz2A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:EbI2YNr0eayToDPL4JMgKY3jxH5sgonhP1GqUmDliUAcr0H-nQhuUg>
 <xmx:EbI2YPmIxAtREVFHLgiiK-5XnEJIEB31cE7cRUryD7jj9Xcd1hM1xg>
 <xmx:EbI2YF3MjQUYwFD_6Y5EhdnlotOrtt3-BKsPgMAYwsX3py17MKuYog>
 <xmx:EbI2YC8Tm-xowdt5h7L2Q79rGK0jEMjgKUDACW5l8QOm3xh4UFJI-w>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2CF4E108006A;
 Wed, 24 Feb 2021 15:07:45 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 03/13] staging: rtl8192e: rename bdHTCapBuf to
 bd_ht_cap_buf in bss_ht struct
Date: Sat, 20 Feb 2021 17:28:59 +0000
Message-Id: <20210220172909.15812-4-will+git@drnd.me>
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

Rename bdHTCapBuf to bd_ht_cap_buf to silence a checkpatch warning about
CamelCase.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_HT.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c |  4 ++--
 drivers/staging/rtl8192e/rtllib_rx.c      | 17 +++++++++--------
 drivers/staging/rtl8192e/rtllib_softmac.c |  2 +-
 drivers/staging/rtl8192e/rtllib_wx.c      |  6 +++---
 5 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 71a078c0d5f5..3b7b480a42b3 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -181,7 +181,7 @@ struct rt_hi_throughput {
 struct bss_ht {
 	u8				bd_support_ht;

-	u8					bdHTCapBuf[32];
+	u8					bd_ht_cap_buf[32];
 	u16					bdHTCapLen;
 	u8					bdHTInfoBuf[32];
 	u16					bdHTInfoLen;
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 444f8ce6a170..14c00c6f7df5 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -690,7 +690,7 @@ void HTInitializeBssDesc(struct bss_ht *pBssHT)
 {

 	pBssHT->bd_support_ht = false;
-	memset(pBssHT->bdHTCapBuf, 0, sizeof(pBssHT->bdHTCapBuf));
+	memset(pBssHT->bd_ht_cap_buf, 0, sizeof(pBssHT->bd_ht_cap_buf));
 	pBssHT->bdHTCapLen = 0;
 	memset(pBssHT->bdHTInfoBuf, 0, sizeof(pBssHT->bdHTInfoBuf));
 	pBssHT->bdHTInfoLen = 0;
@@ -719,7 +719,7 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 		if (pNetwork->bssht.bdHTCapLen > 0 &&
 		    pNetwork->bssht.bdHTCapLen <= sizeof(pHTInfo->PeerHTCapBuf))
 			memcpy(pHTInfo->PeerHTCapBuf,
-			       pNetwork->bssht.bdHTCapBuf,
+			       pNetwork->bssht.bd_ht_cap_buf,
 			       pNetwork->bssht.bdHTCapLen);

 		if (pNetwork->bssht.bdHTInfoLen > 0 &&
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 98d7b9ba6099..2abda3d3174f 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1851,15 +1851,16 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 					       MAX_IE_LEN);
 			if (*tmp_htcap_len != 0) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-				network->bssht.bdHTCapLen = min_t(u16, *tmp_htcap_len, sizeof(network->bssht.bdHTCapBuf));
-				memcpy(network->bssht.bdHTCapBuf,
+				network->bssht.bdHTCapLen = min_t(u16, *tmp_htcap_len,
+								  sizeof(network->bssht.bd_ht_cap_buf));
+				memcpy(network->bssht.bd_ht_cap_buf,
 				       info_element->data,
 				       network->bssht.bdHTCapLen);
 			}
 		}
 		if (*tmp_htcap_len != 0) {
 			network->bssht.bd_support_ht = true;
-			network->bssht.bdHT1R = ((((struct ht_capab_ele *)(network->bssht.bdHTCapBuf))->MCS[1]) == 0);
+			network->bssht.bdHT1R = ((((struct ht_capab_ele *)(network->bssht.bd_ht_cap_buf))->MCS[1]) == 0);
 		} else {
 			network->bssht.bd_support_ht = false;
 			network->bssht.bdHT1R = false;
@@ -2022,16 +2023,16 @@ static void rtllib_parse_mfie_ht_cap(struct rtllib_info_element *info_element,
 	if (*tmp_htcap_len != 0) {
 		ht->bdHTSpecVer = HT_SPEC_VER_EWC;
 		ht->bdHTCapLen = min_t(u16, *tmp_htcap_len,
-				       sizeof(ht->bdHTCapBuf));
-		memcpy(ht->bdHTCapBuf, info_element->data, ht->bdHTCapLen);
+				       sizeof(ht->bd_ht_cap_buf));
+		memcpy(ht->bd_ht_cap_buf, info_element->data, ht->bdHTCapLen);

 		ht->bd_support_ht = true;
 		ht->bdHT1R = ((((struct ht_capab_ele *)
-				ht->bdHTCapBuf))->MCS[1]) == 0;
+				ht->bd_ht_cap_buf))->MCS[1]) == 0;

 		ht->bdBandWidth = (enum ht_channel_width)
 					     (((struct ht_capab_ele *)
-					     (ht->bdHTCapBuf))->ChlWidth);
+					     (ht->bd_ht_cap_buf))->ChlWidth);
 	} else {
 		ht->bd_support_ht = false;
 		ht->bdHT1R = false;
@@ -2459,7 +2460,7 @@ static inline void update_network(struct rtllib_device *ieee,
 	dst->bssht.bd_support_ht = src->bssht.bd_support_ht;
 	dst->bssht.bdRT2RTAggregation = src->bssht.bdRT2RTAggregation;
 	dst->bssht.bdHTCapLen = src->bssht.bdHTCapLen;
-	memcpy(dst->bssht.bdHTCapBuf, src->bssht.bdHTCapBuf,
+	memcpy(dst->bssht.bd_ht_cap_buf, src->bssht.bd_ht_cap_buf,
 	       src->bssht.bdHTCapLen);
 	dst->bssht.bdHTInfoLen = src->bssht.bdHTInfoLen;
 	memcpy(dst->bssht.bdHTInfoBuf, src->bssht.bdHTInfoBuf,
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index b348316b2784..6f8f88207694 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -2238,7 +2238,7 @@ rtllib_rx_assoc_resp(struct rtllib_device *ieee, struct sk_buff *skb,
 					return 1;
 				}
 				memcpy(ieee->pHTInfo->PeerHTCapBuf,
-				       network->bssht.bdHTCapBuf,
+				       network->bssht.bd_ht_cap_buf,
 				       network->bssht.bdHTCapLen);
 				memcpy(ieee->pHTInfo->PeerHTInfoBuf,
 				       network->bssht.bdHTInfoBuf,
diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index ce095febc9ed..ab1b8217c4e0 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -140,12 +140,12 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 		bool is40M = false, isShortGI = false;
 		u8 max_mcs = 0;

-		if (!memcmp(network->bssht.bdHTCapBuf, EWC11NHTCap, 4))
+		if (!memcmp(network->bssht.bd_ht_cap_buf, EWC11NHTCap, 4))
 			ht_cap = (struct ht_capab_ele *)
-				 &network->bssht.bdHTCapBuf[4];
+				 &network->bssht.bd_ht_cap_buf[4];
 		else
 			ht_cap = (struct ht_capab_ele *)
-				 &network->bssht.bdHTCapBuf[0];
+				 &network->bssht.bd_ht_cap_buf[0];
 		is40M = (ht_cap->ChlWidth) ? 1 : 0;
 		isShortGI = (ht_cap->ChlWidth) ?
 				((ht_cap->ShortGI40Mhz) ? 1 : 0) :
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
