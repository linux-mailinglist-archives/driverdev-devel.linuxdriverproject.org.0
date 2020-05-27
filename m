Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD9D1E3D3D
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:06:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 845A988763;
	Wed, 27 May 2020 09:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6psc++CgtRPR; Wed, 27 May 2020 09:06:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05E0788412;
	Wed, 27 May 2020 09:06:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2FCAE1BF2EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 25C9787E6E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mLFUMo76ECxh
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CFC1987D3D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590570400; x=1622106400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=ECRnde2nGDyoF30q+Dp+0Em2TFoYB54Q32T69glwsBc=;
 b=VUfQvCJcpGGCo9zKuDE7/NPYYfqefLQWWg9Q2cgdNekqxdIOe8aRtpo/
 XDMMaGf1AsDBkxLNtwVxCOuBrl6y99R/MPZx6niAdUlU+03o0MtRlius2
 rX+SBmcJxxzGuCDH0cudzRG2phVS+HSm1Mx/oe5PPXlhOCcVZ2Kdft50z
 FXLqjZFa5iA1HukcbCmxyI8ywPj2u811xtUVS93mUV9+IgNcNKeLwJ2LL
 QoyW8WZdGxxny2tYNDZF/rhIWQQDAgqpCjGt6MZCWRBj1TaMM0zSHED+l
 nSpVtCiAXFf2mfYg94hHoaibe8cIGWO7jalAyJWYLo/lVYfZ8relDqjMC Q==;
IronPort-SDR: mtQHI88dzA2lmLkJL8wujurL9HgaWyXvXOPk0ZNSDo1cL9ut6l3hApizLO2FYbf6tgpqYbLbch
 6y++L7WeWglQU2L2MO5DpfROhjsaCIicMnuy4beIqBsFWd7aZgTuHwKri7I+2GUDcRyLKG4OeV
 BVekcrh/iXUlshR/ErP5tS5rGug7bCQVu74KUEPME33z5rWuQrPRzS9sqCMM7cqeNR3eHW9zET
 vmn7/aXmLLZWg8yPMloEp7BTczhRdQDMZpg3PNV6lGX/7QN5l/hQUPJP2CBWrgniGB9uuQOG+4
 lHE=
X-IronPort-AV: E=Sophos;i="5.73,440,1583218800"; d="scan'208";a="77955214"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 02:06:39 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 02:06:38 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 27 May 2020 02:06:37 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 06/10] staging: most: usb: don't use error path to exit
 function on success
Date: Wed, 27 May 2020 11:06:23 +0200
Message-ID: <1590570387-27069-7-git-send-email-christian.gromm@microchip.com>
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

This patch makes it transparent whether the function is exiting
with an error or successful.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/usb/usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 534825f..03318de 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -519,13 +519,13 @@ static int hdm_enqueue(struct most_interface *iface, int channel,
 			"URB submit failed with error %d.\n", retval);
 		goto err_unanchor_urb;
 	}
-	goto unlock_io_mutex;
+	mutex_unlock(&mdev->io_mutex);
+	return 0;
 
 err_unanchor_urb:
 	usb_unanchor_urb(urb);
 err_free_urb:
 	usb_free_urb(urb);
-unlock_io_mutex:
 	mutex_unlock(&mdev->io_mutex);
 	return retval;
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
