Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D061F8F157
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 18:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C765E228EB;
	Thu, 15 Aug 2019 16:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V+WzWjk+A0h5; Thu, 15 Aug 2019 16:59:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8F156204F8;
	Thu, 15 Aug 2019 16:59:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6C0B1BF23C
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 16:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C40EF86148
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 16:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wz1BnUSvmGa4 for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 16:59:19 +0000 (UTC)
X-Greylist: delayed 00:23:21 by SQLgrey-1.7.6
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
 [209.85.221.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F09A183702
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 16:59:18 +0000 (UTC)
Received: by mail-vk1-f193.google.com with SMTP id z67so518930vkd.5
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 09:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YXtKn6tSCQy3NpA9rMW2UTi1pemQ0emlmM8VnUNaMb4=;
 b=Hu85KiG7Ok++jxRYVDbjomkFeYLFzXGOLI4c+CF1GFmLn15HbUeRCf1KF/2FQ+hpfp
 9jA7urHEkeMnGRuF2CVBM3zZ/CCBzG0dB1kQ/uY+kYpL2ReZlk7XP9554UdsgjN34dl5
 RCtc6YTXLk3L8BT8MzvPpjMFMFnRKOHE8yES0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YXtKn6tSCQy3NpA9rMW2UTi1pemQ0emlmM8VnUNaMb4=;
 b=iQKQWQqgkLhhYk5xvctIJvWVUZqgntkKsaucrQZkW83t/pz40cEcVH2yNEUJxulDd5
 shSP8SNkBbJzI+kvpaqsAUrf4OvirnVUBCVLRPWEeP+mJNofbsEaoznweyDoZ6gpo6+5
 CqW3RSM+MQLfBtCfKSgYbGzd5UJi7ohhODf51eZMpbp/11U82+WRgVCkkJ725nkNjCQz
 bdmfmdGS7dTHj/BrskIUTaOiqAXxzS//bA78ZTrJqYP/0+zt9PLEIzzx3OFuZzVwuOSH
 p55PggfBwTjydVf1B4jbYfc0gwlC37BnBuMPqBgdAOmeuwnePNQgXh58a6O1t9Z2IxYH
 KWfQ==
X-Gm-Message-State: APjAAAXr4hT9VQO+qsoKSftJBPgG3MOm5QHjF+LEXxh5MgFuNFl2yadU
 bH0U2RlldUCvmh4hIY4bSTyXGynHNjQ=
X-Google-Smtp-Source: APXvYqwUsPXLcmLHAxB2tRsW34D41FmV40ffddklYTLPs1CB9bmhuB11dBR/dzlVYi+AjkqgOw7N6g==
X-Received: by 2002:a65:5a8c:: with SMTP id c12mr4055445pgt.73.1565886643402; 
 Thu, 15 Aug 2019 09:30:43 -0700 (PDT)
Received: from localhost ([172.19.216.18])
 by smtp.gmail.com with ESMTPSA id f205sm3924774pfa.161.2019.08.15.09.30.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 09:30:42 -0700 (PDT)
Date: Thu, 15 Aug 2019 12:30:25 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Hridya Valsaraju <hridya@google.com>
Subject: Re: [PATCH v3 1/2] binder: Add default binder devices through
 binderfs when configured
Message-ID: <20190815163025.GB75595@google.com>
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
> ---

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

thanks,

 - Joel

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
