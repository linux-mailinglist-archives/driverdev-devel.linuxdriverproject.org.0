Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF2A224282
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 19:49:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E2F887653;
	Fri, 17 Jul 2020 17:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5TcgQdACCnIt; Fri, 17 Jul 2020 17:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C60478758A;
	Fri, 17 Jul 2020 17:49:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD22E1BF370
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 17:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B934C867ED
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 17:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5oGQ3At0X1Ss for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 17:49:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AA0748679E
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 17:49:21 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F0B7207EA
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 17:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595008161;
 bh=6czVMdZhaHo+tKToD45mSau37/5Ee2rAARvEgfpux50=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=yhxZkgPa/TfqOP6176TD0H4j5knKc+Ru46LYNv7AfRnabvyYjEz++pYZlTh8evncI
 HWfQ7eXaGWOKv+9zVEA7vb31QRcs8qj/DMd4cxooUAV0kdus5Ax7PbV1+S78TKK2Go
 5eqtwQidvEKHV0cjK2vJ/UhPeIXURf04myyR04Do=
Received: by mail-oi1-f169.google.com with SMTP id l63so8634489oih.13
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 10:49:21 -0700 (PDT)
X-Gm-Message-State: AOAM530DcYZQRpVVpl8vlF999pizc/cbNvJBwMeRfQBpuRTwFEVlG4jx
 Rdi/+R9TveWSw54Z94By61RV5/BjsKNIx3jFnw==
X-Google-Smtp-Source: ABdhPJwNhRmnLbtxUv/aDJg/oVt29At2larGRwaEpFyhGA+N34UOSp3eR1o00QSQMJ1CApxxPymPcPTPy2uXJpX31Y0=
X-Received: by 2002:aca:30d2:: with SMTP id w201mr8720870oiw.147.1595008160791; 
 Fri, 17 Jul 2020 10:49:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200702191322.2639681-1-helen.koike@collabora.com>
 <20200702191322.2639681-6-helen.koike@collabora.com>
In-Reply-To: <20200702191322.2639681-6-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 Jul 2020 11:49:05 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKHG4HgcpWvh_qnHPAkaGCd7Q8APk2ai_QxjUQhvd5APg@mail.gmail.com>
Message-ID: <CAL_JsqKHG4HgcpWvh_qnHPAkaGCd7Q8APk2ai_QxjUQhvd5APg@mail.gmail.com>
Subject: Re: [PATCH v4 5/9] media: staging: rkisp1: remove unecessary clocks
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

On Thu, Jul 2, 2020 at 1:13 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
> hclk_isp, thus we can remove parents from the list.

But it looks like it is the wrap clocks you are removing.

>
> Also, for the isp0, we only need the ISP clock, ACLK and HCLK.
> In the future we'll need a pixel clock for RK3288 and RK3399, and a JPEG
> clock for RK3288.
>
> So with the goal to cleanup the dt-bindings and remove it from staging,
> simplify clock names to isp, aclk and hclk.
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
>
> Changes in V4:
> - update binding according to suggestion by Robin Murphy
> on https://patchwork.kernel.org/patch/11475007/
>
> Changes in V3:
> - this is a new patch in the series
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 30 +++++++++----------
>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++---
>  2 files changed, 17 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> index 4d111ef2e89c7..f10c53d008748 100644
> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -24,20 +24,20 @@ properties:
>      maxItems: 1
>
>    clocks:
> -    items:
> -      - description: ISP clock
> -      - description: ISP AXI clock clock
> -      - description: ISP AXI clock  wrapper clock
> -      - description: ISP AHB clock clock
> -      - description: ISP AHB wrapper clock

This is the correct way to describe multiple clocks.

> +    maxItems: 5

Now the 4th and 5th clock are undefined.

> +    minItems: 3
> +    description:
> +      ISP clock
> +      ISP AXI clock
> +      ISP AHB clock
>
>    clock-names:
> +    maxItems: 5

This should not be more than the number of entries in 'items'.

> +    minItems: 3
>      items:
> -      - const: clk_isp
> -      - const: aclk_isp
> -      - const: aclk_isp_wrap
> -      - const: hclk_isp
> -      - const: hclk_isp_wrap
> +      - const: isp
> +      - const: aclk
> +      - const: hclk
>
>    iommus:
>      maxItems: 1
> @@ -135,11 +135,9 @@ examples:
>              reg = <0x0 0xff910000 0x0 0x4000>;
>              interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>              clocks = <&cru SCLK_ISP0>,
> -                     <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
> -                     <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
> -            clock-names = "clk_isp",
> -                          "aclk_isp", "aclk_isp_wrap",
> -                          "hclk_isp", "hclk_isp_wrap";
> +                     <&cru ACLK_ISP0_WRAPPER>,
> +                     <&cru HCLK_ISP0_WRAPPER>;
> +            clock-names = "isp", "aclk", "hclk";
>              iommus = <&isp0_mmu>;
>              phys = <&dphy>;
>              phy-names = "dphy";
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index f38801fea10d9..175ac25fe99fa 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -406,11 +406,9 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
>  }
>
>  static const char * const rk3399_isp_clks[] = {
> -       "clk_isp",
> -       "aclk_isp",
> -       "hclk_isp",
> -       "aclk_isp_wrap",
> -       "hclk_isp_wrap",
> +       "isp",
> +       "aclk",
> +       "hclk",
>  };
>
>  static const struct rkisp1_match_data rk3399_isp_clk_data = {
> --
> 2.26.0
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
