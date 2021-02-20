Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0505D3244E4
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 21:08:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 281814ED1D;
	Wed, 24 Feb 2021 20:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QsygduzkyrwA; Wed, 24 Feb 2021 20:08:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBCCB4ECFC;
	Wed, 24 Feb 2021 20:08:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4D4E1BF83A
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B3FC443159
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="BE/XDAfK";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="GkUA+NOP"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkihwKy7D95C for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 311034315B
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 7438D9F4;
 Wed, 24 Feb 2021 15:07:45 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 24 Feb 2021 15:07:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=L5xOc1OikX7Jr
 qEuZqnSRuWSmlwuWVJj6LWNiThVP2o=; b=BE/XDAfKN8BbLPRzvmL9hHO+ES84j
 GKqbiKYVd4XbADzyV0+XaOO2S5IGQeFkWkmEyQAOJ4tBmhSjyZ4CiHIEEHi40UKg
 oGhcpQWRxjkOACHN0RBlWDRdZkyxxuN115BeSGYNBJ0SDjXz6l+5/gAxTd6vtAo0
 KVg8NYaPROFk71+Whz1/94VYHqZ4R2/NVRIwzmt3Fo/bzq1m1D9g8SpNs79DXKmn
 P+SCRXzKkS5N9nGvDmU+2EhTiqirb0T52EsIca8wkvRLglQiaNey2w4xIGLaxx/8
 tl1zsDeDVd8VAxpQi8Q0Zd/BZbfz1aXFm+WxQebZhe3Pg7P3V1IBsHlRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=L5xOc1OikX7JrqEuZqnSRuWSmlwuWVJj6LWNiThVP2o=; b=GkUA+NOP
 zZ9OUrEczaYun9OLQAFC5LwUUpvYYNy2U7N5MgQAtznT9nwgCiZe5ybsbHBBIgSf
 I1w+1m+1H4Oem24v54VAlFhDDtOT1kEH1P6Jb351SnQ3Im9fh4rSajk+Z82WvCob
 ec8ixuxEXAA/LTthZdB81POhINPHR351MXmugjcWQ0ZoMWQmbhm8lghiBORATTbv
 3Iw97yTDQ9+kSqDAf83QuDsiWuPTQTyzScIGuX8sPQzSfNmvMQzHj7Zul/JhglR2
 t9o8fCldmSPrnPmf3CdMb5/4QvY5Ma+9ClUvO+3U8laC/lw9e9TL0h4/oeyIhmm2
 hhUIgBXwcgwe/w==
X-ME-Sender: <xms:EbI2YIBDnXYAhaPhmsPb0ErNFgnYXfZU6uG4clz10itnmRYMk1FnXw>
 <xme:EbI2YKjZkE2z0pygv0kdRt85hsiGZjz4ym5uL6wXUprLEO3lU15FH7gRPe0Vj_i3r
 bTnrbrmmFcfGUwUrA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepgfevjeejheejgfefvdffgeeikedtleekffekkeegheegieevledvgeegtedt
 teejnecuffhomhgrihhnpegsshhshhhtrdgsugenucfkphepvddujedrvdefkedrvddtke
 drjeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
 fihilhhlodhgihhtsegurhhnugdrmhgv
X-ME-Proxy: <xmx:EbI2YLn0eXinuxgP9YeJVaiCl5cu2baChy8K6dwWK6C2G7fLFNf_tw>
 <xmx:EbI2YOzUOiv9qy53md1Fz18WTlh7GbcN68tH39W2aegv-q6r-25dQg>
 <xmx:EbI2YNR0LHGSlV8xcXSji3hDMBNAeki-ENSRavldy4cE4FMBL2EBZQ>
 <xmx:EbI2YO6PwbS69m9qvoabduRMxvwwkz_qeNKjAtbj_B5xrGxxDIBvWA>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 89F1C1080057;
 Wed, 24 Feb 2021 15:07:44 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 02/13] staging: rtl8192e: rename bdSupportHT to
 bd_support_ht in bss_ht struct
Date: Sat, 20 Feb 2021 17:28:58 +0000
Message-Id: <20210220172909.15812-3-will+git@drnd.me>
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

