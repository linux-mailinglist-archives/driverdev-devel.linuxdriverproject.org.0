Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C47DD70C04
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 23:51:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E76B856ED;
	Mon, 22 Jul 2019 21:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HyPxvFM2tDV5; Mon, 22 Jul 2019 21:50:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C22985540;
	Mon, 22 Jul 2019 21:50:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C22B81BF852
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 21:50:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE10285514
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 21:50:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KZfnfoeTJOQU for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 21:50:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EFE92854B3
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 21:50:54 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B35FA21951;
 Mon, 22 Jul 2019 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563832254;
 bh=SLa3607t61ofYoKGilKahes40T5ZTD5NhrB1m8QE//8=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=oDeRKWVjoAJxHmyHIpND24rqgVpc4cArfVC2jYqkn8TGSJGfRpaGff9A72U+Zcyhm
 vesOX66cWisLki+xqwp+6nah0fsNx24EjWOFpZxZ95aLXGsFGuRtdfWU4MotnEMx0i
 8DgQF71Cs00RndZ8+ENjpMjA7BDDy0Jt/fQM51n4=
MIME-Version: 1.0
In-Reply-To: <20190709182018.23193-3-gch981213@gmail.com>
References: <20190709182018.23193-1-gch981213@gmail.com>
 <20190709182018.23193-3-gch981213@gmail.com>
Subject: Re: [PATCH 2/5] MIPS: ralink: fix cpu clock of mt7621 and add dt clk
 devices
To: "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Chuanhong Guo <gch981213@gmail.com>, open list <linux-kernel@vger.kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 14:50:53 -0700
Message-Id: <20190722215054.B35FA21951@mail.kernel.org>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Hogan <jhogan@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Chuanhong Guo (2019-07-09 11:20:15)
> For a long time the mt7621 uses a fixed cpu clock which causes a problem
> if the cpu frequency is not 880MHz.
> 
> This patch fixes the cpu clock calculation and adds the cpu/bus clkdev
> which will be used in dts.
> 
> Ported from OpenWrt:
> c7ca224299 ramips: fix cpu clock of mt7621 and add dt clk devices
> 
> Signed-off-by: Weijie Gao <hackpascal@gmail.com>
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
[...]
> diff --git a/arch/mips/ralink/mt7621.c b/arch/mips/ralink/mt7621.c
> index 9415be0d57b8..31158b88bcb6 100644
> --- a/arch/mips/ralink/mt7621.c
> +++ b/arch/mips/ralink/mt7621.c
> @@ -7,22 +7,22 @@
>  
>  #include <linux/kernel.h>
>  #include <linux/init.h>
> +#include <linux/clk.h>

Is this include used?

