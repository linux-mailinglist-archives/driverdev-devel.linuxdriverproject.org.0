Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A71D68F15C
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 19:00:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB34A834ED;
	Thu, 15 Aug 2019 17:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ZDyqnmbTThm; Thu, 15 Aug 2019 16:59:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D6614834B0;
	Thu, 15 Aug 2019 16:59:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68FC31BF23C
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 16:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6695C204F2
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 16:59:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vhQ8SNWSpU3b for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 16:59:56 +0000 (UTC)
X-Greylist: delayed 00:22:53 by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C411204E2
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 16:59:56 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id b11so3021728qtp.10
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 09:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ako5fluBLDpfE1J18WjJkmrO4kyd01koUp3/srSLSio=;
 b=qtT/kgiqDdqZS87IpBnNlRkIc96pYOs3bsFznlNVDQXAV2IQZtGmds429Cbcj1BTeq
 ZRejWIcNM9GvygOmD8IxOlvXRvQOmdcgh6laGyvGysnw6JvUmmGthXwWmTlMNHdjNCF/
 6sQOAp7i1LGEOBBfLrB8gi3qFuSZ7/MNXiNFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ako5fluBLDpfE1J18WjJkmrO4kyd01koUp3/srSLSio=;
 b=JyICwgrUXlv26IeiuuQiTHbKkw1NwbC/0y0ZSwLi3+m6ALGnLEEE6Otv5y+gLGQgEY
 RpnPTRUnY7brv2FXW+sYcF6NrlXQ4wVr/iRfISHmTmlUnumUhHyGvprhIByPSVt+85jp
 epzBeIFuTuND9XhHy6CwfZJPug/6fL6GrHL+SsEbAfOiret0DtRvu+fGqeTygkoDeqSQ
 oMWhAsMZCkP4Ra8e6WowY8D58xPe8Dd/hukpmnyhvEH/p+Ul5JoSkpl30xuUN34RzDYP
 KQ16AJzpHvHCetseSmiqK4ItbSWsLjzZgxWPJUaqYBHnWHd4uYKAyma0uIzFOUDcw387
 3sJA==
X-Gm-Message-State: APjAAAUkyfmKmrcpdVcHsEjzbi72qvrW4B5fzTsm/nTTGhl9pGLe+d5I
 if9hAdcI4ghIEfmg6TFwC6ljCYRP3+0=
X-Google-Smtp-Source: APXvYqyyibvRsNaV3CtcWbxkzfTVTQ58VnhGf9a0pKudGLIxAoscuok8Pnf8eybfSz3FnCIT24W3TQ==
X-Received: by 2002:a63:7b4d:: with SMTP id k13mr4073354pgn.182.1565886524798; 
 Thu, 15 Aug 2019 09:28:44 -0700 (PDT)
Received: from localhost ([172.19.216.18])
 by smtp.gmail.com with ESMTPSA id 185sm3486276pfd.125.2019.08.15.09.28.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 09:28:43 -0700 (PDT)
Date: Thu, 15 Aug 2019 12:28:27 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Hridya Valsaraju <hridya@google.com>
Subject: Re: [PATCH v3 1/2] binder: Add default binder devices through
 binderfs when configured
Message-ID: <20190815162827.GA75595@google.com>
References: <20190808222727.132744-1-hridya@google.com>
 <20190808222727.132744-2-hridya@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808222727.132744-2-hridya@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, kernel-team@android.com,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 08, 2019 at 03:27:25PM -0700, Hridya Valsaraju wrote:
> Currently, since each binderfs instance needs its own
> private binder devices, every time a binderfs instance is
> mounted, all the default binder devices need to be created
> via the BINDER_CTL_ADD IOCTL. This patch aims to
> add a solution to automatically create the default binder
> devices for each binderfs instance that gets mounted.
> To achieve this goal, when CONFIG_ANDROID_BINDERFS is set,
> the default binder devices specified by CONFIG_ANDROID_BINDER_DEVICES
> are created in each binderfs instance instead of global devices
> being created by the binder driver.
> 
> Co-developed-by: Christian Brauner <christian.brauner@ubuntu.com>
> Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> Signed-off-by: Hridya Valsaraju <hridya@google.com>

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

