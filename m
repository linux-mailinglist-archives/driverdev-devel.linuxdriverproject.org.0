Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B8010AFA3
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Nov 2019 13:40:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7256686475;
	Wed, 27 Nov 2019 12:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QU3ia_EZZKrC; Wed, 27 Nov 2019 12:40:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCC6F86237;
	Wed, 27 Nov 2019 12:40:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DCEA1BF3A0
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 12:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2AF3586EAC
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 12:40:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7GbGhoUPBrbK for <devel@linuxdriverproject.org>;
 Wed, 27 Nov 2019 12:40:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6ACBE875A2
 for <devel@driverdev.osuosl.org>; Wed, 27 Nov 2019 12:40:04 +0000 (UTC)
Received: from faui04s.informatik.uni-erlangen.de
 (faui04s.informatik.uni-erlangen.de [131.188.30.149])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 74A252416A6;
 Wed, 27 Nov 2019 13:31:02 +0100 (CET)
Received: by faui04s.informatik.uni-erlangen.de (Postfix, from userid 66121)
 id 5873F15E0A86; Wed, 27 Nov 2019 13:31:02 +0100 (CET)
From: Dorothea Ehrl <dorothea.ehrl@fau.de>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] staging/qlge: remove initialising of static local variable
Date: Wed, 27 Nov 2019 13:30:48 +0100
Message-Id: <20191127123052.16424-1-dorothea.ehrl@fau.de>
X-Mailer: git-send-email 2.20.1
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

This patch fixes "ERROR: do not initialise statics to 0" by checkpatch.pl.

Signed-off-by: Dorothea Ehrl <dorothea.ehrl@fau.de>
Co-developed-by: Vanessa Hack <vanessa.hack@fau.de>
Signed-off-by: Vanessa Hack <vanessa.hack@fau.de>
---
 drivers/staging/qlge/qlge_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 6ad4515311f7..587102aa7fbf 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -4578,7 +4578,7 @@ static int qlge_probe(struct pci_dev *pdev,
 {
 	struct net_device *ndev = NULL;
 	struct ql_adapter *qdev = NULL;
-	static int cards_found = 0;
+	static int cards_found;
 	int err = 0;

 	ndev = alloc_etherdev_mq(sizeof(struct ql_adapter),
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
