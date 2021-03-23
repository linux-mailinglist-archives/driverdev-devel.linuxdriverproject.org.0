Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2481345F78
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 14:19:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 947134038A;
	Tue, 23 Mar 2021 13:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YVFLC1YVaLF6; Tue, 23 Mar 2021 13:19:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE9B840374;
	Tue, 23 Mar 2021 13:19:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13FC41BF331
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 13:18:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F5F34024F
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 13:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0CDlPqBZK4F5 for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 13:18:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 66F2A40249
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 13:18:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4F1B761925;
 Tue, 23 Mar 2021 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616505534;
 bh=Vs7PdDT7Zq32DdrSGItgF4jCKR5j3s25JM4aU1qJMaE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lh8Jft0EnLBcj3gRmzp0I22GXzBoPBTmJFCTj7w6Ug3clmG1qOEo8spX5BPdMLKlA
 5jERiCWFI1O2+QGkKmdIOnPRS8kWgsQs++WDWHxptbnIaoK+oioOU82Y/PWk/SDdoY
 Q4xyG37XO37oBT3uGnXXLKQ3TFsORA9dIeKsH1cM=
Date: Tue, 23 Mar 2021 14:18:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Abhishek C <astro.abhishek02@gmail.com>
Subject: Re: [PATCH] drivers: android: binder.c: Fix indentation of
 multi-line comment
Message-ID: <YFnqu9b20whmRJNh@kroah.com>
References: <20210313161655.mu64qezxog4ghibq@astroabhi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210313161655.mu64qezxog4ghibq@astroabhi>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, maco@android.com,
 bkkarthik@pesu.pes.edu, linux-kernel@vger.kernel.org, joel@joelfernandes.org,
 arve@android.com, hridya@google.com, surenb@google.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Mar 13, 2021 at 09:46:55PM +0530, Abhishek C wrote:
> Fixed alignment of multi-line comment.
> Added a * for each line of the comment.
> 
> Signed-off-by: Abhishek C <astro.abhishek02@gmail.com>
> ---
>  drivers/android/binder.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index c119736ca56a..700719c58147 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -4617,8 +4617,9 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
>  	unsigned int size = _IOC_SIZE(cmd);
>  	void __user *ubuf = (void __user *)arg;
>  
> -	/*pr_info("binder_ioctl: %d:%d %x %lx\n",
> -			proc->pid, current->pid, cmd, arg);*/
> +	/* pr_info("binder_ioctl: %d:%d %x %lx\n",
> +	 * proc->pid, current->pid, cmd, arg);
> +	 */

This looks like left-over debugging code, and as-is, is formatted
properly.

Why not just delete it entirely?  If someone needs debugging code, they
can add it back in.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
