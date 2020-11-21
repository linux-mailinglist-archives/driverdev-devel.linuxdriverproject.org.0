Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CA42BC052
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 16:50:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3021887498;
	Sat, 21 Nov 2020 15:50:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FzEXga0wkqKb; Sat, 21 Nov 2020 15:50:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FA9887478;
	Sat, 21 Nov 2020 15:50:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E44321BF95C
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 15:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DF95320402
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 15:50:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ITjetPOYg1Gt for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 15:50:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 3962820420
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 15:50:42 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id t4so1046058wrr.12
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 07:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jd3/1hRfxc7Y0whxq1qc3RnNgcKPiRRQEOenbTFn7o8=;
 b=UaRRq3qNj2P+/jG9H9x6ZMHkVMcQDKG3Fb5afOhielDlXzdzwYtEv7jaYWvNDo9oBE
 632GUZHFZF6M2H4CvrYS1VwIqx7UNhyjMziiNaarLVJV9o0p2AshUdiuW+hz2tEF1F7j
 bkDYYD95K7wKUCKpjs7Qf1NGxvsrDKuWPtUsiWibv5SKU6u6ot2Ka/7buPaq9CVPVF/7
 0JJjf0bl4y3ogkjJy4CfL6w7opgBMSHY+WFv8w8EDw3VnTpXRP43C2yBa3bzQ0wPiI1T
 Jab0Jk/A4frfGqsYcxxYk+mgb/pHqC2aXBWjHV+Pynl6voetj/Ie9b3o8ikWAFBL960V
 5pag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jd3/1hRfxc7Y0whxq1qc3RnNgcKPiRRQEOenbTFn7o8=;
 b=gLSVzyV7sv6tFQbg4RXuEUro90fsZdpCcPR/qGkJdFrVBpAxPggNsXB2Lu57A0Uygs
 rXlbBTf0rg8NVv20YnLcjGlRBPNIQIBOKCHk6liEDRYtPdqoGuqHCOPblXCODOGqdRSn
 Khc43pPFgCSIC4NEmX/0uEYVla9o0C4H22VwMa2a7e/fPm6YzgtyMceQwUNp/45u3N3d
 RJupqXyCaUxKxuLQM7j5xfTtEK4ombgbRYwAOn2IEjtQ1f/Aj6eGRDdcJSo5o1FdOZU2
 ZZiVtbwIdw+bIl7jSOnS/Qm9HttoRWkllKCt55dEh24mH6tME3wyPWYdkOwOt9FaxuPB
 IzqQ==
X-Gm-Message-State: AOAM531J145hRfbw6ZHdOGuqzS3KOh2o+OAkQl2EzfF3pKbI9MNUTmi1
 XNQ9/894iBIv0mWVxAeqVZ8=
X-Google-Smtp-Source: ABdhPJz0fqaV77TCFstUF9IdkyZyPzYGXTbA2hyH2EMB6jgfHhm+iKDcv3JV8BkwcztGGLyCdmCUNA==
X-Received: by 2002:a5d:6852:: with SMTP id o18mr21570046wrw.336.1605973840346; 
 Sat, 21 Nov 2020 07:50:40 -0800 (PST)
Received: from localhost.localdomain
 (161.red-83-46-194.dynamicip.rima-tde.net. [83.46.194.161])
 by smtp.gmail.com with ESMTPSA id n128sm7959598wmb.46.2020.11.21.07.50.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Nov 2020 07:50:39 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Subject: [PATCH v6 0/4] MT7621 PCIe PHY
Date: Sat, 21 Nov 2020 16:50:33 +0100
Message-Id: <20201121155037.21354-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 robh+dt@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series adds support for the PCIe PHY found in the Mediatek
MT7621 SoC.

There is also a 'mt7621-pci' driver which is the controller part
which is still in staging and is a client of this phy.

Both drivers have been tested together in a gnubee1 board.

This series are rebased on the top of linux-phy:
commit 768a711e2d4b ("phy: samsung: phy-exynos-pcie: fix typo 'tunning'")

