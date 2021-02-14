Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F3831AFB9
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 09:22:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEF006F5A4
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 08:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4gEx1kOOTkOX for <lists+driverdev-devel@lfdr.de>;
	Sun, 14 Feb 2021 08:22:07 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 2C9506F579; Sun, 14 Feb 2021 08:22:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5035F6F4F1;
	Sun, 14 Feb 2021 08:21:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8AFD11BF4D6
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 08:21:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 78A096F4EE
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 08:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QiNDxtvlvTuP for <devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 08:21:38 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id B313B6F4F1; Sun, 14 Feb 2021 08:21:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 573AC6F4EE
 for <devel@driverdev.osuosl.org>; Sun, 14 Feb 2021 08:21:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2237561494;
 Sun, 14 Feb 2021 08:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613290896;
 bh=CcC3t0obhI410jkBBGKMn3+V8mpeDf2g+FPZ4iPL3Qg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m6Az8v3OCYkRltLEW4GWwEseg3nPX6X8KhoydssK6vgKFMa9CQQiC9OcrvethYoCa
 b0uLAf2YtnWdCciGT2aFzAxCe8bspiSFbBwDeI67jYtNdUaf9qXjeoIyeWR3j8jCSB
 K8qkS7HRUXjmRcIXWytTce1VVf2jqXacGvyGD5Jg=
Date: Sun, 14 Feb 2021 09:21:33 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thais Camacho <thaiscamachoo@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Declared file operation with
 const keyword
Message-ID: <YCjdjdjcdXRUMhU/@kroah.com>
References: <20210214023136.8916-1-thaiscamachoo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210214023136.8916-1-thaiscamachoo@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Suren Baghdasaryan <surenb@google.com>, linux-kernel@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Feb 13, 2021 at 11:31:36PM -0300, Thais Camacho wrote:
> Warning found by checkpatch.pl script
> 
> Signed-off-by: Thais Camacho <thaiscamachoo@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 4789d36ddfd3..2cb665e0228c 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -376,7 +376,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
>  
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	static const struct file_operations vmfile_fops;
>  	struct ashmem_area *asma = file->private_data;
>  	int ret = 0;
>  
> -- 
> 2.20.1

Any specific reason why you did not test-build your change before
sending it to us?  Please always do so, otherwise it causes lots of
problems, and makes maintainers grumpy :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
