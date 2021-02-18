Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D114D31E6A0
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 08:07:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D20128692C;
	Thu, 18 Feb 2021 07:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkgAd6m8AD1m; Thu, 18 Feb 2021 07:07:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5CDB866B8;
	Thu, 18 Feb 2021 07:07:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C1FB31BF32C
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BE84585190
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:07:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WYPyTw9ELrVd for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 07:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5918A85036
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 07:07:14 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id t15so1552839wrx.13
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 23:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HCsHr4I3hIN4gOCYA0pW5IG4lzNO6qCah6pO30Bz2Z8=;
 b=Gh1tKC+NF42UDHJQsF8Dw8s+1IY2UqClm8YwCnRD1FxN+old2JhUtPXypBNZQjmHe5
 QOdPUBK8epjj+sAZK4oyUNlvb6V2N5Loy9Kya+fiLfxEtZzXTuKQK0Nb3XA+wKGSGLWY
 nBS1K672B1XckixIegifUNxEmBw39LqN6QuzqWNHPH16Bd6rZ50EvKAf4jGDSQ8GIlLj
 DxnjwP5Bfz2OvxmKQGb67vc9fKShSKv0SgfpTiOLkyxBH9t0HxXz3n4fzVz4s3jlDOcQ
 qWZukQxi2bBEfoDynwJBA1QDiaDeStqtbYU/o3mEGol0OQZwOjy5wp0jRXhGx8sZp51D
 5+Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HCsHr4I3hIN4gOCYA0pW5IG4lzNO6qCah6pO30Bz2Z8=;
 b=E39y5pNnaMsJYkT8BxtAqvQtXMTMnirE0DXHOz9RoGQzNctFY2l4PowM5DOVu4CboK
 fL4xvp0i6MdyMpzj2zgAlU53K9LX6LR8qNxREbXYQiH1ceELlEoTvT2D300YegaTPpiK
 sr5IHbKjre7iX0XZx/OoMIlXjvIH0BjflDdLFTHxiQTRX0FjtQ22tdKAhKL7il0Ljkub
 XyZOjGDV4rVGXKS/6/EbfAwa2jXF9slH5dXHyo5NvH9k5jknJwK1JGZx5Xl+pTKHMEFF
 U/YQHFJHxGfWJL1VHrfINgA1h2qgrtvgWntwcB2PcbHrkOcpTltZ6XIHjefmDP3H2Zrl
 fOHA==
X-Gm-Message-State: AOAM532Be9g7//3IPd5TqWjf30CkHW5PB4GNDUmfk5Wqjj/H2NZmWqI9
 B8EYsMS4W8KMlnA1zbB5Tc4=
X-Google-Smtp-Source: ABdhPJy+eOFABBncRu3jJoj6ZMxGPGIVbQKHlKXsapj6b0j0GWYv8lTxN/J156QiJdSd6ME7FvC6uw==
X-Received: by 2002:adf:e4c3:: with SMTP id v3mr2941444wrm.210.1613632032553; 
 Wed, 17 Feb 2021 23:07:12 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id 4sm6136555wma.0.2021.02.17.23.07.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Feb 2021 23:07:12 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v9 0/6] MIPS: ralink: add CPU clock detection and clock driver
 for MT7621
Date: Thu, 18 Feb 2021 08:07:03 +0100
Message-Id: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
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
 tsbogend@alpha.franken.de, gregkh@linuxfoundation.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset ports CPU clock detection for MT7621 from OpenWrt
and adds a complete clock plan for the mt7621 SOC.

The documentation for this SOC only talks about two registers
regarding to the clocks:
* SYSC_REG_CPLL_CLKCFG0 - provides some information about boostrapped
refclock. PLL and dividers used for CPU and some sort of BUS (AHB?).
* SYSC_REG_CPLL_CLKCFG1 - a banch of gates to enable/disable clocks for
all or some ip cores.

Registers needed for this driver to work are in two already mapped areas
in its platform's device tree. These are 'sysc' and 'memc' nodes. Most
of other drivers just make use of platform operations defined in
'asm/mach-ralink/ralink_regs.h' but this can be avoided declaring this
two nodes to be accesible through syscon. Since these are the only two
needed control interfaces for this clock driver that seems to be the
correct thing to do.

No documentation about a probably existent set of dividers for each ip
core is included in the datasheets. So we cannot make anything better,
AFAICT.

Looking into driver code, and some openWRT patched there are
another frequences which are used in some drivers (uart, sd...).
According to all of this information the clock plan for this
SoC is set as follows:
 - Main top clock "xtal" from where all the rest of the world is
   derived.
 - CPU clock "cpu" derived from "xtal" frequencies and a bunch of
   register reads and predividers.
 - BUS clock "bus" derived from "cpu" and with (cpu / 4) MHz.
 - Fixed clocks from "xtal":
    * "50m": 50 MHz.
    * "125m": 125 MHz.
    * "150m": 150 MHz.
    * "250m": 250 MHz.
    * "270m": 270 MHz.

