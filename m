Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E25274423
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 16:24:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2A6785DF1;
	Tue, 22 Sep 2020 14:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vIfipoQWpnLO; Tue, 22 Sep 2020 14:24:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4E71085DE6;
	Tue, 22 Sep 2020 14:24:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9968D1BF83E
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 14:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 95DA185DE6
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 14:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SePvG31jyRXG for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 14:24:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5A7D850D6
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 14:24:32 +0000 (UTC)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com
 [209.85.161.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74A7A23A1D
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 14:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600784672;
 bh=fyhGiT07YqgY1sX7H5cYuZEWhzgxX1cJqk4Q9y19gjs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=O4GhqNTLUyIkVNe1g35MNvHUi2N1TQP2CaB0iKDfqgMBCvw2bTHDR9akkw6s3alVj
 rte5MyJ4m9s6DATOviv0bJ9O4ed08Zub/j+0K/7dA5f1+zeN7EwZE9Ig+vmW+pWk38
 mYaaC98M2jlAgvbVJaFDroKt8yB8NkeISVNCFAWw=
Received: by mail-oo1-f49.google.com with SMTP id z1so4203702ooj.3
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 07:24:32 -0700 (PDT)
X-Gm-Message-State: AOAM531wh8flQ8+fmRhPDhrByAWEfdY98H1GKPd0F0XVGo5ZRxEUXI8E
 fTBXRIQ0WbbSDV/q7RWbxVVrH+KqJ/EDILKDqQ==
X-Google-Smtp-Source: ABdhPJzUFEuKoDPplE32fF2OW24xWYgi/9lL9nNZnKQwkQwBHwCVey8YSOKSt3310TZYoa/pm+iYTw1x55KM9sBA3qs=
X-Received: by 2002:a4a:b30d:: with SMTP id m13mr3077541ooo.50.1600784671655; 
 Tue, 22 Sep 2020 07:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-6-helen.koike@collabora.com>
In-Reply-To: <20200722155533.252844-6-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 22 Sep 2020 08:24:20 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+qB=yUtHKKujiUWrsq+W-3ggM3B_SuuDzfYEheczn=8g@mail.gmail.com>
Message-ID: <CAL_Jsq+qB=yUtHKKujiUWrsq+W-3ggM3B_SuuDzfYEheczn=8g@mail.gmail.com>
Subject: Re: [PATCH v5 5/9] media: staging: rkisp1: remove unecessary clocks
To: Helen Koike <helen.koike@collabora.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Johan Jonker <jbx6244@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 22, 2020 at 9:56 AM Helen Koike <helen.koike@collabora.com> wrote:
>
> aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
> hclk_isp, thus we can remove parents from the list.
>
> Also, for the isp0, we only need the ISP clock, ACLK and HCLK.
> In the future we'll need a pixel clock for RK3288 and RK3399, and a JPEG
> clock for RK3288.
>
> So with the goal to cleanup the dt-bindings and remove it from staging,
> simplify clock names to isp, aclk and hclk.
>
> Assigned clocks are meant to refer to the full path in the clock tree,
> i.e. the leaf in the tree.
> For instance, in RK3399, the clock responsible for ACLK (ISP AXI CLOCK)
> is aclk_isp0_wrapper.
>
> For reference, this is the isp clock topology on RK3399:
>
>  xin24m
>     pll_npll
>        npll
>           clk_isp1
>           clk_isp0
>     pll_cpll
>        cpll
>           aclk_isp1
>              aclk_isp1_noc
>              hclk_isp1
>                 aclk_isp1_wrapper
>                 hclk_isp1_noc
>           aclk_isp0
>              hclk_isp1_wrapper
>              aclk_isp0_wrapper
>              aclk_isp0_noc
>              hclk_isp0
>                 hclk_isp0_wrapper
>                 hclk_isp0_noc
>  pclkin_isp1_wrapper
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>
> ---
> Changes in V5:
> - Use if/then schema as suggested by Rob Herring on
> https://patchwork.linuxtv.org/project/linux-media/patch/20200702191322.2639681-6-helen.koike@collabora.com/#119729
>
> Changes in V4:
> - update binding according to suggestion by Robin Murphy
> on https://patchwork.kernel.org/patch/11475007/
>
> Changes in V3:
> - this is a new patch in the series
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 50 ++++++++++++-------
>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++-
>  2 files changed, 36 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> index 62a6b9c959498..23c677d15037a 100644
> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -24,20 +24,10 @@ properties:
>      maxItems: 1
>
>    clocks:
> -    items:
> -      - description: ISP clock
> -      - description: ISP AXI clock clock
> -      - description: ISP AXI clock  wrapper clock
> -      - description: ISP AHB clock clock
> -      - description: ISP AHB wrapper clock
> +    minItems: 3

You need maxItems here too or it will always be 3.

>
>    clock-names:
> -    items:
> -      - const: clk_isp
> -      - const: aclk_isp
> -      - const: aclk_isp_wrap
> -      - const: hclk_isp
> -      - const: hclk_isp_wrap
> +    minItems: 3
>
>    iommus:
>      maxItems: 1
> @@ -116,6 +106,34 @@ required:
>    - power-domains
>    - ports
>
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: rockchip,rk3399-cif-isp
> +then:
> +  properties:
> +    clocks:
> +      maxItems: 4
> +      minItems: 3

For a single compatible you shouldn't really have a variable number of clocks.

> +      items:
> +        # isp0 and isp1
> +        - description: ISP clock
> +        - description: ISP AXI clock
> +        - description: ISP AHB clock
> +        # only for isp1
> +        - description: ISP Pixel clock
> +    clock-names:
> +      maxItems: 4
> +      minItems: 3
> +      items:
> +        # isp0 and isp1
> +        - const: isp
> +        - const: aclk
> +        - const: hclk
> +        # only for isp1
> +        - const: pclk_isp

Don't you need an 'else' clause. For not rockchip,rk3399-cif-isp,
there's no definition of what clocks there are.

Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
