Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ABA318C46
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:41:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45CFD87430;
	Thu, 11 Feb 2021 13:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ba2ycMibWUDu; Thu, 11 Feb 2021 13:41:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1912E87415;
	Thu, 11 Feb 2021 13:41:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA59D1BF9B6
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A85596F4A6
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fuTcr7Z81F-c for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:41:03 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 0B2966F5E1; Thu, 11 Feb 2021 13:41:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D42186F4A6
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:41:01 +0000 (UTC)
IronPort-SDR: e58EqC8qhhNUC1Min4VU9hhCb5YIV0FZVzJdCCc/94WssVLtAwP/9AD/ySTgQwn0DoOuHYRrCJ
 Y6dINRUxPrQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="182373604"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="182373604"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 05:41:01 -0800
IronPort-SDR: y3sXK0kKzjrX/UZlMbVpzk5vcxjGtKjkPDr9P4YqcE/9aj5Pxnqt8K33GmKRlpxxgkfuy9+Dsi
 hJ5EbIqfuJGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="588798000"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga005.fm.intel.com with ESMTP; 11 Feb 2021 05:40:54 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 3408A579; Thu, 11 Feb 2021 15:40:46 +0200 (EET)
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
Subject: [PATCH v1 8/9] x86/platform/intel-mid: Remove unused header inclusion
 in intel-mid.h
Date: Thu, 11 Feb 2021 15:40:07 +0200
Message-Id: <20210211134008.38282-9-andriy.shevchenko@linux.intel.com>
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

After the commit f1be6cdaf57c ("x86/platform/intel-mid: Make
intel_scu_device_register() static") the platform_device.h is not being
used anymore by intel-mid.h. Remove it.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 arch/x86/include/asm/intel-mid.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/x86/include/asm/intel-mid.h b/arch/x86/include/asm/intel-mid.h
index c2c7da4c60cf..c043e91f45ad 100644
--- a/arch/x86/include/asm/intel-mid.h
+++ b/arch/x86/include/asm/intel-mid.h
@@ -8,7 +8,6 @@
 #define _ASM_X86_INTEL_MID_H
 
 #include <linux/pci.h>
-#include <linux/platform_device.h>
 
 extern int intel_mid_pci_init(void);
 extern int intel_mid_pci_set_power_state(struct pci_dev *pdev, pci_power_t state);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
