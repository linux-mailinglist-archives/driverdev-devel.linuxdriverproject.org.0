Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E14A220B5A9
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 18:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4737986E6F;
	Fri, 26 Jun 2020 16:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ihbqCyIPPZbp; Fri, 26 Jun 2020 16:09:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 462908763B;
	Fri, 26 Jun 2020 16:09:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93DC71BF291
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 16:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D55222091
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 16:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yO2BnuGTYI+F for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 16:09:52 +0000 (UTC)
X-Greylist: delayed 00:26:50 by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E236204C8
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 16:09:52 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id n24so10884138lji.10
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 09:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=8sG3eMJyOg9orr/8+zbkmc8eQOjbgUIfbSHVDMJ1IF4=;
 b=HUCWqcVjbUx6weWEQDENSiFokpN6mUJD4S9osoh5Co0e8bpB6jv5F/JapF4s2wtcLd
 dSmd/FuV1QTsnQWSifHtgFuYJf3dR95nAYTNl9OMQXrUg+mw/r0YkguYclyxXsMw/yCN
 1Wg9SlRMMBAFPRxSOLSMeeSaN5GmdzJvxYTLd0D92RL18rf6naRWi4z5dZiN3+OsbKUL
 oiokOLkuu8SA0p9lELJvgQILxLUfujh0Qaow4FymH38LsuaNyH2pBWMR0WE06HzOYb4/
 2/c2q/n8iwBQq0KClI0GZ3I7M3K6yzybNwX5FRYFMS0jw1bI8oQi/UGRdG10OxGB5whR
 QuGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=8sG3eMJyOg9orr/8+zbkmc8eQOjbgUIfbSHVDMJ1IF4=;
 b=H2zqWCm4TzfBoi3u+EGd9DqN0I/4jg/H0isO74gg5EtdhQKg6f0uxcZRXlj67+CJBq
 ZfUapRZYJckU+iikzWHxeV24tnVHOBIrTySw4FU4FPpxfalSazaDuE77HA1BZErxttmf
 Ie0hlY5ZV7HK2uZ9icLH7hMrcWhXR30RjLMbU9sp0xv6D02G5qyckM9xtOb4QFAjAnB2
 zACuqeERbU7suYH3HOmCSqhK9kDrhR8Nka32gY89McFFsjYu8dWdI9kksocg4m1oYZvG
 0/AIHBRLlrBtbo2k+yg9RrwVpuYgEFfOZvQxUJwxfkZRHTKXWF3HQP8mLAnl8xNSNJyJ
 LOHg==
X-Gm-Message-State: AOAM531BZZGAMre0rCy7uBFmook17FP8/38DG7e6KdBihbNxcg4FFBpb
 gNlEPx53+98yFuVdTYWEGA/yxprsg9YTYtzYJKHJzzYHM6TVSw==
X-Google-Smtp-Source: ABdhPJw/h4f9GIEpyJOz+1JLvx2y2ujVaOQE1ia/wcPgivU8F14uArVoSxx6LnAZLkO1/Va7N/QJ/u6FzQy+f+6hUyw=
X-Received: by 2002:a2e:9bc6:: with SMTP id w6mr1843523ljj.429.1593186180655; 
 Fri, 26 Jun 2020 08:43:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200626143205.xns6nwggskssujao@pesu-pes-edu>
In-Reply-To: <20200626143205.xns6nwggskssujao@pesu-pes-edu>
From: B K KARTHIK PES2201800185STUDENT ECE DeptPESU EC Campus
 <bkkarthik@pesu.pes.edu>
Date: Fri, 26 Jun 2020 11:42:49 -0400
Message-ID: <CAAhDqq0tSftPxMWGeVy3mp4DGDN3o0uQwTqVbjYUwjqzWpbibQ@mail.gmail.com>
Subject: Re: [PATCH] staging: media: usbvision: removing prohibited space
 before ',' (ctx:WxW)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Oh, I'm sorry but wouldn't it be helpful if we had a file that lists
all drivers that are scheduled for removal? I personally feel that it
would help out all kernel newbies.
I've been trying to complete task10 in the eudyptula challenge, and
the patches either get thrown out by greg's patch-bot, or the driver
is scheduled for removal.

Please do think about adding a file that lists all drivers scheduled
for removal.

I apologize if my message was hurtful or disrespectful in any way.

Thank you for reading this message,
Karthik

On Fri, Jun 26, 2020 at 10:32 AM B K Karthik <bkkarthik@pesu.pes.edu> wrote:
>
> fixing ERROR: space prohibited before that ',' (ctx:WxW)
>
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  drivers/staging/media/usbvision/usbvision-i2c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/usbvision/usbvision-i2c.c b/drivers/staging/media/usbvision/usbvision-i2c.c
> index 6e4df3335b1b..010ad03c6ec1 100644
> --- a/drivers/staging/media/usbvision/usbvision-i2c.c
> +++ b/drivers/staging/media/usbvision/usbvision-i2c.c
> @@ -32,7 +32,7 @@ MODULE_PARM_DESC(i2c_debug, "enable debug messages [i2c]");
>  #define PDEBUG(level, fmt, args...) { \
>                 if (i2c_debug & (level)) \
>                         printk(KERN_INFO KBUILD_MODNAME ":[%s:%d] " fmt, \
> -                               __func__, __LINE__ , ## args); \
> +                               __func__, __LINE__, ## args); \
>         }
>
>  static int usbvision_i2c_write(struct usb_usbvision *usbvision, unsigned char addr, char *buf,
> --
> 2.20.1
>


-- 
B K Karthik

9535399755
karthik.oncreate.team
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
