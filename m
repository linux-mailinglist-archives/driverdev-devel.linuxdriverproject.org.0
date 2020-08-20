Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D0924B0FD
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 10:23:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE65487E7B;
	Thu, 20 Aug 2020 08:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lMRVuqV4ELvs; Thu, 20 Aug 2020 08:23:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A013887E35;
	Thu, 20 Aug 2020 08:23:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 002941BF9B9
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 08:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F0926845DC
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 08:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0beaC_A6XpHz for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 08:23:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8567B845C1
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 08:23:38 +0000 (UTC)
Received: from coco.lan (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8686E22BED;
 Thu, 20 Aug 2020 08:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597911818;
 bh=fwGVCmgPxQ4tMxOoVebfaKdoWjHkC+p6W4oBmOn2pCQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=k0Qrqpn40gEcXyvKnJpr0UKl58JLXD6w6wg75Lq2H21jh3VFgBAOCOS+kekx5tu9V
 jsUl78z48aIZGiHBdWd1mOYDpQBTELDITS0xBdrtmERRoFb9QzRIeW0N/YpsPE8jit
 7HQ7sD1Dxlw1XtG5XGuAiZ1QVR+DwoViOpFp6a28=
Date: Thu, 20 Aug 2020 10:23:32 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH 25/49] staging: hikey9xx/gpu: do some code cleanups
Message-ID: <20200820102332.7223d38d@coco.lan>
In-Reply-To: <CALAqxLV-LaMPKD-ddRM1EehFh+JZfh1eUsKobXgVG9R+q0EF2w@mail.gmail.com>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <9fa944021373ec5b82c2c1e118c15d9effe7f964.1597833138.git.mchehab+huawei@kernel.org>
 <CALAqxLV-LaMPKD-ddRM1EehFh+JZfh1eUsKobXgVG9R+q0EF2w@mail.gmail.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Rob Herring <robh@kernel.org>,
 Liwei Cai <cailiwei@hisilicon.com>, Manivannan Sadhasivam <mani@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chen Feng <puck.chen@hisilicon.com>, mauro.chehab@huawei.com,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

(added c/c Rob Herring)

Em Wed, 19 Aug 2020 18:53:06 -0700
John Stultz <john.stultz@linaro.org> escreveu:

> On Wed, Aug 19, 2020 at 4:46 AM Mauro Carvalho Chehab
> <mchehab+huawei@kernel.org> wrote:
> > @@ -376,7 +355,7 @@ static int kirin_drm_platform_resume(struct platform_device *pdev)
> >  }
> >
> >  static const struct of_device_id kirin_drm_dt_ids[] = {
> > -       { .compatible = "hisilicon,hi3660-dpe",
> > +       { .compatible = "hisilicon,kirin960-dpe",  
> 
> 
> One issue, elsewhere in your patch stack you still refer to the
> hisilicon,hi3660-dpe compatible string. This should probably be
> consistent one way or the other.

Agreed with regards to consistency.

It sounds to me that calling those as Kirin 9xx (and the previous one
as Kirin 620) is better than using the part number.

Here, googling for "Kirin 970" gave about 6.9 million hits, while "Hi3670"
gave only 75,5K hits.

Kirin 620 has similar results: 6.85 million hits, against 61,9 hits
for "Hi3620".

With "Kirin 960", the numbers are a lot higher: had 21,4 million hits,
against 423K hits for "Hi3660".

So, my preference is to use "Kirin 620, 960 and 970" for future changes.

-

Currently, there are already some inconsistency, as some places
use the part number where others use "Kirin xxx" designation,
when referring to Kirin 620, 960 and 970.

I would love to make this consistent among the Kernel. However,
I'm not sure if changing "compatible" would be acceptable
by DT maintainers.

If something like that would be OK, I can prepare a separate
patchset to be applied at the Kernel.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
