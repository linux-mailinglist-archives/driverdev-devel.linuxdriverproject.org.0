Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A91E101537
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Nov 2019 06:41:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 36C072266C;
	Tue, 19 Nov 2019 05:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GBAqsfArxiOO; Tue, 19 Nov 2019 05:41:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F3E7421FFB;
	Tue, 19 Nov 2019 05:41:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8FD561BF2BD
 for <devel@linuxdriverproject.org>; Tue, 19 Nov 2019 05:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6BFCA2045F
 for <devel@linuxdriverproject.org>; Tue, 19 Nov 2019 05:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s4Tm+F5NVh7C for <devel@linuxdriverproject.org>;
 Tue, 19 Nov 2019 05:41:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 77D2720020
 for <devel@linuxdriverproject.org>; Tue, 19 Nov 2019 05:41:40 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFEDD21783;
 Tue, 19 Nov 2019 05:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574142100;
 bh=LlzMNDJ0JCchkYkAHu29SOMVRQeTRHAAwXM9PKy8u+4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gmd1X9nnuM2kwiJCcQjM/4dLqZ/njsfobu0HIgEk8p4F5RS+4bJc+Zk4dHW3aPPTH
 GhGR/YM2PMieMp+HE/fTo6251/PUvGLVaMyhUeuSh1KcdrixK92XpKW4kVd2WMu1bM
 5c0rPgLZ+3o0m5C0n3sGfTd2Qd/cO187gn6TVhi0=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.19 387/422] x86/hyperv: Suppress "PCI: Fatal: No config
 space access function found"
Date: Tue, 19 Nov 2019 06:19:44 +0100
Message-Id: <20191119051424.164699533@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119051400.261610025@linuxfoundation.org>
References: <20191119051400.261610025@linuxfoundation.org>
User-Agent: quilt/0.66
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
Cc: Josh Poulson <jopoulso@microsoft.com>, Sasha Levin <sashal@kernel.org>,
 Olaf Aepfle <olaf@aepfle.de>, Stephen Hemminger <sthemmin@microsoft.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Haiyang Zhang <haiyangz@microsoft.com>, stable@vger.kernel.org,
 Michael Kelley <mikelley@microsoft.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Marcelo Cerri <marcelo.cerri@canonical.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Andy Whitcroft <apw@canonical.com>,
 "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Wang <jasowang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dexuan Cui <decui@microsoft.com>

[ Upstream commit 2f285f46240d67060061d153786740d4df53cd78 ]

A Generation-2 Linux VM on Hyper-V doesn't have the legacy PCI bus, and
users always see the scary warning, which is actually harmless.

Suppress it.

Signed-off-by: Dexuan Cui <decui@microsoft.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Michael Kelley <mikelley@microsoft.com>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: KY Srinivasan <kys@microsoft.com>
Cc: Haiyang Zhang <haiyangz@microsoft.com>
Cc: Stephen Hemminger <sthemmin@microsoft.com>
Cc: "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>
Cc: Olaf Aepfle <olaf@aepfle.de>
Cc: Andy Whitcroft <apw@canonical.com>
Cc: Jason Wang <jasowang@redhat.com>
Cc: Vitaly Kuznetsov <vkuznets@redhat.com>
Cc: Marcelo Cerri <marcelo.cerri@canonical.com>
Cc: Josh Poulson <jopoulso@microsoft.com>
Link: https://lkml.kernel.org/r/ <KU1P153MB0166D977DC930996C4BF538ABF1D0@KU1P153MB0166.APCP153.PROD.OUTLOOK.COM
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/hyperv/hv_init.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/x86/hyperv/hv_init.c b/arch/x86/hyperv/hv_init.c
index 3fb8551552862..8a9cff1f129dc 100644
--- a/arch/x86/hyperv/hv_init.c
+++ b/arch/x86/hyperv/hv_init.c
@@ -17,6 +17,7 @@
  *
  */
 
+#include <linux/efi.h>
 #include <linux/types.h>
 #include <asm/apic.h>
 #include <asm/desc.h>
@@ -257,6 +258,22 @@ static int hv_cpu_die(unsigned int cpu)
 	return 0;
 }
 
+static int __init hv_pci_init(void)
+{
+	int gen2vm = efi_enabled(EFI_BOOT);
+
+	/*
+	 * For Generation-2 VM, we exit from pci_arch_init() by returning 0.
+	 * The purpose is to suppress the harmless warning:
+	 * "PCI: Fatal: No config space access function found"
+	 */
+	if (gen2vm)
+		return 0;
+
+	/* For Generation-1 VM, we'll proceed in pci_arch_init().  */
+	return 1;
+}
+
 /*
  * This function is to be invoked early in the boot sequence after the
  * hypervisor has been detected.
@@ -333,6 +350,8 @@ void __init hyperv_init(void)
 
 	hv_apic_init();
 
+	x86_init.pci.arch_init = hv_pci_init;
+
 	/*
 	 * Register Hyper-V specific clocksource.
 	 */
-- 
2.20.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
