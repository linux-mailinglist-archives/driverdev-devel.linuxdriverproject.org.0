Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3596A20AA82
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 04:52:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4DEF784870;
	Fri, 26 Jun 2020 02:52:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bCtWzHJf5LqI; Fri, 26 Jun 2020 02:52:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8C318443E;
	Fri, 26 Jun 2020 02:52:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CCA31BF2FD
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 02:52:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44D9C2014B
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 02:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vPsw-+A75HZY for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 02:52:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by silver.osuosl.org (Postfix) with ESMTPS id 3BF5B20012
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 02:52:16 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 54C3A72E;
 Fri, 26 Jun 2020 04:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1593139932;
 bh=pLPiGK32i9S/WgqxebyEuTDQ6+h/C1q6kiKNEQ7LQxk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wHCNSxsdtrCIIfoR+T/5jxEzHDQ7sG/hOJNbP9iS2M9Zl2EuTqBws4dVrPZFcsJkw
 bDWMliIM8NcYVXXHj2d1i1HA3NeJyd0nBROww1i1+JDa2QKxswwFYEAGdPyddH6YEg
 KH6Os7VE7SLZAGW9QUTGGocbnMgzfAVPlY/NfHtI=
Date: Fri, 26 Jun 2020 05:52:09 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] fixing ERROR: Macros with complex values must be
 enclosed within parentheses.
Message-ID: <20200626025209.GA5865@pendragon.ideasonboard.com>
References: <20200626021723.len2cts3ffq4wimq@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200626021723.len2cts3ffq4wimq@pesu-pes-edu>
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
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Karthik,

Thank you for the patch.

On Thu, Jun 25, 2020 at 10:17:23PM -0400, B K Karthik wrote:
> soc_camera.c:
> 
> fixing ERROR: Macros with complex values must be enclused within parentheses.
> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  drivers/staging/media/soc_camera/soc_camera.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/soc_camera/soc_camera.c b/drivers/staging/media/soc_camera/soc_camera.c
> index 39f513f69b89..f609ecf6691c 100644
> --- a/drivers/staging/media/soc_camera/soc_camera.c
> +++ b/drivers/staging/media/soc_camera/soc_camera.c
> @@ -238,8 +238,7 @@ unsigned long soc_camera_apply_board_flags(struct soc_camera_subdev_desc *ssdd,
>  }
>  EXPORT_SYMBOL(soc_camera_apply_board_flags);
>  
> -#define pixfmtstr(x) (x) & 0xff, ((x) >> 8) & 0xff, ((x) >> 16) & 0xff, \
> -	((x) >> 24) & 0xff
> +#define pixfmtstr(x) ((x) & 0xff, ((x) >> 8) & 0xff, ((x) >> 16) & 0xff, ((x) >> 24) & 0xff)

This won't work. Try to compile this driver with CONFIG_DYNAMIC_DEBUG
and the compiler will tell you why.

Regardless, drivers/staging/media/soc_camera/soc_camera.c is in staging
because it will be removed from the kernel, cleanups for this file won't
be accepted.

>  static int soc_camera_try_fmt(struct soc_camera_device *icd,
>  			      struct v4l2_format *f)

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
