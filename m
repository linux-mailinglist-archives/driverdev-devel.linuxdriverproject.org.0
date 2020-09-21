Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C06382734E2
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 23:27:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 45F7B84FFF;
	Mon, 21 Sep 2020 21:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ht_H3wqZUv7C; Mon, 21 Sep 2020 21:26:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47E6C84EB4;
	Mon, 21 Sep 2020 21:26:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 32AE81BF336
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E889820523
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hFHuBkTTI7vD for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 21:26:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8BC9920373
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 21:26:53 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F270A23A5D;
 Mon, 21 Sep 2020 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600723613;
 bh=IV7PGDUgLEoCRfexj4agX3MDocOIODP3V/aEU9GbhMw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=ybOrtx2xpLaqhS5nTFaAqTrS1S6QjwWw5WMKBdLLbvFzg0I3lx+0GwSbWf0MeXa1L
 qxbsmQyDIf2yfvQTkLqDju6BRC42pt+k8QF8IIcEpsvMpldJhf7LMtKwCe1m99AH8B
 f2fb3IBbwQ7l79feNMyekvyYCmLRkJr2QSQF7Daw=
MIME-Version: 1.0
In-Reply-To: <1598621996-31040-5-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1598621996-31040-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1598621996-31040-5-git-send-email-shubhrajyoti.datta@xilinx.com>
Subject: Re: [PATCH v6 4/8] clk: clock-wizard: Add support for dynamic
 reconfiguration
From: Stephen Boyd <sboyd@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-clk@vger.kernel.org
Date: Mon, 21 Sep 2020 14:26:51 -0700
Message-ID: <160072361167.310579.5552787788001872119@swboyd.mtv.corp.google.com>
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
 Chirag Parekh <chirag.parekh@xilinx.com>, gregkh@linuxfoundation.org,
 mturquette@baylibre.com, Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Shubhrajyoti Datta (2020-08-28 06:39:52)
> The patch adds support for dynamic reconfiguration of clock output rate.
> Output clocks are registered as dividers and set rate callback function
> is used for dynamic reconfiguration.
> 
> Based on the initial work from Chirag.
> 
> Signed-off-by: Chirag Parekh <chirag.parekh@xilinx.com>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---

A lot of the same comments apply here.

> v6:
> Remove the typecast.
> use min for capping frequency.
> use polled timeout
> 
>  drivers/clk/clk-xlnx-clock-wizard.c | 185 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 179 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
> index d6577c8..8dfcec8 100644
> --- a/drivers/clk/clk-xlnx-clock-wizard.c
> +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> @@ -31,8 +32,23 @@
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
> @@ -73,6 +112,136 @@ static const unsigned long clk_wzrd_max_freq[] = {
>         1066000000UL
>  };
>  
> +/* spin lock variable for clk_wzrd */
> +static DEFINE_SPINLOCK(clkwzrd_lock);

What is it protecting?

> +
> +static unsigned long clk_wzrd_recalc_rate(struct clk_hw *hw,
> +                                         unsigned long parent_rate)
> +{
> +       struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
> +       void __iomem *div_addr = divider->base + divider->offset;
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
> +       u32 value;
> +       struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
> +       void __iomem *div_addr = divider->base + divider->offset;

Shouldn't the lock be held here?

> +
> +       value = DIV_ROUND_CLOSEST(parent_rate, rate);
> +
> +       /* Cap the value to max */
> +       min(value, (u32)WZRD_DR_MAX_INT_DIV_VALUE);
> +
> +       /* Set divisor and clear phase offset */
> +       writel(value, div_addr);
> +       writel(0x00, div_addr + WZRD_DR_DIV_TO_PHASE_OFFSET);
> +
> +       /* Check status register */
> +       err = readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
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
> +       err = readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
> +                               value & WZRD_DR_LOCK_BIT_MASK,
> +                               WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
> +
> +       return err;

return readl_poll_timeout().

> +}
> +
> +static long clk_wzrd_round_rate(struct clk_hw *hw, unsigned long rate,
> +                               unsigned long *prate)
> +{
> +       u8 div;
> +
> +       /*
> +        * since we don't change parent rate we just round rate to closest
> +        * achievable
> +        */
> +       div = DIV_ROUND_CLOSEST(*prate, rate);
> +
> +       return (*prate / div);

Drop useless parens please.

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

Is it used?

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

Is this used?

> +               init.ops = &clk_divider_ro_ops;
> +       else
> +               init.ops = &clk_wzrd_clk_divider_ops;
> +       init.flags = flags;
> +       init.parent_names = (parent_name ? &parent_name : NULL);
> +       init.num_parents = (parent_name ? 1 : 0);

Doesn't it always have a parent?

> +
> +       /* struct clk_divider assignments */

Drop useless comments please.

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
> +       hw = &div->hw;
> +       ret = clk_hw_register(dev, hw);

devm_clk_hw_register()?

> +       if (ret) {
> +               kfree(div);

Why not a devm_kzalloc() and then drop this?

> +               hw = ERR_PTR(ret);
> +       }
> +
> +       return hw->clk;
> +}
> +
>  static int clk_wzrd_clk_notifier(struct notifier_block *nb, unsigned long event,
>                                  void *data)
>  {
> @@ -243,11 +413,14 @@ static int clk_wzrd_probe(struct platform_device *pdev)
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
> +                               WZRD_CLKOUT_DIVIDE_SHIFT,
> +                               WZRD_CLKOUT_DIVIDE_WIDTH,
> +                               CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
> +                               NULL, &clkwzrd_lock);

Also wonder if we could have a clk_wzrd_register_divider() API that
knows most of these things and just takes a number indicating which clk
it is? Then the caller isn't a bunch of lines of code that has to be
mentally carried to the callee.

>                 if (IS_ERR(clk_wzrd->clkout[i])) {
>                         int j;
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
