Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CADC1B1359
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 19:41:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44495862A5;
	Mon, 20 Apr 2020 17:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c5B4_dV7SACB; Mon, 20 Apr 2020 17:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61EFD84417;
	Mon, 20 Apr 2020 17:41:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 92CC11BF3BD
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 17:41:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8F35A86BDB
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 17:41:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jHkni-7zRU3X for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 17:41:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CF27D86B53
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 17:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=KkrKO03Oz+eH9z+dT8E9ZJbulxxKNlgAJTlLOtA18mo=; b=WYs/fhY1sJpRzR+soY1bKy3azT
 JORQoz/MsXA0bouA2myFJEfSBO/95NFOfbIYX3bm9NYgwGDbnWqrDYQ3+xd8qNBC/OM0EOsNJZNqQ
 2Hl3VB1MhfCdHCpl6jaBSLjmabWrjB1cv4Mf5BgrPseDgF7+uDkU0lvDXAGWR3sX6rz7Jyc+crXfa
 FRZUQBLXfs7yfYFVfkOU22uus1IiWzmS8IkZzuTP4harK1qAVIyrvtJ4mvGnOnH5/bUzjqp3VfwOc
 bFMTzx260XN2Zv3zSH4jmZ0UKz5+e+OaEsUT+qhXd798+62wxgfqYONbb2xd7Yvxn3nThxP0FU9nV
 T7ZOMqJQ==;
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaQE-0004Qm-4u; Mon, 20 Apr 2020 17:41:30 +0000
Subject: Re: [PATCH] media: usbvision: depends on USB
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
References: <a0ed60978af23b398d128d1075a7961ef57f0694.1587401420.git.mchehab+huawei@kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <7034ba29-035c-6f0b-e553-68a369e8aaf8@infradead.org>
Date: Mon, 20 Apr 2020 10:41:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <a0ed60978af23b398d128d1075a7961ef57f0694.1587401420.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 YueHaibing <yuehaibing@huawei.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 4/20/20 9:50 AM, Mauro Carvalho Chehab wrote:
> When built with:
> 	CONFIG_USB=m
> 	CONFIG_VIDEO_USBVISION=y
> 
> It causes ld errors:
> 
> ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_write_reg_irq':
> usbvision-core.c:(.text+0x8a4): undefined reference to `usb_submit_urb'
> ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_isoc_irq':
> usbvision-core.c:(.text+0x2ee8): undefined reference to `usb_submit_urb'
> ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_read_reg':
> usbvision-core.c:(.text+0x30ad): undefined reference to `usb_control_msg'
> ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_write_reg':
> usbvision-core.c:(.text+0x3178): undefined reference to `usb_control_msg'
> ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_set_output':
> usbvision-core.c:(.text+0x344e): undefined reference to `usb_control_msg'
> ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_set_input':
> usbvision-core.c:(.text+0x3b9b): undefined reference to `usb_control_msg'
> ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_setup':
> usbvision-core.c:(.text+0x4009): undefined reference to `usb_control_msg'
> ld: drivers/staging/media/usbvision/usbvision-core.o:usbvision-core.c:(.text+0x417f): more undefined references to `usb_control_msg' follow
> ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_set_alternate':
> usbvision-core.c:(.text+0x4518): undefined reference to `usb_set_interface'
> ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_init_isoc':
> usbvision-core.c:(.text+0x4673): undefined reference to `usb_alloc_urb'
> ld: usbvision-core.c:(.text+0x46a5): undefined reference to `usb_alloc_coherent'
> ld: usbvision-core.c:(.text+0x4765): undefined reference to `usb_submit_urb'
> ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_stop_isoc':
> usbvision-core.c:(.text+0x4837): undefined reference to `usb_kill_urb'
> ld: usbvision-core.c:(.text+0x485f): undefined reference to `usb_free_coherent'
> ld: usbvision-core.c:(.text+0x4874): undefined reference to `usb_free_urb'
> ld: usbvision-core.c:(.text+0x48f1): undefined reference to `usb_set_interface'
> ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_release':
> usbvision-video.c:(.text+0x1a8a): undefined reference to `usb_free_urb'
> ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_disconnect':
> usbvision-video.c:(.text+0x1b74): undefined reference to `usb_put_dev'
> ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_radio_close':
> usbvision-video.c:(.text+0x1c89): undefined reference to `usb_set_interface'
> ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_probe':
> usbvision-video.c:(.text+0x1e4b): undefined reference to `usb_get_dev'
> ld: usbvision-video.c:(.text+0x20e1): undefined reference to `usb_alloc_urb'
> ld: usbvision-video.c:(.text+0x2797): undefined reference to `usb_put_dev'
> ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_exit':
> usbvision-video.c:(.exit.text+0x37): undefined reference to `usb_deregister'
> ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_init':
> usbvision-video.c:(.init.text+0xf9): undefined reference to `usb_register_driver'
> ld: drivers/staging/media/usbvision/usbvision-i2c.o: in function `usbvision_i2c_write':
> usbvision-i2c.c:(.text+0x2f4): undefined reference to `usb_control_msg'
> 
> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

> ---
>  drivers/staging/media/usbvision/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/usbvision/Kconfig b/drivers/staging/media/usbvision/Kconfig
> index c6e1afb5ac48..1c7da2a2caac 100644
> --- a/drivers/staging/media/usbvision/Kconfig
> +++ b/drivers/staging/media/usbvision/Kconfig
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config VIDEO_USBVISION
>  	tristate "USB video devices based on Nogatech NT1003/1004/1005 (Deprecated)"
> -	depends on MEDIA_USB_SUPPORT && I2C && VIDEO_V4L2
> +	depends on MEDIA_USB_SUPPORT && I2C && VIDEO_V4L2 && USB
>  	select VIDEO_TUNER
>  	select VIDEO_SAA711X if MEDIA_SUBDRV_AUTOSELECT
>  	help
> 

thanks.
-- 
~Randy
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
