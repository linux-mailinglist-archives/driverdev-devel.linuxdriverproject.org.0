Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BF516B879
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 05:18:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A887B86A35;
	Tue, 25 Feb 2020 04:18:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mRnkjLdVcX2g; Tue, 25 Feb 2020 04:18:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2942386935;
	Tue, 25 Feb 2020 04:18:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74E3D1BF349
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 04:18:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F3D785497
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 04:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6qy1VdoRVrp for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 04:18:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1731F81FB4
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 04:18:24 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id n7so6500300pfn.0
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 20:18:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NRBYkhMb22mEp+MVGakLjkmYeKMnuCIOgqRRUgI2w6E=;
 b=MafsoisNnGrXR2k3udQDyI37JQx+FuiaKF7B06apf4JqK3eJWOEdTwnAQGdwkIlHhZ
 z2J2ZMIaKvrySLzGK8JDof/mzrULuTpjDCNcaN1NFDGx9A/q0CdXLPDjiuSQfLWaHS34
 al0KQQDGpOhuckhytXeSjYuZiu4ykRNCIaSsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NRBYkhMb22mEp+MVGakLjkmYeKMnuCIOgqRRUgI2w6E=;
 b=Wr0MbAbvVaUzaehwrfEiQpqLsC4RaP2uhG+u1eQsLaLey2Cx+ArN22AUVFdymxLoxF
 OJUHdHHzT7ITRLdSaH/UnVyNCS3cJU6wM+mhGUE9Xw3ASIlkQ/pZs0eSBou3Po8Il6rU
 vxRhGH0JR8HFVB+HXKyOCkwo7kXCNRFtBkWQZya7+6eTmki7HC5DIZRxUKozRKVrp7ZY
 eOcIbbNmwkqbDXgepwtBSg5A2Vb5Dr+td/SNp4/8F0TthcGOqTnTUcpybboldODjCMUd
 fqygeuj0Acg9xXQI8OSw/VBMCl2dhY3Qby1K/6+vLs9B+etOxvwmYDjj6zcO3B/ARauL
 EVng==
X-Gm-Message-State: APjAAAWtyXcYH0IozImSbInLZrUwzxj58qWG2HbVg0WB7KVkm+k9Ztew
 v+Ae4HjqHSmECeYlRHeSTclmIw==
X-Google-Smtp-Source: APXvYqxoc5C4Ywa1CdypfSQJaVbshYCHuGVZBY2V92xNl9Sa+znkYksSHzdTv0e8oIpZFtocDy/fWA==
X-Received: by 2002:a63:8149:: with SMTP id t70mr57307164pgd.215.1582604303659; 
 Mon, 24 Feb 2020 20:18:23 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id i2sm989204pjs.21.2020.02.24.20.18.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 20:18:22 -0800 (PST)
Date: Mon, 24 Feb 2020 20:18:21 -0800
From: Kees Cook <keescook@chromium.org>
To: glider@google.com
Subject: Re: [PATCH 2/3] binder: do not initialize locals passed to
 copy_from_user()
Message-ID: <202002242017.0817EEA8@keescook>
References: <20200224153501.60040-1-glider@google.com>
 <20200224153501.60040-2-glider@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224153501.60040-2-glider@google.com>
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
Cc: devel@driverdev.osuosl.org, jannh@google.com, peterz@infradead.org,
 gregkh@linuxfoundation.org, arve@android.com, mingo@redhat.com,
 dvyukov@google.com, tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 24, 2020 at 04:35:00PM +0100, glider@google.com wrote:
> Certain copy_from_user() invocations in binder.c are known to
> unconditionally initialize locals before their first use, like e.g. in
> the following case:
> 
> 	struct binder_transaction_data tr;
> 	if (copy_from_user(&tr, ptr, sizeof(tr)))
> 		return -EFAULT;
> 
> In such cases enabling CONFIG_INIT_STACK_ALL leads to insertion of
> redundant locals initialization that the compiler fails to remove.
> To work around this problem till Clang can deal with it, we apply
> __do_not_initialize to local Binder structures.

It should be possible to write a Coccinelle script to identify all these
cases. (i.e. a single path from struct declaration to copy_from_user())
and apply the changes automatically. This script could be checked into
scripts/coccinelle/ to help keep these markings in sync...

-Kees

> 
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Alexander Potapenko <glider@google.com>
> ---
>  drivers/android/binder.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index a6b2082c24f8f..3c91d842ac704 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
>  
>  		case BC_TRANSACTION_SG:
>  		case BC_REPLY_SG: {
> -			struct binder_transaction_data_sg tr;
> +			struct binder_transaction_data_sg tr __do_not_initialize;
>  
>  			if (copy_from_user(&tr, ptr, sizeof(tr)))
>  				return -EFAULT;
> @@ -3799,7 +3799,7 @@ static int binder_thread_write(struct binder_proc *proc,
>  		}
>  		case BC_TRANSACTION:
>  		case BC_REPLY: {
> -			struct binder_transaction_data tr;
> +			struct binder_transaction_data tr __do_not_initialize;
>  
>  			if (copy_from_user(&tr, ptr, sizeof(tr)))
>  				return -EFAULT;
> @@ -4827,7 +4827,7 @@ static int binder_ioctl_write_read(struct file *filp,
>  	struct binder_proc *proc = filp->private_data;
>  	unsigned int size = _IOC_SIZE(cmd);
>  	void __user *ubuf = (void __user *)arg;
> -	struct binder_write_read bwr;
> +	struct binder_write_read bwr __do_not_initialize;
>  
>  	if (size != sizeof(struct binder_write_read)) {
>  		ret = -EINVAL;
> @@ -5039,7 +5039,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
>  		break;
>  	}
>  	case BINDER_SET_CONTEXT_MGR_EXT: {
> -		struct flat_binder_object fbo;
> +		struct flat_binder_object fbo __do_not_initialize;
>  
>  		if (copy_from_user(&fbo, ubuf, sizeof(fbo))) {
>  			ret = -EINVAL;
> @@ -5076,7 +5076,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
>  		break;
>  	}
>  	case BINDER_GET_NODE_INFO_FOR_REF: {
> -		struct binder_node_info_for_ref info;
> +		struct binder_node_info_for_ref info __do_not_initialize;
>  
>  		if (copy_from_user(&info, ubuf, sizeof(info))) {
>  			ret = -EFAULT;
> @@ -5095,7 +5095,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
>  		break;
>  	}
>  	case BINDER_GET_NODE_DEBUG_INFO: {
> -		struct binder_node_debug_info info;
> +		struct binder_node_debug_info info __do_not_initialize;
>  
>  		if (copy_from_user(&info, ubuf, sizeof(info))) {
>  			ret = -EFAULT;
> -- 
> 2.25.0.265.gbab2e86ba0-goog
> 

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
