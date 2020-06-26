Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EE820B3B2
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 16:37:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 88F09203AC;
	Fri, 26 Jun 2020 14:37:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9yKULVqTbuUx; Fri, 26 Jun 2020 14:37:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 824E6232A7;
	Fri, 26 Jun 2020 14:37:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 253771BF3DE
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 21BAD882BA
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:37:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id loXS8WxNO0G7 for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 14:37:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net
 [194.109.24.29])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E764B87B48
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 14:37:00 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id opTIjNoEl0MRaopTMjNIdm; Fri, 26 Jun 2020 16:36:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1593182218; bh=eEXatkmLWv6Cn91mrDmo2zkvbJBl1/6cb6rg4xzWyxc=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=UhLStb8BHj9s4skZajutHeZlGXrISp1NAUJlOJ0QlCYjg8FM42BsrAWI6DD3sJ7+s
 6nrsVLgBsBz/WvyVrNn8f6Dg5skqIb+hvFl8tt74eOXuBgyxssCJFndWNvrRJSUxTv
 9Z0KkptYCbJ/LLrjuIKMflk4aLroF9gVG0VQRXGHDNUEfJJ+AgdIa2bBNnZEBqGllt
 CTsrwSTFPYVvMvm28JxMv8xJPAUn4t4OLHNY+htFw4Ily8GK/Ul1/BGqz+s6iEqdBH
 YJT6v2sVC7D0e72gUzuwbYyBUGZPOQD9qtjEIKvTq7ugP3WK+oA4h48gpa78KC/1fZ
 IwYD7zwiHfIMA==
Subject: Re: [PATCH] staging: media: usbvision: removing prohibited space
 before ',' (ctx:WxW)
To: B K Karthik <bkkarthik@pesu.pes.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20200626143205.xns6nwggskssujao@pesu-pes-edu>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <a9efda13-4425-8cb0-5854-8421f6c14181@xs4all.nl>
Date: Fri, 26 Jun 2020 16:36:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200626143205.xns6nwggskssujao@pesu-pes-edu>
Content-Language: en-US
X-CMAE-Envelope: MS4wfIABrg0rj/3IAf1UbDBBrjdwQxRn5BzdsdIYziZ7B2iCppG1JK7WTE2dwMLgs6AthjTJuuryUrWsqyuLryCpWLJiBEWKLnXOIfa96vYuN/vdQ1qrJb94
 7QMhRe8YNRjJim+NhxI7F8PYFpoyfXFJDgaj7luf2EBe4yxG3UPahJVsCZvRHO5GgjdFLgLn3KetegxEK/SligwOdJWMiLqVS4wFDvuZ30PO3501NkQJK+0m
 GVyaejVoBvEsGEFuGZqQEkfcJdPhup497w1bdfT7JPjesuhlV4b3aFsUqehaczLBGBk2GRN/u99RtzodAKduQPyp4OXaBQe36u9Twjav0l/Q7OCiPweoux4o
 whRWnkeo
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

On 26/06/2020 16:32, B K Karthik wrote:
> fixing ERROR: space prohibited before that ',' (ctx:WxW)
> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>

usbvision is another driver that is scheduled for removal by the end of the year,
so I won't apply this patch.

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
>  		if (i2c_debug & (level)) \
>  			printk(KERN_INFO KBUILD_MODNAME ":[%s:%d] " fmt, \
> -				__func__, __LINE__ , ## args); \
> +				__func__, __LINE__, ## args); \

Actually, older (buggy) gcc compiler needed a space there, if memory serves.

Regards,

	Hans

>  	}
>  
>  static int usbvision_i2c_write(struct usb_usbvision *usbvision, unsigned char addr, char *buf,
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
