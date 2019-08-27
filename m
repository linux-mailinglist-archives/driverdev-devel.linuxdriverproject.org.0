Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0B79F198
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 19:30:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC42686AE4;
	Tue, 27 Aug 2019 17:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eTMNs0p_TXlC; Tue, 27 Aug 2019 17:30:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60B4085B0A;
	Tue, 27 Aug 2019 17:30:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 961AC1BF2AF
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 17:30:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 911368560E
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 17:30:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nK3w3hwEHE5T for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 17:30:28 +0000 (UTC)
X-Greylist: delayed 00:07:35 by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9528E855D1
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 17:30:28 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id j5so15140ioj.8
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 10:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CY2NMNBTxuG1aU6sY60Tm+RXA+2zXdamK7QdNaH5xx8=;
 b=JPN5yJ0IF106yfz6zbog97Ogx0ogf1UMV+9/L4LJGmmNel1z2pTFMziCbI3ZZcl74u
 JU6lprDlmQWIbBZtlr7W057/88S513wjT/8Vo1FPbK36MUFZ+CnKOFclr69C4DPWpMh+
 LOWsbNUFC/WUpw2jgKiYmT65n/uCWhyZlYAqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CY2NMNBTxuG1aU6sY60Tm+RXA+2zXdamK7QdNaH5xx8=;
 b=NijdZgm8v4jgtVV+sdx4twWI0q+m6CVrxDyzaHeg7hxRIAlU8qviaumlFOtA0L2x1h
 MCWFGJs9jiK5A7Kc5VIVEPkLx8CrPjeQoprbJzvG3ryqCKXnPTfiOezoHbkScsAScLXp
 AThPs4FCwtJopbcBBZTma6+1JTkvLmLc3n523YOdK6f0w363Qp9Ib8vjZjCDecy8tuyx
 jk9Vv+pD7JclKWbY6cbVEhsk1aGYMZUyfNRxjHvvwZa/jMYntpDjgBKZ6pJN/81yXRyj
 TYdYPGSpTl3LfTyhnXaD89gt3Iv6UUAyJDEwJQmrhJqmHg30GhgYNluuxZ14YVi5LZC2
 kH4A==
X-Gm-Message-State: APjAAAV4o+EDimUshRn+xevdCkvCGLB1rwBU1oKTxEi9SZDERnToAkrR
 qHNwPe6GDdcW7tdAgpcIOmEoujwGFHc=
X-Google-Smtp-Source: APXvYqwv1QDOjz7ed0+/sB39ShuBvvc4dnMMdX+nlHAgdnnYZwcpyQnhLtx02L76+UEQRVwOAmvrCQ==
X-Received: by 2002:a6b:ba54:: with SMTP id k81mr3941263iof.143.1566926572692; 
 Tue, 27 Aug 2019 10:22:52 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id q74sm383139iod.72.2019.08.27.10.22.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Aug 2019 10:22:51 -0700 (PDT)
Subject: Re: [PATCH] staging: greybus: add missing includes
To: Rui Miguel Silva <rui.silva@linaro.org>, Johan Hovold <johan@kernel.org>, 
 Alex Elder <elder@kernel.org>
References: <20190827155302.25704-1-rui.silva@linaro.org>
From: Alex Elder <elder@ieee.org>
Message-ID: <c73e68a7-2a70-724c-0b70-f922682828c3@ieee.org>
Date: Tue, 27 Aug 2019 12:22:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827155302.25704-1-rui.silva@linaro.org>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/27/19 10:53 AM, Rui Miguel Silva wrote:
> Before moving greybus core out of staging and moving header files to
> include/linux some greybus header files were missing the necessary
> includes. This would trigger compilation faillures with some example
> errors logged bellow for with CONFIG_KERNEL_HEADER_TEST=y.
> 
> So, add the necessary headers to compile clean before relocating the
> header files.

This looks good to me; I trust you compiled it.  There is one extra
blank line you added in "operation.h" but that's not important.

I don't think what I've done here serves as a real review, so:

Acked-by: Alex Elder <elder@kernel.org>

					-Alex

