Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDFF2EBF05
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 14:46:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 35CD6230FE;
	Wed,  6 Jan 2021 13:46:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l-fUOEgpsShU; Wed,  6 Jan 2021 13:46:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CD20E1FD43;
	Wed,  6 Jan 2021 13:46:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64D3D1BF34B
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 13:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6044F8503D
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 13:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CpRYOBczau41 for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 13:46:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A050A84995
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 13:46:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 38F182311B;
 Wed,  6 Jan 2021 13:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609940773;
 bh=XDCxZhCKT8DeXSiZhbQqWaGK9S2/Q/GSYiZmpuVdE0w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CJwBqN9ZRCcrMy5lfLizt9P6BA9gYWI9nG5taJBe48NVwKi4RD+P0LdecjK9sj2HX
 7hfYfgqZDR0hfzV2YQKY+eLJlgx9boqDYc7u8G+5zvyPmVGCilWoYH1TGrMmd9q1vm
 4V9zSwKbsY/yWMw8vnu0ZIyRbu9I/qjYPdCbK6Jc=
Date: Wed, 6 Jan 2021 14:47:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
Subject: Re: [PATCH -next] media: atomisp: use resource_size
Message-ID: <X/W/dFVbrv2W+Rl6@kroah.com>
References: <20210106131737.32571-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210106131737.32571-1-zhengyongjun3@huawei.com>
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
Cc: devel@driverdev.osuosl.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 06, 2021 at 09:17:37PM +0800, Zheng Yongjun wrote:
> Use resource_size rather than a verbose computation on
> the end and start fields.
> 
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  drivers/staging/media/atomisp/pci/sh_css_params.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
> index 24fc497bd491..4a02948e5612 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css_params.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
> @@ -949,7 +949,7 @@ sh_css_set_black_frame(struct ia_css_stream *stream,
>  
>  	params = stream->isp_params_configs;
>  	height = raw_black_frame->info.res.height;
> -	width = raw_black_frame->info.padded_width,
> +	width = raw_black_frame->info.padded_width;
d>  
>  	ptr = raw_black_frame->data
>  	+ raw_black_frame->planes.raw.offset;
> @@ -1443,7 +1443,7 @@ static int sh_css_params_default_morph_table(
>  	IA_CSS_ENTER_PRIVATE("");
>  
>  	step = (ISP_VEC_NELEMS / 16) * 128,
> -	width = binary->morph_tbl_width,
> +	width = binary->morph_tbl_width;
>  	height = binary->morph_tbl_height;
>  
>  	tab = ia_css_morph_table_allocate(width, height);
> -- 
> 2.22.0
> 

Your description does not match what the patch does at all :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
