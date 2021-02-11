Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C15F5318C41
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:41:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2431E87267;
	Thu, 11 Feb 2021 13:41:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mzdZGWrzzrLg; Thu, 11 Feb 2021 13:41:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DC1087038;
	Thu, 11 Feb 2021 13:41:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49FCE1BF94D
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 448B687168
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s88+AI3Aihyr for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:40:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C43658636A
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:40:57 +0000 (UTC)
IronPort-SDR: 5S3BFKDzhgumZpl3xnDW2e5A+uyEWbkjHk8pldyPkg4jiQ62K+H40RCIV7cQwv0m2C38rYxXEt
 7gHo81J+OK9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="169366812"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="169366812"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 05:40:54 -0800
IronPort-SDR: 24JqG9J6olWdNdGOKCNiNGyIJoQrHfgkUuRc8sj/LgieDg/H+Exf1wVSo4hUC9086U2jfQcg+n
 J9wumpXAB+SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="510853242"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga004.jf.intel.com with ESMTP; 11 Feb 2021 05:40:47 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id CF9A6C5; Thu, 11 Feb 2021 15:40:45 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 Hans de Goede <hdegoede@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mike Rapoport <rppt@kernel.org>, Wolfram Sang <wsa@kernel.org>,
 Sumit Gupta <sumitg@nvidia.com>, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 x86@kernel.org, linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v1 1/9] media: atomisp: Remove unused header
Date: Thu, 11 Feb 2021 15:40:00 +0200
Message-Id: <20210211134008.38282-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210211134008.38282-1-andriy.shevchenko@linux.intel.com>
References: <20210211134008.38282-1-andriy.shevchenko@linux.intel.com>
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
Cc: Mark Gross <mgross@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Darren Hart <dvhart@infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

sfi.h is not anyhow used by the driver. Remove it.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/staging/media/atomisp/include/linux/atomisp_platform.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/include/linux/atomisp_platform.h b/drivers/staging/media/atomisp/include/linux/atomisp_platform.h
index 5a5121d958ed..8c65733e0255 100644
--- a/drivers/staging/media/atomisp/include/linux/atomisp_platform.h
+++ b/drivers/staging/media/atomisp/include/linux/atomisp_platform.h
@@ -22,7 +22,6 @@
 #include <asm/processor.h>
 
 #include <linux/i2c.h>
-#include <linux/sfi.h>
 #include <media/v4l2-subdev.h>
 #include "atomisp.h"
 
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
