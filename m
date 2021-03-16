Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 218F033CEF0
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 08:56:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A41483A55;
	Tue, 16 Mar 2021 07:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fqJHj1YPuLoz; Tue, 16 Mar 2021 07:56:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 490F783A4B;
	Tue, 16 Mar 2021 07:56:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD9F01BF387
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 07:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C81160664
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 07:56:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DBbr1SRkZ7Yn for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 07:56:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E183260641
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 07:56:33 +0000 (UTC)
Received: from mail-ed1-f70.google.com ([209.85.208.70])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1lM4Z5-0006SQ-FI
 for devel@driverdev.osuosl.org; Tue, 16 Mar 2021 07:56:31 +0000
Received: by mail-ed1-f70.google.com with SMTP id n20so17303391edr.8
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 00:56:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jeu86JaIUAOt2lkwOFI4m9LQf3S54ODIpa4kLZOARnM=;
 b=P03lqPjKjcCLI8dT2DKLNycZYA9Q9a5SaFbSZ9xZ69BPdexK7K8F5Lxo2fheLYwikw
 ri8M3qIxmh2+tYubALnl6S16wPRR2jThh0J33RuOZ0Uu3gfXwO0lNYaOWDKWt2FeKq0V
 7K3jNVEPBFEABfDsBkO5sMLuXwB/6famkSMfzCOKB/Bs8UoAeFbc0dVwlkGj0WSy6in/
 VG7p1vgM3ZRLVmNTob1AZJHE8WhgHRxbztGPHyg7yteQYtIrmgoZwXA1z4ZkjwLNJsmA
 LA8iDDjmA7XjYxC1+v3kPQFlfMiXxCxBPJ1qR0oXw2dG14glC/SyCjCS/oDm6fhtJR5u
 /44g==
X-Gm-Message-State: AOAM530E7x5flKJrYSndJsmxtyOSdYaU6D7D2A0MYvcPp15l8UzAEym+
 WbbyHivOlXWsoiNsUoV4qDkO+YvGJsp4ExLdiMAtDnvPA9jvR+RpJsGbvGcyEurHVqXTxMqMEII
 YkE0JZo3j8cin8PPt/Gur3XwkVpN/lk7IMZyBOrg=
X-Received: by 2002:a17:906:1b42:: with SMTP id
 p2mr28178026ejg.236.1615881391219; 
 Tue, 16 Mar 2021 00:56:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwSDWwhSMlE00SSQ6Q68j5cirvJIl8Apo64mYMNnE60g83O/scEiUPyZS5hkkQ+6/Z3THDjqA==
X-Received: by 2002:a17:906:1b42:: with SMTP id
 p2mr28178003ejg.236.1615881390996; 
 Tue, 16 Mar 2021 00:56:30 -0700 (PDT)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch.
 [84.226.167.205])
 by smtp.gmail.com with ESMTPSA id r5sm9725026eds.49.2021.03.16.00.56.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 00:56:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH RESEND] media: atomisp: do not select COMMON_CLK to fix builds
Date: Tue, 16 Mar 2021 08:56:25 +0100
Message-Id: <20210316075625.10382-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
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
Cc: Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Krzysztof Kozlowski <krzk@kernel.org>

COMMON_CLK is a user-selectable option with its own dependencies.  The
most important dependency is !HAVE_LEGACY_CLK.  User-selectable drivers
should not select COMMON_CLK because they will create a dependency cycle
and build failures.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 drivers/staging/media/atomisp/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/Kconfig b/drivers/staging/media/atomisp/Kconfig
index 37577bb72998..742edb261d85 100644
--- a/drivers/staging/media/atomisp/Kconfig
+++ b/drivers/staging/media/atomisp/Kconfig
@@ -2,9 +2,9 @@
 menuconfig INTEL_ATOMISP
 	bool "Enable support to Intel Atom ISP camera drivers"
 	depends on X86 && EFI && PCI && ACPI
+	depends on COMMON_CLK
 	select IOSF_MBI
 	select MEDIA_CONTROLLER
-	select COMMON_CLK
 	help
 	  Enable support for the Intel ISP2 camera interfaces and MIPI
 	  sensor drivers.
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
