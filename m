Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B85F62FE
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Nov 2019 03:48:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D4CD520531;
	Sun, 10 Nov 2019 02:48:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8c5DLyxD5lgx; Sun, 10 Nov 2019 02:48:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA7A72050D;
	Sun, 10 Nov 2019 02:48:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F9CF1BF5A5
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 02:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F37EE86AF9
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 02:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C2VZ5oY4hKq1 for <devel@linuxdriverproject.org>;
 Sun, 10 Nov 2019 02:48:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 081BA86AF2
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 02:48:10 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26B42224A1;
 Sun, 10 Nov 2019 02:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573354089;
 bh=XnRIcdZVlp6No/mC06k2e6r9GyXH2JlTE8agqW0ry2g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IpKpujuGz23sL4v2yY4XKsg/TLIWLb8uBEn65eT82kAm5UP1/SajJK2xTPXHxbIBr
 SEvIUgdZdlb9dbZ/rheejE5aJzbqfnAtIYtw9+Gcc/QJZmdncZlmw0KxQLRnA9KArd
 ZI71tupIo8I3UOtmDGfPGbdSdhvXdD6IzkKBjs9c=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 085/109] x86/hyperv: Suppress "PCI: Fatal: No
 config space access function found"
Date: Sat,  9 Nov 2019 21:45:17 -0500
Message-Id: <20191110024541.31567-85-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024541.31567-1-sashal@kernel.org>
References: <20191110024541.31567-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
 Haiyang Zhang <haiyangz@microsoft.com>, linux-hyperv@vger.kernel.org,
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
index 2e9d58cc371e6..2653b7b25d176 100644
--- a/arch/x86/hyperv/hv_init.c
+++ b/arch/x86/hyperv/hv_init.c
@@ -17,6 +17,7 @@
  *
  */
 
+#include <linux/efi.h>
 #include <linux/types.h>
 #include <asm/hypervisor.h>
 #include <asm/hyperv.h>
@@ -101,6 +102,22 @@ static int hv_cpu_init(unsigned int cpu)
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
@@ -154,6 +171,8 @@ void hyperv_init(void)
 
 	hyper_alloc_mmu();
 
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
