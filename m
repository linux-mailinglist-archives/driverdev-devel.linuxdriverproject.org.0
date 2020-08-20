Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C43E24ACD4
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 04:02:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D912E2278E;
	Thu, 20 Aug 2020 02:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4hglfDK+ytCy; Thu, 20 Aug 2020 02:02:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A937E22786;
	Thu, 20 Aug 2020 02:02:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED5331BF311
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 02:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E46B3868AB
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 02:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d3tCEKK0i-FL for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 02:01:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A984A868A9
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 02:01:59 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id v21so251525otj.9
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 19:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a6AI5eeMLSnuHLbo6ZZjQDIfs8rhjaUq4nVIf2nIA4s=;
 b=YnPCB7GyyenNNj4m6DTSkuaI05qpfHVG/QgzwK6ZW5cfzjXcjHWN5LAYlS6/sxdjkz
 Q3B6OAL6VkfXwnio6GpcqFThGxYHL16LeanA7XHdVMfn26QoX0g+phi2xhTniJx/oG4b
 By+2BEurn0lcdeK0Stus91++uccTrtAGABYgjAbl+ipAdepdfWEyi3uEFSsTuQd5UZBx
 BRrztqVUVKEKekr/BYTkoCsnvAO2Pj7IHdqvtB+4JORdtJ9ivIHukRoFwzuDiHXHnEM+
 GW1diuJzzXcDmzpqOY7Sm35sNw8MEKZLt3qU+FvbRqjP0SgosGrMRbrNiWiPtlstFAhc
 xoVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a6AI5eeMLSnuHLbo6ZZjQDIfs8rhjaUq4nVIf2nIA4s=;
 b=EH46KoY07lIOf5zSajL0qtwikKKFjqYKP6u8i8n7AtWUPJUEcgtGjN1xsOj376ZJG9
 rp9bnKNwPkyhlL3n6gDSNoTNLeO6PPsxMJMpp0zNFiMWmjkwbz6kdtpUGo5RhtXQiINQ
 FYDE3eygIsHnJwn5tomhxCVw1b4TGd34AMi3dnRQxlcW0Aju+clh6ibsD8BdIlaX8uxu
 HAMxBEmaas44ZlMa5e/ucPdFy8fdlKrDgHlNPuW092NU5K2S2ftvPmjv/sllCySXzfra
 KB+c1tBE+NmJFxJqFrQAuXZDJDOZ6eyAOzHSI+701Uv1ijgYMvk3wXcH6FXk/j8jK/uq
 10cQ==
X-Gm-Message-State: AOAM530c5jLN58UBwbszHhufNVV2aUEFSxCzBdbRtfjq4ai/wOTuF0OX
 wnlBSa45nTsPKe4UrUCXI+2QpstPlFmYteQGXxpR/g==
X-Google-Smtp-Source: ABdhPJy4t5xNUInvTbrdNktpIEEwJa9WXJ3VbyfLmNGHa9Tlogcfk1xfE/pD2NZhBS1V2JSKNp49dZbkVm49zRPUArk=
X-Received: by 2002:a05:6830:237b:: with SMTP id
 r27mr528934oth.352.1597888918873; 
 Wed, 19 Aug 2020 19:01:58 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <CALAqxLU3bt6fT4nGHZFSnzyQq4xJo2On=c_Oa9ONED9-jhaFgw@mail.gmail.com>
In-Reply-To: <CALAqxLU3bt6fT4nGHZFSnzyQq4xJo2On=c_Oa9ONED9-jhaFgw@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 19 Aug 2020 19:01:46 -0700
Message-ID: <CALAqxLW98nVc-=8Q6nx-wRP1z8pzkw1_zNc9M7V3GhnJQqM9rg@mail.gmail.com>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Wanchun Zheng <zhengwanchun@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 driverdevel <devel@driverdev.osuosl.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 David Airlie <airlied@linux.ie>, Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Bogdan Togorean <bogdan.togorean@analog.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>,
 linux-media <linux-media@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Liwei Cai <cailiwei@hisilicon.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen Feng <puck.chen@hisilicon.com>,
 Alexei Starovoitov <ast@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 mauro.chehab@huawei.com, Rob Clark <robdclark@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Liuyao An <anliuyao@huawei.com>,
 Daniel Vetter <daniel@ffwll.ch>, Network Development <netdev@vger.kernel.org>,
 Rongrong Zou <zourongrong@gmail.com>, BPF Mailing List <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 19, 2020 at 2:36 PM John Stultz <john.stultz@linaro.org> wrote:
>
> On Wed, Aug 19, 2020 at 4:46 AM Mauro Carvalho Chehab
> <mchehab+huawei@kernel.org> wrote:
> > So, IMO, the best is to keep it on staging for a while, until those
> > remaining bugs gets solved.
> >
> > I added this series, together with the regulator driver and
> > a few other patches (including a hack to fix a Kernel 5.8
> > regression at WiFi ) at:
> >
> >         https://gitlab.freedesktop.org/mchehab_kernel/hikey-970/-/commits/master
>
> Sorry, one more small request: Could you create a branch that only has
> the DRM driver changes in it?
>
> The reason I ask, is that since the HiKey960 isn't affected by the
> majority of the problems you listed as motivation for going through
> staging. So if we can validate that your tree works fine on HiKey960,
> the series can be cleaned up and submitted properly upstream to enable
> that SoC, and the outstanding 970 issues can be worked out afterwards
> against mainline.

Just as a heads up, I tried testing your tree with my HiKey960, and
after fixing the compat string inconsistency, the drivers seem to load
properly. However the drm_hwcomposer seems to have some trouble with
the driver:
01-01 00:12:41.456   345   345 E hwc-drm-display-compositor: Commit
test failed for display 0, FIXME
01-01 00:12:41.456   345   345 E hwc-drm-two: Failed to apply the
frame composition ret=-22
01-01 00:12:41.456   351   351 E HWComposer:
presentAndGetReleaseFences: present failed for display 0: BadParameter
(4)

I'll dig in a bit further as to why, but wanted to give you a heads up.

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
