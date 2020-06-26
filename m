Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 884D120B31F
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 16:05:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EE24823B44;
	Fri, 26 Jun 2020 14:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FhSgs3Z3h36C; Fri, 26 Jun 2020 14:05:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 717B124B96;
	Fri, 26 Jun 2020 14:05:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD1B91BF3DE
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A9CDF87E32
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O-eSOYeUsPP2 for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C2A18785D
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E575D2089D;
 Fri, 26 Jun 2020 14:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593180302;
 bh=FLH9RMavJhw1DcFHXpTX510iCkhJadwKN4Oh6++hLu4=;
 h=From:To:Cc:Subject:Date:From;
 b=w+OvSb5zMqQr3aCdiDSKdjkHP4jYagT3I0AMRbZC+VFiAfUqZgLSw5OuTGFYons1n
 jfAlL8eQRmlNGl4jfXL+rGP03Qr9+fTdWvb808CVu2C9mjyZnGb2LVmdifLn+HJZzH
 9dpmRkdrTweApESTfhHLMswesLmJgWqEbhqpp4XQ=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jooyR-00HKw2-WE; Fri, 26 Jun 2020 16:05:00 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 0/7] Some atomisp fixes and improvements
Date: Fri, 26 Jun 2020 16:04:52 +0200
Message-Id: <cover.1593180146.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Those patches are meant to improve device detection by the atomisp driver,
relying on ACPI bios when possible.

It also adds a basis for using ACPI PM, but only if the DSDT tables have
a description about how to turn on the resources needed by the cameras.

At least on the device I'm using for tests, this is not the case.

Mauro Carvalho Chehab (7):
  media: atomisp: reorganize the code under gmin_subdev_add()
  media: atomisp: Prepare sensor support for ACPI PM
  media: atomisp: properly parse CLK PMIC on newer devices
  media: atomisp: fix call to g_frame_interval
  media: atomisp: print info if gpio0 and gpio2 were detected
  media: atomisp: split add from find subdev
  media: atomisp: place all gpio parsing together

 .../staging/media/atomisp/pci/atomisp_cmd.c   |   2 +-
 .../media/atomisp/pci/atomisp_gmin_platform.c | 393 ++++++++++++------
 2 files changed, 267 insertions(+), 128 deletions(-)

-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
