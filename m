Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 769E57EC8A
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:18:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 419C18791F;
	Fri,  2 Aug 2019 06:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KS3ZpuWOMXWX; Fri,  2 Aug 2019 06:18:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C916687897;
	Fri,  2 Aug 2019 06:18:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F6C81BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C62F8462F
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iGmDkRT4vVFg for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:18:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 670D187897
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:18:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B53C2206A3;
 Fri,  2 Aug 2019 06:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564726721;
 bh=S2K3wR2YDF5jGxl+ayK0HwksDCL5fZX4E5bkNRkkw6w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wt2hZUnBBuDeU0ylH1gYzOMkO4yaW+uABg2cFnjUn+tsd/HWksAiDtDVZ0+/EUIgy
 JNYSiv1BEA8r9iewfHHSg3Z0lIBLnXlLOUVn9kFHtfthFrprIMCJEAnLgnw6TOeZ7j
 AwG0fVWgtT6LV87aqZ4NHRslk6GvazxhCpnFG+CQ=
Date: Fri, 2 Aug 2019 08:18:38 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hridya Valsaraju <hridya@google.com>
Subject: Re: [PATCH] Add default binder devices through binderfs when
 configured
Message-ID: <20190802061838.GA10844@kroah.com>
References: <20190801223556.209184-1-hridya@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801223556.209184-1-hridya@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 kernel-team@android.com, linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 01, 2019 at 03:35:56PM -0700, Hridya Valsaraju wrote:
> If CONFIG_ANDROID_BINDERFS is set, the default binder devices
> specified by CONFIG_ANDROID_BINDER_DEVICES are created in each
> binderfs instance instead of global devices being created by
> the binder driver.
> 
> Co-developed-by: Christian Brauner <christian.brauner@ubuntu.com>
> Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> Signed-off-by: Hridya Valsaraju <hridya@google.com>
> ---
>  drivers/android/binder.c   |  3 ++-
>  drivers/android/binderfs.c | 46 ++++++++++++++++++++++++++++++++++----
>  2 files changed, 44 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 466b6a7f8ab7..65a99ac26711 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
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
> diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> index e773f45d19d9..9f5ed50ffd70 100644
> --- a/drivers/android/binderfs.c
> +++ b/drivers/android/binderfs.c
> @@ -48,6 +48,10 @@ static dev_t binderfs_dev;
>  static DEFINE_MUTEX(binderfs_minors_mutex);
>  static DEFINE_IDA(binderfs_minors);
>  
> +static char *binder_devices_param = CONFIG_ANDROID_BINDER_DEVICES;
> +module_param_named(devices, binder_devices_param, charp, 0444);
> +MODULE_PARM_DESC(devices, "Binder devices to be created by default");
> +

Why are you creating a module parameter?  That was not in your changelog
:(



>  /**
>   * binderfs_mount_opts - mount options for binderfs
>   * @max: maximum number of allocatable binderfs binder devices
> @@ -135,7 +139,6 @@ static int binderfs_binder_device_create(struct inode *ref_inode,
>  #else
>  	bool use_reserve = true;
>  #endif
> -
>  	/* Reserve new minor number for the new device. */
>  	mutex_lock(&binderfs_minors_mutex);
>  	if (++info->device_count <= info->mount_opts.max)
> @@ -186,8 +189,7 @@ static int binderfs_binder_device_create(struct inode *ref_inode,
>  	req->major = MAJOR(binderfs_dev);
>  	req->minor = minor;
>  
> -	ret = copy_to_user(userp, req, sizeof(*req));
> -	if (ret) {
> +	if (userp && copy_to_user(userp, req, sizeof(*req))) {
>  		ret = -EFAULT;
>  		goto err;
>  	}
> @@ -467,6 +469,9 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
>  	int ret;
>  	struct binderfs_info *info;
>  	struct inode *inode = NULL;
> +	struct binderfs_device device_info = { 0 };
> +	const char *name;
> +	size_t len;
>  
>  	sb->s_blocksize = PAGE_SIZE;
>  	sb->s_blocksize_bits = PAGE_SHIFT;
> @@ -521,7 +526,28 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
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
> +		/*
> +		 * init_binderfs() has already checked that the length of
> +		 * device_name_entry->name is not greater than device_info.name.
> +		 */
> +		strscpy(device_info.name, name, len + 1);
> +		ret = binderfs_binder_device_create(inode, NULL, &device_info);
> +		if (ret)
> +			return ret;
> +		name += len;
> +		if (*name == ',')
> +			name++;
> +
> +	}
> +
> +	return 0;
> +
>  }
>  
>  static struct dentry *binderfs_mount(struct file_system_type *fs_type,
> @@ -553,6 +579,18 @@ static struct file_system_type binder_fs_type = {
>  int __init init_binderfs(void)
>  {
>  	int ret;
> +	const char *name;
> +	size_t len;
> +
> +	/* Verify that the default binderfs device names are valid. */
> +	name = binder_devices_param;
> +	for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
> +		if (len > BINDERFS_MAX_NAME)
> +			return -E2BIG;
> +		name += len;
> +		if (*name == ',')
> +			name++;
> +	}

This verification should be a separate patch, right?

But the real issue here is I have no idea _why_ you are wanting this
patch.  The changelog text says _what_ you are doing only, which isn't
ok.

Please provide more information as to why this is needed, what problem
it is solving, and break this up into a patch series and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
