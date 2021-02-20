Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 834D432325E
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 21:48:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AD0F60681;
	Tue, 23 Feb 2021 20:48:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YqDI0o_8Ade8; Tue, 23 Feb 2021 20:48:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24D846066B;
	Tue, 23 Feb 2021 20:48:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B4371BF25F
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6AF9B4DD08
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n1MNMXTgm8-7 for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 20:47:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 974744DC25
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 20:47:33 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 11C92A26;
 Tue, 23 Feb 2021 15:47:33 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 23 Feb 2021 15:47:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ouQcM884/JKGf
 jFfT5JHslHzabKHBiUilZ3hbhbd5SM=; b=SMqcwkPTALeWTBcwUQwvXNUuzd6x3
 3xK+NqRoytpoUq7H16gectnCMj/N2T80BltiB+m8sPk9Bw1zAXFsY09w9bo/rb5l
 voP9MTpDnOQPdgdv7xUTEC1Ts4Eh/96cgglndwr7JoJC8aAGW7fjfMkABdNVs/KN
 SeO4KVD0eZWpcP4YbB3/dPjmUs73oLFtDU1Fja0fJ1LGuX5QNydkXQdipkpssVGn
 6FMv8F/t27J62x/JL7lVRjz4sAm9zERBRgnmgCiHmNm7d87nwJVv4rWF+Xqni9JG
 b0doCtUDFRreayniZCQyjiqxYZ/pLlZG7kXoWsv6r2Q1lfIYVqNcJjXwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ouQcM884/JKGfjFfT5JHslHzabKHBiUilZ3hbhbd5SM=; b=KSsaOybl
 QTSbc05hKQFT51T8ymOdfArxZ9l3654h7En/F4zWjnJmXkAtKcemAKm8RxvrnR8X
 jceZjpTYS0A93V6kKQ3gk3EzZuZv9N2pN3kPvY3qPknwVdV6Wfe1PUUnvlkOrC/6
 S3PdHux8tK4ft2ICthF0Bm8sJLgJK6uCJrGelvMvH6gZkRHAySsRZ1RBJyRF0JIm
 N4wf94w64CQA1YRfzFJzmCUOTjLdLBOq6unwi2w13ctBcDICyY91+jYb7UR1lAxW
 XyNs7NfGnkgXCKV5aeQvgJcKdukSJYF36fhHoimv1jl64a7RH0WEABG0OClrzd/K
 Oqn+yw6nIsbtiQ==
X-ME-Sender: <xms:5Gk1YNYZr1Xw4K2JfU-UdZAn8oS5-XrLyPVxInnrhFbyxEUQVdc9Og>
 <xme:5Gk1YEZgAnpL7BcbB4POexZZ5KBjKP0k6lkzE_73g9MH5UPIJXA7aaHhxysTwvXb3
 4JOVz9cDPSHyEMT1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dunecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:5Gk1YP85aoECq_V13F2gEDEwt5KCX7Kcv8Abbq35d3hoYqzTtSUQkA>
 <xmx:5Gk1YLo3TWiII45aoNtoWzVmVgizrA4KZ4OaWY3y0wIledfTQWY57Q>
 <xmx:5Gk1YIqarbBS4gVTmIadRxIjKTI_eo6VKRuXn6-TN3icYav9hvgT5w>
 <xmx:5Gk1YPT33pOcv3W06atGzTEU9rYwc6ZVkTnZXdSqdPaYQscJFE8sjg>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1B788240064;
 Tue, 23 Feb 2021 15:47:32 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 06/13] staging: rtl8192e: rename bdHTInfoLen to bd_ht_info_len
 in bss_ht struct
Date: Sat, 20 Feb 2021 15:54:10 +0000
Message-Id: <20210220155418.12282-7-will+git@drnd.me>
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
