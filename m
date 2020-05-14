Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 908221D31B4
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 15:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 931F82710D;
	Thu, 14 May 2020 13:46:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G6-EjB6tlyhr; Thu, 14 May 2020 13:46:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6174A266D1;
	Thu, 14 May 2020 13:46:48 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D124B1BF31F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C781D26FFF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3TRfGKKTNyrw
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 3F75E226B7
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589463999; x=1620999999;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=66jlXt28CE6ScMvqdgsfrIxpJQ4UbAilL8dvmhWUcpQ=;
 b=cIRqsGrqoZXa1T1OadmGAvuuzENlizl76QfFlcN/eReQpeROTTLfGbYX
 Vvdp0mJX5ejOP7Sj/eUvfBHws0n+Xa/qghrcjO6g+m1/F3Bpk8cEwVg8V
 NINtvJxUCMTbIBYSZwXLAJqENabSbKhptzWNY7mQu/t+c8UY3du976/9C
 wJAgc6nkg6/4KH0A4hx/fI/e1blfQtggaSlGRc7SDpWuHCwinRTPguEUF
 vq5zG+g9aMmNFZhvMcbYLHcChiarAe4Uy3U1v10VKdCUXJp185D3x9ak8
 KqUTUqJ88CuCqr/Wuok7JnagAHNlUvTsGDRGrfF520B35SvVNHnAki9IZ Q==;
IronPort-SDR: vvxCgUCCTC3ENzVJrDlcZMAgT3gAnY/Wqe6+UfEIvBcrvXyLGeU68Out0GmQEZkyTvH9yS8oJy
 ndCOzN5wQaoV5DZgZyBqvOfd2eb4SxkmGoE4kSP4ZksyxteEtZPVFHXBnff7UhyWn484r8HOQN
 9+78jguvsgMdnKezLtNsaaNCjy+A2g/0ZIZFLoLm+ezQBqHZZCIdX54tkGEH8ibkIOib9N/rNv
 0UIuuMCbV+0+0DNgC5fPkmXVS4CXHqwrR1VlsTi7zvDFJfXIF7No0gbi60Cgf8p5ehyqoOfP3/
 wqA=
X-IronPort-AV: E=Sophos;i="5.73,391,1583218800"; d="scan'208";a="75894420"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 06:46:35 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 06:46:36 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 06:46:35 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 0/7] staging: most: usb: fix issues found in code audit
Date: Thu, 14 May 2020 15:46:22 +0200
Message-ID: <1589463989-30029-1-git-send-email-christian.gromm@microchip.com>
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

Christian Gromm (7):
  staging: most: usb: use dev_*() functions to print messages
  staging: most: usb: remove reference to USB error codes
  staging: most: usb: check number of reported endpoints
  staging: most: usb: use dev_dbg function
  staging: most: fix typo in Kconfig
  staging: most: usb: use macro ATTRIBUTE_GROUPS
  Documentation: ABI: correct sysfs attribute description of MOST driver

 Documentation/ABI/testing/sysfs-bus-most | 104 ++++++++++++++++---------------
 drivers/staging/most/usb/Kconfig         |   2 +-
 drivers/staging/most/usb/usb.c           |  46 ++++++--------
 3 files changed, 72 insertions(+), 80 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
