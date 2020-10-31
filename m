Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BFE2A1751
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Oct 2020 13:22:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 983D9872EB;
	Sat, 31 Oct 2020 12:22:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0cmRRudxz-sr; Sat, 31 Oct 2020 12:22:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 907DC872DE;
	Sat, 31 Oct 2020 12:22:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FFE31BF23C
 for <devel@linuxdriverproject.org>; Sat, 31 Oct 2020 12:22:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 092C887197
 for <devel@linuxdriverproject.org>; Sat, 31 Oct 2020 12:22:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhoKqxKQIQ0E for <devel@linuxdriverproject.org>;
 Sat, 31 Oct 2020 12:22:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D223871AD
 for <devel@driverdev.osuosl.org>; Sat, 31 Oct 2020 12:22:50 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id c16so5190177wmd.2
 for <devel@driverdev.osuosl.org>; Sat, 31 Oct 2020 05:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PiF25b5PCJfd/BAzjQvGl1LEq0FTtKw8ngl/14Foe/w=;
 b=Qtj9VvnAgzcPSOjrplADKHq7BZpTUMA2EqUZwu3fpf6y6Kn6wXm2KCjIfQaPykYjve
 XFKtAimoB7w1bIuWDz59QphZm6+6tsEKhG4ixmUfFRABUt5GW83ct+pNgJO3x9FTnoq/
 Jk9zomP+2AAbjiVuXBQpUkna1YiysVfyO5WamymsYvpZIO7e0rO302vF/7EzYoJ33Sm3
 4f0ynUDFdroEvP0T8F/d5taU6Etw9jLcHOdNERojm8bqlp5vTNhqXY9Uyp3UAbRddK6H
 lPdPrFC6TLdHDTVWt+f8pe4QVJjgChHeYBvCB1KMxp8dZgCSA1Y4XuvC44d3ynJzh/Nw
 CYVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PiF25b5PCJfd/BAzjQvGl1LEq0FTtKw8ngl/14Foe/w=;
 b=telAdYfC10dr6rtaoVyIyWes4zbNgfY+PyOXRzAhbmqY0hN97ZRtQpPTDHqQ+GaHPV
 YKnE8PC8eGTze/psnl0APQOKFj0qNDX/A685aAoAnQaOsO+KnI1MPJyVASUwtLxYqrtc
 4RePIvN69t5Tvsk62ChTgHorOBFxpt/bpYypiC/6JBriZcN0Af3HDxEyh2YDINOWJzU/
 c/HiAb8/irsPSPp4XXbfY/ytAPhnD/3/6RdIm+RAWHsOPY+CTaJbdD5TD66ElnrGvCPh
 I4qA9zKnnO6368se1NDEyZr6aVWJoT88kLizw/QUUrlgfvcH4moRTrVq1O/7riobJpRF
 CKyQ==
X-Gm-Message-State: AOAM533bpo0O29HShKe1wHoCk8cKp8cMt14dFMyfhhSayamlTfuPzMFJ
 tui+odaWfVU09kyl7r8yBIg=
X-Google-Smtp-Source: ABdhPJy2q4BsPuRDSa4SAcgWYBhtAMZGyrDltJl41dCHf9gDGr1QRyKpplxxEi6boUKeqLX8mFpckw==
X-Received: by 2002:a1c:ddd7:: with SMTP id u206mr7274409wmg.27.1604146968463; 
 Sat, 31 Oct 2020 05:22:48 -0700 (PDT)
Received: from localhost.localdomain (14.red-83-46-194.dynamicip.rima-tde.net.
 [83.46.194.14])
 by smtp.gmail.com with ESMTPSA id f7sm15299199wrx.64.2020.10.31.05.22.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 31 Oct 2020 05:22:47 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: kishon@ti.com
Subject: [PATCH v4 0/4]  MT7621 PCIe PHY
Date: Sat, 31 Oct 2020 13:22:42 +0100
Message-Id: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
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
 gregkh@linuxfoundation.org, vkoul@kernel.org, robh+dt@kernel.org,
 neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series adds support for the PCIe PHY found in the Mediatek
MT7621 SoC.

This is the first attempt to get feedback of what is missing in
this driver to be promoted from staging.

There is also a 'mt7621-pci' driver which is the controller part
which is still in staging and is a client of this phy.

Both drivers have been tested together in a gnubee1 board.

This series are rebased on the top of linux-next:
commit 4e78c578cb98 ("Add linux-next specific files for 20201030")

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

Sergio Paracuellos (4):
  dt-bindings: phy: Add binding for Mediatek MT7621 PCIe PHY
  phy: ralink: Add PHY driver for MT7621 PCIe PHY
  MAINTAINERS: add MT7621 PHY PCI maintainer
  staging: mt7621-pci-phy: remove driver from staging

 .../devicetree/bindings/phy}/mediatek,mt7621-pci-phy.yaml | 0
 MAINTAINERS                                               | 6 ++++++
 drivers/phy/ralink/Kconfig                                | 8 ++++++++
 drivers/phy/ralink/Makefile                               | 1 +
 .../pci-mt7621-phy.c => phy/ralink/phy-mt7621-pci.c}      | 0
 drivers/staging/Kconfig                                   | 2 --
 drivers/staging/Makefile                                  | 1 -
 drivers/staging/mt7621-pci-phy/Kconfig                    | 8 --------
 drivers/staging/mt7621-pci-phy/Makefile                   | 2 --
 drivers/staging/mt7621-pci-phy/TODO                       | 4 ----
 10 files changed, 15 insertions(+), 17 deletions(-)
 rename {drivers/staging/mt7621-pci-phy => Documentation/devicetree/bindings/phy}/mediatek,mt7621-pci-phy.yaml (100%)
 rename drivers/{staging/mt7621-pci-phy/pci-mt7621-phy.c => phy/ralink/phy-mt7621-pci.c} (100%)
 delete mode 100644 drivers/staging/mt7621-pci-phy/Kconfig
 delete mode 100644 drivers/staging/mt7621-pci-phy/Makefile
 delete mode 100644 drivers/staging/mt7621-pci-phy/TODO

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
