Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E51D0224349
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 20:45:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CBC2F22622;
	Fri, 17 Jul 2020 18:45:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pqMcYi4K5j52; Fri, 17 Jul 2020 18:45:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8C24D221B5;
	Fri, 17 Jul 2020 18:45:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD3381BF83A
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 18:45:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B96E587E92
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 18:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBpSo3QQo7GC for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 18:45:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CA27E8805E
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 18:45:07 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85F5B2076D
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 18:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595011507;
 bh=aQXux31L0fVJHV4y9kdNGhhZTnpp/2Df3qree3CTJyY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TTVwmoGLYREFkLJUML0EPVfT4+mQ4tnEEUQwUtlL1R/MoiBcMlrdczMvuFK0qHX9J
 IkzsNpZsONttrmB7pJxC8IxhESUapmP6QrKH4Pu17h09Hq1CbLoNhRDcFImD05h3rf
 3dLJbmPAP3mfhuYC9hWPSwcigdOjgHPbSfpKMCr0=
Received: by mail-ot1-f50.google.com with SMTP id t18so7576109otq.5
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 11:45:07 -0700 (PDT)
X-Gm-Message-State: AOAM533WgAWNs12ZRgvoWj2KvVRm8Cojm8mrqNh01HemtL7zkQiZwO2b
 KszRiv7enq7mzoZzJDaNYstYpE2jfcbQckoKbA==
X-Google-Smtp-Source: ABdhPJzjAX9VPCvhBaymbD8U6pueMna6x31wFEWxJwYV+L9W8q5c90gNWa24y9cUV9fKEYpCpbjo4E4/s6jNnBO1h5w=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr10192904ots.192.1595011506868; 
 Fri, 17 Jul 2020 11:45:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200702191322.2639681-1-helen.koike@collabora.com>
 <20200702191322.2639681-6-helen.koike@collabora.com>
 <CAL_JsqKHG4HgcpWvh_qnHPAkaGCd7Q8APk2ai_QxjUQhvd5APg@mail.gmail.com>
 <822de449-8c01-d790-a9f9-e8b513bd7f87@collabora.com>
In-Reply-To: <822de449-8c01-d790-a9f9-e8b513bd7f87@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 Jul 2020 12:44:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLEXvub_E_nVWtQ1H4Ru=jLuRgr+Aiyu6Hmqb7fObG4Dg@mail.gmail.com>
Message-ID: <CAL_JsqLEXvub_E_nVWtQ1H4Ru=jLuRgr+Aiyu6Hmqb7fObG4Dg@mail.gmail.com>
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

On Fri, Jul 17, 2020 at 12:14 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Hi Rob,
>
> Thanks for your review.
>
> On 7/17/20 2:49 PM, Rob Herring wrote:
> > On Thu, Jul 2, 2020 at 1:13 PM Helen Koike <helen.koike@collabora.com> wrote:
> >>
> >> aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
> >> hclk_isp, thus we can remove parents from the list.
> >
> > But it looks like it is the wrap clocks you are removing.
>
> From this binding yes, but the idea is to add in the dt wherever clock
> responsible for the full ACLK path for instance.
> In the example below, clock aclk_isp is ACLK_ISP0_WRAPPER.
> Does this make sense?

Just perhaps clarify the renaming.

>
> >
> >>
> >> Also, for the isp0, we only need the ISP clock, ACLK and HCLK.
> >> In the future we'll need a pixel clock for RK3288 and RK3399, and a JPEG
> >> clock for RK3288.
> >>
> >> So with the goal to cleanup the dt-bindings and remove it from staging,
> >> simplify clock names to isp, aclk and hclk.
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
> >>
> >> Changes in V4:
> >> - update binding according to suggestion by Robin Murphy
> >> on https://patchwork.kernel.org/patch/11475007/
> >>
> >> Changes in V3:
> >> - this is a new patch in the series
> >> ---
> >>  .../bindings/media/rockchip-isp1.yaml         | 30 +++++++++----------
> >>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++---
> >>  2 files changed, 17 insertions(+), 21 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> index 4d111ef2e89c7..f10c53d008748 100644
> >> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> @@ -24,20 +24,20 @@ properties:
> >>      maxItems: 1
> >>
> >>    clocks:
> >> -    items:
> >> -      - description: ISP clock
> >> -      - description: ISP AXI clock clock
> >> -      - description: ISP AXI clock  wrapper clock
> >> -      - description: ISP AHB clock clock
> >> -      - description: ISP AHB wrapper clock
> >
> > This is the correct way to describe multiple clocks.
>
> The idea was to prepare for rk3288 and rk3399 isp1, as suggested here https://patchwork.kernel.org/patch/11475007/#23462085
>
> Or should we do:
>
> clocks:
>   oneOf:
>     # rk3288 clocks
>     - items:
>       - description: ISP clock
>       - description: ISP AXI clock
>       - description: ISP AHB clock
>       - description: ISP Pixel clock
>       - description: ISP JPEG source clock

The main section should have this and 'minItems: 3'. IOW, it's a
superset of what's valid. Then you can restrict specific compatibles
further with an if/then schema. For rk3288, you need one with
'minItems: 5'.

>     # rk3399 isp0 clocks
>     - items:
>       - description: ISP clock
>       - description: ISP AXI clock
>       - description: ISP AHB clock

And this would be an if/then schema based on the compatible string and
defining 'maxItems: 3'.

>     # rk3399 isp1 clocks
>     - items:
>       - description: ISP clock
>       - description: ISP AXI clock
>       - description: ISP AHB clock
>       - description: ISP Pixel clock

And an if/then with { minItems: 4, maxItems: 4 }. Or really since
these are just different instances, just combine them into 1
conditional allowing 3 or 4 clocks.

There are lots of examples to follow in the tree.

Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
