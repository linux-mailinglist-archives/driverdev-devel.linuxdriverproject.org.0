Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C81D1E3D3F
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:06:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B2CBB23B31;
	Wed, 27 May 2020 09:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nj7UnHSBdtW0; Wed, 27 May 2020 09:06:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A3C9E20432;
	Wed, 27 May 2020 09:06:43 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4FD071BF2EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C75687D5D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xHWQgFQCrBku
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EBD6887D3D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590570397; x=1622106397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=lsUcpKtRbtwIVfqJipCwSMyz8FtKI9qpl8FjLw2PMSo=;
 b=y2cDPEjCS101OJjnpNFo8cdaF/DYHLpKmtgJwMN36HfpLDwuJT/9acfD
 X+TWQqCJ24WFMOi6LLf9m/nPL6YoFa1T2SvRDerflwXrio3Gi1NDuYFKb
 evuSnq5vxN7tsSa/1r7nv7c7Yfl9Ljd2Va+AMTBMn25rmxt88zJmBgI9m
 J0beW2vYAoUU3leKDKIc/OhXzumao0rUs3CX43xB3RFfFj4jW4qMT9eR+
 2rkPlDZaIZISx5zooTlx0mHYJucax1yIyukSnde+e/hnT7L0vlAYXtqHW
 Y6QtJMOplrmnwXkfRj88mhmjaND/1no9oYRN6js3aAO94LK1NVYqxlJ1k w==;
IronPort-SDR: 1j0tLSS/i3BabXnffbGGi6SM6o6z71ACMDogRbKzxjDqWAtCuy3pq/HXFq6eCjcVpCwJTIF7Y/
 47w32dNCL4EcicfFuV5bQcSenV70Wj0LtwnifnVNxMbA5gbqgtN9X9xUsS9VviP94bZGpR5Z4k
 GJlLy4E7mAjXxN72YX0NG/K7oVPKD3n91KJdM/vtuT2r+7uw3wmGSaSzuTE2YZvtY70PCFKGTs
 V6ByKCBsRRI4QZI1oOwwGXjqrMQVdmeE6P1eAUbBa0qLeX0QWmaEiXaVH91yUcOtHm6xa/QKE5
 KpI=
X-IronPort-AV: E=Sophos;i="5.73,440,1583218800"; d="scan'208";a="77204595"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 02:06:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 02:06:36 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 27 May 2020 02:06:35 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 04/10] staging: most: usb: return 0 instead of variable
Date: Wed, 27 May 2020 11:06:21 +0200
Message-ID: <1590570387-27069-5-git-send-email-christian.gromm@microchip.com>
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

This patch returns 0 instead of variable in case of invalid parameter
has been passed to function to increase readability.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/usb/usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 64005b6..a605e0f 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -192,12 +192,12 @@ static inline int start_sync_ep(struct usb_device *usb_dev, u16 ep)
 static unsigned int get_stream_frame_size(struct device *dev,
 					  struct most_channel_config *cfg)
 {
-	unsigned int frame_size = 0;
+	unsigned int frame_size;
 	unsigned int sub_size = cfg->subbuffer_size;
 
 	if (!sub_size) {
 		dev_warn(dev, "Misconfig: Subbuffer size zero.\n");
-		return frame_size;
+		return 0;
 	}
 	switch (cfg->data_type) {
 	case MOST_CH_ISOC:
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
