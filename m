Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7692FA4C9
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 16:32:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7AB2E204B8;
	Mon, 18 Jan 2021 15:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 047wHMfyj1ZB; Mon, 18 Jan 2021 15:32:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6515A20012;
	Mon, 18 Jan 2021 15:32:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 90C031BF33E
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 15:32:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8AADE85C57
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 15:32:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bFVu0L8DX8aY for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 15:32:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C592685BCC
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 15:32:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1689C22C7E;
 Mon, 18 Jan 2021 15:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610983947;
 bh=7uZs9pF/t9m+cAWUrEQPaLEWyNNr57zs99L3UB18ecw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IijNMuDuF77zj4RjcHFWz5/wSBg7Y3rHgqLkAecBWlrWY6nJGzyY+p8d2V17wFObr
 v8QnhLtS3SyUaNcm0PiDMGFCu56DO1D2Wp6kQrkY/A7CqHGVoD0wxB+DvHkwi47tx9
 dgAbVWqOvzCL5il39pkKf2PJiI8FYet7A4ExxYXpSurphhbyX+6MMPuNU5WFYRc2Kk
 mGdbdFupq33rur8RaOpQV09C9dy2bRbEo5jHn8jYWCmlaN97VabATT4zgJzm45nGO+
 pF8DAfEHDG34PN0X8opWBJqhVclNZo+PixRvTP/cD6U5DYCivi1+/mez0SkKHrl0fy
 hrhpHYVcZEhcQ==
Date: Mon, 18 Jan 2021 16:32:22 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 10/13] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210118163222.6161f9a2@coco.lan>
In-Reply-To: <20210118151227.GF4903@dell>
References: <cover.1610975633.git.mchehab+huawei@kernel.org>
 <8a152819ef89c73dd6afb5c2deb5441402fcd2fa.1610975633.git.mchehab+huawei@kernel.org>
 <20210118151227.GF4903@dell>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 18 Jan 2021 15:12:27 +0000
Lee Jones <lee.jones@linaro.org> escreveu:

> On Mon, 18 Jan 2021, Mauro Carvalho Chehab wrote:
> 
> > This driver is ready for mainstream. So, move it out of staging.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > ---
> >  .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 133 +++++++
> >  MAINTAINERS                                   |   7 +
> >  drivers/mfd/Kconfig                           |  15 +
> >  drivers/mfd/Makefile                          |   1 +
> >  drivers/mfd/hi6421-spmi-pmic.c                | 342 ++++++++++++++++++
> >  drivers/staging/hikey9xx/Kconfig              |  16 -
> >  drivers/staging/hikey9xx/Makefile             |   1 -
> >  drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 342 ------------------
> >  .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 133 -------
> >  9 files changed, 498 insertions(+), 492 deletions(-)  
> 
> Could you please resubmit this will the correct flags.
> 
> I believe it's the `git format-patch` -M flag that you want.

As explained at patch 00/13, this was intentionally generated with
--no-merges, in order to allow reviewers to view the entire source
code at the patch. 

Anyway, I'll re-send the series with -M, as it makes easier to merge,
if everything is ok.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