> +#include <linux/clkdev.h>
> +#include <linux/clk-provider.h>
> +#include <dt-bindings/clock/mt7621-clk.h>
>  
>  #include <asm/mipsregs.h>
>  #include <asm/smp-ops.h>
>  #include <asm/mips-cps.h>
>  #include <asm/mach-ralink/ralink_regs.h>
>  #include <asm/mach-ralink/mt7621.h>
> +#include <asm/time.h>
>  
>  #include <pinmux.h>
>  
>  #include "common.h"
>  
> -#define SYSC_REG_SYSCFG                0x10
> -#define SYSC_REG_CPLL_CLKCFG0  0x2c
> -#define SYSC_REG_CUR_CLK_STS   0x44
> -#define CPU_CLK_SEL            (BIT(30) | BIT(31))
> -
>  #define MT7621_GPIO_MODE_UART1         1
>  #define MT7621_GPIO_MODE_I2C           2
>  #define MT7621_GPIO_MODE_UART3_MASK    0x3
> @@ -108,49 +108,89 @@ static struct rt2880_pmx_group mt7621_pinmux_data[] = {
>         { 0 }
>  };
>  
> +static struct clk *clks[MT7621_CLK_MAX];
> +static struct clk_onecell_data clk_data = {
> +       .clks = clks,
> +       .clk_num = ARRAY_SIZE(clks),
> +};
> +
>  phys_addr_t mips_cpc_default_phys_base(void)
>  {
>         panic("Cannot detect cpc address");
>  }
>  
> +static struct clk *__init mt7621_add_sys_clkdev(
> +       const char *id, unsigned long rate)
> +{
> +       struct clk *clk;
> +       int err;
> +
> +       clk = clk_register_fixed_rate(NULL, id, NULL, 0, rate);
> +       if (IS_ERR(clk))
> +               panic("failed to allocate %s clock structure", id);
> +
> +       err = clk_register_clkdev(clk, id, NULL);

What's the need to use clkdev? i.e. why can't we just use clk_get() with
proper DT definitions and by passing in the right device pointer?

> +       if (err)
> +               panic("unable to register %s clock device", id);
> +
> +       return clk;
> +}
> +
>  void __init ralink_clk_init(void)
>  {
> -       int cpu_fdiv = 0;
> -       int cpu_ffrac = 0;
> -       int fbdiv = 0;
> -       u32 clk_sts, syscfg;
> -       u8 clk_sel = 0, xtal_mode;
> -       u32 cpu_clk;
> +       const static u32 prediv_tbl[] = {0, 1, 2, 2};
> +       u32 syscfg, xtal_sel, clkcfg, clk_sel, curclk, ffiv, ffrac;
> +       u32 pll, prediv, fbdiv;
> +       u32 xtal_clk, cpu_clk, bus_clk;
> +
> +       syscfg = rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0);
> +       xtal_sel = (syscfg >> XTAL_MODE_SEL_SHIFT) & XTAL_MODE_SEL_MASK;
>  
> -       if ((rt_sysc_r32(SYSC_REG_CPLL_CLKCFG0) & CPU_CLK_SEL) != 0)
> -               clk_sel = 1;
> +       clkcfg = rt_sysc_r32(SYSC_REG_CLKCFG0);
> +       clk_sel = (clkcfg >> CPU_CLK_SEL_SHIFT) & CPU_CLK_SEL_MASK;
> +
> +       curclk = rt_sysc_r32(SYSC_REG_CUR_CLK_STS);
> +       ffiv = (curclk >> CUR_CPU_FDIV_SHIFT) & CUR_CPU_FDIV_MASK;
> +       ffrac = (curclk >> CUR_CPU_FFRAC_SHIFT) & CUR_CPU_FFRAC_MASK;
> +
> +       if (xtal_sel <= 2)
> +               xtal_clk = 20 * 1000 * 1000;
> +       else if (xtal_sel <= 5)
> +               xtal_clk = 40 * 1000 * 1000;
> +       else
> +               xtal_clk = 25 * 1000 * 1000;
>  
>         switch (clk_sel) {
>         case 0:
> -               clk_sts = rt_sysc_r32(SYSC_REG_CUR_CLK_STS);
> -               cpu_fdiv = ((clk_sts >> 8) & 0x1F);
> -               cpu_ffrac = (clk_sts & 0x1F);
> -               cpu_clk = (500 * cpu_ffrac / cpu_fdiv) * 1000 * 1000;
> +               cpu_clk = 500 * 1000 * 1000;
>                 break;
> -
>         case 1:
> -               fbdiv = ((rt_sysc_r32(0x648) >> 4) & 0x7F) + 1;
> -               syscfg = rt_sysc_r32(SYSC_REG_SYSCFG);
> -               xtal_mode = (syscfg >> 6) & 0x7;
> -               if (xtal_mode >= 6) {
> -                       /* 25Mhz Xtal */
> -                       cpu_clk = 25 * fbdiv * 1000 * 1000;
> -               } else if (xtal_mode >= 3) {
> -                       /* 40Mhz Xtal */
> -                       cpu_clk = 40 * fbdiv * 1000 * 1000;
> -               } else {
> -                       /* 20Mhz Xtal */
> -                       cpu_clk = 20 * fbdiv * 1000 * 1000;
> -               }
> +               pll = rt_memc_r32(MEMC_REG_CPU_PLL);
> +               fbdiv = (pll >> CPU_PLL_FBDIV_SHIFT) & CPU_PLL_FBDIV_MASK;
> +               prediv = (pll >> CPU_PLL_PREDIV_SHIFT) & CPU_PLL_PREDIV_MASK;
> +               cpu_clk = ((fbdiv + 1) * xtal_clk) >> prediv_tbl[prediv];
>                 break;
> +       default:
> +               cpu_clk = xtal_clk;
>         }
> +
> +       cpu_clk = cpu_clk / ffiv * ffrac;
> +       bus_clk = cpu_clk / 4;
> +
> +       clks[MT7621_CLK_CPU] = mt7621_add_sys_clkdev("cpu", cpu_clk);
> +       clks[MT7621_CLK_BUS] = mt7621_add_sys_clkdev("bus", bus_clk);
> +
> +       pr_info("CPU Clock: %dMHz\n", cpu_clk / 1000000);
> +       mips_hpt_frequency = cpu_clk / 2;

There are a few changes here. Probably the patch should be split up a
bit more to only do one thing at a time, instead of assign
mips_hpt_frequency, change the calculation code, and change the way clks
are provided on this platform.

>  }
>  
> +static void __init mt7621_clocks_init_dt(struct device_node *np)
> +{
> +       of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
> +}
> +
> +CLK_OF_DECLARE(mt7621_clk, "mediatek,mt7621-pll", mt7621_clocks_init_dt);
> +
>  void __init ralink_of_remap(void)
>  {
>         rt_sysc_membase = plat_of_remap_node("mtk,mt7621-sysc");
> diff --git a/arch/mips/ralink/timer-gic.c b/arch/mips/ralink/timer-gic.c
> index 944fbe0fc741..9bbaa37a0da1 100644
> --- a/arch/mips/ralink/timer-gic.c
> +++ b/arch/mips/ralink/timer-gic.c
> @@ -9,14 +9,14 @@
>  
>  #include <linux/of.h>
>  #include <linux/clk-provider.h>
> -#include <linux/clocksource.h>
> +#include <asm/time.h>
>  
>  #include "common.h"
>  
>  void __init plat_time_init(void)
>  {
>         ralink_of_remap();
> -
> +       ralink_clk_init();

Why can't everything flow from CLK_OF_DECLARE() for a particular node?
Even better would be to make a device driver instead of using
CLK_OF_DECLARE(), but either way this doesn't look necessary to make a
direct function call here.

>         of_clk_init(NULL);
>         timer_probe();
>  }
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
