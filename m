Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D25DF257B58
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 16:35:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AAA7E87347;
	Mon, 31 Aug 2020 14:35:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 42SOc7SLSQ64; Mon, 31 Aug 2020 14:35:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30BBC87812;
	Mon, 31 Aug 2020 14:35:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA35F1BF37B
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 14:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B5F3287812
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 14:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WY0BxpD7wYRl for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 14:35:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 39FB987347
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 14:35:21 +0000 (UTC)
Received: from coco.lan (ip5f5ad5da.dynamic.kabel-deutschland.de
 [95.90.213.218])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62BE720767;
 Mon, 31 Aug 2020 14:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598884521;
 bh=tRBcPIP46PIv9mvYzx8qR3efQWkqbvGf3UbDReEJolA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bdLjsyhixcxLBkSG5UVO9cNWid/B3Lx3PX/Cu+N5k1lbkhpcN2NkEuhGLLeU0wWkJ
 ZwbY4uQoHjCbqpKuHOgg0e02obaMzfjGrascd7RQpkC7ShBXTGW/jaoEsCWUfj6W2t
 2umU3WL1qZDhrhrfHVyWIFcyx5AwOSTO4GF3iSdg=
Date: Mon, 31 Aug 2020 16:35:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Cengiz Can <cengiz@kernel.wtf>
Subject: Re: [PATCH] staging: atomisp: Fix fallthrough keyword warning
Message-ID: <20200831163516.490f5941@coco.lan>
In-Reply-To: <20200831133011.91258-1-cengiz@kernel.wtf>
References: <20200831133011.91258-1-cengiz@kernel.wtf>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 31 Aug 2020 16:30:12 +0300
Cengiz Can <cengiz@kernel.wtf> escreveu:

> commit df561f6688fe ("treewide: Use fallthrough pseudo-keyword") from
> Gustavo A. R. Silva replaced and standardized /* fallthrough */ comments
> with 'fallthrough' pseudo-keyword.
> 
> However, in one of the switch-case statements, Coverity Static Analyzer
> throws a warning that 'fallthrough' is unreachable due to the adjacent
> 'return false' statement.
> 
> Since 'fallthrough' is actually an empty "do {} while(0)" this might be
> due to compiler optimizations. But that needs further investigation.
> 
> In order to fix the unreachable code warning, make adjacent 'return
> false' a part of the previous if statement's else clause.
> 
> Reported-by: Coverity Static Analyzer CID 1466511
> Signed-off-by: Cengiz Can <cengiz@kernel.wtf>
> ---
>  drivers/staging/media/atomisp/pci/atomisp_compat_css20.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
> index 1b2b2c68025b..aaa2d0e0851b 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
> @@ -709,8 +709,8 @@ static bool is_pipe_valid_to_current_run_mode(struct atomisp_sub_device *asd,
>  		if (pipe_id == IA_CSS_PIPE_ID_CAPTURE ||
>  		    pipe_id == IA_CSS_PIPE_ID_PREVIEW)
>  			return true;
> -
> -		return false;
> +		else
> +			return false;
>  		fallthrough;

Actually, the actual fix here would be to get rid of fallthrough.

Regards,

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
