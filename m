Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FB024B447
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 12:02:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ACBDC87DDC;
	Thu, 20 Aug 2020 10:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w97eFU5by1pU; Thu, 20 Aug 2020 10:02:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9349287CB9;
	Thu, 20 Aug 2020 10:02:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B34D31BF4E5
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 10:02:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA048878E1
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 10:02:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 90tTvm1u9-iQ for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 10:02:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8FC3087652
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 10:02:35 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4E5E323D;
 Thu, 20 Aug 2020 12:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1597917743;
 bh=UdZW/gWpeBR8Fp2uswR4BNeR1AZf83I2Xerix6/McmU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ItMFiAGpy+m799SAJlmxoBALpCUTcBMW2ZU7dxHv3+rwmOEr6obhEyMEeRR1DmtU5
 w83NTD2V6detNxAnQkYHTyfm7GYG23NbpofX1u6znoMCAcfcbBJQgrORodryscgxWx
 WciTsmZ7pXmG36Axz5Ekh/zrHURi1ohdX/kph6gI=
Date: Thu, 20 Aug 2020 13:02:05 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200820100205.GA5962@pendragon.ideasonboard.com>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <20200819152120.GA106437@ravnborg.org>
 <20200819153045.GA18469@pendragon.ideasonboard.com>
 <CALAqxLUXnPRec3UYbMKge8yNKBagLOatOeRCagF=JEyPEfWeKA@mail.gmail.com>
 <20200820090326.3f400a15@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200820090326.3f400a15@coco.lan>
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
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 mauro.chehab@huawei.com, Rob Clark <robdclark@chromium.org>,
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

Hi Mauro,

On Thu, Aug 20, 2020 at 09:03:26AM +0200, Mauro Carvalho Chehab wrote:
> Em Wed, 19 Aug 2020 12:52:06 -0700 John Stultz escreveu:
> > On Wed, Aug 19, 2020 at 8:31 AM Laurent Pinchart wrote:
> > > On Wed, Aug 19, 2020 at 05:21:20PM +0200, Sam Ravnborg wrote:  
> > > > On Wed, Aug 19, 2020 at 01:45:28PM +0200, Mauro Carvalho Chehab wrote:  
> > > > > This patch series port the out-of-tree driver for Hikey 970 (which
> > > > > should also support Hikey 960) from the official 96boards tree:
> > > > >
> > > > >    https://github.com/96boards-hikey/linux/tree/hikey970-v4.9
> > > > >
> > > > > Based on his history, this driver seems to be originally written
> > > > > for Kernel 4.4, and was later ported to Kernel 4.9. The original
> > > > > driver used to depend on ION (from Kernel 4.4) and had its own
> > > > > implementation for FB dev API.
> > > > >
> > > > > As I need to preserve the original history (with has patches from
> > > > > both HiSilicon and from Linaro),  I'm starting from the original
> > > > > patch applied there. The remaining patches are incremental,
> > > > > and port this driver to work with upstream Kernel.
> > > > >  
> > ...
> > > > > - Due to legal reasons, I need to preserve the authorship of
> > > > >   each one responsbile for each patch. So, I need to start from
> > > > >   the original patch from Kernel 4.4;  
> > ...
> > > > I do acknowledge you need to preserve history and all -
> > > > but this patchset is not easy to review.  
> > >
> > > Why do we need to preserve history ? Adding relevant Signed-off-by and
> > > Co-developed-by should be enough, shouldn't it ? Having a public branch
> > > that contains the history is useful if anyone is interested, but I don't
> > > think it's required in mainline.  
> > 
> > Yea. I concur with Laurent here. I'm not sure what legal reasoning you
> > have on this but preserving the "absolute" history here is actively
> > detrimental for review and understanding of the patch set.
> > 
> > Preserving Authorship, Signed-off-by lines and adding Co-developed-by
> > lines should be sufficient to provide both atribution credit and DCO
> > history.
> 
> I'm not convinced that, from legal standpoint, folding things would
> be enough. See, there are at least 3 legal systems involved here
> among the different patch authors:
> 
> 	- civil law;
> 	- common law;
> 	- customary law + common law.
> 
> Merging stuff altogether from different law systems can be problematic,
> and trying to discuss this with experienced IP property lawyers will
> for sure take a lot of time and efforts. I also bet that different
> lawyers will have different opinions, because laws are subject to 
> interpretation. With that matter I'm not aware of any court rules 
> with regards to folded patches. So, it sounds to me that folding 
> patches is something that has yet to be proofed in courts around
> the globe.
> 
> At least for US legal system, it sounds that the Country of
> origin of a patch is relevant, as they have a concept of
> "national technology" that can be subject to export regulations.
> 
> From my side, I really prefer to play safe and stay out of any such
> legal discussions.

Let's be serious for a moment. If you think there are legal issues in
taking GPL-v2.0-only patches and squashing them while retaining
authorship information through tags, the Linux kernel if *full* of that.
You also routinely modify patches that you commit to the media subsystem
to fix "small issues".

The country of origin argument makes no sense either, the kernel code
base if full of code coming from pretty much all country on the planet.

Keeping the patches separate make this hard to review. Please squash
them.

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
