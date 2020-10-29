Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B37FC29F5CE
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 21:04:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8882886C99;
	Thu, 29 Oct 2020 20:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wvZEAY5PKYTA; Thu, 29 Oct 2020 20:04:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF28E86C0C;
	Thu, 29 Oct 2020 20:04:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33E891BF28F
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 20:04:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 30BAD85C11
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 20:04:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zJWROc09WqdP for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 20:04:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5847584E1A
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 20:04:29 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com
 [209.85.161.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1DC62087D
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 20:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604001868;
 bh=AOvWudq0ZqsWRnN/qXnDh5LtmEQC83i+z8hhzYFp75c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=E9pSr6O/G6YE5XFNmqJqljbHx3wSzq6bVnhYgluqrf/H7wEGt4aAL9MLa6Ef2g5bE
 4w5Ruk1xZvDR0sd7whf/fLVhUkTVh6Yvbg+wvF3ZK42Y28B6ivLMgvYklEgjEcZcBs
 SnRh+ePJ2S1j6tL012nn1pFY9GPKgLLRWuNt5q28=
Received: by mail-oo1-f41.google.com with SMTP id c25so1022294ooe.13
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 13:04:28 -0700 (PDT)
X-Gm-Message-State: AOAM532N4ymDoJymhhUwRW7+YFgKCVXPBw9QqG43VKcyJ03FqEliUCGn
 64nNHUjQRzZBoxylSTSDNtOX3NIsWOlbUMGT9A==
X-Google-Smtp-Source: ABdhPJzY69332/TXD/GEbGo1Phdkm8uP9368uPwVctCb5SZBvuiMltO4sKY7UEYa7BklecuGbw5fafj/oTXoXLnSFpE=
X-Received: by 2002:a4a:dcc8:: with SMTP id h8mr4529803oou.81.1604001867553;
 Thu, 29 Oct 2020 13:04:27 -0700 (PDT)
MIME-Version: 1.0
References: <20201020193850.1460644-1-helen.koike@collabora.com>
 <20201020193850.1460644-6-helen.koike@collabora.com>
In-Reply-To: <20201020193850.1460644-6-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 29 Oct 2020 15:04:16 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK3xhPHscbB+waDqEjKeRoeZ0MNu88fp70g9CSC02Qopw@mail.gmail.com>
Message-ID: <CAL_JsqK3xhPHscbB+waDqEjKeRoeZ0MNu88fp70g9CSC02Qopw@mail.gmail.com>
Subject: Re: [PATCH v6 5/9] media: staging: rkisp1: remove unecessary clocks
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
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Robin Murphy <robin.murphy@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mark Rutland <mark.rutland@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 20, 2020 at 2:39 PM Helen Koike <helen.koike@collabora.com> wrote:
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
> Reviewed-by: Tomasz Figa <tfiga@chromium.org>
>
> ---
>
> Changes in V6:
> - Define clocks in the top level, and use if/else schema to define how
>   many for each compatible as sugested by Rob Herring on
>   https://patchwork.linuxtv.org/project/linux-media/patch/20200722155533.252844-6-helen.koike@collabora.com/#122626
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 44 +++++++++++++------
>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++--
>  2 files changed, 33 insertions(+), 19 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
