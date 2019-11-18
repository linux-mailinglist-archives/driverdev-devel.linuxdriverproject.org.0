Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5238FFFD0
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 08:51:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 88E8286523;
	Mon, 18 Nov 2019 07:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id naW0OXkI+7wm; Mon, 18 Nov 2019 07:51:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA367864F4;
	Mon, 18 Nov 2019 07:51:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EBBC1BF424
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:51:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 74B0385C63
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tXRbcCsvAjp4 for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 07:51:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2950885C4F
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 07:51:10 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C13FC1BA059F7D7C8865;
 Mon, 18 Nov 2019 15:51:06 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Mon, 18 Nov 2019
 15:50:58 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <colin.king@canonical.com>,
 <bhanusreemahesh@gmail.com>, <puranjay12@gmail.com>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH -next] staging: rtl8192e: remove set but not used variable
 'frag'
Date: Mon, 18 Nov 2019 15:58:21 +0800
Message-ID: <1574063901-87429-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c: In function _rtl92e_process_phyinfo:
drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c:1689:15: warning: variable frag set but not used [-Wunused-but-set-variable]

It is introduced by commit 3d461c912462 ("rtl8192e:
Split into two directories"), but never used, so remove it.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index ef92ce9..980b850 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -1686,11 +1686,10 @@ static void _rtl92e_process_phyinfo(struct r8192_priv *priv, u8 *buffer,
 	static u32 last_beacon_adc_pwdb;
 	struct rtllib_hdr_3addr *hdr;
 	u16 sc;
-	unsigned int frag, seq;
+	unsigned int seq;

 	hdr = (struct rtllib_hdr_3addr *)buffer;
 	sc = le16_to_cpu(hdr->seq_ctl);
-	frag = WLAN_GET_SEQ_FRAG(sc);
 	seq = WLAN_GET_SEQ_SEQ(sc);
 	curr_st->Seq_Num = seq;
 	if (!prev_st->bIsAMPDU)
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
