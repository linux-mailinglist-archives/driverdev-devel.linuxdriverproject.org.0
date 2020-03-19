Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2DB18BEB2
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 18:48:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D04186D9C;
	Thu, 19 Mar 2020 17:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DuuA7QtMFso1; Thu, 19 Mar 2020 17:48:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B7D6D86D9A;
	Thu, 19 Mar 2020 17:48:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FE5D1BF20B
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 17:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C40C88189
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 17:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OWpVDdxV01R3 for <devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 17:48:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8BD4D88187
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 17:48:11 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 18F68DC4;
 Thu, 19 Mar 2020 18:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584640088;
 bh=muRfNh5vu7uoti9IKGxoYTDOSnB1SG2YiU3akIX1p/0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cDHAcd1CttFh1TV6F8AOFaQM8f/vHXwI08QWjwTnH1LKoh4ajd0MNenKWprm45YMj
 ZKY8mCezz94b7mV0DOtsNC9tYj63WmdxfLlEEtGDCY0/UUbaA+cY0vWguUYAzRdc7u
 2+MDgK7xO3tQUNYW0YrS32+Q13zWmyxsyNOMuTLg=
Date: Thu, 19 Mar 2020 19:48:02 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alex Riesen <alexander.riesen@cetitec.com>
Subject: Re: [PATCH v2 02/10] media: adv748x: include everything adv748x.h
 needs into the file
Message-ID: <20200319174802.GH14585@pendragon.ideasonboard.com>
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <fe109d58eaa34d68cad0f34bb048f827b336e024.1584639664.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fe109d58eaa34d68cad0f34bb048f827b336e024.1584639664.git.alexander.riesen@cetitec.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alexander,

Thank you for the patch.

On Thu, Mar 19, 2020 at 06:41:48PM +0100, Alex Riesen wrote:
> To follow the established practice of not depending on others to
> pull everything in.
> 
> Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>

Good idea. While at it, could you include "adv748x.h" as the very first
header in at least one of the C files ? That will help ensuring the
header stays self-contained in the future.

> ---
>  drivers/media/i2c/adv748x/adv748x-afe.c  | 2 --
>  drivers/media/i2c/adv748x/adv748x-core.c | 2 --
>  drivers/media/i2c/adv748x/adv748x-csi2.c | 2 --
>  drivers/media/i2c/adv748x/adv748x-hdmi.c | 2 --
>  drivers/media/i2c/adv748x/adv748x.h      | 2 ++
>  5 files changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/i2c/adv748x/adv748x-afe.c b/drivers/media/i2c/adv748x/adv748x-afe.c
> index dbbb1e4d6363..ab0479641c10 100644
> --- a/drivers/media/i2c/adv748x/adv748x-afe.c
> +++ b/drivers/media/i2c/adv748x/adv748x-afe.c
> @@ -11,8 +11,6 @@
>  #include <linux/mutex.h>
>  #include <linux/v4l2-dv-timings.h>
>  
> -#include <media/v4l2-ctrls.h>
> -#include <media/v4l2-device.h>
>  #include <media/v4l2-dv-timings.h>
>  #include <media/v4l2-ioctl.h>
>  
> diff --git a/drivers/media/i2c/adv748x/adv748x-core.c b/drivers/media/i2c/adv748x/adv748x-core.c
> index c3fb113cef62..345f009de121 100644
> --- a/drivers/media/i2c/adv748x/adv748x-core.c
> +++ b/drivers/media/i2c/adv748x/adv748x-core.c
> @@ -20,8 +20,6 @@
>  #include <linux/slab.h>
>  #include <linux/v4l2-dv-timings.h>
>  
> -#include <media/v4l2-ctrls.h>
> -#include <media/v4l2-device.h>
>  #include <media/v4l2-dv-timings.h>
>  #include <media/v4l2-fwnode.h>
>  #include <media/v4l2-ioctl.h>
> diff --git a/drivers/media/i2c/adv748x/adv748x-csi2.c b/drivers/media/i2c/adv748x/adv748x-csi2.c
> index c43ce5d78723..78d391009b5a 100644
> --- a/drivers/media/i2c/adv748x/adv748x-csi2.c
> +++ b/drivers/media/i2c/adv748x/adv748x-csi2.c
> @@ -8,8 +8,6 @@
>  #include <linux/module.h>
>  #include <linux/mutex.h>
>  
> -#include <media/v4l2-ctrls.h>
> -#include <media/v4l2-device.h>
>  #include <media/v4l2-ioctl.h>
>  
>  #include "adv748x.h"
> diff --git a/drivers/media/i2c/adv748x/adv748x-hdmi.c b/drivers/media/i2c/adv748x/adv748x-hdmi.c
> index c557f8fdf11a..0dffcdf79ff2 100644
> --- a/drivers/media/i2c/adv748x/adv748x-hdmi.c
> +++ b/drivers/media/i2c/adv748x/adv748x-hdmi.c
> @@ -8,8 +8,6 @@
>  #include <linux/module.h>
>  #include <linux/mutex.h>
>  
> -#include <media/v4l2-ctrls.h>
> -#include <media/v4l2-device.h>
>  #include <media/v4l2-dv-timings.h>
>  #include <media/v4l2-ioctl.h>
>  
> diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
> index fccb388ce179..09aab4138c3f 100644
> --- a/drivers/media/i2c/adv748x/adv748x.h
> +++ b/drivers/media/i2c/adv748x/adv748x.h
> @@ -19,6 +19,8 @@
>   */
>  
>  #include <linux/i2c.h>
> +#include <media/v4l2-ctrls.h>
> +#include <media/v4l2-device.h>
>  
>  #ifndef _ADV748X_H_
>  #define _ADV748X_H_

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
