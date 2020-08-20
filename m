Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C37424B015
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 09:21:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C609487E93;
	Thu, 20 Aug 2020 07:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MNpE8DySIQRq; Thu, 20 Aug 2020 07:21:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99E6F87E74;
	Thu, 20 Aug 2020 07:21:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C57221BF2EC
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 07:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C1DC98647F
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 07:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iZtnR_htLAvp for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 07:21:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 551FD862E4
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 07:21:21 +0000 (UTC)
Received: from coco.lan (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEDA72078B;
 Thu, 20 Aug 2020 07:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597908081;
 bh=Zq62Yi8puI9hJDCGZSsFugaJwyxuNLefoKRAmrJhm3A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=J9k8h5M43Qx2spsmVYYJjRUU0UEst9opFNuXhI8qbEDJS4InjWBvL+/jFNAgQSE/e
 KY6oWBl0i07qdAXgcOKjn1UZub5AH3qe6/A149bkNB6fDwyEXfOJe0U0ysWb+cxUSQ
 4HXpQmQNlVTYCpo2TZwichIkmrV93ZSkZYbrJiXk=
Date: Thu, 20 Aug 2020 09:21:11 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200820092111.2a5f348e@coco.lan>
In-Reply-To: <20200819204800.GA110118@ravnborg.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <20200819152120.GA106437@ravnborg.org>
 <20200819174027.70b39ee9@coco.lan>
 <20200819204800.GA110118@ravnborg.org>
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

Hi Sam,

Em Wed, 19 Aug 2020 22:48:00 +0200
Sam Ravnborg <sam@ravnborg.org> escreveu:

> Hi Mauro.
> 
> It seems my review comments failed to reach dri-devel - likely due to
> the size of the mail.

Probably. It reached here properly.

> Link:
> https://lore.kernel.org/linux-devicetree/20200819173558.GA3733@ravnborg.org/
> 
> I my review feedback I refer to checkpatch a few time.
> For drivers/gpu/ we have some nice tooling support.
> One thing our tooling does for us is running checkpatch every time
> we apply a patch.
> 
>     checkpatch -q --emacs --strict --show-types
> 
> So we expect patches to be more or less checkpatch --strict clean.
> 
> "more or less" - as common sense also plays a role.
> And sometimes checkpatch is just wrong.
> 
> Just in case you wondered why checkpatch --strict was requested.

We also use checkpatch --strict for media as a reference,
ignoring the things that would make things worse during review :-)

I'll run checkpatch here and ensure that the coding style
issues will be properly addressed.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
