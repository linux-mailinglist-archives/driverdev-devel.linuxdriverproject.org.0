Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6E12D5434
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 07:55:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA977873C9;
	Thu, 10 Dec 2020 06:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CB09H4QfuRbP; Thu, 10 Dec 2020 06:55:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC9EE873D9;
	Thu, 10 Dec 2020 06:55:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F0A41BF947
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 06:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B8F486C99
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 06:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pd3r4muQfjCy for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 06:55:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 36E4286C92
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 06:55:37 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id q25so3933905otn.10
 for <devel@driverdev.osuosl.org>; Wed, 09 Dec 2020 22:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PZBmHsE908IC1Uk9tRNh8zmMEmDdb7m1nUBUd7okObk=;
 b=RgoNWL/7l9l2ZL6wTDtRXgTVuxndmrlcRzv0W9sObOQomXfjiPD9YSP+jkCsoYkXNO
 w3TD6XZoi6l1JrXnfLFMRbFjwJPMHaRgFwHlg7We7mF6JHh3VeKLFp+5Yj+sEM7CZmAK
 T3j1JJUvtyrmNq7EgC8W5kKmQm/MawTq+0Ulas7nsGPdQkS/la7ailz8b9WkVD9OMMLS
 tjq23RDveL96p4MSdxDQXupdTljWDY6kKKiF/VPT7DoEOO/gUJqynW1pHIp3oyvGQfXt
 +4EnDmUZWQumDjTLDhL4Hx0r0Jjt8nNdtwcPr1EwfutNDBGWi6huaqlwRubBlzwFH1qU
 8kuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PZBmHsE908IC1Uk9tRNh8zmMEmDdb7m1nUBUd7okObk=;
 b=O7OO7sA4KWzHaTIc30vON7mD5p6IwRgi3x//C/eg81tlclVJtDleijHK0eafihnUob
 VtICOTER6xCgbp5rtT+vgdPCt+QM+sw0BvvYwTBUv+d5LARmXQT2w/JpA4nIDZruG26w
 37aY5QB4PyqWa/3QquH4555jXFix3pARztQBT7I+RwAvUunBf0usRYQGBz4+xP+Q+T76
 Jbe6IHxZdzLUm6GyVxsEFiRxfagmq39xiblPsnmB4Fk+GvB4pV/IMsxvy4gTQPC5+3O9
 /eK4SfwJ+wXgYjEmLAJ9qXS3xd07v18ioe/QrxD6oSaJIbhuIOQtbZVj6v/RFjh/ulzQ
 mXKQ==
X-Gm-Message-State: AOAM533wAtgRmRqaNAOvJOZKk+BKwNvLkwueX8crFWsMNzAJK2tNcDNu
 +Pq5WmLDjGN40f1n1J3HizRhV5WwocNALwmGkLA=
X-Google-Smtp-Source: ABdhPJx0DhJz4XRA9HDfcdibaO3LZxy85ZjP9NVXIYsRd+oduBnlviEoSRT3LVAOwnepHG5iofCSPkiPuelx3Mp2iXg=
X-Received: by 2002:a9d:589:: with SMTP id 9mr4917644otd.72.1607583336380;
 Wed, 09 Dec 2020 22:55:36 -0800 (PST)
MIME-Version: 1.0
References: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 10 Dec 2020 07:55:25 +0100
Message-ID: <CAMhs-H8Dx=f5AoG50LJZJv0Vn2u8EQJKWPkcPqtZ7QQ+SKqjcg@mail.gmail.com>
Subject: Re: [PATCH v4 0/6] MIPS: ralink: add CPU clock detection and clock
 driver for MT7621
To: Michael Turquette <mturquette@baylibre.com>
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

On Sun, Nov 22, 2020 at 10:55 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> This patchset ports CPU clock detection for MT7621 from OpenWrt
> and adds a complete clock plan for the mt7621 SOC.
>
> The documentation for this SOC only talks about two registers
> regarding to the clocks:
> * SYSC_REG_CPLL_CLKCFG0 - provides some information about boostrapped
> refclock. PLL and dividers used for CPU and some sort of BUS (AHB?).
> * SYSC_REG_CPLL_CLKCFG1 - a banch of gates to enable/disable clocks for
> all or some ip cores.
>
> No documentation about a probably existent set of dividers for each ip
> core is included in the datasheets. So we cannot make anything better,
> AFAICT.
>
> Looking into driver code, and some openWRT patched there are
> another frequences which are used in some drivers (uart, sd...).
> According to all of this information the clock plan for this
> SoC is set as follows:
>  - Main top clock "xtal" from where all the rest of the world is
>    derived.
>  - CPU clock "cpu" derived from "xtal" frequencies and a bunch of
>    register reads and predividers.
>  - BUS clock "bus" derived from "cpu" and with (cpu / 4) MHz.
>  - Fixed clocks from "xtal":
>     * "50m": 50 MHz.
>     * "125m": 125 MHz.
>     * "150m": 150 MHz.
>     * "250m": 250 MHz.
>     * "270m": 270 MHz.
>
> We also have a buch of gate clocks with their parents:
>  - "hsdma": "150m"
>  - "fe": "250m"
>  - "sp_divtx": "270m"
>  - "timer": "50m"
>  - "pcm": "270m"
>  - "pio": "50m"
>  - "gdma": "bus"
>  - "nand": "125m"
>  - "i2c": "50m"
>  - "i2s": "270m"
>  - "spi": "bus"
>  - "uart1": "50m"
>  - "uart2": "50m"
>  - "uart3": "50m"
>  - "eth": "50m"
>  - "pcie0": "125m"
>  - "pcie1": "125m"
>  - "pcie2": "125m"
>  - "crypto": "250m"
>  - "shxc": "50m"
>
> There was a previous attempt of doing this here[0] but the author
> (Chuanhong Guo) did not wanted to make assumptions of a clock plan
> for the platform that time. It seems that now he has a better idea of
> how the clocks are dispossed for this SoC so he share code[1] where
> some frequencies and clock parents for the gates are coded from a
> real mediatek private clock plan.
>
> I do really want this to be upstreamed so according to the comments
> in previous attempt[0] from Oleksij Rempel and the frequencies in
> code[1] I have tried to do this by myself.
>
> All of this patches have been tested in a GNUBee PC1 resulting in a
> working platform.


