Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBC4293F60
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 17:15:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 941CE2E1C3;
	Tue, 20 Oct 2020 15:14:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BhkeMW7tET+l; Tue, 20 Oct 2020 15:14:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D2E152DEC9;
	Tue, 20 Oct 2020 15:14:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D408E1BF82F
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:14:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D096086663
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RrsA42uhYnqJ for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 15:14:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0998186661
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 15:14:49 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63EDE22283
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 15:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603206888;
 bh=0u4Fv1fqrTFQ3Wp/EIuAvFVLUv/j7BCakcnneOAU5xs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NZMb+McCVdq/q6SuDog4g30r0l0prtO/gCN9O6gVcsaPkBYbZzxJe6dZwLnFZWph2
 M0351LwXFAFPqpU9MMwcNqhFS0QuVRVoKOoQZN62uuHbU7C0DFfQ43/cynxfCiq2I3
 SzdZPNgixrYnmyKSYQ7VBaaXvm9F8NGbIFGYgg7c=
Received: by mail-ot1-f48.google.com with SMTP id e20so1994897otj.11
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 08:14:48 -0700 (PDT)
X-Gm-Message-State: AOAM531ZCdgGVx7+Zi1pxt+P8lQlEHZOKcLbMOKDFxFdRG3oKtySSzxx
 6nlDIaVGbHHCqQHJcLk+bRin9+be0XJwGqMr+w==
X-Google-Smtp-Source: ABdhPJz41UgbNkwtnCErGlmIpBGGzSTn7CHQ0TMdTIes7cHjDhnkd7e5tesUj1dAccQoyfMFCtdYvIGbHA+Y3i2/bE0=
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr1941932oti.107.1603206887469; 
 Tue, 20 Oct 2020 08:14:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-6-helen.koike@collabora.com>
 <CAL_Jsq+qB=yUtHKKujiUWrsq+W-3ggM3B_SuuDzfYEheczn=8g@mail.gmail.com>
 <2dcdda41-bdb4-55a8-557f-8175983effb5@collabora.com>
In-Reply-To: <2dcdda41-bdb4-55a8-557f-8175983effb5@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 20 Oct 2020 10:14:35 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+-8Jyms3LJBjTxABcuTa5GduXtJ1jdOgp7xcPoQzdtGQ@mail.gmail.com>
Message-ID: <CAL_Jsq+-8Jyms3LJBjTxABcuTa5GduXtJ1jdOgp7xcPoQzdtGQ@mail.gmail.com>
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

