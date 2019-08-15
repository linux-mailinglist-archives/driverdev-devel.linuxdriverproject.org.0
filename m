Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2BC8F0F0
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 18:40:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E519986958;
	Thu, 15 Aug 2019 16:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9pR8MXsUkrkY; Thu, 15 Aug 2019 16:40:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C89485785;
	Thu, 15 Aug 2019 16:40:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 466311BF3A6
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 16:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3DCC7883AC
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 16:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gelAR0XmIoVo for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 16:40:18 +0000 (UTC)
X-Greylist: delayed 00:08:01 by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8C54C82731
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 16:40:18 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id i2so1277627plt.1
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 09:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=e5AR81pVrLpSOkNr7/eYssnE7D9iHMmdgw/0YazKbLk=;
 b=BP+2uBTqPhkx+piVq9TF3dGBmo3jHkuJ+wMRP2Ui/bokbaIh0Vg5Adz/5MbS45QDKd
 j0WRkqK6Q+z7BqfoXAf9sBzbU4N+WhobFjNL4dJUmTmdcf6kSETk6jWBYs4PUw5i8HXH
 n5X01pxkbnMYus7IbvZ3lMcIt4i8HpBZLLXrg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=e5AR81pVrLpSOkNr7/eYssnE7D9iHMmdgw/0YazKbLk=;
 b=lRnmCUyrM3mTZgJnj7uT2n3NHHzupLblH/usp/wVD3ms3LmU1+3QtZ4BhTL4kvMhwB
 t4rCTyC6GxUopjnIkP7X7xLIbKJoMehgX2QSXtqtDCN6GyCbMSBjBlDmNVpjnIlidMxX
 5zHbADPTEcHpEsy4/W+Xi3fWY8Mmc+WqqK7g6VlRmwpP/s2z39szwWQFrH+Wa09vWgMo
 NsVp4eNL27VLcWhYGkAi/uo9Vl5yOsytNHBV/WdbUAAscI73go0u9tmd5ldi3gglCuva
 F1AGr2bCVPXlA89Ofn1ID3JjKh3Sum+xTImuNX7erCkUmXT6NM3FeBlL7NgARLQcfZHe
 Lkvw==
X-Gm-Message-State: APjAAAV9B2RjVhniIGIPDk98J5dfxHYjAJjO3wKRUdH1gEttFTXlIaYI
 ZVKb/HVbuWwCwpojClsZh0ncfA==
X-Google-Smtp-Source: APXvYqxbKVoQ2qS9wmLpyTLXKjkjdL92B8ZELrIIY7OLzcGJImUb56OlBZSn6Y0vBcYiZkQmIpVxuA==
X-Received: by 2002:a17:902:7286:: with SMTP id
 d6mr5095323pll.61.1565886737439; 
 Thu, 15 Aug 2019 09:32:17 -0700 (PDT)
Received: from localhost ([172.19.216.18])
 by smtp.gmail.com with ESMTPSA id p5sm3442540pfg.184.2019.08.15.09.32.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 09:32:16 -0700 (PDT)
Date: Thu, 15 Aug 2019 12:31:59 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Hridya Valsaraju <hridya@google.com>
Subject: Re: [PATCH v3 2/2] binder: Validate the default binderfs device names.
Message-ID: <20190815163159.GC75595@google.com>
References: <20190808222727.132744-1-hridya@google.com>
 <20190808222727.132744-3-hridya@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808222727.132744-3-hridya@google.com>
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

On Thu, Aug 08, 2019 at 03:27:26PM -0700, Hridya Valsaraju wrote:
> Length of a binderfs device name cannot exceed BINDERFS_MAX_NAME.
> This patch adds a check in binderfs_init() to ensure the same
> for the default binder devices that will be created in every
> binderfs instance.
> 
> Co-developed-by: Christian Brauner <christian.brauner@ubuntu.com>
> Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> Signed-off-by: Hridya Valsaraju <hridya@google.com>
> ---

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

thanks,

 - Joel

>  drivers/android/binderfs.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> index aee46dd1be91..55c5adb87585 100644
> --- a/drivers/android/binderfs.c
> +++ b/drivers/android/binderfs.c
> @@ -570,6 +570,18 @@ static struct file_system_type binder_fs_type = {
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
>  
>  	/* Allocate new major number for binderfs. */
>  	ret = alloc_chrdev_region(&binderfs_dev, 0, BINDERFS_MAX_MINOR,
> -- 
> 2.22.0.770.g0f2c4a37fd-goog
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