Changes in v6:
  - Change definition name to XTAL_MASK to fix its use in one line.
  - Fix XTAL_MASK mask value after use it with 'FIELD_GET'.
  - Add comment in 'mt7621_phy_rmw' about why 'regmap_write_bits'
    cannot be used.
  - Rebase series on the top of 'next' branch of 'linux-phy' tree.

Changes in v5:
  - PATCH 1/4: Recollect Rob's Reviewed-by of bindings.
  - PATCH 4/4: Recollect Greg's Acked-by for removing stuff from
    staging area.
  - Use 'devm_platform_ioremap_resource' instead of using 
    'platform_get_resource' and 'devm_ioremap_resource'.
  - Make Vinod's review comments changes in [0]:
    * Use FIELD_GET and FIELD_PREP apis and avoid multiple *_VAL and
      *_SHIFT custom definitions.
    * Remove phy-read and phy-write internal functions and directly
      call regmap_read and regmap_write in 'mt7621_phy_rmw'.
    * Change some traces from info to debug log level.
    * Note that I have maintained 'mt7621_phy_rmw' instead of use
      'regmap_update_bits'. This is because in order to get a reliable
      boot registers must be written event the contained value in 
      that register is the same. I have preferred doing in this way
      instead of using 'regmap_update_bits_base' passing 'false' for
      async and 'true' for the force write. If this way of using 
      'regmap_update_bits_base' is preferred just let me know.

Changes in v4:
  - Bindings moved from txt to yaml so previous Rob's Reviewed-by
    is not in the new patch with the yaml file.
  - 'phy-cells' property means now if phy is dual-ported.
  - Avoid custom 'xlate' function and properly set registers
    when the phy is dual ported.
  - Add use of 'builtin_platform_driver'.
  - Added a patch including myself as maintainer in the
    MAINTAINERS file.
  - Add a patch removing patch from staging to make easier
    the complete inclusion and avoid possible problems might
    appear in 'linux-next' if the series are included.

Changes in v3:
  - Recollect Rob's Reviewed-by of bindings.
  - Make Kishon Vijay suggested changes in v2:
   (See https://lkml.org/lkml/2019/4/17/53)
  - Kconfig:
    * Add depends on COMPILE_TEST
    * Select REGMAP_MMIO
  - Make use of 'soc_device_attribute' and 'soc_device_match'
  - Use regmap mmio API instead of directly 'readl' and 'writel'.
  - Use 'platform_get_resource' instead of 'of_address_to_resource'.

Changes in v2:
  - Reorder patches to get bindings first in the series.
  - Don't use child nodes in the device tree. Use #phy-cells=1 instead.
  - Update driver code with new 'xlate' function for the new device tree.
  - Minor changes in driver's macros changing some spaces to tabs.

Thanks in advance for your time.

Best regards,
    Sergio Paracuellos

[0]: http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-November/148864.html

Sergio Paracuellos (4):
  dt-bindings: phy: Add binding for Mediatek MT7621 PCIe PHY
  phy: ralink: Add PHY driver for MT7621 PCIe PHY
  MAINTAINERS: add MT7621 PHY PCI maintainer
  staging: mt7621-pci-phy: remove driver from staging

 .../phy}/mediatek,mt7621-pci-phy.yaml         |   2 +-
 MAINTAINERS                                   |   6 +
 drivers/phy/ralink/Kconfig                    |   8 ++
 drivers/phy/ralink/Makefile                   |   1 +
 .../ralink/phy-mt7621-pci.c}                  | 115 +++++++-----------
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/mt7621-pci-phy/Kconfig        |   8 --
 drivers/staging/mt7621-pci-phy/Makefile       |   2 -
 drivers/staging/mt7621-pci-phy/TODO           |   4 -
 10 files changed, 63 insertions(+), 86 deletions(-)
 rename {drivers/staging/mt7621-pci-phy => Documentation/devicetree/bindings/phy}/mediatek,mt7621-pci-phy.yaml (92%)
 rename drivers/{staging/mt7621-pci-phy/pci-mt7621-phy.c => phy/ralink/phy-mt7621-pci.c} (76%)
 delete mode 100644 drivers/staging/mt7621-pci-phy/Kconfig
 delete mode 100644 drivers/staging/mt7621-pci-phy/Makefile
 delete mode 100644 drivers/staging/mt7621-pci-phy/TODO

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
