Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3FF1D2BD1
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 11:53:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92FE687855;
	Thu, 14 May 2020 09:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yf_9f_vHXpZU; Thu, 14 May 2020 09:53:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D5C287909;
	Thu, 14 May 2020 09:53:05 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 80C1D1BF342
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 78E3E87855
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WhV0i1WOPT_m
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C0022873FA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589449980; x=1620985980;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=4BYb23KO7xGiRWlCsZBOQqfF7mP3kChQE5nAO2UmTUA=;
 b=FYh6c6buO1DyWP/085XjdJluJwaqIrtTQeL00Wcx3UvDRnQKmbuCs40J
 qnwXYsA635K4tFpcru4Nb9FQpw43NMu964JLvhjRQrdL5v+82GKj6Z9j2
 /fRG8YmdLUxuK8s7cMfxdVKPNz45aEQ+CCP1rxGIKmAQJ9VNRlzsVLwCH
 EDs3Wb0DMMUpw5D4TbNzmAujVvCstKAm22kE6evclFVO7MtGdxLuyAhl0
 aVbvmJozoGxISh6jdEKUnPgRZXvaw6GO+49LRu/YJoJNxxZ2UnQvrEmQW
 kXl2d6yaSN0EEe9EXbH1YARCV34Oj+UwEwn8l4Yp6drUBDHJw0UegaByO Q==;
IronPort-SDR: G2/ae2QsK6sMGEbhnQ0HNyZmFvfzjaiv5YgWOB4BpdB9tYPAdFhoFXTClG3H8YIlxVcZRecWDT
 2BATNHH7EkwTErzf0p9fn9aj0HCcpJo6hJXsurn75kyh10a5GAopUF/Za/HbctKfoQa761YPw8
 bcE85p9dp5CLkqfhtjOKasIzrpJVzLCsmwm3AhkvQaFnKP8Cnk/hmxpUY4r3omzIQ5PvV87cOd
 bv3Hid1J+2aUjge+X783VXjgzLVw5ApYzP53w5/0trZu2w/B5NbLMphEUjuQT8KzKuYXcgUhyv
 WwM=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="79589202"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 02:53:00 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 02:53:03 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 02:52:58 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/8] staging: most: move USB adapter driver to stable branch
Date: Thu, 14 May 2020 11:52:48 +0200
Message-ID: <1589449976-11378-1-git-send-email-christian.gromm@microchip.com>
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

This series moves the USB adapter driver to the stable branch and fixes
the comments/findings on the submitted code.

v2:
	- create a patch set to address the comments on submitted code

Christian Gromm (8):
  drivers: most: add usb adapter driver
  drivers: most: usb: use dev_*() functions to print messages
  drivers: most: usb: remove reference to USB error codes
  drivers: most: usb: check number of reported endpoints
  drivers: most: usb: use dev_dbg function
  drivers: most: fix typo in Kconfig
  drivers: most: usb: use macro ATTRIBUTE_GROUPS
  Documentation: ABI: correct sysfs attribute description of MOST driver

 Documentation/ABI/testing/sysfs-bus-most |  104 +--
 drivers/most/Kconfig                     |   12 +
 drivers/most/Makefile                    |    2 +
 drivers/most/most_usb.c                  | 1252 ++++++++++++++++++++++++++++++
 4 files changed, 1319 insertions(+), 51 deletions(-)
 create mode 100644 drivers/most/most_usb.c

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
