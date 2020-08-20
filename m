Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4A324AF5A
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 08:40:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1CFAC882A7;
	Thu, 20 Aug 2020 06:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2w3uZmbUwFCH; Thu, 20 Aug 2020 06:40:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E13B8824B;
	Thu, 20 Aug 2020 06:40:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 793741BF388
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 06:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 71009865E0
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 06:40:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id msavDvQfBBx5 for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 06:40:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D3F58864B5
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 06:40:40 +0000 (UTC)
Received: from coco.lan (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D847220786;
 Thu, 20 Aug 2020 06:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597905640;
 bh=smEfryQX4LpVGJzthIRWac0/v0EWxUcxXXFygmlh3ss=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uVpRlkTA4U4rKgGuZwZCNYKjnVf9jx9QyQlWzioyqxEFKFORZR+nmJ3A1W5F4jif/
 BJYtLKuGsdnPxO5hTUeXwINInbRp8ypXBnFZxS/ysUVhzONji7yUZ2lF5OFSGgTyUY
 312IwaWgMhztAUA9bEhtGh6dl9ki8qovoCmm2Kpk=
Date: Thu, 20 Aug 2020 08:40:30 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200820084030.3663de78@coco.lan>
In-Reply-To: <20200819212551.GA114762@ravnborg.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <CALAqxLVRsPKv-xmxQfBFaBa9XOmSfrFj3w9_zyfzNJk8+Kfjug@mail.gmail.com>
 <20200819212551.GA114762@ravnborg.org>
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
 Sumit Semwal <sumit.semwal@linaro.org>,
 driverdevel <devel@driverdev.osuosl.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Wei Xu <xuwei5@hisilicon.com>,
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
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 Jakub Kicinski <kuba@kernel.org>, mauro.chehab@huawei.com,
 Rob Clark <robdclark@chromium.org>,
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

Em Wed, 19 Aug 2020 23:25:51 +0200
Sam Ravnborg <sam@ravnborg.org> escreveu:

> Hi John.
> 
> > > So, IMO, the best is to keep it on staging for a while, until those
> > > remaining bugs gets solved.  
> > 
> > I'm not sure I see all of these as compelling for pushing it in via
> > staging. And I suspect in the process of submitting the patches for
> > review folks may find the cause of some of the problems you list here.  
> 
> There is a tendency to forget drivers in staging, and with the almost
> constant refactoring that happens in the drm drivers we would end up
> fixing this driver when a bot trigger an error.
> So IMO we need very good reasons to go in via staging.

My plan is to have this driver upstream for 5.10, and getting it
out of staging by Kernel 5.11. So, I doubt that the DRM kAPIs would
change a lot during those 2 Kernel cycles.

In any case, I'm also fine to have a final patch at the end of this
series moving it out of staging. The only thing that, IMHO, prevents
it to be out of staging is the LDI underflow. Right now, if no input
events reach the driver, DPMS will put the monitor to suspend, and
it never returns back from life. I bet that, once we discover the
root cause, the fix would be just a couple of lines, but identifying
where the problem is can take a while.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