>
> Changes in v4:
>  - Add Acked-by from Rob Herring for binding headers (PATCH 1/6).
>  - Convert bindings to not use syscon phandle and declare clock as
>    a child of the syscon node. Update device tree and binding doc
>    accordly.
>  - Make use of 'syscon_node_to_regmap' in driver code instead of
>    get this using the phandle function.
>  - Properly unregister clocks for the error path of the function
>    'mt7621_clk_init'.
>  - Include ARRAY_SIZE of fixed clocks in the 'count' to kzalloc
>    of 'clk_data'.
>  - Add new patch changing invalid vendor 'mtk' in favour of 'mediatek'
>    which is the one listed in 'vendor-prefixes.yaml'. Update mt7621 code
>    accordly. I have added this patch inside this series because clk
>    binding is referring syscon node and the string for that node was
>    with not listed vendor. Hence update and have all of this correct
>    in the same series.


Any comments on this?? Should I resend the series to get reviewed?

Thanks in advance for your time!

Best regards,
    Sergio Paracuellos

>
> Changes in v3:
>  - Fix compilation warnings reported by kernel test robot because of
>    ignoring return values of 'of_clk_hw_register' in functions
>    'mt7621_register_top_clocks' and 'mt7621_gate_ops_init'.
>  - Fix dts file and binding documentation 'clock-output-names'.
>
> Changes in v2:
>  - Remove the following patches:
>    * dt: bindings: add mt7621-pll device tree binding documentation.
>    * MIPS: ralink: add clock device providing cpu/ahb/apb clock for mt7621.
>  - Move all relevant clock code to 'drivers/clk/ralink/clk-mt7621.c' and
>    unify there previous 'mt7621-pll' and 'mt7621-clk' into a unique driver
>    and binding 'mt7621-clk'.
>  - Driver is not a platform driver anymore and now make use of 'CLK_OF_DECLARE'
>    because we need clocks available in 'plat_time_init' before setting up
>    the timer for the GIC.
>  - Use new fixed clocks as parents for different gates and deriving from 'xtal'
>    using frequencies in[1].
>  - Adapt dts file and bindings header and documentation for new changes.
>  - Change MAINTAINERS file to only contains clk-mt7621.c code and
>    mediatek,mt7621-clk.yaml file.
>
> [0]: https://www.lkml.org/lkml/2019/7/23/1044
> [1]: https://github.com/981213/linux/commit/2eca1f045e4c3db18c941135464c0d7422ad8133
>
>
> Sergio Paracuellos (6):
>   dt-bindings: clock: add dt binding header for mt7621 clocks
>   dt: bindings: add mt7621-clk device tree binding documentation
>   clk: ralink: add clock driver for mt7621 SoC
>   staging: mt7621-dts: make use of new 'mt7621-clk'
>   staging: mt7621-dts: use valid vendor 'mediatek' instead of invalid
>     'mtk'
>   MAINTAINERS: add MT7621 CLOCK maintainer
>
>  .../bindings/clock/mediatek,mt7621-clk.yaml   |  67 +++
>  MAINTAINERS                                   |   6 +
>  arch/mips/ralink/mt7621.c                     |   6 +-
>  drivers/clk/Kconfig                           |   1 +
>  drivers/clk/Makefile                          |   1 +
>  drivers/clk/ralink/Kconfig                    |  14 +
>  drivers/clk/ralink/Makefile                   |   2 +
>  drivers/clk/ralink/clk-mt7621.c               | 434 ++++++++++++++++++
>  drivers/staging/mt7621-dts/gbpc1.dts          |  11 -
>  drivers/staging/mt7621-dts/mt7621.dtsi        |  85 ++--
>  include/dt-bindings/clock/mt7621-clk.h        |  41 ++
>  11 files changed, 609 insertions(+), 59 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
>  create mode 100644 drivers/clk/ralink/Kconfig
>  create mode 100644 drivers/clk/ralink/Makefile
>  create mode 100644 drivers/clk/ralink/clk-mt7621.c
>  create mode 100644 include/dt-bindings/clock/mt7621-clk.h
>
> --
> 2.25.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
