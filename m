Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 522E12B9669
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 16:43:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0066386B51;
	Thu, 19 Nov 2020 15:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 88Dp52D0cRHC; Thu, 19 Nov 2020 15:43:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34CD48441F;
	Thu, 19 Nov 2020 15:43:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B0C21BF21A
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 15:43:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8796386A73
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 15:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xFxg5RctyQHj for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 15:43:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 00E458441F
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 15:43:41 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id u12so6971140wrt.0
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 07:43:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qrWkzF6G7CvNew/hvBSLy3vrV8xmYkd2jnRsQsz2yOs=;
 b=F0O2naeWQcy29Dq2ulABrio89G0TpqV3ft/JVNAvlGKX7QlaNt7hG13X9TxWD2JfxM
 UCYb8OP4K2LWn4Prpp6Be6FcZZQT2gtA+k9M2H+o2FUMbTFKUBchfLkdxnbqdyF9+Fei
 ZUmjuE1SYtQH0+Q1tvgKSnAtF0gPZlfd8b9BeOI9jc0XpqQIoLzcJYu5f7+yHKrHfPxH
 RzDkO+sMnYOZqRtUar2Y/oOAbmHFaFKt1289fw5EmY3z1evidvUvU5KFcB7SHFQfACYK
 2biBTkq3n6CWDBbeO4cKR3zfrLGN0+Y3jG2WXTVdhBAAfSXQO3MwZysmriUhIswSWQBj
 vtnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qrWkzF6G7CvNew/hvBSLy3vrV8xmYkd2jnRsQsz2yOs=;
 b=pely2zHo0HrHCUrtiEIIbLx6nGqR1phUDqADVrN3SeAmhICkxzAua+nVCpjEL2M04e
 sI+pko8JyZPVoqvMZjKNSvUXFlrB2nK46Dwgu40zzXKPawZClgouqptYD710YKiyVP8c
 ia2yr/9uxXAtZ0IXNjrJmGE1rBacBTbUyT816DKRxTPckFdlHvr46zr8iPvNn17BBL/V
 1+cYFQ8xssX4zDm51gUGMRrBoRoJLedBb0x6OUyRfCHJywtsufodMjA/45IyqHoc6stX
 7PhWcDsAqNLsisrdBLiP5dB0TGYK64DWg/tWPXgA8UjXxUV7si+b3zr4G+VWptdNm4Qw
 GwFg==
X-Gm-Message-State: AOAM531rBC2G/qWfJMU5SVpYT7O1T+PMc9p7BgMB1YiOQcdbJE+PsHeX
 HKx67JqYaF2wRFyTrdV8ROquo8rZ3yKHSMq1
X-Google-Smtp-Source: ABdhPJwvpMG7Qj2YNmGtK+GMt6Yqw8AsKAJJGYtCHgizT9XuhoglTUXAuJMM7YuejzX0HyX9C3IknQ==
X-Received: by 2002:a5d:488b:: with SMTP id g11mr11774075wrq.210.1605800620422; 
 Thu, 19 Nov 2020 07:43:40 -0800 (PST)
Received: from localhost.localdomain
 (234.red-79-158-79.dynamicip.rima-tde.net. [79.158.79.234])
 by smtp.gmail.com with ESMTPSA id w10sm181303wra.34.2020.11.19.07.43.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Nov 2020 07:43:39 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Subject: [PATCH v5 0/4] MT7621 PCIe PHY
Date: Thu, 19 Nov 2020 16:43:33 +0100
Message-Id: <20201119154337.9195-1-sergio.paracuellos@gmail.com>
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

This series are rebased on the top of linux-next:
commit 4e78c578cb98 ("Add linux-next specific files for 20201030")

Changes in v5:
  - PATCH 1/4: Recollect Rob's Reviewed-by of bindings.
  - PATCH 4/4: Recollect Greg's Acked-by for removing stuff from
    staging area.
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

 .../phy}/mediatek,mt7621-pci-phy.yaml         |   0
 MAINTAINERS                                   |   6 +
 drivers/phy/ralink/Kconfig                    |   8 ++
 drivers/phy/ralink/Makefile                   |   1 +
 .../ralink/phy-mt7621-pci.c}                  | 103 +++++++-----------
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/mt7621-pci-phy/Kconfig        |   8 --
 drivers/staging/mt7621-pci-phy/Makefile       |   2 -
 drivers/staging/mt7621-pci-phy/TODO           |   4 -
 10 files changed, 53 insertions(+), 82 deletions(-)
 rename {drivers/staging/mt7621-pci-phy => Documentation/devicetree/bindings/phy}/mediatek,mt7621-pci-phy.yaml (100%)
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
