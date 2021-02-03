Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DA730DB73
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 14:38:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0C85F228E3;
	Wed,  3 Feb 2021 13:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r1MMpceN1kFz; Wed,  3 Feb 2021 13:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4F58D2046A;
	Wed,  3 Feb 2021 13:38:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EEB011BF27A
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 13:38:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EB79286499
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 13:38:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kX103M60tcgl for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 13:38:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 87DF186092
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 13:38:39 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1l7IMd-0007Q7-2D; Wed, 03 Feb 2021 13:38:35 +0000
From: Colin King <colin.king@canonical.com>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Coiby Xu <coiby.xu@gmail.com>, netdev@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH][next] staging: qlge: fix read of an uninitialized pointer
Date: Wed,  3 Feb 2021 13:38:34 +0000
Message-Id: <20210203133834.22388-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.29.2
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

Currently the pointer 'reporter' is not being initialized and is
being read in a netdev_warn message.  The pointer is not used
and is redundant, fix this by removing it and replacing the reference
to it with priv->reporter instead.

Addresses-Coverity: ("Uninitialized pointer read")
Fixes: 1053c27804df ("staging: qlge: coredump via devlink health reporter")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/qlge/qlge_devlink.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
index c6ef5163e241..86834d96cebf 100644
--- a/drivers/staging/qlge/qlge_devlink.c
+++ b/drivers/staging/qlge/qlge_devlink.c
@@ -150,7 +150,6 @@ static const struct devlink_health_reporter_ops qlge_reporter_ops = {
 
 void qlge_health_create_reporters(struct qlge_adapter *priv)
 {
-	struct devlink_health_reporter *reporter;
 	struct devlink *devlink;
 
 	devlink = priv_to_devlink(priv);
@@ -160,5 +159,5 @@ void qlge_health_create_reporters(struct qlge_adapter *priv)
 	if (IS_ERR(priv->reporter))
 		netdev_warn(priv->ndev,
 			    "Failed to create reporter, err = %ld\n",
-			    PTR_ERR(reporter));
+			    PTR_ERR(priv->reporter));
 }
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
