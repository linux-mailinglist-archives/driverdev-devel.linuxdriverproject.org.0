Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C886331E4A
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 06:22:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 556E483579;
	Tue,  9 Mar 2021 05:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A924AuYyNnN4; Tue,  9 Mar 2021 05:22:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 915CF83455;
	Tue,  9 Mar 2021 05:22:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E59DE1BF2FF
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 05:22:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D51C440158
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 05:22:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9DvBW2I97huW for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 05:22:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 53BF7400E1
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 05:22:31 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id 7so13852150wrz.0
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 21:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OKoswqM2ZDMuRj0ssq0BqWfMeJ7ddDJzBT++MKgDZfM=;
 b=C1H2+v2Bakf8ZvYkfql0Wbbs8pSEqwcEnhMaadsmlP0NB41gJqj/3Bw8aOWJrOSJmT
 Jq8Cwz0vBB9viWJi3Lsd3XeltK0cnaWk3WPT/51mzOurs4/EhcyP3GbQ0whB5n9So703
 Q97VmgNziLCStANiJwzy77PTgJRMFtGXdvB6jEx6/O8tBgHu1ppmBX5D21B/VpU8ZDCe
 szPcH76AG42J4K9QjQSE7e1/knxrnDBJzQfwnAc0zpKzQl4gHzEn+kvB0Hx8tuytpawM
 34fWmQV8uBvx5DL/GkwEAzGt5oleeV5Nyjton1wddPkUgD6eJd0CSknEv3DYvOPRUS+O
 eN7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OKoswqM2ZDMuRj0ssq0BqWfMeJ7ddDJzBT++MKgDZfM=;
 b=W/V7zvzjbp/i9EYfqagvjdkhRc7lT+vMBzA7DAdt231ohwbtPCBPPSZ1CUPvFgNpg9
 OQOvNIlmq9ahNuoNW2BVm3HneEg6TvA20rIa5DMUmf8LS/C+x9K5n5+wKYVRRIndkZxb
 TDfvd9Nblb9jlkEPFW+fLPDfWpzTODtB+VrQP0EQkhhD+fw5xtdwkOzTduLmOD4Enb7T
 HD79uJ/jCxQtxecgL663cqd77BAyQpqikZfDHCzteJjWvxx1d2WJ33PzfUXcrKEygQzO
 KP1pZOSNfgoVTwfsGiVYc7GSGzaCzOd2+7LoZOSEdMsxIdQES5eJOnhn2dmge1yFDA/a
 ZU/Q==
X-Gm-Message-State: AOAM530j/pQfwHjGxc0zpstU5/cmsyi2vPQ1v9dHgEmm9RBs4LHkPGBp
 pmZVaGSZhbjJyDT8LXBtqe4=
X-Google-Smtp-Source: ABdhPJwl09RH1XkC/07xmMChWcnXVyGUelKKyosAP1nYTRT3mzy0uDM3k/2UaMy6srJz5+uImyIWGA==
X-Received: by 2002:adf:8545:: with SMTP id 63mr25627630wrh.128.1615267349275; 
 Mon, 08 Mar 2021 21:22:29 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id c11sm23450743wrm.67.2021.03.08.21.22.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Mar 2021 21:22:28 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v11 0/6] MIPS: ralink: add CPU clock detection and clock
 driver for MT7621
Date: Tue,  9 Mar 2021 06:22:20 +0100
Message-Id: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
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
two nodes to be accesible through syscon. Main registers for the clocks
are in the sysc control node so this node is merged with clock properties
and will also be the clock provider for the SoC.

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

Changes in v11:
 - Collect Rob's Reviewed-by in bindings documentation patch.
 - Fix MAINTAINERS patch using file 'mediatek,mt7621-sysc.yaml'
   for documentation bindings.

Changes in v10:
 - Merge clock properties into 'sysc' system control node making
   this node a clock provider.
 - Update driver to use 'mediatek,mt7621-sysc' as compatible string.
 - Update documentation bindings and its related filename to 
   'mediatek,mt7621-sysc.yaml'.
 - Make use of 'linux/bitfields.h' header to avoid some preprocesor
   shift definitions and just use bit masks decreasing a bit LOC.

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
  dt: bindings: add mt7621-sysc device tree binding documentation
  clk: ralink: add clock driver for mt7621 SoC
  staging: mt7621-dts: make use of new 'mt7621-clk'
  staging: mt7621-dts: use valid vendor 'mediatek' instead of invalid
    'mtk'
  MAINTAINERS: add MT7621 CLOCK maintainer

 .../bindings/clock/mediatek,mt7621-sysc.yaml  |  68 +++
 MAINTAINERS                                   |   6 +
 arch/mips/ralink/mt7621.c                     |   6 +-
 drivers/clk/Kconfig                           |   1 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/ralink/Kconfig                    |  15 +
 drivers/clk/ralink/Makefile                   |   2 +
 drivers/clk/ralink/clk-mt7621.c               | 528 ++++++++++++++++++
 drivers/staging/mt7621-dts/gbpc1.dts          |  11 -
 drivers/staging/mt7621-dts/mt7621.dtsi        |  82 ++-
 include/dt-bindings/clock/mt7621-clk.h        |  41 ++
 11 files changed, 702 insertions(+), 59 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml
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
