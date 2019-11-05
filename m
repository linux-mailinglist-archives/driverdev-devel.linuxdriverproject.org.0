Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB837F0045
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 15:49:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 51A108965D;
	Tue,  5 Nov 2019 14:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dselj3BYOFWr; Tue,  5 Nov 2019 14:49:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08DAD895C5;
	Tue,  5 Nov 2019 14:49:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DDA01BF354
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 14:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 66CC384415
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 14:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a4_dLPksxW3s for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 14:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-m975.mail.163.com (mail-m975.mail.163.com [123.126.97.5])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 918D4843ED
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 14:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=fmCmuOAiEUwEwfeCcX
 FYBqOu7taXOPv5Mn5DJrGyiqw=; b=S55SVB4XKcW2KybHxCblxfDEYjf39VXJHa
 9PxmKcMsjybQcsDcQjhwRDdgN6mLTwVVNX4CTcbIApI9QLE3jRBQZADnNtizuIkh
 bGbz570JGl7Ns+z6jp2Rj1ub4+do+qBEKtdk51uzr4WLAIuGDQDSiZhGQP2W92Be
 +6L1Zee4k=
Received: from localhost.localdomain (unknown [202.112.113.212])
 by smtp5 (Coremail) with SMTP id HdxpCgD3iCLvi8FdNofqJw--.256S3;
 Tue, 05 Nov 2019 22:49:23 +0800 (CST)
From: Pan Bian <bianpan2016@163.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Himadri Pandya <himadri18.07@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>,
 Colin Ian King <colin.king@canonical.com>
Subject: [PATCH] staging: rtl8192e: fix potential use after free
Date: Tue,  5 Nov 2019 22:49:11 +0800
Message-Id: <1572965351-6745-1-git-send-email-bianpan2016@163.com>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: HdxpCgD3iCLvi8FdNofqJw--.256S3
X-Coremail-Antispam: 1Uf129KBjvJXoW7tr48JF48Ww4fAw1xXrWxXrb_yoW8Jw1UpF
 4rGwnIyrWUZr48u3ykAFWIgryFka1SgF9agay3X3yrZrZxCw1rXryqvFyjqr45CrZ3CF4a
 qFn5Kr15uan8WaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UXeOXUUUUU=
X-Originating-IP: [202.112.113.212]
X-CM-SenderInfo: held01tdqsiiqw6rljoofrz/xtbBURNkclaD5I2j7AAAsn
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
Cc: devel@driverdev.osuosl.org, Pan Bian <bianpan2016@163.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The variable skb is released via kfree_skb() when the return value of
_rtl92e_tx is not zero. However, after that, skb is accessed again to
read its length, which may result in a use after free bug. This patch
fixes the bug by moving the release operation to where skb is never
used later.

Signed-off-by: Pan Bian <bianpan2016@163.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index f932cb15e4e5..cdcb22f96ed9 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -1616,14 +1616,15 @@ static void _rtl92e_hard_data_xmit(struct sk_buff *skb, struct net_device *dev,
 	memcpy((unsigned char *)(skb->cb), &dev, sizeof(dev));
 	skb_push(skb, priv->rtllib->tx_headroom);
 	ret = _rtl92e_tx(dev, skb);
-	if (ret != 0)
-		kfree_skb(skb);
 
 	if (queue_index != MGNT_QUEUE) {
 		priv->rtllib->stats.tx_bytes += (skb->len -
 						 priv->rtllib->tx_headroom);
 		priv->rtllib->stats.tx_packets++;
 	}
+
+	if (ret != 0)
+		kfree_skb(skb);
 }
 
 static int _rtl92e_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
