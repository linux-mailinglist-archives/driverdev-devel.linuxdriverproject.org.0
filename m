Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51508329438
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 22:54:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE080843DC;
	Mon,  1 Mar 2021 21:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4LHamUGtY07w; Mon,  1 Mar 2021 21:54:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21EB9843C6;
	Mon,  1 Mar 2021 21:54:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 69FB81BF956
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58ECF6F539
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="qlbWNTHA";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="FMwF7Kac"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W8aUULX5l-du for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 21:53:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D31316F492
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 21:53:43 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 40C7BC1A;
 Mon,  1 Mar 2021 16:53:43 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 01 Mar 2021 16:53:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=0LyseU5C87ltv
 fXLuFNKHSQe/yp3pP8im2gMaEiJ8sU=; b=qlbWNTHAFC8iBW11mAMWuaZyNc3Rk
 x25Yz97wB8NXnIG0Ih+B4UkeGsdrXD1Gk3bznylq6TNlsrsi5YAp+fg8Mc1A1CPn
 PfsZ85PK1sUUzMz6RvLxSZssLAGPi/JQ5QZWZb6XgM1ZbDCJhRgRHQ6E47MUPF50
 fzgvCiely/mcL/eHZxIVCAExMp7LOoT0gIWkOAwFGd/AFg8/m5WmZ83BSHrK081d
 7fsJikqLL2jp1hQXNq1JZiRnjWlk90RXAVbAW4FdcnDLFM+/y67TgmDmUHm6DLwv
 MKGWqZUX8tU1HuIoUm+4FPsz7rbXrVUSTAjwljNYyR0jimd8nBONK4ikw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=0LyseU5C87ltvfXLuFNKHSQe/yp3pP8im2gMaEiJ8sU=; b=FMwF7Kac
 /mpFzb0K7vil6J1yWhR0wyT4BjdU1lr5A+YGdj9shKUuMlUf2Y1cg0UsyGlisBdD
 pyG+Vh/NZmdtYSrm2MdevqAY8mzA/y31g1JsNS4D9/baoL1z3B71JTrp0bhIRq+h
 PK6HLnu6kusn1KJmQy3gsIVRjKfxZS0tHP2JwG6ffsNVTiG3LBsN0dAJ1aFh4+7t
 159ToFnFgDF+P7KXollxYYo3S9LTRyYFsxtwFI9ahx/wIDqgzhQ8ukm0VFXByNOF
 U542qPU95PAQD01UYXF6t9yRW+Tm+zNRMHexEEhl5HZrA6YcSjR7y9t96Vh9hBw/
 us3YGkcy8yXe6g==
X-ME-Sender: <xms:ZmI9YM-aHbDq92EO6na7z1_3CdcWMtWZYd4A468oDguuMry2MQifAQ>
 <xme:ZmI9YAIyGx0ZmNiBtSCAL2YH2Z5mJLwJYLp9RShWRYwyOnt_CrYjdRpvpPhv7YVEq
 4hIm22Cn0Z49FsI3g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleekgdduheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:ZmI9YFgqRTFjnDhsq7Ir25xPyXNWbLrkQZVIjURfI2nDKEQs-bPNlw>
 <xmx:ZmI9YA7-ypLUQGipD8c9MRZEROdsGEgHvNy7JObbV1RvAPrdD9aK8w>
 <xmx:ZmI9YNZSqdzp6WG9bA2f8XXRtIXGDx3RIODWxZHqj_C3Cpamx0T1EQ>
 <xmx:ZmI9YBgP0nfaDLD6wwuBdAegOUE7h-ebvuPOWURHvNkMpXj8vwGBcQ>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 574D3240067;
 Mon,  1 Mar 2021 16:53:42 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 7/9] staging: rtl8192e: rename RxLastSeqNum to rx_last_seq_num
 in rx_ts_record struct
Date: Mon,  1 Mar 2021 21:53:32 +0000
Message-Id: <20210301215335.767-8-will+git@drnd.me>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210301215335.767-1-will+git@drnd.me>
References: <20210301215335.767-1-will+git@drnd.me>
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

Rename RxLastSeqNum to rx_last_seq_num to silence a checkpatch warning
about CamelCase.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_TS.h | 2 +-
 drivers/staging/rtl8192e/rtllib_rx.c  | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TS.h b/drivers/staging/rtl8192e/rtl819x_TS.h
index 333bf6b4f164..af1e658f2028 100644
--- a/drivers/staging/rtl8192e/rtl819x_TS.h
+++ b/drivers/staging/rtl8192e/rtl819x_TS.h
@@ -48,7 +48,7 @@ struct rx_ts_record {
 	struct list_head		rx_pending_pkt_list;
 	struct timer_list		rx_pkt_pending_timer;
 	struct ba_record rx_admitted_ba_record;
-	u16				RxLastSeqNum;
+	u16				rx_last_seq_num;
 	u8				RxLastFragNum;
 	u8				num;
 };
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 50c30993f68d..f1571e91aa08 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -939,10 +939,10 @@ static int rtllib_rx_check_duplicate(struct rtllib_device *ieee,
 		if (GetTs(ieee, (struct ts_common_info **) &pRxTS, hdr->addr2,
 			(u8)Frame_QoSTID((u8 *)(skb->data)), RX_DIR, true)) {
 			if ((fc & (1<<11)) && (frag == pRxTS->RxLastFragNum) &&
-			    (WLAN_GET_SEQ_SEQ(sc) == pRxTS->RxLastSeqNum))
+			    (WLAN_GET_SEQ_SEQ(sc) == pRxTS->rx_last_seq_num))
 				return -1;
 			pRxTS->RxLastFragNum = frag;
-			pRxTS->RxLastSeqNum = WLAN_GET_SEQ_SEQ(sc);
+			pRxTS->rx_last_seq_num = WLAN_GET_SEQ_SEQ(sc);
 		} else {
 			netdev_warn(ieee->dev, "%s(): No TS! Skip the check!\n",
 				    __func__);
--
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
