Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7D71D34E3
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 17:19:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C4EBF27124;
	Thu, 14 May 2020 15:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id liqsPsENKvF0; Thu, 14 May 2020 15:19:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 90C30266D1;
	Thu, 14 May 2020 15:19:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B26EF1BF37A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:19:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AEFFC884C9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:19:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5eSnjAjkKy5F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:18:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5463B88376
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589469536; x=1621005536;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=iHpc9GmpBiWI+DxbxMsA58holdepr2B0aLBRDFt66wc=;
 b=rqGCvTcfiA6xq4Wl8PgJUWZurjDQheRjZZ7IXvXeo2yOqdipiFo3MlXk
 NwbYKL/+EjkEX5HahUGIMwAcO8AH6UxnsTXlnyaMfFMUVvt1r21U0EtC/
 wartQAXNGu+EsyAAsxemUgbJjiFEncbPvuaf5OKc4rARZim6y+Wn1Qizi
 +y0yliupcWpEYdy9f8/OsDzMY6ggLbJnFOnmQj88xq85FKUUQrcGC4fLh
 LSfFLpSumIhoJOMvcaiJn6aPSLEKOyFw2kVWt/G0jN/KT411SpfgRALTv
 7Lr/ctlhqDb3uCyjKH0v7jZm6Ub+dXutJkFxnonvKTEQohLEJs0cttUxx Q==;
IronPort-SDR: pp4lWuYVfMpy8/blXw8KO5+t4XdNYQYtiO/vWk+yAK4e65o77u01fe3ZXwrmLTWjkkZ0Vm2mqH
 4Bzz+g78CyvjYX+Lq7mFRxm0rvP5So/UFU0BomUTupN5sxtoRFop4CVrvUKFl7K1f5hcxAa+Da
 sCZp/UwsIjeGV1mHKOW4nUV+1HSgJykpGedpsUZX/8vefV8JAjSmchjWU+g7S2alUCoAfR1opm
 boNh2f7ltvqwp/KMNt28vsyHwv7z0nYxtFNHzpBpAPw6QZTixp3HFU6R23hVdZ1fqCeGqCknkp
 MRc=
X-IronPort-AV: E=Sophos;i="5.73,391,1583218800"; d="scan'208";a="76658363"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 08:18:55 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 08:18:55 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 08:18:57 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/7] staging: most: usb: fix issues found in code audit
Date: Thu, 14 May 2020 17:18:45 +0200
Message-ID: <1589469532-21488-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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

This series fixes the comments/findings on the previously submitted code
of the USB adapter driver. The fixes should be applied in staging before
moving the driver out as one patch.

v2:
	modded patch 2/7

Christian Gromm (7):
  staging: most: usb: use dev_*() functions to print messages
  staging: most: usb: remove reference to USB error codes
  staging: most: usb: check number of reported endpoints
  staging: most: usb: use dev_dbg function
  staging: most: fix typo in Kconfig
  staging: most: usb: use macro ATTRIBUTE_GROUPS
  Documentation: ABI: correct sysfs attribute description of MOST driver

 Documentation/ABI/testing/sysfs-bus-most | 104 ++++++++++----------
 drivers/staging/most/usb/Kconfig         |   2 +-
 drivers/staging/most/usb/usb.c           | 159 ++++++-------------------------
 3 files changed, 81 insertions(+), 184 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
