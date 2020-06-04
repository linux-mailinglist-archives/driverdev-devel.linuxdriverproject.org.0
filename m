Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0A71EEC4E
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jun 2020 22:47:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B62625281;
	Thu,  4 Jun 2020 20:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tCE+eVp6mntn; Thu,  4 Jun 2020 20:47:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB69025075;
	Thu,  4 Jun 2020 20:47:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BEB4F1BF9BA
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A716F25075
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Rv6O1Bp4Lg6 for <devel@linuxdriverproject.org>;
 Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 03FA425048
 for <devel@driverdev.osuosl.org>; Thu,  4 Jun 2020 20:47:08 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A87D5206DC;
 Thu,  4 Jun 2020 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591303628;
 bh=Qo4iouPHpf3BJiYOoLSBBWarAnUgUp44p/1xY7iDdbs=;
 h=From:To:Cc:Subject:Date:From;
 b=p25+39YGs09UTDVBmtDmLT+oKJy/0KC1yHGPY4Y+AJ1smzRMuCUAR8S7ddNUsT0FY
 Em8J36/ctZ4PMn7Yr7JNABCUOoKQVJAZq9brxC21U95Ff/tRDgQ/2aVeSnH3cGyh2s
 Rsd8UvacHo8qieFeZ3XhD1w04be83FYMVtnxpKRQ=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jgwlW-0004AW-ME; Thu, 04 Jun 2020 22:47:06 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 0/5] Improve ACPI detection code for atomisp
Date: Thu,  4 Jun 2020 22:47:00 +0200
Message-Id: <cover.1591303518.git.mchehab+huawei@kernel.org>
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
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add support to read the sensor configuration directly from the BIOS,
instead of relying on DMI match tables.

As we don't have the legacy models there which has their own
DMI match tables, we can't remove them, but this change should
make this driver to better detect unlisted devices.

Mauro Carvalho Chehab (5):
  media: atomisp: improve sensor detection code to use _DSM table
  Revert "media: atomisp: Add some ACPI detection info"
  Revert "media: atomisp: add Asus Transform T101HA ACPI vars"
  media: atomisp: change clock source default for ISP2401
  media: atomisp: improve ACPI/DMI detection logs

 drivers/staging/media/atomisp/TODO            |  43 +----
 .../media/atomisp/i2c/atomisp-gc0310.c        |  11 --
 .../media/atomisp/i2c/atomisp-gc2235.c        |  11 --
 .../media/atomisp/i2c/atomisp-lm3554.c        |  11 --
 .../media/atomisp/i2c/atomisp-mt9m114.c       |  11 --
 .../media/atomisp/i2c/atomisp-ov2680.c        |  11 --
 .../media/atomisp/i2c/atomisp-ov2722.c        |  11 --
 .../media/atomisp/i2c/ov5693/atomisp-ov5693.c |  11 --
 .../media/atomisp/pci/atomisp_gmin_platform.c | 157 ++++++++++++++----
 9 files changed, 129 insertions(+), 148 deletions(-)

-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
