Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A85D1BCDD0
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 22:58:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57F9E86916;
	Tue, 28 Apr 2020 20:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zVxko9H2OsNy; Tue, 28 Apr 2020 20:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8488862CA;
	Tue, 28 Apr 2020 20:58:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34A961BF410
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 20:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FA3F88311
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 20:58:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pS8wckjd0rFR for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 20:58:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 63A3388164
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 20:58:38 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id r26so305572wmh.0
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 13:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Fy0Mri3DDQ3BqqDpw5/rR7523O6oLN3hn9ttHJ8oMYE=;
 b=WIwrgocBZAZWETOWe23sa/ybzkvhEk4ZLJSGaM55H//GpLGBUGmriS0D7WmX5I1ELw
 AGLPYDwQmFKJneV/TBxXyKJ+YT0M8lcDY751G3UZ/5PUabFlcCZqdKIPFzm12kpgXts5
 Bwu2ge0Re7c91nRazrkj3ChCcibJIvtzhTm5TywtQzZsU96yYqZg2BCDoOz0D+K8u8qM
 cBL7uDKVEiusAjt9EBabe4M4O9Wnd/XOfzqeigi4CnAfL3dUtFG5vnAHKpL7mFGo2CUi
 CBHzG/nsXxbyJD+3Mgu1BD+0k3nefuy6jaBbXqWwZIEAncOeNZmuL/mXaqoLvENEq8or
 QUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Fy0Mri3DDQ3BqqDpw5/rR7523O6oLN3hn9ttHJ8oMYE=;
 b=XmqsS01kJQ/X71mRXGQzhGb0TKJZDz6BrbrgTtZj/gCCRMCSxWiAXX0PgGnx+NKfN4
 S/EDFAVPp7C7SZj3tXsaVz16eoVFhlDSNAXZD5qFRpZCsjzGfJZQBZzKl9KUcugaHzdK
 eQ6rkedYttU2So1zZf+XUo2TVNVonMsO8v0nOpNMcGz02M91ivRfq5geJwftor683hja
 AGMwcCvOv/zlLIOqbyY0UTFHOU58vS6w6hF2JEq9GQnYrOIO/zKat7jtr/SRgikqnXEr
 jwU20BJgYUINUU2cqRsMldcv0g/s33AX9+/33jxb9lZQ6uC/NpjVOObdIXxKWapmddzL
 u31A==
X-Gm-Message-State: AGi0PubHnXT6NyX9y8w0cYhXvvDnMaM+fEvuOM6uuJqa2qgElrZjA7kq
 la7BrLcfOf/mMOfpbN9kAUg=
X-Google-Smtp-Source: APiQypIY1nXnuxrxzVd4QQ89AdAOLunLhbEfEeYnMqwIN51PdLCoQmDXD5PSISF3jHh4cgoJPiM8MA==
X-Received: by 2002:a05:600c:2314:: with SMTP id
 20mr6908369wmo.118.1588107516885; 
 Tue, 28 Apr 2020 13:58:36 -0700 (PDT)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id m14sm26749246wrs.76.2020.04.28.13.58.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 13:58:36 -0700 (PDT)
Date: Tue, 28 Apr 2020 21:58:33 +0100
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: media: imx: no need to check return value of
 debugfs_create functions
Message-ID: <20200428205833.ape7kvi5pgrap3ps@arch-thunder.localdomain>
References: <20200428170405.GA1649098@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428170405.GA1649098@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,
Thanks for the cleanup.

On Tue, Apr 28, 2020 at 07:04:05PM +0200, Greg Kroah-Hartman wrote:
> When calling debugfs functions, there is no need to ever check the
> return value.  The function can work or not, but the code logic should
> never do something different based on this.
> 
> Cc: Rui Miguel Silva <rmfrfs@gmail.com>
> Cc: Steve Longerbeam <slongerbeam@gmail.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-media@vger.kernel.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>


Cheers,
     Rui
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 29 ++++------------------
>  1 file changed, 5 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index fbc1a924652a..d7c9e7343f1f 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -915,33 +915,14 @@ static int mipi_csis_dump_regs_show(struct seq_file *m, void *private)
>  }
>  DEFINE_SHOW_ATTRIBUTE(mipi_csis_dump_regs);
>  
> -static int mipi_csis_debugfs_init(struct csi_state *state)
> +static void mipi_csis_debugfs_init(struct csi_state *state)
>  {
> -	struct dentry *d;
> -
> -	if (!debugfs_initialized())
> -		return -ENODEV;
> -
>  	state->debugfs_root = debugfs_create_dir(dev_name(state->dev), NULL);
> -	if (!state->debugfs_root)
> -		return -ENOMEM;
> -
> -	d = debugfs_create_bool("debug_enable", 0600, state->debugfs_root,
> -				&state->debug);
> -	if (!d)
> -		goto remove_debugfs;
> -
> -	d = debugfs_create_file("dump_regs", 0600, state->debugfs_root,
> -				state, &mipi_csis_dump_regs_fops);
> -	if (!d)
> -		goto remove_debugfs;
> -
> -	return 0;
> -
> -remove_debugfs:
> -	debugfs_remove_recursive(state->debugfs_root);
>  
> -	return -ENOMEM;
> +	debugfs_create_bool("debug_enable", 0600, state->debugfs_root,
> +			    &state->debug);
> +	debugfs_create_file("dump_regs", 0600, state->debugfs_root, state,
> +			    &mipi_csis_dump_regs_fops);
>  }
>  
>  static void mipi_csis_debugfs_exit(struct csi_state *state)
> -- 
> 2.26.2
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
