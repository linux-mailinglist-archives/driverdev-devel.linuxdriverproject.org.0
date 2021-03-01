Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A539329434
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 22:54:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3D8B6F5E9;
	Mon,  1 Mar 2021 21:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g40GHSzXUCGI; Mon,  1 Mar 2021 21:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 318A96070E;
	Mon,  1 Mar 2021 21:54:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C71731BF962
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C19F5843C8
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=drnd.me header.b="bujaHfR7";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="POsdOMhb"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SBWJoBXtJNOu for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 21:53:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0613E843C3
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 21:53:41 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 8A294BE8;
 Mon,  1 Mar 2021 16:53:39 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 01 Mar 2021 16:53:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=QVPFFQi0U1nnE
 QSMyR8r21axQo9LtbKoHtTzqm3bSUU=; b=bujaHfR7DZqDGYUGCGMyWFLVqFNR+
 N/fak5racrkAkVR+FibKdynQUZLddXiI1jVImPPjSz/ngVhC8YkRr7T3lmt8vJlu
 Irs6CR0we1asjXIPT6MoI4xsT4bE4s3FM1owBXS/atUXczLi7JMxidXhBmLhlq5l
 TrUYhJg8uYpaVr+saz2Vg8GZXU9htJ8qOctF/E87MNz75Ydz/sosGJHZFoWqqEAa
 kkipq4OLwfHrhpRpunILrJX1tmQSnotAda3Qb1l8ZhGX73R+4yFdEsGp39PvXCGk
 jNyXwv6SnD/r+mdEuonN14ENQ/fH/i20tva5RS4GeAh94qozOsesvJpwQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=QVPFFQi0U1nnEQSMyR8r21axQo9LtbKoHtTzqm3bSUU=; b=POsdOMhb
 +FgUImgcW8TMTa4DidrWQ6+PMkU71d/8qNfkSohDWux5CGrjm2Vay47QZUZgu5u2
 7FrhJAa9L5RSkePSF5VTk74KnQqyH61X7IK2AmQmdYHAcIIsnCuVc+CbcgD9sKjC
 epfxucMn5AdvQ2w+uar3WNAJIcCi1aAdZQCCwV6y2Ts4p10awzNoXUG0+4FhuQec
 lPJLckta5BYf2/L31EJzD1FbR3guWS1gwZ1gWBvLXXPkBztqHJRVYR0i6ItakhOE
 +dH+4SOW0vPEKRkqK3BSmMNLHxjkJ06F6tcEoqq2GDqeWETYkATnhnF5GOPNv6xD
 fvvp5xt9wWw3QQ==
X-ME-Sender: <xms:YmI9YK7_Mtd-ft9qHVOXr4t_Dtcg0PpEUPDZFO2MoJhDoS64ehXtIA>
 <xme:YmI9YD5Ny1LLDPJrIVs6lMrXftGTy--B03RtfMfNkNS3dExPcUQ_tCKEQXI_U5kQ3
 PhRd9MiY2Oz5XEsog>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleekgdduheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:YmI9YJfvfdhkwVaU6WPyTQrxnPAfywlE8k07qIx4O7Gnux0sj2KTNA>
 <xmx:YmI9YHIZ-GjqJJmrHxEcBiqxR45TaZMrCWAy5F7_0I4GjqoVOiPGew>
 <xmx:YmI9YOIF2yVJUZENOv0U4f_aKVdwqcZEZ_weoTwGden57eWnTAAN3A>
 <xmx:Y2I9YIzIKrK07NRboZAgWPeum1u2-qBQQIO3LiRcbGgN7NSiKv41VQ>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 729D7240068;
 Mon,  1 Mar 2021 16:53:38 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/9] staging: rtl8192e: rename TsCommonInfo to ts_common_info
 in rx_ts_record struct
Date: Mon,  1 Mar 2021 21:53:26 +0000
Message-Id: <20210301215335.767-2-will+git@drnd.me>
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

Rename TsCommonInfo to ts_common_info to silence a checkpatch warning
about CamelCase.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_BAProc.c |  2 +-
 drivers/staging/rtl8192e/rtl819x_TS.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 10 +++++-----
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 880b5f1c14d7..760d143cb3bd 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -549,7 +549,7 @@ void RxBaInactTimeout(struct timer_list *t)
 				     RxTsRecord[pRxTs->num]);

 	RxTsDeleteBA(ieee, pRxTs);
-	rtllib_send_DELBA(ieee, pRxTs->TsCommonInfo.Addr,
+	rtllib_send_DELBA(ieee, pRxTs->ts_common_info.Addr,
 			  &pRxTs->RxAdmittedBARecord, RX_DIR,
 			  DELBA_REASON_TIMEOUT);
 }
diff --git a/drivers/staging/rtl8192e/rtl819x_TS.h b/drivers/staging/rtl8192e/rtl819x_TS.h
index 9dc93d41939d..58879fbba9ef 100644
--- a/drivers/staging/rtl8192e/rtl819x_TS.h
+++ b/drivers/staging/rtl8192e/rtl819x_TS.h
@@ -42,7 +42,7 @@ struct tx_ts_record {
 };

 struct rx_ts_record {
-	struct ts_common_info TsCommonInfo;
+	struct ts_common_info ts_common_info;
 	u16				RxIndicateSeq;
 	u16				RxTimeoutIndicateSeq;
 	struct list_head		RxPendingPktList;
diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index ff65aa45abe0..f8e7beb7909f 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -123,7 +123,7 @@ static void ResetTxTsEntry(struct tx_ts_record *pTS)

 static void ResetRxTsEntry(struct rx_ts_record *pTS)
 {
-	ResetTsCommonInfo(&pTS->TsCommonInfo);
+	ResetTsCommonInfo(&pTS->ts_common_info);
 	pTS->RxIndicateSeq = 0xffff;
 	pTS->RxTimeoutIndicateSeq = 0xffff;
 	ResetBaEntry(&pTS->RxAdmittedBARecord);
@@ -169,10 +169,10 @@ void TSInitialize(struct rtllib_device *ieee)
 		pRxTS->num = count;
 		INIT_LIST_HEAD(&pRxTS->RxPendingPktList);

-		timer_setup(&pRxTS->TsCommonInfo.SetupTimer, TsSetupTimeOut,
+		timer_setup(&pRxTS->ts_common_info.SetupTimer, TsSetupTimeOut,
 			    0);

-		timer_setup(&pRxTS->TsCommonInfo.InactTimer, TsInactTimeout,
+		timer_setup(&pRxTS->ts_common_info.InactTimer, TsInactTimeout,
 			    0);

 		timer_setup(&pRxTS->RxAdmittedBARecord.timer,
@@ -181,7 +181,7 @@ void TSInitialize(struct rtllib_device *ieee)
 		timer_setup(&pRxTS->RxPktPendingTimer, RxPktPendingTimeout, 0);

 		ResetRxTsEntry(pRxTS);
-		list_add_tail(&pRxTS->TsCommonInfo.List,
+		list_add_tail(&pRxTS->ts_common_info.List,
 			      &ieee->Rx_TS_Unused_List);
 		pRxTS++;
 	}
@@ -364,7 +364,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
 			struct rx_ts_record *tmp =
 				 container_of(*ppTS,
 				 struct rx_ts_record,
-				 TsCommonInfo);
+				 ts_common_info);
 			ResetRxTsEntry(tmp);
 		}

--
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
