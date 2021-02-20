Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955753244EB
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 21:09:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19C5B43169;
	Wed, 24 Feb 2021 20:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oKC-gzdmVaaQ; Wed, 24 Feb 2021 20:09:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B0934315B;
	Wed, 24 Feb 2021 20:09:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB70F1BF83A
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B85ED6F697
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="Cwq+pyxB";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="M/WwK53d"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pJMHQMqwMNWd for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 20:07:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C482606EC
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 20:07:49 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 944406DC;
 Wed, 24 Feb 2021 15:07:48 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 24 Feb 2021 15:07:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=cZGraN8a3MamW
 JsGqYEosC8WQUI+osVcZnJUo8NNTcI=; b=Cwq+pyxBvH0d33t9RqrK+7VUPL2ue
 IuqzJtk2PgCOIe3Js+N6LXGgNLBt4W9CFNUdt5CVpblJyHIUEcXV3NP3ZrTDBqkS
 kWoKvD9uQtOTALag4FL3EjRPyZrxEfqAorg12OzvAQ6xgUX/D9OBZiVTcI/30cwX
 Iwi9U9o0dv8zEqbZb5wkR6eUFV5i7R2Hczp8SzMaTmhGXHB9Qj1i6CQPYQoHwvUx
 1e1MqKRM7l11CmpM7yb/W9858z3kyQbDAhrRgvS8raCc64qlRf94xqcMqB+9va/u
 /If2Y/OHKTqw0mzWVVli8IOTIQbz5oWcx4tBjQP2KVydW9g+zAFi1HTxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=cZGraN8a3MamWJsGqYEosC8WQUI+osVcZnJUo8NNTcI=; b=M/WwK53d
 tDzuVbS4kbQO0zPMxMa4yF1m3la/MwVHQnULmZhAhg4NeKTzQLGy0Q4VxeE23qqo
 fyHPSwMsj4vkFHJijtGHCbeiGxiBN5fXyZRLNg4gGrYBuw/tu2yOewW0n9HEBdqu
 eT5nekiHsqarUPlg0FHEP+7/n4UV4drvBUkh6v0TXg4lj7ZeeedeVDLzAP7kZgqQ
 L+xtYFaLvmdYst9kte/D6uGbDJtaB5EDnnE8WlmigURUqYCJsGrJc8dfxOPwvzmU
 lP1M6az9nriUgTgNKYm4hD3QDmeefe9wZm33H8BBJgdg1iufok0+0Vm/7X5CmO72
 gDB8oeCs3VrfTA==
X-ME-Sender: <xms:FLI2YOsvJI-qfBWlwMBerhxrJ9ACkbelyXf_K7_U_EnFK-R-ABCXoQ>
 <xme:FLI2YGuRl6BuwKIDF9sfSBGoovaC91Q2KRVpHvxglTAxgX_uebIWhdxxIn9uDMHKv
 6_Mwx0BNjZedjCzeg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:FLI2YDOQnU4OGXnQy77S7uEKwoZEecyd7hMzBUdpDG7_S6bTUP6z6A>
 <xmx:FLI2YE2zCZxaV8HpcPkKlO5Awt-L7dyxtSdI8BrZzvylYBYBPkv0kw>
 <xmx:FLI2YPMGxkLwpK_0apVYJd8wWgk4h9MsK7cg1upigNeIVzabcz32MQ>
 <xmx:FLI2YHXWdltbO-k-MLCvvC5Rm1_NdHBr8pbQn00nEfUKlkqkV6AFig>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id BB7A71080057;
 Wed, 24 Feb 2021 15:07:47 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 07/13] staging: rtl8192e: rename bdHTSpecVer to
 bd_ht_spec_ver in bss_ht struct
Date: Sat, 20 Feb 2021 17:29:03 +0000
Message-Id: <20210220172909.15812-8-will+git@drnd.me>
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

Rename bdHTSpecVer to bd_ht_spec_ver to silence a checkpatch warning
about CamelCase.

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
