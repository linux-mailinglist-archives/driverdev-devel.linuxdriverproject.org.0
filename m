Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3770F5A65E2
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Aug 2022 16:04:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4292F60FA9;
	Tue, 30 Aug 2022 14:04:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4292F60FA9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Larqq-hurRnk; Tue, 30 Aug 2022 14:03:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4C5260776;
	Tue, 30 Aug 2022 14:03:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4C5260776
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC0641BF5B5
 for <devel@linuxdriverproject.org>; Tue, 30 Aug 2022 14:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 970A260FA9
 for <devel@linuxdriverproject.org>; Tue, 30 Aug 2022 14:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 970A260FA9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V8TfYNO5C4qC for <devel@linuxdriverproject.org>;
 Tue, 30 Aug 2022 14:03:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2639760776
Received: from netrider.rowland.org (netrider.rowland.org [192.131.102.5])
 by smtp3.osuosl.org (Postfix) with SMTP id 2639760776
 for <devel@driverdev.osuosl.org>; Tue, 30 Aug 2022 14:03:48 +0000 (UTC)
Received: (qmail 158045 invoked by uid 1000); 30 Aug 2022 10:03:47 -0400
Date: Tue, 30 Aug 2022 10:03:47 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Hu Xiaoying <huxiaoying@kylinos.cn>
Subject: Re: [PATCH] usb: Improves USB2.0 write performance
Message-ID: <Yw4Yw5yXgybl9j6J@rowland.harvard.edu>
References: <20220830084325.752655-1-huxiaoying@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220830084325.752655-1-huxiaoying@kylinos.cn>
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
Cc: devel@driverdev.osuosl.org, usb-storage@lists.one-eyed-alien.net,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hu Xiaoying <huxiaoying@gmail.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 30, 2022 at 04:43:25PM +0800, Hu Xiaoying wrote:
> USB external storage device(0x0b05:1932), use gnome-disk-utility tools
> to test usb write  < 30MB/s. if does not to load module of uas for this device
> , can increase the write speed from 20MB/s to more than 40MB/s.
> 
> Signed-off-by: Hu Xiaoying <huxiaoying@gmail.com>

This email address "@gmail.com" is different from the address you used 
when you submitted the patch "@kylinos.cn".  The two addresses must be 
the same.

> ---

You should put here (just after the "---" line) a description of how 
this patch version is different from all the earlier versions.  Do that 
and submit it as [PATCH v4], and make sure you explain how it is 
different from versions 1, 2, and 3.

There are lots of examples of patches like this in the mailing list 
archives.  Look at some of them to see what they do.

Alan Stern

>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 4051c8cd0cd8..3925c7c67915 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_IGNORE_UAS),
>  
> +/* Reported-by: Tom Hu <huxiaoying@gmail.com> */
> +UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
> +		"ASUS",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /* Reported-by: David Webb <djw@noc.ac.uk> */
>  UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
>  		"Seagate",
> -- 
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
