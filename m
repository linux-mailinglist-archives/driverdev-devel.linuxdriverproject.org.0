Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFFF2501B6
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 18:06:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC59520798;
	Mon, 24 Aug 2020 16:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xXNUibfYH+3q; Mon, 24 Aug 2020 16:06:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B1B6C20553;
	Mon, 24 Aug 2020 16:06:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 959721BF2F8
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 16:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8F826877F1
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 16:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kH6fjvmHCslH for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 16:06:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D9452874C5
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 16:06:11 +0000 (UTC)
Received: from coco.lan (unknown [95.90.213.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D10B92072D;
 Mon, 24 Aug 2020 16:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598285171;
 bh=03hAu4nRPFwVwIO4v5NWL3jE+EDhR0ft7Y0oPd1gP0w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=y7swRGyvuvKiCu9/nrs1SXr8C+kHHYOQrQUSAJjGAjyfAkO2vlAob2lP+2GvOiVv3
 Pt1iO8jmNElYCkalrWgU0wwBm1cz8FdwsHljARxYM9slVfU3ws0JegC3Brl+1hW/zf
 NjcQkkkNKRa79YYaPTJPVie4PrwlTYTaf84FyRb4=
Date: Mon, 24 Aug 2020 18:06:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200824180601.192adc3b@coco.lan>
In-Reply-To: <20200821155650.GB300361@ravnborg.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <20200819152120.GA106437@ravnborg.org>
 <20200819174027.70b39ee9@coco.lan>
 <20200819173558.GA3733@ravnborg.org>
 <20200821164158.22777f95@coco.lan>
 <20200821155650.GB300361@ravnborg.org>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
 devel@driverdev.osuosl.org, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Wei Xu <xuwei5@hisilicon.com>,
 David Airlie <airlied@linux.ie>, Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Bogdan Togorean <bogdan.togorean@analog.com>, Jakub Kicinski <kuba@kernel.org>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Liwei Cai <cailiwei@hisilicon.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen Feng <puck.chen@hisilicon.com>,
 Alexei Starovoitov <ast@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Rob Herring <robh+dt@kernel.org>, mauro.chehab@huawei.com,
 Rob Clark <robdclark@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Liuyao An <anliuyao@huawei.com>, netdev@vger.kernel.org,
 Rongrong Zou <zourongrong@gmail.com>, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 21 Aug 2020 17:56:50 +0200
Sam Ravnborg <sam@ravnborg.org> escreveu:

> Hi Mauro.
> 
> On Fri, Aug 21, 2020 at 04:41:58PM +0200, Mauro Carvalho Chehab wrote:
> > Another quick question:
> > 
> > Em Wed, 19 Aug 2020 19:35:58 +0200
> > Sam Ravnborg <sam@ravnborg.org> escreveu:
> >   
> > > > +#define DSS_REDUCE(x)	((x) > 0 ? ((x) - 1) : (x))    
> > > Use generic macros for this?  
> > 
> > Do you know a generic macro similar to this? Or do you mean adding
> > it to include/kernel.h?  
> 
> It looked like something there should be a macro for.
> But I do not know one.
> 
> And no, do not try to go the kernel.h route on this.
> At least not until you see more than one user.

Yeah, adding this to kernel.h just for a single usage is overkill. I would
be expecting that a non-underflow decrement logic is something that 
would be used on other places at the Kernel, but identifying this
pattern would require some time. Maybe Kernel janitors could write some
coccinelle script to replace similar patterns like that into some
macro in the future.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
