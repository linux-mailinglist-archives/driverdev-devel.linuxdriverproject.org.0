Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B91F0203267
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 10:48:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5394D884DE;
	Mon, 22 Jun 2020 08:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9vjDWLQNEI7W; Mon, 22 Jun 2020 08:48:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C80488364;
	Mon, 22 Jun 2020 08:48:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DC301BF488
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 310592154E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s9zWB+uiWjtl
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 8D04C21539
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592815704; x=1624351704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=KY3d1JIhI9yHA9QoKxiMFSNmYtxSWWKQoiqpjcR9JEQ=;
 b=OLoxvW9lQ5ArSr7oAm4YGTG3Ljd7OImKAncc091/qYFX6Nv5p4BEMxwt
 w9MvLyEGKhYNLm/Q92rEtkgfmhmCmeOl28KY479hV/yaOEkddQgrtkELO
 FtL4RxALMqsZlzdctXqV5kX302sNPlyrf0YOqxR6QZJoaFqfYnxOQ+fjs
 YFsSv1nob1sL2rtKi0uCc8Z/cBvTnQqBrS23IJcwYhzY0igE/WC/wrsEM
 Ov8M+h9BIzLm5nta7utHwDms66sJx1wXYLDjtzgOnMxiTCtcZy6/S493U
 cR1mS4bwgj9VeXblrD6H1GQsIe9gZim5c+1JQvtXJb0eZly5Vnv03R/4b Q==;
IronPort-SDR: Nw3+B7oxe7GJGSIpsFBSzaCeW0ntB0CvQh4+CTgbns2aSI69zD1z/Gg8oTDYwbUEV6Vde0lf8o
 heovKqIyvfRF5HNQUCiurQoH+ST9M7goGK5e/yX3Y3LCMWaxDoEVhZb0HU9VxlEZ72uaXjvcA0
 fTKzfyewt80QX3kC3y18j4G0/oyuuObVWLiTx9pIndEtcFj+p4cdTTfRj5SFQAmBwGo44z+OcS
 KUmdkb9jiC8eSZktqk1LmCF9cPtpXs8oHb+nCH42Vhh5UAZHVrsOGoVWp2AoNsiWQ8CrXidYHL
 gxk=
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="84541922"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Jun 2020 01:48:24 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 22 Jun 2020 01:48:24 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 22 Jun 2020 01:48:23 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 5/6] staging: most: cdev: fix return values
Date: Mon, 22 Jun 2020 10:48:14 +0200
Message-ID: <1592815695-19305-6-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592815695-19305-1-git-send-email-christian.gromm@microchip.com>
References: <1592815695-19305-1-git-send-email-christian.gromm@microchip.com>
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
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch makes use of the proper return values when reporting
an error to the caller.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/cdev/cdev.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index d374cc0..aa7d7af 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -326,7 +326,7 @@ static int comp_disconnect_channel(struct most_interface *iface, int channel_id)
 
 	c = get_channel(iface, channel_id);
 	if (!c)
-		return -ENXIO;
+		return -EINVAL;
 
 	mutex_lock(&c->io_mutex);
 	spin_lock(&c->unlink);
@@ -360,7 +360,7 @@ static int comp_rx_completion(struct mbo *mbo)
 
 	c = get_channel(mbo->ifp, mbo->hdm_channel_id);
 	if (!c)
-		return -ENXIO;
+		return -EINVAL;
 
 	spin_lock(&c->unlink);
 	if (!c->access_ref || !c->dev) {
@@ -390,7 +390,7 @@ static int comp_tx_completion(struct most_interface *iface, int channel_id)
 
 	c = get_channel(iface, channel_id);
 	if (!c)
-		return -ENXIO;
+		return -EINVAL;
 
 	if ((channel_id < 0) || (channel_id >= iface->num_channels)) {
 		dev_warn(c->dev, "Channel ID out of range\n");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
