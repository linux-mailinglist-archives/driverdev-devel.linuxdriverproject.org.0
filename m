Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1583512CA
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 11:55:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2188184A37;
	Thu,  1 Apr 2021 09:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iSClHuIXKNaH; Thu,  1 Apr 2021 09:55:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77B03849D1;
	Thu,  1 Apr 2021 09:55:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BE761BF85D
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:54:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4772140F49
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:54:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AIjSbTDzaezP for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 09:54:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6491140F4F
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 09:54:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3D01161056;
 Thu,  1 Apr 2021 09:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1617270887;
 bh=A+v7RHVN3BTewytaTe5S519Sf+9IW7rG+6m4B5mcMco=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LVhSa3E0TWAZzsZ1RYpLMOxqeDg3TSSAZ2lQaIsCNPzgKAGTgIxwZVNIPixHWYSHM
 31BAjWBgMTq9cELrcDgQ5iBq6oEGJTqGG28qlbJcDr/obD/xGc2jnOfpXxuEyxsfIU
 lTz9jYVoNeWcafcGHimuxqtQkcEBxOzs1DV0tepY=
Date: Thu, 1 Apr 2021 11:54:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Xie Yongji <xieyongji@bytedance.com>
Subject: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
Message-ID: <YGWYZYbBzglUCxB2@kroah.com>
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210401090932.121-3-xieyongji@bytedance.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, keescook@chromium.org,
 surenb@google.com, jasowang@redhat.com, sargun@sargun.me, hch@infradead.org,
 hridya@google.com, arve@android.com, viro@zeniv.linux.org.uk,
 joel@joelfernandes.org, linux-fsdevel@vger.kernel.org,
 christian.brauner@ubuntu.com, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 01, 2021 at 05:09:32PM +0800, Xie Yongji wrote:
> Use receive_fd() to receive file from another process instead of
> combination of get_unused_fd_flags() and fd_install(). This simplifies
> the logic and also makes sure we don't miss any security stuff.

But no logic is simplified here, and nothing is "missed", so I do not
understand this change at all.

> 
> Signed-off-by: Xie Yongji <xieyongji@bytedance.com>
> ---
>  drivers/android/binder.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index c119736ca56a..080bcab7d632 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -3728,7 +3728,7 @@ static int binder_apply_fd_fixups(struct binder_proc *proc,
>  	int ret = 0;
>  
>  	list_for_each_entry(fixup, &t->fd_fixups, fixup_entry) {
> -		int fd = get_unused_fd_flags(O_CLOEXEC);
> +		int fd  = receive_fd(fixup->file, O_CLOEXEC);

Why 2 spaces?

>  
>  		if (fd < 0) {
>  			binder_debug(BINDER_DEBUG_TRANSACTION,
> @@ -3741,7 +3741,7 @@ static int binder_apply_fd_fixups(struct binder_proc *proc,
>  			     "fd fixup txn %d fd %d\n",
>  			     t->debug_id, fd);
>  		trace_binder_transaction_fd_recv(t, fd, fixup->offset);
> -		fd_install(fd, fixup->file);
> +		fput(fixup->file);

Are you sure this is the same???

I d onot understand the need for this change at all, what is wrong with
the existing code here?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
