Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 037B324B055
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 09:48:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B5408685B;
	Thu, 20 Aug 2020 07:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pArP-ngWGFFf; Thu, 20 Aug 2020 07:48:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F4998679E;
	Thu, 20 Aug 2020 07:48:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D10531BF841
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 07:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CC69787CF9
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 07:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jkrhP5WQMUX9 for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 07:48:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6B27F87D15
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 07:48:11 +0000 (UTC)
Received: from coco.lan (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF7492076E;
 Thu, 20 Aug 2020 07:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597909691;
 bh=g2IqS522aDpDOMRGjJhoBBKmc9vDx5nkutC89s6uJR4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=q9mr5rBKWlaN6yOMGAvpVnslZyDPcwewIL7KGeA4ddSFK2LedtABk2YcfI/a2xWSo
 vj4XxLKWhcOWpuFnRThSQO8Cn4AnL6tc5Bg7GCM7GCId3AAXYo0vPaJOaK7wHu4CUU
 CDlaI3bQpIBtNGU4ubSBKKXxRpxl+QeouugEhmNw=
Date: Thu, 20 Aug 2020 09:48:00 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200820094800.3ede7970@coco.lan>
In-Reply-To: <CALAqxLULQvW3UikCHpEzSDnpeYnBy8wDSsWZNbSrmivQTW3_Sg@mail.gmail.com>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <CALAqxLU3bt6fT4nGHZFSnzyQq4xJo2On=c_Oa9ONED9-jhaFgw@mail.gmail.com>
 <CALAqxLW98nVc-=8Q6nx-wRP1z8pzkw1_zNc9M7V3GhnJQqM9rg@mail.gmail.com>
 <CALAqxLULQvW3UikCHpEzSDnpeYnBy8wDSsWZNbSrmivQTW3_Sg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
 linux-media <linux-media@vger.kernel.org>, "open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
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

Em Wed, 19 Aug 2020 20:28:44 -0700
John Stultz <john.stultz@linaro.org> escreveu:

> On Wed, Aug 19, 2020 at 7:01 PM John Stultz <john.stultz@linaro.org> wrote:
> >
> > On Wed, Aug 19, 2020 at 2:36 PM John Stultz <john.stultz@linaro.org> wrote:  
> > >
> > > On Wed, Aug 19, 2020 at 4:46 AM Mauro Carvalho Chehab
> > > <mchehab+huawei@kernel.org> wrote:  
> > > > So, IMO, the best is to keep it on staging for a while, until those
> > > > remaining bugs gets solved.
> > > >
> > > > I added this series, together with the regulator driver and
> > > > a few other patches (including a hack to fix a Kernel 5.8
> > > > regression at WiFi ) at:
> > > >
> > > >         https://gitlab.freedesktop.org/mchehab_kernel/hikey-970/-/commits/master  
> > >
> > > Sorry, one more small request: Could you create a branch that only has
> > > the DRM driver changes in it?
> > >
> > > The reason I ask, is that since the HiKey960 isn't affected by the
> > > majority of the problems you listed as motivation for going through
> > > staging. So if we can validate that your tree works fine on HiKey960,
> > > the series can be cleaned up and submitted properly upstream to enable
> > > that SoC, and the outstanding 970 issues can be worked out afterwards
> > > against mainline.  
> >
> > Just as a heads up, I tried testing your tree with my HiKey960, and
> > after fixing the compat string inconsistency, the drivers seem to load
> > properly. However the drm_hwcomposer seems to have some trouble with
> > the driver:
> > 01-01 00:12:41.456   345   345 E hwc-drm-display-compositor: Commit
> > test failed for display 0, FIXME
> > 01-01 00:12:41.456   345   345 E hwc-drm-two: Failed to apply the
> > frame composition ret=-22
> > 01-01 00:12:41.456   351   351 E HWComposer:
> > presentAndGetReleaseFences: present failed for display 0: BadParameter
> > (4)
> >
> > I'll dig in a bit further as to why, but wanted to give you a heads up.  
> 
> Ok, I've mostly gotten it sorted out:
>   - You're missing a few color formats.
>   - And I re-discovered a crash that was already fixed in my tree.
> 
> I'll send those patches in a few here.

Thank you for the patches! I'll test them with Hikey 970 in order to
be sure they're compatible also with such SoC.

> 
> That said even with the patches I've got on top of your series, I
> still see a few issues:

> 1) I'm seeing red-blue swap with your driver.  I need to dig a bit to
> see what the difference is, I know gralloc has a config option for
> this, and maybe the version of the driver I'm carrying has it wrong?

There are some settings at adv7535 with regards to the colormap.
The 4.9 fork of it has some different settings. Maybe it could
be somehow related to it.

I have here a Hikey 960, but didn't test it yet.

> 2) Performance is noticeably worse. Whereas with my tree, I see close
> to 60fps (that clk issue we mentioned earlier is why it's not exactly
> 60) in most tests, but with yours it mostly hovers around 30some fps,
> occasionally speeding up to 40 and then back down.

That's weird, but it could be due to some settings related to CMA, IOMMU
and/or AFBC.

> Obviously with some work I suspect we'll be able to sort these out,
> but I also do feel that the set you're starting with for upstreaming
> is pretty old. The driver I'm carrying was heavily refactored around
> 5.0 to share code with the existing kirin driver, in the hopes of
> making usptreaming easier, and it seems a shame to throw that out and
> focus your efforts on the older tree.
> 
> But to be fair, I've not had time to upstream the driver myself, and
> it's obviously your choice on how you spend your time.  I am really
> excited to see your efforts here, regardless of which driver you end
> up pushing.

On a quick look I've done, besides not having support for Hikey 970,
the code on your tree seems to have less settings than the original
one for Hikey 960. Yet, it should take some time to figure out what
those extra settings are doing.

Once I get this driver merged, and have USB support working fine[1],
my plan is to compare the version from your tree, and compare
with the one I have, in order to cleanup some stuff, check performance
and do some other optimizations.

-

[1] this is a little OOT here: USB has been a challenge. Depending
on the build, I'm getting an NMI interrupt error when the USB3
stack is loaded (usually at dwc3). The error is ESR_ELx_AET_UC.
Unfortunately, it doesn't point to where this error is generated,
making very hard to debug it.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
