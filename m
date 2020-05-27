Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ABB1E3D3B
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:06:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71D3887D8B;
	Wed, 27 May 2020 09:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7ymPykxLWVk; Wed, 27 May 2020 09:06:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75BAB87D75;
	Wed, 27 May 2020 09:06:45 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9A2C1BF2EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C663387E6E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BVfgP8WegYwm
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4FB2B87D5D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590570400; x=1622106400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Ubu5DjfeMwuoDfB7rELb/kow3WmwDtRNqlTYJOZEPRo=;
 b=yopHUqx45jlkPzQp4aCC/9CM5JITyXoa5/xukd7uTGIUX1X2NHUSltXk
 XjgkBUczyv3Yx758clSnD27AbN779+A8jxk5R9+KHK8NlpdIcmaiOOPff
 5z6Th0tyRnZnB0Ir/P3CPtUqaMcZeVP1E21z1OqPnGx6BNw/FPHzl5vxK
 Ls+CmMwkrpmPcUtgPbmFQTlY0EsguS3o6SQlsoErEn5A95/ppMQWbxxzs
 CofKpXwajbn8uNrthtVawpyL8UvDkpiOU8lShdWD1hsbnErs2JXqMgXFq
 vHg97Ene4/J8ONl9nO5lRpi4l4Kr0TGCh2PzhyuqD1lfAPo2XQWF951w5 g==;
IronPort-SDR: 4sKuQhn51/IgvXLOji8+H0LK7IdpJXbTWXQtLD5a4dR6FVsPXy+jcVbgnC2zz4Z0+QPyorwzT/
 bs4tSMtDrXYrbvnigLY8fagOIrrjD2QOdXteTWr/zhb7kLXDw8MErCNW1zp39vDUmEq/+0xmVj
 PMN0EGVZmAIf2z87PuHhYhkw831AAkyD85Q2Ivin32AdcMxfMYFDP1P5FDrTmg8VNc3dFX++Jj
 8fnCLYW44zwAteYwTbvORlVeZr7soX0XiTx8YSUNF7HKV6qQ3fcLQ96RyqrruJ9gHMszZACabp
 fYA=
X-IronPort-AV: E=Sophos;i="5.73,440,1583218800"; d="scan'208";a="74590227"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 02:06:40 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 02:06:33 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 27 May 2020 02:06:38 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 07/10] staging: most: usb: replace code to calculate array
 index
Date: Wed, 27 May 2020 11:06:24 +0200
Message-ID: <1590570387-27069-8-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590570387-27069-1-git-send-email-christian.gromm@microchip.com>
References: <1590570387-27069-1-git-send-email-christian.gromm@microchip.com>
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch removes the expression that makes use of a priori knowledge
about channel numbers to calculate an array index.
The expression 'peer = 1 - channel' utilizes the fact that an USB interface
that operates on the asynchronous data of the Network only has two
endpoints. Hence, channel being 0 or 1. The replacement is more simple and
less confusing when reading the code.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/usb/usb.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 03318de..468aabf 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -729,6 +729,8 @@ static void wq_clear_halt(struct work_struct *wq_obj)
 	struct most_dev *mdev = clear_work->mdev;
 	unsigned int channel = clear_work->channel;
 	int pipe = clear_work->pipe;
+	int snd_pipe;
+	int peer;
 
 	mutex_lock(&mdev->io_mutex);
 	most_stop_enqueue(&mdev->iface, channel);
@@ -746,9 +748,12 @@ static void wq_clear_halt(struct work_struct *wq_obj)
 	 */
 	if (mdev->conf[channel].data_type == MOST_CH_ASYNC &&
 	    mdev->conf[channel].direction == MOST_CH_RX) {
-		int peer = 1 - channel;
-		int snd_pipe = usb_sndbulkpipe(mdev->usb_device,
-					       mdev->ep_address[peer]);
+		if (channel == 0)
+			peer = 1;
+		else
+			peer = 0;
+		snd_pipe = usb_sndbulkpipe(mdev->usb_device,
+					   mdev->ep_address[peer]);
 		usb_clear_halt(mdev->usb_device, snd_pipe);
 	}
 	mdev->is_channel_healthy[channel] = true;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
