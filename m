Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D1329406E
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 18:24:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39D8F86CA0;
	Tue, 20 Oct 2020 16:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SStK3exqrlgQ; Tue, 20 Oct 2020 16:24:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F93186B5E;
	Tue, 20 Oct 2020 16:24:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 430F81BF2CD
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 16:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3F2B587323
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 16:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RiuNkKFF4WvW for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 16:23:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 495F187300
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 16:23:57 +0000 (UTC)
Received: from [IPv6:2003:c7:cf43:5b00:28a3:2f4e:277d:2227]
 (p200300c7cf435b0028a32f4e277d2227.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf43:5b00:28a3:2f4e:277d:2227])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C8B441F451DF;
 Tue, 20 Oct 2020 17:23:54 +0100 (BST)
Subject: Re: [PATCH] media: staging: rkisp1: rsz: make const array static,
 makes object smaller
To: Colin King <colin.king@canonical.com>,
 Helen Koike <helen.koike@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org
References: <20201020144655.53251-1-colin.king@canonical.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <07b92ab9-bade-623e-395d-89320d9f88f6@collabora.com>
Date: Tue, 20 Oct 2020 18:23:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201020144655.53251-1-colin.king@canonical.com>
Content-Language: en-US
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi, thanks,

Am 20.10.20 um 16:46 schrieb Colin King:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Don't populate the const array dev_names on the stack but instead it
> static. Makes the object code smaller by 15 bytes.
> 
> Before:
>     text	   data	    bss	    dec	    hex	filename
>    17091	   2648	     64	  19803	   4d5b	media/rkisp1/rkisp1-resizer.o
> 
> After:
>     text	   data	    bss	    dec	    hex	filename
>    17012	   2712	     64	  19788	   4d4c	media/rkisp1/rkisp1-resizer.o

On the other hand the data segment is 64 bytes bigger.
I don't know what is more important to save.
Anyway, the rkisp1-capture.c does the same with the names
so it is better to be consistent.

Thanks,
Dafna

> 
> (gcc version 10.2.0)
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 1687d82e6c68..7ca5b47c5bf5 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -763,8 +763,10 @@ static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
>   
>   static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
>   {
> -	const char * const dev_names[] = {RKISP1_RSZ_MP_DEV_NAME,
> -					  RKISP1_RSZ_SP_DEV_NAME};
> +	static const char * const dev_names[] = {
> +		RKISP1_RSZ_MP_DEV_NAME,
> +		RKISP1_RSZ_SP_DEV_NAME
> +	};
>   	struct media_pad *pads = rsz->pads;
>   	struct v4l2_subdev *sd = &rsz->sd;
>   	int ret;
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