We also have a buch of gate clocks with their parents:
 - "hsdma": "150m"
 - "fe": "250m"
 - "sp_divtx": "270m"
 - "timer": "50m"
 - "pcm": "270m"
 - "pio": "50m"
 - "gdma": "bus"
 - "nand": "125m"
 - "i2c": "50m"
 - "i2s": "270m"
 - "spi": "bus"
 - "uart1": "50m"
 - "uart2": "50m"
 - "uart3": "50m"
 - "eth": "50m"
 - "pcie0": "125m"
 - "pcie1": "125m"
 - "pcie2": "125m"
 - "crypto": "250m"
 - "shxc": "50m"

There was a previous attempt of doing this here[0] but the author
(Chuanhong Guo) did not wanted to make assumptions of a clock plan
for the platform that time. It seems that now he has a better idea of
how the clocks are dispossed for this SoC so he share code[1] where
some frequencies and clock parents for the gates are coded from a
real mediatek private clock plan.
                                                
I do really want this to be upstreamed so according to the comments
in previous attempt[0] from Oleksij Rempel and the frequencies in
code[1] I have tried to do this by myself.

All of this patches have been tested in a GNUBee PC1 resulting in a
working platform.

Changes in v9:
 - Set two missing ret values to its related PTR_ERR in function
   'mt7621_clk_probe' (also related with [3]).
 - Select MFC_SYSCON in Kconfig.

Changes in v8:
 - Fix kernel test robot complain about the use of 'ret' variable
   initialized: see [3]

Changes in v7:
 - Make use of CLK_OF_DECLARE_DRIVER instead of CLK_OF_DECLARE and
   register there only the top clocks that are needed in 'of_clk_init'.
   The rest of the clocks (fixed and gates) are now registered using
   a platform driver. Because we have avoid architecture dependent stuff
   now this has sense because we can enable this driver for COMPILE_TEST.
 - Convert fixed clocks and gates related function to receive a 'struct
   device' pointer instead of 'struct device_node' one.
 - Make use of dev_ APIS in stuff related with platform driver instead
   of use device_node related stuff. 
 - Add new static global 'mt7621_clk_early' to store pointers to clk_hw
   registered at 'of_clk_init' stage. Make use of this in platform device
   probe function to properly copy this into the new required 'clk_data'
   to provide a properly hierarchy clock structure.
 - Rename 'mt7621_register_top_clocks' function into a more accurate 
   name now which is 'mt7621_register_early_clocks'.
 - Enable driver for COMPILE_TEST.

Changes in v6:
 - Rewrite bindings to properly access the registers needed for the driver
   making use of syscon for two different areas: 'sysc' and 'memc'. With
   this changes architecture dependent include 'asm/mach-ralink/ralink_regs.h'
   is not needed anymore because we access this two syscons using a phandle
   through kernel's regmap APIs. Explanation of this two areas is in [2].
 - Add new 'mt7621_clk_priv' struct to store there pointers to regmap handlers
   to be able to use regmap operations from normal clock api functions. Add
   this pointer in 'mt7621_clk' and 'mt7621_clk_gate' before register its
   related clocks to make things work.
 - Add Greg's Acked-by in patches 4 and 5.
 - Rebase this series on the top of linux-next tag 'next-20210215'.

v5 RESEND notes:
 - I am resending this as I was told to do that.
 - Please, take into account Rob's comments to DT node patch and my
   reply with explanation about how are the current device tree nodes
   for this architecture being used in [2].

Changes in v5:
 - Avoid the use of syscon. All drivers of this platform are just using
   platform operations defined in 'asm/mach-ralink/ralink_regs.h'. We also
   need them for some PLL registers that are not in the sys control area.
   Hence, since we must use this dependency avoid to define clock driver
   as a child of the sysc node in the device tree and follow current
   platform code style.
 - Update bindings documentation to don't refer the syscon and make
   remove 'clock-output-names' property from required ones.
 - Use 'asm/mach-ralink/ralink_regs.h' platform read and write operations
   instead of regmap from the syscon node.
 - Remove 'mt7621_clk_provider' and directly declare 'clk_hw_onecell_data'
   pointer in 'mt7621_clk_init' and pass from there into different register
   functions. Remove pointers to 'mt7621_clk_provider' in the rest fo structs
   used in this driver.
 - Remove MHZ macro and just pass values directly in hertzs.
 - Avoid 'CLK_IGNORE_UNUSED' flag for gates and add a new function called
   'mt7621_prepare_enable_clocks' to prepare all of them to make clocks
   referenced and don't affect current driver code.
 - Remove COMPILE_TEST from Kconfig because of the use of especific arch
   stuff.
 - Fix commit message where a typo for "frequencies" word was present.
 - Make use of parent_clk_data in 'CLK_BASE' macro.
 - Remove MODULE_* macros from code since this is not a module.
 - Remove not needed includes.
 - Hardcode "xtal" as parent in FIXED macro.
 - Change 'else if' clause into 'if' clause since a return statement was
   being used in 'mt7621_xtal_recalc_rate'.

 NOTES:
   - Driver is still being declared using 'CLK_OF_DECLARE' for all the  
     clocks. I have explored the possibility to make some of them available
     afterwards using 'CLK_OF_DECLARE_DRIVER' for top clocks and the rest
     using a platform driver. The resulting code was uglier since we only want
     to use the same device tree node and the top clocks must be copied again
     for the new platform register stuff to properly have a good hierarchy.
     New globals needs to be introduced and in this particular case I don't
     really see the benefits of doing in this way. I am totally ok to have all
     the clocks registered at early stage since from other drivers perspective
     we only really need to enable gates. So, I prefer to have them in that
     way if it is not a real problem, of course.

