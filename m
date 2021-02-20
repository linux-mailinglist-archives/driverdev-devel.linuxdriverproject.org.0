Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE2F323260
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 21:49:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5093660679;
	Tue, 23 Feb 2021 20:49:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z3pF39hjeBl5; Tue, 23 Feb 2021 20:48:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B923960666;
	Tue, 23 Feb 2021 20:48:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D41261BF25F
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C373D43025
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ixQP3m-viVCD for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 20:47:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2CD1542FFB
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 20:47:34 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 94772A72;
 Tue, 23 Feb 2021 15:47:33 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 23 Feb 2021 15:47:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=S5I+npBpW9rtb
 QCI4dYYN4m+W/1YxLUUNNRLiL2Xfpw=; b=TBbKzXDSpJjqdW5ChqzQBQJ2J/jKG
 8fw7unSp0PxW6qMVU0urj75Z1wwOYgNdjibGGng4I5moeLb9mWI3j0TEdY+rJXhM
 HV4JNm1ptjxibNd7i/L0IQNfbYkT0zlu/tjP2OU4iYmU404F57VHg0jVwYWbB60N
 Flomm6C5gOWJTgsstcVpM+UfdgOWIA07Bt5WHNpmxC5LOSjob5AROeLYlR1dzFMc
 wTOv+kJQb8F0zAC/mCmFBKah4/rA1AWOajhQIZDeK4E+5GgZLDGxBPOk8cExOcw9
 wHpwwmlIcvYmrinDEy5p99nfJfsvsx6qIpSU3hzA+kidXFKiCAZIJWbCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=S5I+npBpW9rtbQCI4dYYN4m+W/1YxLUUNNRLiL2Xfpw=; b=v0W2doNB
 8Mp9H/hmWP9ywhFSG/3Du/WuMXQPWRcAUr/s9SeG7uYSuM5D3MdM3eA518nQu0Lf
 r4CfjeT3rbbCKo+bTk4wqKPW1mr+GiqRdgK0K2byv1DQ/QeKF1CRLNEg9rAJrkXV
 +tzTlV47urlZQ9ejgOpQYl/3iAuAUMd4Q97iiTbO1PWGo/5gat77pip88jSPAFRN
 5n49n23IeBF6jJ6nh/ru8io2T5OXSyBWP18kvwgvxhVnb0RCKyVxTliQfbAXcaL5
 GCAW0mwb4VnzEPjCEPhOUCcb/UegRVStIC4gw/kVbQz72/3mJ9wR8B+H+BNr+n6s
 nDK6760XvQBpcw==
X-ME-Sender: <xms:5Wk1YDlur63xxDEEaegxsZQ8yNcDfB6H0u0oqIv7_Z6Khv_STWy2jw>
 <xme:5Wk1YNsKcrbhcWRpSww7hWafD3LBPMWBrfWOMYr7aYEYjBBzvRu_LVSwBDq1YjKtW
 TPylhWvjSnyLF9TRQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dvnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:5Wk1YB_0RbMvnNAn4w3k5T_N0gIb5xAqGmV2XIW09a0anQTzSwcMsg>
 <xmx:5Wk1YHP1UaJMc57h1uyaMlH78wcNNLt1EXa6btSIJom_n4E99Hf2cg>
 <xmx:5Wk1YPGQhPTtl_RdSSJuJRIhlvejm1Fa4YYoMLLwUFiYONxkttGXpA>
 <xmx:5Wk1YO5y1yjhifs0QuZP3j-lj2RoKKO7DCB8PwQzyZMuHyH2z41v2g>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id B4F7224005D;
 Tue, 23 Feb 2021 15:47:32 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 07/13] staging: rtl8192e: rename bdHTSpecVer to bd_ht_spec_ver
 in bss_ht struct
