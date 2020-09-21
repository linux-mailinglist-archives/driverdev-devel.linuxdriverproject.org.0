Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7A12734B5
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 23:17:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B93087104;
	Mon, 21 Sep 2020 21:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bmFZFW2ycRct; Mon, 21 Sep 2020 21:17:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0EE9E8710E;
	Mon, 21 Sep 2020 21:17:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ABE6B1BF336
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:17:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A891C860A8
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:17:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3EtXPauO-xk0 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 21:17:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D2E09860CE
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 21:17:39 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81A5823A5C;
 Mon, 21 Sep 2020 21:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600723059;
 bh=foxV8HjtRnG82K58AVzQJRz/cnwSm3nZy29v7i9WxGI=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=XIUY+AvI7vRLsmiDHW9jPKOQgtv2Os7K8A7cVZu48A5i3+Ifh0fSJjBLWZhOKoVO8
 oFyogjq8CbWlxJ2Io9/HhveXVAOLmY2ulIDreIZoKR+T12VhBnCe9h+vM1OQj7iIfO
 4GS+a5nmBYCn5SaqgL13s3JjjGHzS3BgYgysDNTs=
MIME-Version: 1.0
In-Reply-To: <1598621996-31040-6-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1598621996-31040-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1598621996-31040-6-git-send-email-shubhrajyoti.datta@xilinx.com>
Subject: Re: [PATCH v6 5/8] clk: clock-wizard: Add support for fractional
 support
From: Stephen Boyd <sboyd@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-clk@vger.kernel.org
Date: Mon, 21 Sep 2020 14:17:38 -0700
Message-ID: <160072305811.310579.18192761455478284239@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Shubhrajyoti Datta (2020-08-28 06:39:53)
> Currently the set rate granularity is to integral divisors.
> Add support for the fractional divisors.
> Only the first output0 is fractional in the hardware.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

Getting closer.

> diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
> index 8dfcec8..1af59a4 100644
> --- a/drivers/clk/clk-xlnx-clock-wizard.c
> +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> @@ -185,6 +191,134 @@ static const struct clk_ops clk_wzrd_clk_divider_ops = {
>         .recalc_rate = clk_wzrd_recalc_rate,
>  };
>  
> +static unsigned long clk_wzrd_recalc_ratef(struct clk_hw *hw,
> +                                          unsigned long parent_rate)
> +{
> +       unsigned int val;
> +       u32 div, frac;
> +       struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
> +       void __iomem *div_addr = divider->base + divider->offset;
> +
> +       val = readl(div_addr);
> +       div = val & div_mask(divider->width);
> +       frac = (val >> WZRD_CLKOUT_FRAC_SHIFT) & WZRD_CLKOUT_FRAC_MASK;
> +
> +       return ((parent_rate * 1000) / ((div * 1000) + frac));

Please remove extra parenthesis. And is this mult_frac()?

> +}
> +
> +static int clk_wzrd_dynamic_reconfig_f(struct clk_hw *hw, unsigned long rate,
> +                                      unsigned long parent_rate)
> +{
> +       int err;
> +       u32 value, pre;
> +       unsigned long rate_div, f, clockout0_div;
> +       struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
> +       void __iomem *div_addr = divider->base + divider->offset;
> +
> +       rate_div = ((parent_rate * 1000) / rate);
> +       clockout0_div = rate_div / 1000;
> +
> +       pre = DIV_ROUND_CLOSEST((parent_rate * 1000), rate);
> +       f = (u32)(pre - (clockout0_div * 1000));
> +       f = f & WZRD_CLKOUT_FRAC_MASK;
> +
> +       value = ((f << WZRD_CLKOUT_DIVIDE_WIDTH) | (clockout0_div &
> +                       WZRD_CLKOUT_DIVIDE_MASK));

Please split this to multiple lines.

> +
> +       /* Set divisor and clear phase offset */
> +       writel(value, div_addr);
> +       writel(0x0, div_addr + WZRD_DR_DIV_TO_PHASE_OFFSET);
> +
> +       /* Check status register */
> +       err= readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
> +                               value & WZRD_DR_LOCK_BIT_MASK,
> +                               WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
> +       if (err)
> +               return err;
> +
> +       /* Initiate reconfiguration */
> +       writel(WZRD_DR_BEGIN_DYNA_RECONF,
> +              divider->base + WZRD_DR_INIT_REG_OFFSET);
> +
> +       /* Check status register */
> +       err= readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
> +                               value & WZRD_DR_LOCK_BIT_MASK,
> +                               WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
> +
> +       return err;

Just return readl_poll_timeout() please.

> +}
> +
> +static long clk_wzrd_round_rate_f(struct clk_hw *hw, unsigned long rate,
> +                                 unsigned long *prate)
> +{
> +       return rate;

Can every rate be supported? This function is supposed to tell the clk
framework what rate will be achieved if we call clk_set_rate() with
'rate' passed to this function. Almost always returning 'rate' is not
the case.

> 
> +
> +static const struct clk_ops clk_wzrd_clk_divider_ops_f = {
> +       .round_rate = clk_wzrd_round_rate_f,
> +       .set_rate = clk_wzrd_dynamic_reconfig_f,
> +       .recalc_rate = clk_wzrd_recalc_ratef,
> +};
> +
> +static struct clk *clk_wzrd_register_divf(struct device *dev,
> +                                         const char *name,
> +                                         const char *parent_name,
> +                                         unsigned long flags,
> +                                         void __iomem *base, u16 offset,
> +                                         u8 shift, u8 width,
> +                                         u8 clk_divider_flags,
> +                                         const struct clk_div_table *table,
> +                                         spinlock_t *lock)
> +{
> +       struct clk_wzrd_divider *div;
> +       struct clk_hw *hw;
> +       struct clk_init_data init;
> +       int ret;
> +
> +       if (clk_divider_flags & CLK_DIVIDER_HIWORD_MASK) {

Is this used? It's a rockchip specific flag mostly so probably not?

> +               if (width + shift > 16) {
> +                       pr_warn("divider value exceeds LOWORD field\n");
> +                       return ERR_PTR(-EINVAL);
> +               }
> +       }
> +
> +       /* allocate the divider */

Please remove useless comments like this.

> +       div = kzalloc(sizeof(*div), GFP_KERNEL);
> +       if (!div)
> +               return ERR_PTR(-ENOMEM);
> +
> +       init.name = name;
> +
> +       if (clk_divider_flags & CLK_DIVIDER_READ_ONLY)

Is this flag used?

> +               init.ops = &clk_divider_ro_ops;
> +       else
> +               init.ops = &clk_wzrd_clk_divider_ops_f;
> +
> +       init.flags = flags;
> +       init.parent_names = (parent_name ? &parent_name : NULL);
> +       init.num_parents = (parent_name ? 1 : 0);

Do you have cases where there isn't a parent? Hopefully not, so this
can be simplified.

>
> +       /* struct clk_divider assignments */

Drop this comment?

> +       div->base = base;
> +       div->offset = offset;
> +       div->shift = shift;
> +       div->width = width;
> +       div->flags = clk_divider_flags;
> +       div->lock = lock;
> +       div->hw.init = &init;
> +       div->table = table;
> +
> +       /* register the clock */

Drop this comment?

> +       hw = &div->hw;
> +       ret = clk_hw_register(dev, hw);

Any reason we can't use devm_clk_hw_register() here?

> +       if (ret) {
> +               kfree(div);
> +               return ERR_PTR(ret);
> +       }
> +
> +       return hw->clk;
> +}
> +
>  static struct clk *clk_wzrd_register_divider(struct device *dev,
>                                              const char *name,
>                                              const char *parent_name,
> @@ -355,17 +489,13 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>                 goto err_disable_clk;
>         }
>  
> -       /* we don't support fractional div/mul yet */
> -       reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
> -                   WZRD_CLKFBOUT_FRAC_EN;
> -       reg |= readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2)) &
> -                    WZRD_CLKOUT0_FRAC_EN;
> -       if (reg)
> -               dev_warn(&pdev->dev, "fractional div/mul not supported\n");
> -
>         /* register multiplier */
>         reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
>                      WZRD_CLKFBOUT_MULT_MASK) >> WZRD_CLKFBOUT_MULT_SHIFT;
> +       reg_f = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
> +                    WZRD_CLKFBOUT_FRAC_MASK) >> WZRD_CLKFBOUT_FRAC_SHIFT;

Use two lines please. Read into variable on one line, shift on another.

> +
> +       mult = ((reg * 1000) + reg_f);

Please remove extra parenthesis.

>         clk_name = kasprintf(GFP_KERNEL, "%s_mul", dev_name(&pdev->dev));
>         if (!clk_name) {
>                 ret = -ENOMEM;
> @@ -413,8 +543,18 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>                         ret = -EINVAL;
>                         goto err_rm_int_clks;
>                 }
> -               clk_wzrd->clkout[i] = clk_wzrd_register_divider(&pdev->dev,
> -                                                               clkout_name,
> +               if (!i)
> +                       clk_wzrd->clkout[i] = clk_wzrd_register_divf
> +                               (&pdev->dev, clkout_name,
> +                               clk_name, 0,
> +                               clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
> +                               WZRD_CLKOUT_DIVIDE_SHIFT,
> +                               WZRD_CLKOUT_DIVIDE_WIDTH,
> +                               CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
> +                               NULL, &clkwzrd_lock);
> +               else
> +                       clk_wzrd->clkout[i] = clk_wzrd_register_divider
> +                               (&pdev->dev, clkout_name,
>                                 clk_name, 0,
>                                 clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
>                                 WZRD_CLKOUT_DIVIDE_SHIFT,
> 

I wonder if a do-while loop with flags set to ONE_BASED and ALLOW_ZERO
could work and then flags gets overwritten to be just DIVIDE_SHIFT? Then
we don't have to duplicate the registration line.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
