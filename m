Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4CC11D6D8
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 20:09:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F924871B6;
	Thu, 12 Dec 2019 19:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hACyhQ6eMK6w; Thu, 12 Dec 2019 19:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 94C3E871A0;
	Thu, 12 Dec 2019 19:09:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CAF561BF340
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 19:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C71458574F
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 19:09:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZdopKfcIVekE for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 19:09:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 83206851C0
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 19:09:04 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id q9so3580772wmj.5
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 11:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IxK9FtGpYJeOUfvnF7MggY9vmvu7+uyxyDOUYBGOZPw=;
 b=XShq7tcKoeE+Txh1DEN5WhLp0eR/w69ZPSSfE+iXxHgHs0gOju6ZXq+p1U1RcRKBWV
 Pf+WEL7yhcSNaso+niPZhq2I8ig9HcwcmRZj7C4V/UAuLNCRpAZKF9uNqdj4kI6+qitF
 wssJMmQKMq541gCc68PXUiZilDMwnSycahaOS/M8D87+Jx+RGR+vA4bDuWm2rJNcMcaI
 XYnurMLbUaQz1lQ1tReQLskTknW118Rbuf61l+6gaoVBCXcTiXVGR8QggDfpmKcnGAiY
 ScpzgnYUw8E4wE6BVOB7oojAGJ256kAey11+LG3HL4J6s1/0DZfZmQKGk6BLrKGcA65Q
 lHAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IxK9FtGpYJeOUfvnF7MggY9vmvu7+uyxyDOUYBGOZPw=;
 b=eoUyNxo9/QfQEdAnw7nMx+6287b5omrfYwtkZRLkcP4N7oe+IOUhAFL8wMw/EjZ/Fs
 qa58eNwMX36/+b9J9dOpVmkUeZ79wmT4SRXfByVLWhFZWuP7R2GS8B0mVWjsY5dy/I1K
 XlOYUzU9HBvS8EV96gYpLLU6e9zgMBac3UGnc/IJChTTHDdH9bwwn29Pzxqc74ji0rzD
 vSPhxpgnTQg4Xe9T1XI9ddwHIB7TFlSsZMBf7I5ubdEs9tgiQNOCXz81H1ptBJyb/WbG
 2OMKVbfl5sKVW7FWaJ792+l99RYvT37hVK/uDB9DcQ+L8G0AFHxy8LXCWt0dz5xNN3Ul
 Lkyg==
X-Gm-Message-State: APjAAAViYv5Og6R7ID0QO6O76U9zenMijACwRz7ip3CZUgEPMF9ytvRj
 w6irMFQ2HPn74d9YuJIoAMw=
X-Google-Smtp-Source: APXvYqwsF9/+E9ejZwZFR/MJTQSnIfDekPVMn7yz+SlJiFAcLzJ1ytlyj48O3iuSD4HZvW680PcnvQ==
X-Received: by 2002:a1c:2705:: with SMTP id n5mr8858556wmn.68.1576177742710;
 Thu, 12 Dec 2019 11:09:02 -0800 (PST)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id o66sm3322584wmo.20.2019.12.12.11.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:09:01 -0800 (PST)
Date: Thu, 12 Dec 2019 19:08:58 +0000
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
Message-ID: <20191212190858.nslwdcjpbjnrfvq2@arch-thunder.localdomain>
References: <20191209085828.16183-1-hslester96@gmail.com>
 <20191212115134.GA1895@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212115134.GA1895@kadam>
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
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,
Thanks for the inputs.
On Thu, Dec 12, 2019 at 02:51:34PM +0300, Dan Carpenter wrote:
> On Mon, Dec 09, 2019 at 04:58:28PM +0800, Chuhong Yuan wrote:
> > All drivers in imx call v4l2_async_notifier_cleanup() after
> > unregistering the notifier except this driver.  This should be a
> > miss and we need to add the call to fix it.
> > 
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com> ---
> > drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c
> > b/drivers/staging/media/imx/imx7-mipi-csis.c index
> > 99166afca071..2bfa85bb84e7 100644 ---
> > a/drivers/staging/media/imx/imx7-mipi-csis.c +++
> > b/drivers/staging/media/imx/imx7-mipi-csis.c @@ -1105,6 +1105,7 @@
> > static int mipi_csis_remove(struct platform_device *pdev)
> > mipi_csis_debugfs_exit(state);
> > v4l2_async_unregister_subdev(&state->mipi_sd);
> > v4l2_async_notifier_unregister(&state->subdev_notifier); +
> > v4l2_async_notifier_cleanup(&state->subdev_notifier);
> >  
> 
> In this case the "state->subdev_notifier" was never initialized or
> used so both v4l2_async_notifier_unregister() and
> v4l2_async_notifier_cleanup() are no-ops.

I have applied this patch on top of Steve's series [0], since by the
timeline I was expecting to be applied before this one, that series
adds a bound notifier, even though, it is not named the same, eheh.

That trigged me to think that this cleanup was correct since a
notifier was initialized in probe.

But as you say, it is a no-ops in the end.

@Steve, that said, it looks that in [0], you will need to add some
unregister and cleanup for the notifiers that you are adding in
several places.

A patch to fix this will follow.

------
Cheers,
     Rui



[0]: https://patchwork.kernel.org/project/linux-media/list/?series=207517

> 
> We should just delete "subdev_notifier".
> 
> regards, dan carpenter
> 
> _______________________________________________ devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