Changes in v4:
 - Add Acked-by from Rob Herring for binding headers (PATCH 1/6).
 - Convert bindings to not use syscon phandle and declare clock as
   a child of the syscon node. Update device tree and binding doc
   accordly.
 - Make use of 'syscon_node_to_regmap' in driver code instead of
   get this using the phandle function.
 - Properly unregister clocks for the error path of the function
   'mt7621_clk_init'.
 - Include ARRAY_SIZE of fixed clocks in the 'count' to kzalloc
   of 'clk_data'.
 - Add new patch changing invalid vendor 'mtk' in favour of 'mediatek'
   which is the one listed in 'vendor-prefixes.yaml'. Update mt7621 code
   accordly. I have added this patch inside this series because clk
   binding is referring syscon node and the string for that node was
   with not listed vendor. Hence update and have all of this correct
   in the same series.

Changes in v3:
 - Fix compilation warnings reported by kernel test robot because of
   ignoring return values of 'of_clk_hw_register' in functions
   'mt7621_register_top_clocks' and 'mt7621_gate_ops_init'.
 - Fix dts file and binding documentation 'clock-output-names'.

Changes in v2:
 - Remove the following patches:
   * dt: bindings: add mt7621-pll device tree binding documentation.
   * MIPS: ralink: add clock device providing cpu/ahb/apb clock for mt7621.
 - Move all relevant clock code to 'drivers/clk/ralink/clk-mt7621.c' and
   unify there previous 'mt7621-pll' and 'mt7621-clk' into a unique driver
   and binding 'mt7621-clk'.
 - Driver is not a platform driver anymore and now make use of 'CLK_OF_DECLARE'
   because we need clocks available in 'plat_time_init' before setting up
   the timer for the GIC.
 - Use new fixed clocks as parents for different gates and deriving from 'xtal'
   using frequencies in[1].
 - Adapt dts file and bindings header and documentation for new changes.
 - Change MAINTAINERS file to only contains clk-mt7621.c code and
   mediatek,mt7621-clk.yaml file.

[0]: https://www.lkml.org/lkml/2019/7/23/1044
[1]: https://github.com/981213/linux/commit/2eca1f045e4c3db18c941135464c0d7422ad8133
[2]: https://lkml.org/lkml/2020/12/20/47
[3]: http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2021-February/150772.html

Sergio Paracuellos (6):
  dt-bindings: clock: add dt binding header for mt7621 clocks
  dt: bindings: add mt7621-clk device tree binding documentation
  clk: ralink: add clock driver for mt7621 SoC
  staging: mt7621-dts: make use of new 'mt7621-clk'
  staging: mt7621-dts: use valid vendor 'mediatek' instead of invalid
    'mtk'
  MAINTAINERS: add MT7621 CLOCK maintainer

 .../bindings/clock/mediatek,mt7621-clk.yaml   |  66 +++
 MAINTAINERS                                   |   6 +
 arch/mips/ralink/mt7621.c                     |   6 +-
 drivers/clk/Kconfig                           |   1 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/ralink/Kconfig                    |  15 +
 drivers/clk/ralink/Makefile                   |   2 +
 drivers/clk/ralink/clk-mt7621.c               | 536 ++++++++++++++++++
 drivers/staging/mt7621-dts/gbpc1.dts          |  11 -
 drivers/staging/mt7621-dts/mt7621.dtsi        |  87 ++-
 include/dt-bindings/clock/mt7621-clk.h        |  41 ++
 11 files changed, 713 insertions(+), 59 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
 create mode 100644 drivers/clk/ralink/Kconfig
 create mode 100644 drivers/clk/ralink/Makefile
 create mode 100644 drivers/clk/ralink/clk-mt7621.c
 create mode 100644 include/dt-bindings/clock/mt7621-clk.h

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