Date: Sat, 20 Feb 2021 15:54:11 +0000
Message-Id: <20210220155418.12282-8-will+git@drnd.me>
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
 drivers/staging/rtl8192e/rtl819x_HTProc.c |  4 ++--
 drivers/staging/rtl8192e/rtllib_rx.c      | 10 +++++-----
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 1f1bca10753d..b3856044b52f 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -186,7 +186,7 @@ struct bss_ht {
 	u8					bd_ht_info_buf[32];
 	u16					bd_ht_info_len;

-	enum ht_spec_ver bdHTSpecVer;
+	enum ht_spec_ver bd_ht_spec_ver;
 	enum ht_channel_width bdBandWidth;

 	u8					bdRT2RTAggregation;
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 1fd912d1cbe2..48a63706b8ba 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -695,7 +695,7 @@ void HTInitializeBssDesc(struct bss_ht *pBssHT)
 	memset(pBssHT->bd_ht_info_buf, 0, sizeof(pBssHT->bd_ht_info_buf));
 	pBssHT->bd_ht_info_len = 0;

-	pBssHT->bdHTSpecVer = HT_SPEC_VER_IEEE;
+	pBssHT->bd_ht_spec_ver = HT_SPEC_VER_IEEE;

 	pBssHT->bdRT2RTAggregation = false;
 	pBssHT->bdRT2RTLongSlotTime = false;
@@ -714,7 +714,7 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 	 */
 	if (pNetwork->bssht.bd_support_ht) {
 		pHTInfo->bCurrentHTSupport = true;
-		pHTInfo->ePeerHTSpecVer = pNetwork->bssht.bdHTSpecVer;
+		pHTInfo->ePeerHTSpecVer = pNetwork->bssht.bd_ht_spec_ver;

 		if (pNetwork->bssht.bd_ht_cap_len > 0 &&
 		    pNetwork->bssht.bd_ht_cap_len <= sizeof(pHTInfo->PeerHTCapBuf))
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 8c7b0e21de95..0b2618df86aa 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1850,7 +1850,7 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 			*tmp_htcap_len = min_t(u8, info_element->len,
 					       MAX_IE_LEN);
 			if (*tmp_htcap_len != 0) {
-				network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
+				network->bssht.bd_ht_spec_ver = HT_SPEC_VER_EWC;
 				network->bssht.bd_ht_cap_len = min_t(u16, *tmp_htcap_len,
 								  sizeof(network->bssht.bd_ht_cap_buf));
 				memcpy(network->bssht.bd_ht_cap_buf,
@@ -1877,7 +1877,7 @@ static void rtllib_parse_mife_generic(struct rtllib_device *ieee,
 			*tmp_htinfo_len = min_t(u8, info_element->len,
 						MAX_IE_LEN);
 			if (*tmp_htinfo_len != 0) {
-				network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
+				network->bssht.bd_ht_spec_ver = HT_SPEC_VER_EWC;
 				network->bssht.bd_ht_info_len = min_t(u16, *tmp_htinfo_len,
 								      sizeof(network->bssht.bd_ht_info_buf));
 				memcpy(network->bssht.bd_ht_info_buf,
@@ -2022,7 +2022,7 @@ static void rtllib_parse_mfie_ht_cap(struct rtllib_info_element *info_element,

 	*tmp_htcap_len = min_t(u8, info_element->len, MAX_IE_LEN);
 	if (*tmp_htcap_len != 0) {
-		ht->bdHTSpecVer = HT_SPEC_VER_EWC;
+		ht->bd_ht_spec_ver = HT_SPEC_VER_EWC;
 		ht->bd_ht_cap_len = min_t(u16, *tmp_htcap_len,
 				       sizeof(ht->bd_ht_cap_buf));
 		memcpy(ht->bd_ht_cap_buf, info_element->data, ht->bd_ht_cap_len);
@@ -2234,7 +2234,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
 			tmp_htinfo_len = min_t(u8, info_element->len,
 					       MAX_IE_LEN);
 			if (tmp_htinfo_len) {
-				network->bssht.bdHTSpecVer = HT_SPEC_VER_IEEE;
+				network->bssht.bd_ht_spec_ver = HT_SPEC_VER_IEEE;
 				network->bssht.bd_ht_info_len = tmp_htinfo_len >
 					sizeof(network->bssht.bd_ht_info_buf) ?
 					sizeof(network->bssht.bd_ht_info_buf) :
@@ -2466,7 +2466,7 @@ static inline void update_network(struct rtllib_device *ieee,
 	dst->bssht.bd_ht_info_len = src->bssht.bd_ht_info_len;
 	memcpy(dst->bssht.bd_ht_info_buf, src->bssht.bd_ht_info_buf,
 	       src->bssht.bd_ht_info_len);
-	dst->bssht.bdHTSpecVer = src->bssht.bdHTSpecVer;
+	dst->bssht.bd_ht_spec_ver = src->bssht.bd_ht_spec_ver;
 	dst->bssht.bdRT2RTLongSlotTime = src->bssht.bdRT2RTLongSlotTime;
 	dst->broadcom_cap_exist = src->broadcom_cap_exist;
 	dst->ralink_cap_exist = src->ralink_cap_exist;
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
