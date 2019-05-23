Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E7C276DB
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 09:26:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44CFC8654E;
	Thu, 23 May 2019 07:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6zsyMjNpwbO3; Thu, 23 May 2019 07:26:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A68A58651A;
	Thu, 23 May 2019 07:26:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 90C291BF847
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8DDB28654C
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TIgVKN8iCwix for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 07:26:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1CA528651A
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 07:26:28 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75941204EC;
 Thu, 23 May 2019 07:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558596388;
 bh=VjrQ83KC6HOFllWga6d52Rt+uC2gHnfL41blzY4duAc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pksjG0RC+ByW2fHhsIGsxmG/+IMfie8BzKZmr+nWkmX6x1hUQKUo4IZywBgHRZqmy
 JTDMeIKdA2Wz5tR/Fsb4RkweAS75s7rmdSct5wOyCL/dB9G86rRg33vmdHvo+em6a7
 HHx7qU118/0Fdy9J+TUb2Srhlt2xcFPkLr8azjN0=
Date: Thu, 23 May 2019 09:26:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 1/6] staging: kpc2000: fix indent in cell_probe.c
Message-ID: <20190523072625.GA16429@kroah.com>
References: <20190522205849.17444-1-simon@nikanor.nu>
 <20190522205849.17444-2-simon@nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522205849.17444-2-simon@nikanor.nu>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 22, 2019 at 10:58:44PM +0200, Simon Sandstr=F6m wrote:
> Use tabs instead of spaces for indentation.
> =

> Signed-off-by: Simon Sandstr=F6m <simon@nikanor.nu>
> ---
>  drivers/staging/kpc2000/kpc2000/cell_probe.c | 574 +++++++++----------
>  1 file changed, 287 insertions(+), 287 deletions(-)
> =

> diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/stagi=
ng/kpc2000/kpc2000/cell_probe.c
> index 0181b0a8ff82..6e034d115b47 100644
> --- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> +++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> @@ -25,7 +25,7 @@
>   *                                                              D       =
            C2S DMA Present
>   *                                                               DDD    =
            C2S DMA Channel Number    [up to 8 channels]
>   *                                                                  II  =
            IRQ Count [0 to 3 IRQs per core]
> -                                                                      11=
11111000
> + *                                                                    11=
11111000
>   *                                                                    II=
IIIII       IRQ Base Number [up to 128 IRQs per card]
>   *                                                                      =
     ___    Spare
>   *

This chunk does not match what you said this commit did :(

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