thanks,

 - Joel

> ---
> 
> Changes in v2:
> - Updated commit message as per Greg Kroah-Hartman.
> - Removed new module parameter creation as per Greg
>   Kroah-Hartman/Christian Brauner.
> - Refactored device name length check into a new patch as per Greg Kroah-Hartman.
> 
> Changes in v3:
> -Removed unnecessary empty lines as per Dan Carpenter.
> 
>  drivers/android/binder.c          |  5 +++--
>  drivers/android/binder_internal.h |  2 ++
>  drivers/android/binderfs.c        | 23 ++++++++++++++++++++---
>  3 files changed, 25 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 466b6a7f8ab7..ca6b21a53321 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -123,7 +123,7 @@ static uint32_t binder_debug_mask = BINDER_DEBUG_USER_ERROR |
>  	BINDER_DEBUG_FAILED_TRANSACTION | BINDER_DEBUG_DEAD_TRANSACTION;
>  module_param_named(debug_mask, binder_debug_mask, uint, 0644);
>  
> -static char *binder_devices_param = CONFIG_ANDROID_BINDER_DEVICES;
> +char *binder_devices_param = CONFIG_ANDROID_BINDER_DEVICES;
>  module_param_named(devices, binder_devices_param, charp, 0444);
>  
>  static DECLARE_WAIT_QUEUE_HEAD(binder_user_error_wait);
> @@ -6279,7 +6279,8 @@ static int __init binder_init(void)
>  				    &transaction_log_fops);
>  	}
>  
> -	if (strcmp(binder_devices_param, "") != 0) {
> +	if (!IS_ENABLED(CONFIG_ANDROID_BINDERFS) &&
> +	    strcmp(binder_devices_param, "") != 0) {
>  		/*
>  		* Copy the module_parameter string, because we don't want to
>  		* tokenize it in-place.
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index 045b3e42d98b..fe8c745dc8e0 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -37,6 +37,8 @@ struct binder_device {
>  
>  extern const struct file_operations binder_fops;
>  
> +extern char *binder_devices_param;
> +
>  #ifdef CONFIG_ANDROID_BINDERFS
>  extern bool is_binderfs_device(const struct inode *inode);
>  #else
> diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> index e773f45d19d9..aee46dd1be91 100644
> --- a/drivers/android/binderfs.c
> +++ b/drivers/android/binderfs.c
> @@ -186,8 +186,7 @@ static int binderfs_binder_device_create(struct inode *ref_inode,
>  	req->major = MAJOR(binderfs_dev);
>  	req->minor = minor;
>  
> -	ret = copy_to_user(userp, req, sizeof(*req));
> -	if (ret) {
> +	if (userp && copy_to_user(userp, req, sizeof(*req))) {
>  		ret = -EFAULT;
>  		goto err;
>  	}
> @@ -467,6 +466,9 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
>  	int ret;
>  	struct binderfs_info *info;
>  	struct inode *inode = NULL;
> +	struct binderfs_device device_info = { 0 };
> +	const char *name;
> +	size_t len;
>  
>  	sb->s_blocksize = PAGE_SIZE;
>  	sb->s_blocksize_bits = PAGE_SHIFT;
> @@ -521,7 +523,22 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
>  	if (!sb->s_root)
>  		return -ENOMEM;
>  
> -	return binderfs_binder_ctl_create(sb);
> +	ret = binderfs_binder_ctl_create(sb);
> +	if (ret)
> +		return ret;
> +
> +	name = binder_devices_param;
> +	for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
> +		strscpy(device_info.name, name, len + 1);
> +		ret = binderfs_binder_device_create(inode, NULL, &device_info);
> +		if (ret)
> +			return ret;
> +		name += len;
> +		if (*name == ',')
> +			name++;
> +	}
> +
> +	return 0;
>  }
>  
>  static struct dentry *binderfs_mount(struct file_system_type *fs_type,
> -- 
> 2.22.0.770.g0f2c4a37fd-goog
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
