Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6E930D9BE
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 13:25:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0009D87103;
	Wed,  3 Feb 2021 12:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EXj+EUn3A9tx; Wed,  3 Feb 2021 12:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47113861E6;
	Wed,  3 Feb 2021 12:25:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56BA31BF5AD
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 12:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 52E2A8643B
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 12:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sc8EuPORRJPv for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 12:25:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1B4FB870FB
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 12:25:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2827F64F95;
 Wed,  3 Feb 2021 12:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612355147;
 bh=yvlTS+iLaszcuOVgpcaqCwzO3rEC28RPLmuXH+dnpVY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bgi4sqwcJ5cREUZlLxZnyERhBAqA3u6b2Pry5QWdjCrgxKtOrJvMY42z5a44zP/Xg
 l8u1Y7mCyjjxAdSiZAEXIqE3D9n69KKzVQ02KK36aO+8i0RaWI9YPAZt2BqEIje/zZ
 9i0aw2YYJQc/G1kmtR9T9ITerC3cUWUywp0cS3XU=
Date: Wed, 3 Feb 2021 13:25:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ayush <ayush@disroot.org>
Subject: Re: [PATCH] staging: wimax/i2400m: fix coding style issues
Message-ID: <YBqWSO01Bt2rHHv2@kroah.com>
References: <20210203114720.263651-1-ayush@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210203114720.263651-1-ayush@disroot.org>
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
Cc: devel@driverdev.osuosl.org, kuba@kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 03, 2021 at 05:17:20PM +0530, Ayush wrote:
> - fix "multiple blank lines" issues.
> - fix a couple of parenthesis alignment issues.
> - fix no space before parenthesis issue.
> - fix no blank line after declaration.
> 
> compile tested only (on next-20210202).
> 
> Signed-off-by: Ayush <ayush@disroot.org>
> ---
>  drivers/staging/wimax/i2400m/debugfs.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/wimax/i2400m/debugfs.c b/drivers/staging/wimax/i2400m/debugfs.c
> index 1c640b41ea4c..80a6f833d1c2 100644
> --- a/drivers/staging/wimax/i2400m/debugfs.c
> +++ b/drivers/staging/wimax/i2400m/debugfs.c
> @@ -15,7 +15,6 @@
>  #include <linux/export.h>
>  #include "i2400m.h"
>  
> -
>  #define D_SUBMODULE debugfs
>  #include "debug-levels.h"
>  
> @@ -27,8 +26,8 @@ int debugfs_netdev_queue_stopped_get(void *data, u64 *val)
>  	return 0;
>  }
>  DEFINE_DEBUGFS_ATTRIBUTE(fops_netdev_queue_stopped,
> -			debugfs_netdev_queue_stopped_get,
> -			NULL, "%llu\n");
> +			 debugfs_netdev_queue_stopped_get,
> +			 NULL, "%llu\n");
>  
>  /*
>   * We don't allow partial reads of this file, as then the reader would
> @@ -59,7 +58,6 @@ ssize_t i2400m_rx_stats_read(struct file *filp, char __user *buffer,
>  	return simple_read_from_buffer(buffer, count, ppos, buf, strlen(buf));
>  }
>  
> -
>  /* Any write clears the stats */
>  static
>  ssize_t i2400m_rx_stats_write(struct file *filp, const char __user *buffer,
> @@ -89,7 +87,6 @@ const struct file_operations i2400m_rx_stats_fops = {
>  	.llseek =	default_llseek,
>  };
>  
> -
>  /* See i2400m_rx_stats_read() */
>  static
>  ssize_t i2400m_tx_stats_read(struct file *filp, char __user *buffer,
> @@ -142,21 +139,21 @@ const struct file_operations i2400m_tx_stats_fops = {
>  	.llseek =	default_llseek,
>  };
>  
> -
>  /* Write 1 to ask the device to go into suspend */
>  static
>  int debugfs_i2400m_suspend_set(void *data, u64 val)
>  {
>  	int result;
>  	struct i2400m *i2400m = data;
> +
>  	result = i2400m_cmd_enter_powersave(i2400m);
>  	if (result >= 0)
>  		result = 0;
>  	return result;
>  }
>  DEFINE_DEBUGFS_ATTRIBUTE(fops_i2400m_suspend,
> -			NULL, debugfs_i2400m_suspend_set,
> -			"%llu\n");
> +			 NULL, debugfs_i2400m_suspend_set,
> +			 "%llu\n");
>  
>  /*
>   * Reset the device
> @@ -170,7 +167,8 @@ int debugfs_i2400m_reset_set(void *data, u64 val)
>  	int result;
>  	struct i2400m *i2400m = data;
>  	enum i2400m_reset_type rt = val;
> -	switch(rt) {
> +
> +	switch (rt) {
>  	case I2400M_RT_WARM:
>  	case I2400M_RT_COLD:
>  	case I2400M_RT_BUS:
> @@ -184,8 +182,8 @@ int debugfs_i2400m_reset_set(void *data, u64 val)
>  	return result;
>  }
>  DEFINE_DEBUGFS_ATTRIBUTE(fops_i2400m_reset,
> -			NULL, debugfs_i2400m_reset_set,
> -			"%llu\n");
> +			 NULL, debugfs_i2400m_reset_set,
> +			 "%llu\n");
>  
>  void i2400m_debugfs_add(struct i2400m *i2400m)
>  {
> -- 
> 2.30.0
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file, Documentation/SubmittingPatches
  for how to do this correctly.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