On Wed, Oct 14, 2020 at 11:46 AM Helen Koike <helen.koike@collabora.com> wrote:
>
> Hi Rob,
>
> Thnaks for your reply.
>
> On 9/22/20 11:24 AM, Rob Herring wrote:
> > On Wed, Jul 22, 2020 at 9:56 AM Helen Koike <helen.koike@collabora.com> wrote:
> >>
> >> aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
> >> hclk_isp, thus we can remove parents from the list.
> >>
> >> Also, for the isp0, we only need the ISP clock, ACLK and HCLK.
> >> In the future we'll need a pixel clock for RK3288 and RK3399, and a JPEG
> >> clock for RK3288.
> >>
> >> So with the goal to cleanup the dt-bindings and remove it from staging,
> >> simplify clock names to isp, aclk and hclk.
> >>
> >> Assigned clocks are meant to refer to the full path in the clock tree,
> >> i.e. the leaf in the tree.
> >> For instance, in RK3399, the clock responsible for ACLK (ISP AXI CLOCK)
> >> is aclk_isp0_wrapper.
> >>
> >> For reference, this is the isp clock topology on RK3399:
> >>
> >>  xin24m
> >>     pll_npll
> >>        npll
> >>           clk_isp1
> >>           clk_isp0
> >>     pll_cpll
> >>        cpll
> >>           aclk_isp1
> >>              aclk_isp1_noc
> >>              hclk_isp1
> >>                 aclk_isp1_wrapper
> >>                 hclk_isp1_noc
> >>           aclk_isp0
> >>              hclk_isp1_wrapper
> >>              aclk_isp0_wrapper
> >>              aclk_isp0_noc
> >>              hclk_isp0
> >>                 hclk_isp0_wrapper
> >>                 hclk_isp0_noc
> >>  pclkin_isp1_wrapper
> >>
> >> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> >>
> >> ---
> >> Changes in V5:
> >> - Use if/then schema as suggested by Rob Herring on
> >> https://patchwork.linuxtv.org/project/linux-media/patch/20200702191322.2639681-6-helen.koike@collabora.com/#119729
> >>
> >> Changes in V4:
> >> - update binding according to suggestion by Robin Murphy
> >> on https://patchwork.kernel.org/patch/11475007/
> >>
> >> Changes in V3:
> >> - this is a new patch in the series
> >> ---
> >>  .../bindings/media/rockchip-isp1.yaml         | 50 ++++++++++++-------
> >>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++-
> >>  2 files changed, 36 insertions(+), 22 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> index 62a6b9c959498..23c677d15037a 100644
> >> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> @@ -24,20 +24,10 @@ properties:
> >>      maxItems: 1
> >>
> >>    clocks:
> >> -    items:
> >> -      - description: ISP clock
> >> -      - description: ISP AXI clock clock
> >> -      - description: ISP AXI clock  wrapper clock
> >> -      - description: ISP AHB clock clock
> >> -      - description: ISP AHB wrapper clock
> >> +    minItems: 3
> >
> > You need maxItems here too or it will always be 3.
> >
> >>
> >>    clock-names:
> >> -    items:
> >> -      - const: clk_isp
> >> -      - const: aclk_isp
> >> -      - const: aclk_isp_wrap
> >> -      - const: hclk_isp
> >> -      - const: hclk_isp_wrap
> >> +    minItems: 3
> >>
> >>    iommus:
> >>      maxItems: 1
> >> @@ -116,6 +106,34 @@ required:
> >>    - power-domains
> >>    - ports
> >>
> >> +if:
> >> +  properties:
> >> +    compatible:
> >> +      contains:
> >> +        const: rockchip,rk3399-cif-isp
> >> +then:
> >> +  properties:
> >> +    clocks:
> >> +      maxItems: 4
> >> +      minItems: 3
> >
> > For a single compatible you shouldn't really have a variable number of clocks.
>
> I'm not entirely sure how to make this separation, since isp0 and isp1 (not yet supported)
> would use the same compatible.
> Unless if we separate in two compatibles, but maybe this is an overhead just for an extra clock.
> What do you think?

In that case, it's fine.

>
> >
> >> +      items:
> >> +        # isp0 and isp1
> >> +        - description: ISP clock
> >> +        - description: ISP AXI clock
> >> +        - description: ISP AHB clock
> >> +        # only for isp1
> >> +        - description: ISP Pixel clock
> >> +    clock-names:
> >> +      maxItems: 4
> >> +      minItems: 3
> >> +      items:
> >> +        # isp0 and isp1
> >> +        - const: isp
> >> +        - const: aclk
> >> +        - const: hclk
> >> +        # only for isp1
> >> +        - const: pclk_isp
> >
> > Don't you need an 'else' clause. For not rockchip,rk3399-cif-isp,
> > there's no definition of what clocks there are.
>
> There is only one compatible defined for now, rk3288 will be added later.
> The idea to add if/then is to make it easier to add rk3288:
>
> https://patchwork.kernel.org/project/linux-media/patch/20200406073017.19462-4-karthik.poduval@gmail.com/

Hopefully, the clock names will be aligned? Looks like they are the
same with just 1 additional clock. Ideally, you define them all at the
top level and the if/then schema just defines how many clocks for each
compatible.

Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
