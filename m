Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6169822B304
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 17:54:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 83C522042C;
	Thu, 23 Jul 2020 15:54:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qr4YNfJu1RkK; Thu, 23 Jul 2020 15:54:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB82720427;
	Thu, 23 Jul 2020 15:54:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5140C1BF2C7
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 15:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4DF018798F
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 15:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nMbcZdwyVU-i for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 15:54:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6937D87986
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 15:54:18 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jydXz-0001Lg-U7; Thu, 23 Jul 2020 15:54:16 +0000
From: Colin King <colin.king@canonical.com>
To: David Kershner <david.kershner@unisys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, sparmaintainer@unisys.com,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: unisys: visorhba: remove redundant initialization of
 variables scsicmd_id and rc
Date: Thu, 23 Jul 2020 16:54:15 +0100
Message-Id: <20200723155415.994036-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

The variables scsicmd_id and rc is being initialized with a value
that is never read and are being updated later with a new value.
The initializations are redundant and can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/unisys/visorhba/visorhba_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
index 99c57ceeb357..7ae5306b92fe 100644
--- a/drivers/staging/unisys/visorhba/visorhba_main.c
+++ b/drivers/staging/unisys/visorhba/visorhba_main.c
@@ -305,7 +305,7 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
 		(struct visorhba_devdata *)scsidev->host->hostdata;
 	int notifyresult = 0xffff;
 	wait_queue_head_t notifyevent;
-	int scsicmd_id = 0;
+	int scsicmd_id;
 
 	if (devdata->serverdown || devdata->serverchangingstate)
 		return FAILED;
@@ -1186,7 +1186,7 @@ static struct visor_driver visorhba_driver = {
  */
 static int visorhba_init(void)
 {
-	int rc = -ENOMEM;
+	int rc;
 
 	visorhba_debugfs_dir = debugfs_create_dir("visorhba", NULL);
 	if (!visorhba_debugfs_dir)
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
