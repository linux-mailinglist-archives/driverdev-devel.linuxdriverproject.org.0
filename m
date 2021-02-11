Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B5C318C43
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:41:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 165A68745D;
	Thu, 11 Feb 2021 13:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GL-6Do6TJ83O; Thu, 11 Feb 2021 13:41:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C991087038;
	Thu, 11 Feb 2021 13:41:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14A711BF94D
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 10D1187568
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e+Zvspwkxi+G for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:41:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 842B9874CE
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:41:02 +0000 (UTC)
IronPort-SDR: 1GPNNbZb6kmQIupl9YezeAbdN87/Aj4T+mlbmJpXkObtPjGdEWIn6oVVEdhQ2r7wBgudHP7AR/
 taezheEbRv5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="181464550"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="181464550"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 05:41:02 -0800
IronPort-SDR: BTj8AraIgoaLoHIX2rx4fj+soe3t6Cw8mL62/RWND1Kus8m7AaU+g7wUV+gjyKrHLNLd/v7pak
 q2CW9G7MRqkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="397260907"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga008.jf.intel.com with ESMTP; 11 Feb 2021 05:40:54 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 3E8CE592; Thu, 11 Feb 2021 15:40:46 +0200 (EET)
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
Subject: [PATCH v1 9/9] x86/platform/intel-mid: Update Copyright year and drop
 file names
Date: Thu, 11 Feb 2021 15:40:08 +0200
Message-Id: <20210211134008.38282-10-andriy.shevchenko@linux.intel.com>
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

Update Copyright year and drop file names from files themselves.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 arch/x86/include/asm/intel-mid.h        | 4 ++--
 arch/x86/platform/intel-mid/intel-mid.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/x86/include/asm/intel-mid.h b/arch/x86/include/asm/intel-mid.h
index c043e91f45ad..c201083b34f6 100644
--- a/arch/x86/include/asm/intel-mid.h
+++ b/arch/x86/include/asm/intel-mid.h
@@ -1,8 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * intel-mid.h: Intel MID specific setup code
+ * Intel MID specific setup code
  *
- * (C) Copyright 2009 Intel Corporation
+ * (C) Copyright 2009, 2021 Intel Corporation
  */
 #ifndef _ASM_X86_INTEL_MID_H
 #define _ASM_X86_INTEL_MID_H
diff --git a/arch/x86/platform/intel-mid/intel-mid.c b/arch/x86/platform/intel-mid/intel-mid.c
index 2802b5e4637b..f4592dc7a1c1 100644
--- a/arch/x86/platform/intel-mid/intel-mid.c
+++ b/arch/x86/platform/intel-mid/intel-mid.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * intel-mid.c: Intel MID platform setup code
+ * Intel MID platform setup code
  *
- * (C) Copyright 2008, 2012 Intel Corporation
+ * (C) Copyright 2008, 2012, 2021 Intel Corporation
  * Author: Jacob Pan (jacob.jun.pan@intel.com)
  * Author: Sathyanarayanan Kuppuswamy <sathyanarayanan.kuppuswamy@intel.com>
  */
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
