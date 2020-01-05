Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0B31309BC
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jan 2020 20:55:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9873D20410;
	Sun,  5 Jan 2020 19:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yFKaEDYmmzfm; Sun,  5 Jan 2020 19:55:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A12EA203AF;
	Sun,  5 Jan 2020 19:55:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A7CC51BF405
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A3B6487360
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3EszyKDVP1wg for <devel@linuxdriverproject.org>;
 Sun,  5 Jan 2020 19:54:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BF6868731E
 for <devel@driverdev.osuosl.org>; Sun,  5 Jan 2020 19:54:56 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FDDF206F0;
 Sun,  5 Jan 2020 19:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578254096;
 bh=HuOCHR7Ba1GXfgCMG1dAvrtgq5+V7WOKzBM2AwZ1e1k=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=xVLIdZJUqAsP2CweTJHgckQp1wjPqmsZ+wnQzbdoJy36ObodDugczaafmYH0eacZW
 NGn2Rs8vn+jhcchLyrVvuK8V6++V3F1U5QmbxXNJc1spTOjFCBf3p2XWkYaR42JY5Z
 oFySf9i7IU3fCXL3jrY43iewWBUPHV89UvJURANU=
MIME-Version: 1.0
In-Reply-To: <7a951e702f0c25217bacfcd4444d347d8bb2621e.1574922435.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <7a951e702f0c25217bacfcd4444d347d8bb2621e.1574922435.git.shubhrajyoti.datta@xilinx.com>
To: devel@driverdev.osuosl.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, shubhrajyoti.datta@gmail.com
Subject: Re: [PATCH v3 04/10] clk: clock-wizard: Add support for dynamic
 reconfiguration
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 11:54:55 -0800
Message-Id: <20200105195456.7FDDF206F0@mail.kernel.org>
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Chirag Parekh <chirag.parekh@xilinx.com>, gregkh@linuxfoundation.org,
 mturquette@baylibre.com, Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, robh+dt@kernel.org,
 soren.brinkmann@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting shubhrajyoti.datta@gmail.com (2019-11-27 22:36:11)
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> The patch adds support for dynamic reconfiguration of clock output rate.
> Output clocks are registered as dividers and set rate callback function
> is used for dynamic reconfiguration.
> 
> Based on the initial work from Chirag.
> 
> Signed-off-by: Chirag Parekh <chirag.parekh@xilinx.com>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>

Are these more like Co-developed-by: tags?

> diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
> index ef9125d..870e7fb 100644
> --- a/drivers/clk/clk-xlnx-clock-wizard.c
> +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> @@ -29,8 +29,23 @@
>  #define WZRD_DIVCLK_DIVIDE_SHIFT       0
>  #define WZRD_DIVCLK_DIVIDE_MASK                (0xff << WZRD_DIVCLK_DIVIDE_SHIFT)
>  #define WZRD_CLKOUT_DIVIDE_SHIFT       0
> +#define WZRD_CLKOUT_DIVIDE_WIDTH       8
>  #define WZRD_CLKOUT_DIVIDE_MASK                (0xff << WZRD_DIVCLK_DIVIDE_SHIFT)
>  
> +#define WZRD_DR_MAX_INT_DIV_VALUE      255
> +#define WZRD_DR_NUM_RETRIES            10000
> +#define WZRD_DR_STATUS_REG_OFFSET      0x04
> +#define WZRD_DR_LOCK_BIT_MASK          0x00000001
> +#define WZRD_DR_INIT_REG_OFFSET                0x25C
> +#define WZRD_DR_DIV_TO_PHASE_OFFSET    4
> +#define WZRD_DR_BEGIN_DYNA_RECONF      0x03
> +
> +/* Get the mask from width */
> +#define div_mask(width)                        ((1 << (width)) - 1)
> +
> +/* Extract divider instance from clock hardware instance */
> +#define to_clk_wzrd_divider(_hw) container_of(_hw, struct clk_wzrd_divider, hw)
> +
>  enum clk_wzrd_int_clks {
>         wzrd_clk_mul,
>         wzrd_clk_mul_div,
> @@ -62,6 +77,29 @@ struct clk_wzrd {
>         bool suspended;
>  };
>  
> +/**
> + * struct clk_wzrd_divider - clock divider specific to clk_wzrd
> + *
> + * @hw:                handle between common and hardware-specific interfaces
> + * @base:      base address of register containing the divider
> + * @offset:    offset address of register containing the divider
> + * @shift:     shift to the divider bit field
> + * @width:     width of the divider bit field
> + * @flags:     clk_wzrd divider flags
> + * @table:     array of value/divider pairs, last entry should have div = 0
> + * @lock:      register lock
> + */
> +struct clk_wzrd_divider {
> +       struct clk_hw hw;
> +       void __iomem *base;
> +       u16 offset;
> +       u8 shift;
> +       u8 width;
> +       u8 flags;
> +       const struct clk_div_table *table;
> +       spinlock_t *lock;  /* divider lock */

Is this register lock used by anything? I'm mostly wondering if dividers
are in a shared register with some other clk so we need to have this
lock. Otherwise it adds more conditional locking code for no gain and
should be removed to simplify.

> +};
> +
>  #define to_clk_wzrd(_nb) container_of(_nb, struct clk_wzrd, nb)
>  
>  /* maximum frequencies for input/output clocks per speed grade */
> @@ -71,6 +109,164 @@ static const unsigned long clk_wzrd_max_freq[] = {
>         1066000000UL
>  };
>  
> +/* spin lock variable for clk_wzrd */
> +static DEFINE_SPINLOCK(clkwzrd_lock);
> +
> +static unsigned long clk_wzrd_recalc_rate(struct clk_hw *hw,
> +                                         unsigned long parent_rate)
> +{
> +       struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
> +       void __iomem *div_addr =
> +                       (void __iomem *)((u64)divider->base + divider->offset);

Is this casting necessary?

> +       unsigned int val;
> +
> +       val = readl(div_addr) >> divider->shift;
> +       val &= div_mask(divider->width);
> +
> +       return divider_recalc_rate(hw, parent_rate, val, divider->table,
> +                       divider->flags, divider->width);
> +}
> +
> +static int clk_wzrd_dynamic_reconfig(struct clk_hw *hw, unsigned long rate,
> +                                    unsigned long parent_rate)
> +{
> +       int err = 0;
> +       u16 retries;
> +       u32 value;
> +       unsigned long flags = 0;
> +       struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
> +       void __iomem *div_addr =
> +                       (void __iomem *)((u64)divider->base + divider->offset);
> +
> +       if (divider->lock)
> +               spin_lock_irqsave(divider->lock, flags);
> +       else
> +               __acquire(divider->lock);
> +
> +       value = DIV_ROUND_CLOSEST(parent_rate, rate);
> +
> +       /* Cap the value to max */
> +       if (value > WZRD_DR_MAX_INT_DIV_VALUE)
> +               value = WZRD_DR_MAX_INT_DIV_VALUE;

Please use min().

> +
> +       /* Set divisor and clear phase offset */
> +       writel(value, div_addr);
> +       writel(0x00, div_addr + WZRD_DR_DIV_TO_PHASE_OFFSET);
> +
> +       /* Check status register */
> +       retries = WZRD_DR_NUM_RETRIES;
> +       while (retries--) {
> +               if (readl(divider->base + WZRD_DR_STATUS_REG_OFFSET) &
> +                                                       WZRD_DR_LOCK_BIT_MASK)
> +                       break;
> +       }

Is this readl_poll_timeout()?

> +
> +       if (retries == 0) {
> +               err = -ETIMEDOUT;
> +               goto err_reconfig;
> +       }
> +
> +       /* Initiate reconfiguration */
> +       writel(WZRD_DR_BEGIN_DYNA_RECONF,
> +              divider->base + WZRD_DR_INIT_REG_OFFSET);
> +
> +       /* Check status register */
> +       retries = WZRD_DR_NUM_RETRIES;
> +       while (retries--) {
> +               if (readl(divider->base + WZRD_DR_STATUS_REG_OFFSET) &
> +                                                       WZRD_DR_LOCK_BIT_MASK)
> +                       break;
> +       }
> +
> +       if (retries == 0)
> +               err = -ETIMEDOUT;

readl_poll_timeout()?

> +
> +err_reconfig:
> +       if (divider->lock)
> +               spin_unlock_irqrestore(divider->lock, flags);
> +       else
> +               __release(divider->lock);
> +
> +       return err;
> +}
> +
> +static long clk_wzrd_round_rate(struct clk_hw *hw, unsigned long rate,
> +                               unsigned long *prate)
> +{
> +       u8 div;
> +
> +       /*
> +        * since we donot change parent rate we just round rate to closest

s/donot/don't/

> +        * achievable
> +        */
> +       div = DIV_ROUND_CLOSEST(*prate, rate);
> +
> +       return (*prate / div);
> +}
> +
> +static const struct clk_ops clk_wzrd_clk_divider_ops = {
> +       .round_rate = clk_wzrd_round_rate,
> +       .set_rate = clk_wzrd_dynamic_reconfig,
> +       .recalc_rate = clk_wzrd_recalc_rate,
> +};
> +
> +static struct clk *clk_wzrd_register_divider(struct device *dev,
> +                                            const char *name,
> +                                            const char *parent_name,
> +                                            unsigned long flags,
> +                                            void __iomem *base, u16 offset,
> +                                            u8 shift, u8 width,
> +                                            u8 clk_divider_flags,
> +                                            const struct clk_div_table *table,
> +                                            spinlock_t *lock)
> +{
> +       struct clk_wzrd_divider *div;
> +       struct clk_hw *hw;
> +       struct clk_init_data init;
> +       int ret;
> +
> +       if (clk_divider_flags & CLK_DIVIDER_HIWORD_MASK) {

Do you use HIWORD mask things? I thought that was mostly rockchip
specific quirk. If not, please remove this code.

> +               if (width + shift > 16) {
> +                       pr_warn("divider value exceeds LOWORD field\n");
> +                       return ERR_PTR(-EINVAL);
> +               }
> +       }
> +
> +       /* allocate the divider */
> +       div = kzalloc(sizeof(*div), GFP_KERNEL);
> +       if (!div)
> +               return ERR_PTR(-ENOMEM);
> +
> +       init.name = name;
> +       if (clk_divider_flags & CLK_DIVIDER_READ_ONLY)
> +               init.ops = &clk_divider_ro_ops;
> +       else
> +               init.ops = &clk_wzrd_clk_divider_ops;
> +       init.flags = flags | CLK_IS_BASIC;

Oh yeah, don't add this flag. This code won't compile so please compile
test each patch in a series to make sure we don't have compilation
bisection holes.

> +       init.parent_names = (parent_name ? &parent_name : NULL);
> +       init.num_parents = (parent_name ? 1 : 0);

Is it sometimes the root of the tree? Seems unlikely so probably just
assume there is a parent all the time.

> +
> +       /* struct clk_divider assignments */

Drop useless comment please.

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

Drop useless comment please.

> +       hw = &div->hw;
> +       ret = clk_hw_register(dev, hw);
> +       if (ret) {
> +               kfree(div);
> +               hw = ERR_PTR(ret);
> +       }
> +
> +       return hw->clk;
> +}
> +
>  static int clk_wzrd_clk_notifier(struct notifier_block *nb, unsigned long event,
>                                  void *data)
>  {
> @@ -241,11 +437,14 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>                         ret = -EINVAL;
>                         goto err_rm_int_clks;
>                 }
> -               reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2) + i * 12);
> -               reg &= WZRD_CLKOUT_DIVIDE_MASK;
> -               reg >>= WZRD_CLKOUT_DIVIDE_SHIFT;
> -               clk_wzrd->clkout[i] = clk_register_fixed_factor
> -                       (&pdev->dev, clkout_name, clk_name, 0, 1, reg);
> +               clk_wzrd->clkout[i] = clk_wzrd_register_divider(&pdev->dev,
> +                                                               clkout_name,
> +                               clk_name, 0,
> +                               clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),

Please remove useless parenthesis.

> +                               WZRD_CLKOUT_DIVIDE_SHIFT,
> +                               WZRD_CLKOUT_DIVIDE_WIDTH,
> +                               CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
> +                               NULL, &clkwzrd_lock);
>                 if (IS_ERR(clk_wzrd->clkout[i])) {
>                         int j;
>  
> -- 
> 2.1.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
