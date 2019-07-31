Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA767CC4C
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D97084BDF;
	Wed, 31 Jul 2019 18:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EA0pTTQ_brOZ; Wed, 31 Jul 2019 18:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D06D84B91;
	Wed, 31 Jul 2019 18:51:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D00391BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5756F84D24
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CPPVA-nNik9U for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:51:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0001484E5A
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:51:06 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id s15so39409187wmj.3
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TIq//3WBvHqO99YVQvLeZ50v6iDly2l9GsQRTcXr4CU=;
 b=CyPRLG609W1sq1ut05WWPgwwnrpx5iSeNBPqSvSTfJC3S3DV3HR/nGphe0hFxcmafO
 q6PF7zrIUDkRNJe4QUG4g6zy4YP4AVJN5XfzOvrw7m30iD1SCzYLLgqtwYa9e58hWNft
 CDtLXu8HdzDldZDDzg/o9ph644TnThNpEFgKKbQMmAj8pJDFhGVRO2XLbW3MBjZSIMsi
 8Szyv/SfbREdsF2ljJZlhhukLPfRhBWHhfmww+A5teEhiJoKdtpPVOilfeEjyiw0jbuT
 A6v2yhigJjWZiRXEF74HPMG8D67KaG/i7srTfs8yiT7x6pvNF5I+zqD0PeFySEexWQpl
 g5FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TIq//3WBvHqO99YVQvLeZ50v6iDly2l9GsQRTcXr4CU=;
 b=YKA7wSl6eqT5UgMxA2Qiknjf4I0sH5AJbpVzumq5/QksO1I9bVmumgrV8kVir38Y2F
 7naac9KpzkJJoW/icknp3miBe9QbTAavXykjGMDiJuUU5SNdXe3PspX+M2vUvOzGc88F
 UtSzwBwFF34Iik85QXReK/V3BX2F2fLd1tBgWvEDp/MykVOrjFDBw+ObbmPwiLBxdKVn
 bBwtTy1unYZ5DELktDW+rSFFkS1Iwbo3422o/dxnTjHjpLnWgGbCDqp+A0lWrZ6TlANx
 FtgmDbBDqQA9nfZeJdRFRWaWgZCexXVQwOCazlrS30vCINq2STd0APZ1h8StEeIj9gcI
 9wLQ==
X-Gm-Message-State: APjAAAWF7qpc8D3+UxBC/nMmqdu0bO5qWfXT0UNL+UWZJOrixFcU8YMW
 2ZmCF5WFTTmm1+inxBZzSuw=
X-Google-Smtp-Source: APXvYqwT3vvKCphGwPAkg3s6juYAFATCs84O8st2n9NhxyeSzVKnAtJ+JFmzCZMNEF2070f4dGarbQ==
X-Received: by 2002:a1c:cb0a:: with SMTP id b10mr110648132wmg.41.1564599065059; 
 Wed, 31 Jul 2019 11:51:05 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id o20sm174722993wrh.8.2019.07.31.11.51.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 11:51:04 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: davem@davemloft.net
Subject: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
Date: Wed, 31 Jul 2019 11:50:24 -0700
Message-Id: <20190731185023.20954-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731.094150.851749535529247096.davem@davemloft.net>
References: <20190731.094150.851749535529247096.davem@davemloft.net>
MIME-Version: 1.0
X-Patchwork-Bot: notify
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, gregkh@linuxfoundation.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 netdev@vger.kernel.org, natechancellor@gmail.com,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

arm allyesconfig warns:

WARNING: unmet direct dependencies detected for MDIO_OCTEON
  Depends on [n]: NETDEVICES [=y] && MDIO_DEVICE [=y] && MDIO_BUS [=y]
&& 64BIT && HAS_IOMEM [=y] && OF_MDIO [=y]
  Selected by [y]:
  - OCTEON_ETHERNET [=y] && STAGING [=y] && (CAVIUM_OCTEON_SOC &&
NETDEVICES [=y] || COMPILE_TEST [=y])

and errors:

In file included from ../drivers/net/phy/mdio-octeon.c:14:
../drivers/net/phy/mdio-octeon.c: In function 'octeon_mdiobus_probe':
../drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of
function 'writeq'; did you mean 'writeb'?
[-Werror=implicit-function-declaration]
  111 | #define oct_mdio_writeq(val, addr) writeq(val, (void *)addr)
      |                                    ^~~~~~
../drivers/net/phy/mdio-octeon.c:56:2: note: in expansion of macro
'oct_mdio_writeq'
   56 |  oct_mdio_writeq(smi_en.u64, bus->register_base + SMI_EN);
      |  ^~~~~~~~~~~~~~~
cc1: some warnings being treated as errors

This allows MDIO_OCTEON to be built with COMPILE_TEST as well and
includes the proper header for readq/writeq. This does not address
the several -Wint-to-pointer-cast and -Wpointer-to-int-cast warnings
that appeared as a result of commit 171a9bae68c7 ("staging/octeon:
Allow test build on !MIPS") in these files.

Fixes: 171a9bae68c7 ("staging/octeon: Allow test build on !MIPS")
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Mark Brown <broonie@kernel.org>
Reported-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/phy/Kconfig       | 2 +-
 drivers/net/phy/mdio-cavium.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 20f14c5fbb7e..ed2edf4b5b0e 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -159,7 +159,7 @@ config MDIO_MSCC_MIIM
 
 config MDIO_OCTEON
 	tristate "Octeon and some ThunderX SOCs MDIO buses"
-	depends on 64BIT
+	depends on 64BIT || COMPILE_TEST
 	depends on HAS_IOMEM && OF_MDIO
 	select MDIO_CAVIUM
 	help
diff --git a/drivers/net/phy/mdio-cavium.h b/drivers/net/phy/mdio-cavium.h
index ed5f9bb5448d..b7f89ad27465 100644
--- a/drivers/net/phy/mdio-cavium.h
+++ b/drivers/net/phy/mdio-cavium.h
@@ -108,6 +108,8 @@ static inline u64 oct_mdio_readq(u64 addr)
 	return cvmx_read_csr(addr);
 }
 #else
+#include <linux/io-64-nonatomic-lo-hi.h>
+
 #define oct_mdio_writeq(val, addr)	writeq(val, (void *)addr)
 #define oct_mdio_readq(addr)		readq((void *)addr)
 #endif
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
