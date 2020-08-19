Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F6824A73B
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 21:52:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 012F3877F2;
	Wed, 19 Aug 2020 19:52:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iNy+UTe37i+p; Wed, 19 Aug 2020 19:52:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8554E877D0;
	Wed, 19 Aug 2020 19:52:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 87BBA1BF316
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 19:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7F3AC876D4
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 19:52:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9s+yduVFc5qp for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 19:52:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6BDE787601
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 19:52:18 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id v6so20013302ota.13
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 12:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=20eRCPt9U7XROuUscJl4o9bl5XBe7/+hwEOIYHyciSM=;
 b=TDvGe73fi0mYFcu8gy0zyv7nAwTvj7LZXmceDEUKPP8XfBtwIw8eDnhZKXXW/8lOST
 i3mwXYbXDDRyFBEBUEFYWxYynj8XahsSAx/k6lpaNmRyovcJDE7Y/1Us5/lAXLoB+fny
 MXwugodqdfXUpnDdV+YqwtDPcrU39IcwaELeeOIEfQVGHH8qMEJzhHrmfsPm50dMtK8D
 E2hgWNg9hTGAkp/gDSRS2/SFCteSIRgMdFhm92/90JvBoxi1tgk0nM350xbrUY9djJu/
 Vayz78+1GIbV3JXLHBbEvqxWVmcLvT6HCup7VhLEysHQgvZVLA6bXvrYb7L+4t8Mxya5
 O2PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=20eRCPt9U7XROuUscJl4o9bl5XBe7/+hwEOIYHyciSM=;
 b=KH1G5LrGBO7vIc3lNWg/00SyS5e0HCd/DfRyiIbXirp7prp8blQv+py/V1afoCloPk
 pCmK/59eqSrg6ocae57ye2OIhu0kblrYGWvuuO9kufLqObImfiFumoh/AKjbD8zrR4M6
 i7mAoV0SPu+wBnKfP4n1+YEWSL+yiCwQHniX8fBQukqep5k2ljrFAqgbmXE2pTFvBJxi
 77MVmpXSi834G+Wq8td4FbjyjNd6vuuZYaVWEOpm2bgS7t8PbMB1UDOan0jg+shAO/Eu
 uBwtYqWy0HX32ByQnEPHTN/LCENE8IqrdbSkMj1U0X1Fui1bcgziFZHtGdMaMOMHyH+W
 Lwwg==
X-Gm-Message-State: AOAM532l+edLEw0GjshwFWB1A1d9ubQBn5Va16oSSK/AKOhsUyyHmbdF
 63DHNJn/B4Nkv8BHj806XjFG6J8j1N9C+aNKE+B8dg==
X-Google-Smtp-Source: ABdhPJziBBPPuDZCBcZoysAn7wtSqkMtfGL35ZZB/FJ/a7yXT1Ut5k0YtYAU8hIkSuF0vuVhhtyHAco3tq76syVzuqI=
X-Received: by 2002:a9d:6f8f:: with SMTP id h15mr18795170otq.221.1597866737290; 
 Wed, 19 Aug 2020 12:52:17 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <20200819152120.GA106437@ravnborg.org>
 <20200819153045.GA18469@pendragon.ideasonboard.com>
In-Reply-To: <20200819153045.GA18469@pendragon.ideasonboard.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 19 Aug 2020 12:52:06 -0700
Message-ID: <CALAqxLUXnPRec3UYbMKge8yNKBagLOatOeRCagF=JEyPEfWeKA@mail.gmail.com>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Wanchun Zheng <zhengwanchun@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 driverdevel <devel@driverdev.osuosl.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Wei Xu <xuwei5@hisilicon.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Bogdan Togorean <bogdan.togorean@analog.com>, Jakub Kicinski <kuba@kernel.org>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>,
 linux-media <linux-media@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Liwei Cai <cailiwei@hisilicon.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen Feng <puck.chen@hisilicon.com>,
 Alexei Starovoitov <ast@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Rob Herring <robh+dt@kernel.org>, mauro.chehab@huawei.com,
 Rob Clark <robdclark@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Liuyao An <anliuyao@huawei.com>,
 Network Development <netdev@vger.kernel.org>,
 Rongrong Zou <zourongrong@gmail.com>, BPF Mailing List <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 19, 2020 at 8:31 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Wed, Aug 19, 2020 at 05:21:20PM +0200, Sam Ravnborg wrote:
> > On Wed, Aug 19, 2020 at 01:45:28PM +0200, Mauro Carvalho Chehab wrote:
> > > This patch series port the out-of-tree driver for Hikey 970 (which
> > > should also support Hikey 960) from the official 96boards tree:
> > >
> > >    https://github.com/96boards-hikey/linux/tree/hikey970-v4.9
> > >
> > > Based on his history, this driver seems to be originally written
> > > for Kernel 4.4, and was later ported to Kernel 4.9. The original
> > > driver used to depend on ION (from Kernel 4.4) and had its own
> > > implementation for FB dev API.
> > >
> > > As I need to preserve the original history (with has patches from
> > > both HiSilicon and from Linaro),  I'm starting from the original
> > > patch applied there. The remaining patches are incremental,
> > > and port this driver to work with upstream Kernel.
> > >
...
> > > - Due to legal reasons, I need to preserve the authorship of
> > >   each one responsbile for each patch. So, I need to start from
> > >   the original patch from Kernel 4.4;
...
> > I do acknowledge you need to preserve history and all -
> > but this patchset is not easy to review.
>
> Why do we need to preserve history ? Adding relevant Signed-off-by and
> Co-developed-by should be enough, shouldn't it ? Having a public branch
> that contains the history is useful if anyone is interested, but I don't
> think it's required in mainline.

Yea. I concur with Laurent here. I'm not sure what legal reasoning you
have on this but preserving the "absolute" history here is actively
detrimental for review and understanding of the patch set.

Preserving Authorship, Signed-off-by lines and adding Co-developed-by
lines should be sufficient to provide both atribution credit and DCO
history.

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
