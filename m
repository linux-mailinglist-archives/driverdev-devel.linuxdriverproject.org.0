Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AFA2299BC
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 16:05:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 659B38819D;
	Wed, 22 Jul 2020 14:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JJIvVvHBeCEY; Wed, 22 Jul 2020 14:05:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BE9488111;
	Wed, 22 Jul 2020 14:05:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F028A1BF36E
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 14:05:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EAA548857F
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 14:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RjwdLY3u-oUv for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 14:05:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0907B88508
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 14:05:31 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A985205CB;
 Wed, 22 Jul 2020 14:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595426730;
 bh=iloCKMSR9b1tfTvy/7rJoAq1rMiDVjg+2iSq3QdT19U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iNeeTwj3TjCoEzSr90MvRIkmt/LcCd92oxk5dJb0VzqASUTyQLM+pe7WqjMEeJNMG
 Y4VfbbE9YN4YiWrBOJmYU55zvAncU0xsd8XHsQdaRBOUwEprSWaR/7ldZncgeYLoXu
 op/ZtUkB8cyVJE6ry2C54BdykodXWFHClDXjQw8w=
Date: Wed, 22 Jul 2020 16:05:26 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Rahul Gottipati <rahul.blr97@gmail.com>
Subject: Re: [PATCH v2 2/2] media: atomisp: Fix coding style issue - correct
 multiline comments
Message-ID: <20200722160526.5b83341e@coco.lan>
In-Reply-To: <c73ee9bced34777cea5b1a3a97f57c723b0a97b1.1595416585.git.rahul.blr97@gmail.com>
References: <cover.1595416585.git.rahul.blr97@gmail.com>
 <c73ee9bced34777cea5b1a3a97f57c723b0a97b1.1595416585.git.rahul.blr97@gmail.com>
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

Em Wed, 22 Jul 2020 17:00:52 +0530
Rahul Gottipati <rahul.blr97@gmail.com> escreveu:

> This fixes some coding style issues of multiline comments to
> correct a few checkpatch.pl warnings.
> 
> Signed-off-by: Rahul Gottipati <rahul.blr97@gmail.com>
> ---
> Changes in v2:
> 	Distributed changes across 2 patches instead of the previous 1.
>  drivers/staging/media/atomisp/pci/atomisp_ioctl.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
> index 9cdcbe774229..5bf3a86f98f8 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
> @@ -1281,7 +1281,8 @@ static int atomisp_qbuf(struct file *file, void *fh, struct v4l2_buffer *buf)
>  	 * But the capture number cannot be determined by HAL.
>  	 * So HAL only sets the capture number to be 1 and queue multiple
>  	 * buffers. Atomisp driver needs to check this case and re-trigger
> -	 * CSS to do capture when new buffer is queued. */
> +	 * CSS to do capture when new buffer is queued.
> +	 */
>  	if (asd->continuous_mode->val &&
>  	    atomisp_subdev_source_pad(vdev)
>  	    == ATOMISP_SUBDEV_PAD_SOURCE_CAPTURE &&
> @@ -1806,7 +1807,7 @@ static int atomisp_streamon(struct file *file, void *fh,
>  		/*
>  		 * set freq to max when streaming count > 1 which indicate
>  		 * dual camera would run
> -		*/
> +		 */
>  		if (atomisp_streaming_count(isp) > 1) {
>  			if (atomisp_freq_scaling(isp,
>  						 ATOMISP_DFS_MODE_MAX, false) < 0)
> @@ -2438,7 +2439,8 @@ static int atomisp_g_ext_ctrls(struct file *file, void *fh,
>  	int i, ret = 0;
>  
>  	/* input_lock is not need for the Camera related IOCTLs
> -	 * The input_lock downgrade the FPS of 3A*/
> +	 * The input_lock downgrade the FPS of 3A
> +	 */


On media (and on several subsystems), we keep the first line in blank,
on multi-line comments:

 	/* 
	 * input_lock is not need for the Camera related IOCTLs
	 * The input_lock downgrade the FPS of 3A
	 */
	
>  	ret = atomisp_camera_g_ext_ctrls(file, fh, c);
>  	if (ret != -EINVAL)
>  		return ret;
> @@ -2521,7 +2523,8 @@ static int atomisp_camera_s_ext_ctrls(struct file *file, void *fh,
>  				    v4l2_s_ctrl(NULL, isp->flash->ctrl_handler,
>  						&ctrl);
>  				/* When flash mode is changed we need to reset
> -				 * flash state */
> +				 * flash state
> +				 */
>  				if (ctrl.id == V4L2_CID_FLASH_MODE) {
>  					asd->params.flash_state =
>  					    ATOMISP_FLASH_IDLE;
> @@ -2560,7 +2563,8 @@ static int atomisp_s_ext_ctrls(struct file *file, void *fh,
>  	int i, ret = 0;
>  
>  	/* input_lock is not need for the Camera related IOCTLs
> -	 * The input_lock downgrade the FPS of 3A*/
> +	 * The input_lock downgrade the FPS of 3A
> +	 */
>  	ret = atomisp_camera_s_ext_ctrls(file, fh, c);
>  	if (ret != -EINVAL)
>  		return ret;



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
