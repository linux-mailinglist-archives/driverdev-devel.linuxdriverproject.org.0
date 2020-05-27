Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 339D71E3D3A
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:06:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D01F88552;
	Wed, 27 May 2020 09:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ao8DX8flVn9C; Wed, 27 May 2020 09:06:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 962AE87D5D;
	Wed, 27 May 2020 09:06:44 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E0C91BF2EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 658A587D5D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nG3kIOnEk5YS
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E764E87D3D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590570397; x=1622106397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=qHSHd1bgmgLlhngnky1syAKjrwWciKU5ySfx008erzA=;
 b=MzsCPVTAWpUNKbYiHQJSdAUskJdE0hVffvGQsVosOMFF5aVnfmO19vN5
 Oo75NahKF+Fh2NMF+r1i40f73DfSFqzq7VrxClLoHsYp41yCN29FHU0fG
 cSj3u9pSgwtuFm9Q2N3QSh4rFL/ekaAX1BLCpAYbFkVcvrqEuPM4Ek10h
 yU8YZMSIEZ26K7RUrThizmcKXP18Y/ZmNXE7rmLhxHjyyc1Yni299kgEh
 SAl3PYsMcgbg8fzt4bhqLS6dUwEg0uehB57yDZF6Yx6HLXOLyiDNrXg8q
 hjONH9jO5eLMll4VQ7mLl0utTjE8o6Ddkt5URUejyIPasgnaaxWIzwgEA g==;
IronPort-SDR: yVXOOwX0QQWb8rRcKDqq81HXC+fOA7If8M2vGB4me/1fCAk2fcKBM7xqdYG9bf/f6l0LCjmLDU
 IpYYUE73swjsfxUQy6bblSRJNlUm26tMc3Zm7xoSPgnccRmPWk4aCwpGyjWDmEq7gXXWddqiNO
 HBaerpZLhagYDZNM+q2fsvs4T2DDYUfJcy+26JuqI2KlaNERxvpZClD9tqBBWfACSLbTPKpfcr
 RURCZDDXoSDUUMNk5teHcBmBEom7nAXb2jm2paXo0YM78qGDhpuxL/AexaDA0ZthNVuLA5NfqF
 yqk=
X-IronPort-AV: E=Sophos;i="5.73,440,1583218800"; d="scan'208";a="74590217"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 02:06:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 02:06:30 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 27 May 2020 02:06:36 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 05/10] staging: most: usb: move allocation of URB out of
 critical section
Date: Wed, 27 May 2020 11:06:22 +0200
Message-ID: <1590570387-27069-6-git-send-email-christian.gromm@microchip.com>
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

This patch puts the call to usb_alloc_urb() before the critical
section starts that is protected with the io_mutex lock. This is
to make the section as short as possible and to use the regular
GFP_KERNEL flag.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/usb/usb.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index a605e0f..534825f 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -467,18 +467,16 @@ static int hdm_enqueue(struct most_interface *iface, int channel,
 	if (iface->num_channels <= channel || channel < 0)
 		return -ECHRNG;
 
+	urb = usb_alloc_urb(NO_ISOCHRONOUS_URB, GFP_KERNEL);
+	if (!urb)
+		return -ENOMEM;
+
 	conf = &mdev->conf[channel];
 
 	mutex_lock(&mdev->io_mutex);
 	if (!mdev->usb_device) {
 		retval = -ENODEV;
-		goto unlock_io_mutex;
-	}
-
-	urb = usb_alloc_urb(NO_ISOCHRONOUS_URB, GFP_ATOMIC);
-	if (!urb) {
-		retval = -ENOMEM;
-		goto unlock_io_mutex;
+		goto err_free_urb;
 	}
 
 	if ((conf->direction & MOST_CH_TX) && mdev->padding_active[channel] &&
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
