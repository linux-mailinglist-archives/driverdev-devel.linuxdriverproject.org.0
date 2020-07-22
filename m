Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C54E22299AC
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 16:04:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EEDDF2046C;
	Wed, 22 Jul 2020 14:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uxOlxMuAN+5T; Wed, 22 Jul 2020 14:04:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8E88220436;
	Wed, 22 Jul 2020 14:04:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CA131BF2B5
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 14:04:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3E5EE880D0
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 14:04:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fc9t1WXdgyu4 for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 14:04:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7721C88051
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 14:04:00 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 034D72071A;
 Wed, 22 Jul 2020 14:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595426640;
 bh=vD1NxW7kOLSfAbm298saG/wWrWb+LYxUbp9VvYPUJFQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IyArLE0g04QibcnJXV16X14S96h4RuAedeYcoITNUg8sNZjizaRMLkScMQVTVVd3W
 W76oyKy37edCFFkO7lo7CfaHpJkt1B+y/U8ovnJqtDMxoOu54wpR+PUsSohTQ5iZDs
 Wl37Q+dorI2AMVPkWHOStHy391/FfQB0wq/kVyiw=
Date: Wed, 22 Jul 2020 16:03:56 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Rahul Gottipati <rahul.blr97@gmail.com>
Subject: Re: [PATCH v2 1/2] media: atomisp: Fix coding style issue - remove
 beginning whitespaces
Message-ID: <20200722160356.010a05df@coco.lan>
In-Reply-To: <5b2242008c92871daa5bfb7c9c3cafbbf592228b.1595416585.git.rahul.blr97@gmail.com>
References: <cover.1595416585.git.rahul.blr97@gmail.com>
 <5b2242008c92871daa5bfb7c9c3cafbbf592228b.1595416585.git.rahul.blr97@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Wed, 22 Jul 2020 16:58:31 +0530
Rahul Gottipati <rahul.blr97@gmail.com> escreveu:

> This removes whitespaces at the beginning of a few lines to fix
> some checkpatch.pl warnings.
> 
> Signed-off-by: Rahul Gottipati <rahul.blr97@gmail.com>
> ---
> Changes in v2:
> 	Distributed changes across 2 patches instead of the previous 1
> 
>  drivers/staging/media/atomisp/pci/atomisp_ioctl.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
> index 9404a678fa6f..9cdcbe774229 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
> @@ -512,7 +512,7 @@ const struct atomisp_format_bridge atomisp_output_fmts[] = {
>  };
>  
>  const struct atomisp_format_bridge *atomisp_get_format_bridge(
> -    unsigned int pixelformat)
> +				unsigned int pixelformat)

This is still a coding style violation, as:

1) the continuation line won't be aligned after the open parenthesis;
2) the line will end with an open parenthesis.

 A fix would be:

	const struct atomisp_format_bridge *
	atomisp_get_format_bridge(unsigned int pixelformat)

The same applies to similar patterns.

Yet, patches to atomisp have a high chance of having conflicts,
and being rejected, as we're doing lots of non-aesthetic changes 
on this driver.


>  {
>  	unsigned int i;
>  
> @@ -525,7 +525,7 @@ const struct atomisp_format_bridge *atomisp_get_format_bridge(
>  }
>  
>  const struct atomisp_format_bridge *atomisp_get_format_bridge_from_mbus(
> -    u32 mbus_code)
> +				u32 mbus_code)
>  {
>  	unsigned int i;
>  
> @@ -607,7 +607,7 @@ static int atomisp_enum_input(struct file *file, void *fh,
>  }
>  
>  static unsigned int atomisp_subdev_streaming_count(
> -    struct atomisp_sub_device *asd)
> +				struct atomisp_sub_device *asd)
>  {
>  	return asd->video_out_preview.capq.streaming
>  	       + asd->video_out_capture.capq.streaming



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
