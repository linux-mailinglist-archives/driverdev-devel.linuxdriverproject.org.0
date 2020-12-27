Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 884E82E30F5
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Dec 2020 12:39:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 180D485691;
	Sun, 27 Dec 2020 11:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V8iQmSH6xczI; Sun, 27 Dec 2020 11:39:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6768185604;
	Sun, 27 Dec 2020 11:39:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B7051BF57F
 for <devel@linuxdriverproject.org>; Sun, 27 Dec 2020 11:39:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 27AB7844BD
 for <devel@linuxdriverproject.org>; Sun, 27 Dec 2020 11:39:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EkykMLgipXQ2 for <devel@linuxdriverproject.org>;
 Sun, 27 Dec 2020 11:39:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 90041844B4
 for <devel@driverdev.osuosl.org>; Sun, 27 Dec 2020 11:39:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B4618217A0;
 Sun, 27 Dec 2020 11:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609069167;
 bh=Qj9NQfjZ7w7YKnQLJ5QEgDh45V/wmnPlZYN1lqvpVYI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CJVOLAqhLrp/Rlx3iWCsxxyNTwcb7I0Kms0gwFdnTlNvBqFf3SW0UdO096r1JCMmh
 7iUae2evmxtrHGm43fSaB9y68OOOnVvGBsrWXwNs3+53/VgGxCTMLof/h7Fe7T1s8k
 lBM9941zlVxcbyyYPLVpCbWeCqOhKhfLOzMoFN+8=
Date: Sun, 27 Dec 2020 12:40:51 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Angshuman Sengupta <senguptaangshuman17@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Fixed warning for structure
 declaration
Message-ID: <X+hywwrjTw/Yt0kB@kroah.com>
References: <20201227112645.256943-1-senguptaangshuman17@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201227112645.256943-1-senguptaangshuman17@gmail.com>
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
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 27, 2020 at 04:56:45PM +0530, Angshuman Sengupta wrote:
> Warning found by checkpatch.pl script.
> 
> Signed-off-by: Angshuman Sengupta <senguptaangshuman17@gmail.com>
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

Did you test build this change?  Why not?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
