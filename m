Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BDD25D7BA
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Sep 2020 13:46:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8CCC82E193;
	Fri,  4 Sep 2020 11:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UyyfswWJkOcD; Fri,  4 Sep 2020 11:46:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 12A14272AB;
	Fri,  4 Sep 2020 11:46:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBDAE1BF31E
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 11:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B64E4874F1
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 11:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9FYfX700uZtY for <devel@linuxdriverproject.org>;
 Fri,  4 Sep 2020 11:46:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BC730874EF
 for <devel@driverdev.osuosl.org>; Fri,  4 Sep 2020 11:46:42 +0000 (UTC)
Received: from [192.168.0.20]
 (cpc89244-aztw30-2-0-cust3082.18-1.cable.virginm.net [86.31.172.11])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 64833540;
 Fri,  4 Sep 2020 13:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1599219988;
 bh=mEpk9Az9O3QF+f6NJBCNg2yqlaHjwzn2twitUxjNONk=;
 h=Subject:To:Cc:References:Reply-To:From:Date:In-Reply-To:From;
 b=Vv/b8CwgfPST9pZ9orei8wTUSHV7GyfG/LkVsB3V7WbvKN01OsR0A7Fc1TpDrJpVk
 bMQx2BHNAshtmwQLLz4L5c86kO5srlpIzLLRuxMMYHi0XaEtAnGvFRGQhiE0vMVg4A
 zsdgYmEceMubPezYO+jacgX6PNieE59UhxGrxFew=
Subject: Re: [PATCH 21/29] media: atomisp: Avoid comma separated statements
To: Joe Perches <joe@perches.com>, Jiri Kosina <trivial@kernel.org>,
 linux-kernel@vger.kernel.org
References: <cover.1598331148.git.joe@perches.com>
 <83f22b4ca8b26d301894638c5b8c571ac0004a5e.1598331149.git.joe@perches.com>
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Organization: Ideas on Board
Message-ID: <4d48fbf2-e38d-64da-f91f-5b5618506e43@ideasonboard.com>
Date: Fri, 4 Sep 2020 12:46:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <83f22b4ca8b26d301894638c5b8c571ac0004a5e.1598331149.git.joe@perches.com>
Content-Language: en-GB
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
Reply-To: kieran.bingham+renesas@ideasonboard.com
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25/08/2020 05:56, Joe Perches wrote:
> Use semicolons and braces.
> 
> Signed-off-by: Joe Perches <joe@perches.com>

Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

> ---
>  drivers/staging/media/atomisp/pci/atomisp_subdev.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.c b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
> index 6ba817f15655..52b9fb18c87f 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_subdev.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
> @@ -410,8 +410,10 @@ int atomisp_subdev_set_selection(struct v4l2_subdev *sd,
>  
>  		if (atomisp_subdev_format_conversion(isp_sd,
>  						     isp_sd->capture_pad)
> -		    && crop[pad]->width && crop[pad]->height)
> -			crop[pad]->width -= padding_w, crop[pad]->height -= padding_h;
> +		    && crop[pad]->width && crop[pad]->height) {
> +			crop[pad]->width -= padding_w;
> +			crop[pad]->height -= padding_h;
> +		}
>  
>  		/* if subdev type is SOC camera,we do not need to set DVS */
>  		if (isp->inputs[isp_sd->input_curr].type == SOC_CAMERA)
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
