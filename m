Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B82903631E4
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Apr 2021 20:56:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88847403F1;
	Sat, 17 Apr 2021 18:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bSgUWEMGitRL; Sat, 17 Apr 2021 18:56:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6D36403E8;
	Sat, 17 Apr 2021 18:56:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CCA3C1BF95F
 for <devel@linuxdriverproject.org>; Sat, 17 Apr 2021 18:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBD7A403E6
 for <devel@linuxdriverproject.org>; Sat, 17 Apr 2021 18:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qQtG5B1-HSEQ for <devel@linuxdriverproject.org>;
 Sat, 17 Apr 2021 18:56:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03288400AC
 for <devel@driverdev.osuosl.org>; Sat, 17 Apr 2021 18:56:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AD7E3611AF;
 Sat, 17 Apr 2021 18:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618685778;
 bh=q4iX3RXOxXW84nbXIPQOIIfrItUVpHgRu5CQVY3pD10=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mWgNqAbstI1cedVjNcKZidVcBm6v9IMj6tzpUNed3gM+CxaGhhzIxC1UOwBzntmUW
 c1U1MiHMnGGaKttVW39g17SsIQZtZvGXzyJAxB1L5XR9ZygLHpQCXujyFHR235qdR8
 dZFMoheVyzYtQ0iBi2dCjpL6CMHG6fQoRuHMND+ROEKNiHuczSIzTecO3wRPTV5De4
 jqyb1DK88vc83w9nPL8JMnYBU1AIakMztOAGgCZw3AJI6xdWUSrZ8lBQ1IsnNicTpK
 XlmBjnNMvaD5SU74U3oO5NHldTInUUnqPG+fq+aLTx4Mvci7aJI83JJPQIuVWXKDm6
 zAtyEUgR6KUcQ==
Date: Sat, 17 Apr 2021 20:56:13 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Ashish Kalra <eashishkalra@gmail.com>
Subject: Re: [PATCH] media: atomisp: silence "dubious: !x | !y" warning
Message-ID: <20210417205613.5c1aac74@coco.lan>
In-Reply-To: <20210417153627.GA50228@ashish-NUC8i5BEH>
References: <20210417153627.GA50228@ashish-NUC8i5BEH>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Sat, 17 Apr 2021 21:06:27 +0530
Ashish Kalra <eashishkalra@gmail.com> escreveu:

> Upon running sparse, "warning: dubious: !x | !y" is brought to notice
> for this file.  Logical and bitwise OR are basically the same in this
> context so it doesn't cause a runtime bug.  But let's change it to
> logical OR to make it cleaner and silence the Sparse warning.
> 
> Signed-off-by: Ashish Kalra <eashishkalra@gmail.com>
> ---
>  .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> index 358cb7d2cd4c..3b850bb2d39d 100644
> --- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> +++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> @@ -58,7 +58,7 @@ sh_css_vf_downscale_log2(
>  	unsigned int ds_log2 = 0;
>  	unsigned int out_width;
>  
> -	if ((!out_info) | (!vf_info))
> +	if ((!out_info) || (!vf_info))


While here, please get rid of the unneeded parenthesis:

	if (!out_info || !vf_info)


>  		return -EINVAL;
>  
>  	out_width = out_info->res.width;



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
