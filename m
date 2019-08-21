Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2903F9792B
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 14:24:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8373D86DB4;
	Wed, 21 Aug 2019 12:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tpBHRW4CXW3; Wed, 21 Aug 2019 12:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3683C86D8A;
	Wed, 21 Aug 2019 12:24:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E78941BF326
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 12:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E323123B44
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 12:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rolqxW5QZgqS for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 12:24:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id C9E38232D2
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 12:24:08 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6924D7FB78D749D043E3;
 Wed, 21 Aug 2019 20:24:05 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Wed, 21 Aug 2019
 20:23:59 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <ebiggers@google.com>,
 <contact@christina-quast.de>, <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH -next] staging: rtl8192u: ieee80211: remove set but not used
 variable 'data_len'
Date: Wed, 21 Aug 2019 20:22:50 +0800
Message-ID: <20190821122250.71404-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c:
 In function ieee80211_ccmp_encrypt:
drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c:162:6:
 warning: variable data_len set but not used [-Wunused-but-set-variable]

It is not used since commit eb0e7bf3ca94 ("staging:
rtl8192u: ieee80211: ieee80211_crypt_ccmp.c: Use crypto API ccm(aes)")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index aecee42..a43a5d6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -159,7 +159,7 @@ static int ccmp_init_iv_and_aad(struct rtl_80211_hdr_4addr *hdr,
 static int ieee80211_ccmp_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 {
 	struct ieee80211_ccmp_data *key = priv;
-	int data_len, i;
+	int i;
 	u8 *pos;
 	struct rtl_80211_hdr_4addr *hdr;
 	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
@@ -169,7 +169,6 @@ static int ieee80211_ccmp_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	    skb->len < hdr_len)
 		return -1;
 
-	data_len = skb->len - hdr_len;
 	pos = skb_push(skb, CCMP_HDR_LEN);
 	memmove(pos, pos + CCMP_HDR_LEN, hdr_len);
 	pos += hdr_len;
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
