Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4585010AFA0
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Nov 2019 13:40:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 357458769A;
	Wed, 27 Nov 2019 12:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VuyHrDNmCvoj; Wed, 27 Nov 2019 12:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13B4B86EAC;
	Wed, 27 Nov 2019 12:40:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E17631BF3A0
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 12:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DDAB3875A9
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 12:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WCsMsrn3bI-e for <devel@linuxdriverproject.org>;
 Wed, 27 Nov 2019 12:40:04 +0000 (UTC)
X-Greylist: delayed 00:08:56 by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1C6CD86F9E
 for <devel@driverdev.osuosl.org>; Wed, 27 Nov 2019 12:40:04 +0000 (UTC)
Received: from faui04s.informatik.uni-erlangen.de
 (faui04s.informatik.uni-erlangen.de [131.188.30.149])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id B65EE241837;
 Wed, 27 Nov 2019 13:31:02 +0100 (CET)
Received: by faui04s.informatik.uni-erlangen.de (Postfix, from userid 66121)
 id 9582315E0CF3; Wed, 27 Nov 2019 13:31:02 +0100 (CET)
From: Dorothea Ehrl <dorothea.ehrl@fau.de>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] staging/qlge: remove braces in conditional statement
Date: Wed, 27 Nov 2019 13:30:51 +0100
Message-Id: <20191127123052.16424-4-dorothea.ehrl@fau.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191127123052.16424-1-dorothea.ehrl@fau.de>
References: <20191127123052.16424-1-dorothea.ehrl@fau.de>
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
Cc: Vanessa Hack <vanessa.hack@fau.de>, Dorothea Ehrl <dorothea.ehrl@fau.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes "WARNING: braces {} are not necessary for single
statement blocks" and "WARNING: braces {} are not necessary for any arm
of this statement" by checkpatch.pl.

Signed-off-by: Dorothea Ehrl <dorothea.ehrl@fau.de>
Co-developed-by: Vanessa Hack <vanessa.hack@fau.de>
Signed-off-by: Vanessa Hack <vanessa.hack@fau.de>
---
 drivers/staging/qlge/qlge_main.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index f5ab6cc7050a..d19709bcdc20 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -4101,11 +4101,11 @@ static int qlge_change_mtu(struct net_device *ndev, int new_mtu)
 	struct ql_adapter *qdev = netdev_priv(ndev);
 	int status;

-	if (ndev->mtu == 1500 && new_mtu == 9000) {
+	if (ndev->mtu == 1500 && new_mtu == 9000)
 		netif_err(qdev, ifup, qdev->ndev, "Changing to jumbo MTU.\n");
-	} else if (ndev->mtu == 9000 && new_mtu == 1500) {
+	else if (ndev->mtu == 9000 && new_mtu == 1500)
 		netif_err(qdev, ifup, qdev->ndev, "Changing to normal MTU.\n");
-	} else
+	else
 		return -EINVAL;

 	queue_delayed_work(qdev->workqueue,
@@ -4113,9 +4113,8 @@ static int qlge_change_mtu(struct net_device *ndev, int new_mtu)

 	ndev->mtu = new_mtu;

-	if (!netif_running(qdev->ndev)) {
+	if (!netif_running(qdev->ndev))
 		return 0;
-	}

 	status = ql_change_rx_buffers(qdev);
 	if (status) {
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
