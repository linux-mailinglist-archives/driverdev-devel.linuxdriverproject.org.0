Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E533512BC
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 11:52:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92D8760BB6;
	Thu,  1 Apr 2021 09:52:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 70o0b7UgIoET; Thu,  1 Apr 2021 09:52:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B39CC60A97;
	Thu,  1 Apr 2021 09:52:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C62B91BF85D
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B544B8496D
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZI0XvZLL6ltP for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 09:52:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE76C83A68
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 09:52:36 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 87A5961057;
 Thu,  1 Apr 2021 09:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1617270756;
 bh=WHuvuLwY5ZJzXTO21PWIte9+S4GwMD6X0OWMiT8SSu8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OlOAJLbasE0ogij9w8e0cFnlQojCi7vbXuC+/FcDVonQf6yP9VunIJGHmpERSZrLS
 YZ614AqK6+kE5rLs4XT0HFZKbxIulRILiCHQMNX7MDEWAcJ72zfYnbHHdQBKuzqMZB
 j2gLEgr4muLRwLsypUVR6ZyQHCCBtWhiUSa8jM6Q=
Date: Thu, 1 Apr 2021 11:52:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Xie Yongji <xieyongji@bytedance.com>
Subject: Re: [PATCH 1/2] file: Export receive_fd() to modules
Message-ID: <YGWX4aIE5QNxsJQ9@kroah.com>
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-2-xieyongji@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210401090932.121-2-xieyongji@bytedance.com>
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

On Thu, Apr 01, 2021 at 05:09:31PM +0800, Xie Yongji wrote:
> Export receive_fd() so that some modules can use
> it to pass file descriptor across processes without
> missing any security stuffs.
> 
> Signed-off-by: Xie Yongji <xieyongji@bytedance.com>
> ---
>  fs/file.c            | 6 ++++++
>  include/linux/file.h | 7 +++----
>  2 files changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/file.c b/fs/file.c
> index 56986e55befa..2a80c6c3e147 100644
> --- a/fs/file.c
> +++ b/fs/file.c
> @@ -1107,6 +1107,12 @@ int receive_fd_replace(int new_fd, struct file *file, unsigned int o_flags)
>  	return new_fd;
>  }
>  
> +int receive_fd(struct file *file, unsigned int o_flags)
> +{
> +	return __receive_fd(file, NULL, o_flags);
> +}
> +EXPORT_SYMBOL(receive_fd);

What module uses this?

And why not EXPORT_SYMBOL_GPL()?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