Rename bdSupportHT to bd_support_ht to silence a checkpatch warning
about CamelCase.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_HT.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c |  4 ++--
 drivers/staging/rtl8192e/rtllib_rx.c      | 14 +++++++-------
 drivers/staging/rtl8192e/rtllib_softmac.c |  4 ++--
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 1bbb9ed18e6d..71a078c0d5f5 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -179,7 +179,7 @@ struct rt_hi_throughput {
 } __packed;

 struct bss_ht {
-	u8				bdSupportHT;
+	u8				bd_support_ht;

 	u8					bdHTCapBuf[32];
 	u16					bdHTCapLen;
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 9377e48c3f32..444f8ce6a170 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -689,7 +689,7 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 void HTInitializeBssDesc(struct bss_ht *pBssHT)
 {

-	pBssHT->bdSupportHT = false;
+	pBssHT->bd_support_ht = false;
 	memset(pBssHT->bdHTCapBuf, 0, sizeof(pBssHT->bdHTCapBuf));
 	pBssHT->bdHTCapLen = 0;
 	memset(pBssHT->bdHTInfoBuf, 0, sizeof(pBssHT->bdHTInfoBuf));
@@ -712,7 +712,7 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 	/* unmark bEnableHT flag here is the same reason why unmarked in
 	 * function rtllib_softmac_new_net. WB 2008.09.10
 	 */
-	if (pNetwork->bssht.bdSupportHT) {
+	if (pNetwork->bssht.bd_support_ht) {
 		pHTInfo->bCurrentHTSupport = true;
 		pHTInfo->ePeerHTSpecVer = pNetwork->bssht.bdHTSpecVer;

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 66c135321da4..98d7b9ba6099 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1858,10 +1858,10 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 			}
 		}
 		if (*tmp_htcap_len != 0) {
-			network->bssht.bdSupportHT = true;
+			network->bssht.bd_support_ht = true;
 			network->bssht.bdHT1R = ((((struct ht_capab_ele *)(network->bssht.bdHTCapBuf))->MCS[1]) == 0);
 		} else {
-			network->bssht.bdSupportHT = false;
+			network->bssht.bd_support_ht = false;
 			network->bssht.bdHT1R = false;
 		}
 	}
@@ -1885,7 +1885,7 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 		}
 	}

-	if (network->bssht.bdSupportHT) {
+	if (network->bssht.bd_support_ht) {
 		if (info_element->len >= 4 &&
 		    info_element->data[0] == 0x00 &&
 		    info_element->data[1] == 0xe0 &&
@@ -2025,7 +2025,7 @@ static void rtllib_parse_mfie_ht_cap(struct rtllib_info_element *info_element,
 				       sizeof(ht->bdHTCapBuf));
 		memcpy(ht->bdHTCapBuf, info_element->data, ht->bdHTCapLen);

-		ht->bdSupportHT = true;
+		ht->bd_support_ht = true;
 		ht->bdHT1R = ((((struct ht_capab_ele *)
 				ht->bdHTCapBuf))->MCS[1]) == 0;

@@ -2033,7 +2033,7 @@ static void rtllib_parse_mfie_ht_cap(struct rtllib_info_element *info_element,
 					     (((struct ht_capab_ele *)
 					     (ht->bdHTCapBuf))->ChlWidth);
 	} else {
-		ht->bdSupportHT = false;
+		ht->bd_support_ht = false;
 		ht->bdHT1R = false;
 		ht->bdBandWidth = HT_CHANNEL_WIDTH_20;
 	}
@@ -2380,7 +2380,7 @@ static inline int rtllib_network_init(
 		return 1;
 	}

-	if (network->bssht.bdSupportHT) {
+	if (network->bssht.bd_support_ht) {
 		if (network->mode == IEEE_A)
 			network->mode = IEEE_N_5G;
 		else if (network->mode & (IEEE_G | IEEE_B))
@@ -2456,7 +2456,7 @@ static inline void update_network(struct rtllib_device *ieee,
 	dst->last_dtim_sta_time = src->last_dtim_sta_time;
 	memcpy(&dst->tim, &src->tim, sizeof(struct rtllib_tim_parameters));

-	dst->bssht.bdSupportHT = src->bssht.bdSupportHT;
+	dst->bssht.bd_support_ht = src->bssht.bd_support_ht;
 	dst->bssht.bdRT2RTAggregation = src->bssht.bdRT2RTAggregation;
 	dst->bssht.bdHTCapLen = src->bssht.bdHTCapLen;
 	memcpy(dst->bssht.bdHTCapBuf, src->bssht.bdHTCapBuf,
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index ab4b9817888c..b348316b2784 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -1692,7 +1692,7 @@ inline void rtllib_softmac_new_net(struct rtllib_device *ieee,
 				    ieee->current_network.channel,
 				    ieee->current_network.qos_data.supported,
 				    ieee->pHTInfo->bEnableHT,
-				    ieee->current_network.bssht.bdSupportHT,
+				    ieee->current_network.bssht.bd_support_ht,
 				    ieee->current_network.mode,
 				    ieee->current_network.flags);

@@ -1706,7 +1706,7 @@ inline void rtllib_softmac_new_net(struct rtllib_device *ieee,
 				/* Join the network for the first time */
 				ieee->AsocRetryCount = 0;
 				if ((ieee->current_network.qos_data.supported == 1) &&
-				    ieee->current_network.bssht.bdSupportHT)
+				    ieee->current_network.bssht.bd_support_ht)
 					HTResetSelfAndSavePeerSetting(ieee,
 						 &(ieee->current_network));
 				else
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