> 
> ./include/linux/greybus/hd.h:23:50: error: unknown type name 'u16'
>   int (*cport_disable)(struct gb_host_device *hd, u16 cport_id); ^~~
> ./include/linux/greybus/greybus_protocols.h:1314:2: error: unknown type name '__u8'
>   __u8 data[0];
>   ^~~~
> ./include/linux/greybus/hd.h:24:52: error: unknown type name 'u16'
>   int (*cport_connected)(struct gb_host_device *hd, u16 cport_id); ^~~
> ./include/linux/greybus/hd.h:25:48: error: unknown type name 'u16'
>   int (*cport_flush)(struct gb_host_device *hd, u16 cport_id); ^~~
> ./include/linux/greybus/hd.h:26:51: error: unknown type name 'u16'
>   int (*cport_shutdown)(struct gb_host_device *hd, u16 cport_id, ^~~
> ./include/linux/greybus/hd.h:27:5: error: unknown type name 'u8'
> u8 phase, unsigned int timeout);
>      ^~
> ./include/linux/greybus/hd.h:28:50: error: unknown type name 'u16'
>   int (*cport_quiesce)(struct gb_host_device *hd, u16 cport_id, ^~~
> ./include/linux/greybus/hd.h:29:5: error: unknown type name 'size_t'
>      size_t peer_space, unsigned int timeout);
>      ^~~~~~
> ./include/linux/greybus/hd.h:29:5: note: 'size_t' is defined in header '<stddef.h>'; did you forget to '#include <stddef.h>'?
> ./include/linux/greybus/hd.h:1:1:
> +#include <stddef.h>
>  /* SPDX-License-Identifier: GPL-2.0 */
> ./include/linux/greybus/hd.h:29:5:
>      size_t peer_space, unsigned int timeout);
>      ^~~~~~
> ./include/linux/greybus/hd.h:30:48: error: unknown type name 'u16'
>   int (*cport_clear)(struct gb_host_device *hd, u16 cport_id); ^~~
> ./include/linux/greybus/hd.h:32:49: error: unknown type name 'u16'
>   int (*message_send)(struct gb_host_device *hd, u16 dest_cport_id, ^~~
> ./include/linux/greybus/hd.h:33:32: error: unknown type name 'gfp_t'
> struct gb_message *message, gfp_t gfp_mask); ^~~~~
> ./include/linux/greybus/hd.h:35:55: error: unknown type name 'u16'
>   int (*latency_tag_enable)(struct gb_host_device *hd, u16 cport_id);
> 
> Signed-off-by: Rui Miguel Silva <rmfrfs@gmail.com>
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  drivers/staging/greybus/bundle.h            | 3 +++
>  drivers/staging/greybus/connection.h        | 3 +++
>  drivers/staging/greybus/control.h           | 3 +++
>  drivers/staging/greybus/greybus_manifest.h  | 3 +++
>  drivers/staging/greybus/greybus_protocols.h | 2 ++
>  drivers/staging/greybus/hd.h                | 3 +++
>  drivers/staging/greybus/interface.h         | 3 +++
>  drivers/staging/greybus/manifest.h          | 2 ++
>  drivers/staging/greybus/module.h            | 3 +++
>  drivers/staging/greybus/operation.h         | 5 +++++
>  drivers/staging/greybus/svc.h               | 3 +++
>  11 files changed, 33 insertions(+)
> 
> diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
> index 8734d2055657..69fe5610bb42 100644
> --- a/drivers/staging/greybus/bundle.h
> +++ b/drivers/staging/greybus/bundle.h
> @@ -9,7 +9,10 @@
>  #ifndef __BUNDLE_H
>  #define __BUNDLE_H
>  
> +#include <linux/device.h>
>  #include <linux/list.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/types.h>
>  
>  #define	BUNDLE_ID_NONE	U8_MAX
>  
> diff --git a/drivers/staging/greybus/connection.h b/drivers/staging/greybus/connection.h
> index 5ca3befc0636..d59b7fc1de3e 100644
> --- a/drivers/staging/greybus/connection.h
> +++ b/drivers/staging/greybus/connection.h
> @@ -9,8 +9,11 @@
>  #ifndef __CONNECTION_H
>  #define __CONNECTION_H
>  
> +#include <linux/bits.h>
>  #include <linux/list.h>
>  #include <linux/kfifo.h>
> +#include <linux/kref.h>
> +#include <linux/workqueue.h>
>  
>  #define GB_CONNECTION_FLAG_CSD		BIT(0)
>  #define GB_CONNECTION_FLAG_NO_FLOWCTRL	BIT(1)
> diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
> index 3a29ec05f631..0d4e2ed20fe4 100644
> --- a/drivers/staging/greybus/control.h
> +++ b/drivers/staging/greybus/control.h
> @@ -9,6 +9,9 @@
>  #ifndef __CONTROL_H
>  #define __CONTROL_H
>  
> +#include <linux/device.h>
> +#include <linux/types.h>
> +
>  struct gb_control {
>  	struct device dev;
>  	struct gb_interface *intf;
> diff --git a/drivers/staging/greybus/greybus_manifest.h b/drivers/staging/greybus/greybus_manifest.h
> index 2cec5cf7a846..1cb60af4febd 100644
> --- a/drivers/staging/greybus/greybus_manifest.h
> +++ b/drivers/staging/greybus/greybus_manifest.h
> @@ -14,6 +14,9 @@
>  #ifndef __GREYBUS_MANIFEST_H
>  #define __GREYBUS_MANIFEST_H
>  
> +#include <linux/bits.h>
> +#include <linux/types.h>
> +
>  enum greybus_descriptor_type {
>  	GREYBUS_TYPE_INVALID		= 0x00,
>  	GREYBUS_TYPE_INTERFACE		= 0x01,
> diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
> index ddc73f10eb22..e883edb50ed8 100644
> --- a/drivers/staging/greybus/greybus_protocols.h
> +++ b/drivers/staging/greybus/greybus_protocols.h
> @@ -53,6 +53,8 @@
>  #ifndef __GREYBUS_PROTOCOLS_H
>  #define __GREYBUS_PROTOCOLS_H
>  
> +#include <linux/types.h>
> +
>  /* Fixed IDs for control/svc protocols */
>  
>  /* SVC switch-port device ids */
> diff --git a/drivers/staging/greybus/hd.h b/drivers/staging/greybus/hd.h
> index 6cf024a20a58..7be5c065e7c4 100644
> --- a/drivers/staging/greybus/hd.h
> +++ b/drivers/staging/greybus/hd.h
> @@ -9,6 +9,9 @@
>  #ifndef __HD_H
>  #define __HD_H
>  
> +#include <linux/device.h>
> +#include <linux/types.h>
> +
>  struct gb_host_device;
>  struct gb_message;
>  
> diff --git a/drivers/staging/greybus/interface.h b/drivers/staging/greybus/interface.h
> index 1c00c5bb3ec9..f5ab937348f6 100644
> --- a/drivers/staging/greybus/interface.h
> +++ b/drivers/staging/greybus/interface.h
> @@ -9,6 +9,9 @@
>  #ifndef __INTERFACE_H
>  #define __INTERFACE_H
>  
> +#include <linux/device.h>
> +#include <linux/types.h>
> +
>  enum gb_interface_type {
>  	GB_INTERFACE_TYPE_INVALID = 0,
>  	GB_INTERFACE_TYPE_UNKNOWN,
> diff --git a/drivers/staging/greybus/manifest.h b/drivers/staging/greybus/manifest.h
> index f3c95a255631..b101af4c2c72 100644
> --- a/drivers/staging/greybus/manifest.h
> +++ b/drivers/staging/greybus/manifest.h
> @@ -9,6 +9,8 @@
>  #ifndef __MANIFEST_H
>  #define __MANIFEST_H
>  
> +#include <linux/types.h>
> +
>  struct gb_interface;
>  bool gb_manifest_parse(struct gb_interface *intf, void *data, size_t size);
>  
> diff --git a/drivers/staging/greybus/module.h b/drivers/staging/greybus/module.h
> index b1ebcc6636db..722c344a3a5a 100644
> --- a/drivers/staging/greybus/module.h
> +++ b/drivers/staging/greybus/module.h
> @@ -9,6 +9,9 @@
>  #ifndef __MODULE_H
>  #define __MODULE_H
>  
> +#include <linux/device.h>
> +#include <linux/types.h>
> +
>  struct gb_module {
>  	struct device dev;
>  	struct gb_host_device *hd;
> diff --git a/drivers/staging/greybus/operation.h b/drivers/staging/greybus/operation.h
> index 40b7b02fff88..0424212797b8 100644
> --- a/drivers/staging/greybus/operation.h
> +++ b/drivers/staging/greybus/operation.h
> @@ -10,6 +10,11 @@
>  #define __OPERATION_H
>  
>  #include <linux/completion.h>
> +#include <linux/kref.h>
> +#include <linux/timer.h>
> +#include <linux/types.h>
> +#include <linux/workqueue.h>
> +
>  
>  struct gb_operation;
>  
> diff --git a/drivers/staging/greybus/svc.h b/drivers/staging/greybus/svc.h
> index ad01783bac9c..c1c874bcb016 100644
> --- a/drivers/staging/greybus/svc.h
> +++ b/drivers/staging/greybus/svc.h
> @@ -9,6 +9,9 @@
>  #ifndef __SVC_H
>  #define __SVC_H
>  
> +#include <linux/device.h>
> +#include <linux/types.h>
> +
>  #define GB_SVC_CPORT_FLAG_E2EFC		BIT(0)
>  #define GB_SVC_CPORT_FLAG_CSD_N		BIT(1)
>  #define GB_SVC_CPORT_FLAG_CSV_N		BIT(2)
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
