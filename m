Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E06CD32943A
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 22:54:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 874CD843CF;
	Mon,  1 Mar 2021 21:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rQxj3i5A2Eu8; Mon,  1 Mar 2021 21:54:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B44A843C3;
	Mon,  1 Mar 2021 21:54:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7D3B1BF962
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D02D64325F
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="I+Gj68+f";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="qOKlIhUU"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJ2BHP-9XFkW for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 21:53:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F23D4315F
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 21:53:44 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id C37E8C8F;
 Mon,  1 Mar 2021 16:53:43 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 01 Mar 2021 16:53:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=zYpigH4mso795
 KruK7E9s18VHROixpgxjXzeI26+eWg=; b=I+Gj68+fTSkwGksEh/XR28C8cFal+
 Ylu5IayrS5qO4DoI84m7Dn+Jgxqv0yBepXFRxkTcOyBbmqkkXzxQJfqKnS7SSrzP
 egK54aU4d98cZ2nhotHmrLnhCtEp/274WqMJNOlpKh0Xr7Yv4zJzed+LzDQt2i9M
 c3zo0QhLVmFwi4fm/tOmD0Dp8HfMcctCSqqW/vQ9Wmv67E4QdlMDR5T+nBhIO7DU
 oNeWOH9iOhLILa3dV/DDg8sRN9OWnSAvyjhURvAXS2K9ndjGcaf4CXo+siylxBkf
 V92Ket09s3T5oo6017KV8L73BEWB8ZzRJLI+htThJuNIvQss3LREp7LeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=zYpigH4mso795KruK7E9s18VHROixpgxjXzeI26+eWg=; b=qOKlIhUU
 9QoEybIfwo0mu/FidxGVOW7BAsxoWPB1k1i/aI9z0g84vR9klMZ+pRA4SJ5GuZcp
 Z64wUZDPM725XozrRR2EdZYOP9cybncW3dNPR71zc09+QahakmsokEs8Zd07yyig
 QHmjWXLtC0lyIMsok+dPDHCHA7gQOnGZQa0u7ph2pE6ySfeVPRXPxbGZNpct2Par
 cFJ+WHeUMo0X+nzvrZiCCf8s4Qq5sgUXXz4tP/CrOzSpoN+DVei9flVD3XgBxV8D
 BPfvwLc4AzySocHQqW8K3Q+V5n4Mrftj9XQc8zN0RoemNAKKBev5bDsFHHvMUdI6
 szPNlCepxSApkA==
X-ME-Sender: <xms:Z2I9YEhXZN-7_V97RVW2f3e3XzVFNAigspbSzFmX2kj9UE1JiNRORg>
 <xme:Z2I9YHE50XwDuST4ugFbjmGEerrNnyerTv2Jn1JPyY5iJZ_RsBaMR5B6oisdwKbYU
 _NQCRxAVZ_qJob-DQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleekgdduheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:Z2I9YL9Wt4QlEfoeH1qIboydp5NQlaZeuuErrYRL2AvrodqZexoSBA>
 <xmx:Z2I9YGyEfGJUh_uV3RQyEbEA0AdqMnq5kS4qIaNahAc99D6pEB1UWg>
 <xmx:Z2I9YPMnGh3V0LiT3YzixNqtWCUGyDRMrybMs-mm1ksVxmjCy47IJw>
 <xmx:Z2I9YF2rl05qiUyos-_aJ8xsP2AXlIaOyjxYp0POAYciTVpsPak4ag>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id EF06824005A;
 Mon,  1 Mar 2021 16:53:42 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 8/9] staging: rtl8192e: rename RxLastFragNum to
 rx_last_frag_num in rx_ts_record struct
Date: Mon,  1 Mar 2021 21:53:33 +0000
Message-Id: <20210301215335.767-9-will+git@drnd.me>
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

Rename RxLastFragNum to rx_last_frag_num to silence a checkpatch warning
about CamelCase.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_TS.h | 2 +-
 drivers/staging/rtl8192e/rtllib_rx.c  | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TS.h b/drivers/staging/rtl8192e/rtl819x_TS.h
index af1e658f2028..c4995fda9ebb 100644
--- a/drivers/staging/rtl8192e/rtl819x_TS.h
+++ b/drivers/staging/rtl8192e/rtl819x_TS.h
@@ -49,7 +49,7 @@ struct rx_ts_record {
 	struct timer_list		rx_pkt_pending_timer;
 	struct ba_record rx_admitted_ba_record;
 	u16				rx_last_seq_num;
-	u8				RxLastFragNum;
+	u8				rx_last_frag_num;
 	u8				num;
 };

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index f1571e91aa08..8415f26fd4c0 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -938,10 +938,10 @@ static int rtllib_rx_check_duplicate(struct rtllib_device *ieee,

 		if (GetTs(ieee, (struct ts_common_info **) &pRxTS, hdr->addr2,
 			(u8)Frame_QoSTID((u8 *)(skb->data)), RX_DIR, true)) {
-			if ((fc & (1<<11)) && (frag == pRxTS->RxLastFragNum) &&
+			if ((fc & (1<<11)) && (frag == pRxTS->rx_last_frag_num) &&
 			    (WLAN_GET_SEQ_SEQ(sc) == pRxTS->rx_last_seq_num))
 				return -1;
-			pRxTS->RxLastFragNum = frag;
+			pRxTS->rx_last_frag_num = frag;
 			pRxTS->rx_last_seq_num = WLAN_GET_SEQ_SEQ(sc);
 		} else {
 			netdev_warn(ieee->dev, "%s(): No TS! Skip the check!\n",
--
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
