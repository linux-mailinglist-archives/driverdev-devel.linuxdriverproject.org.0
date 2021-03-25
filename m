Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4AC348ED1
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Mar 2021 12:20:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A1BA84A11;
	Thu, 25 Mar 2021 11:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fYnRfozpml9; Thu, 25 Mar 2021 11:20:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE40284A06;
	Thu, 25 Mar 2021 11:20:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 32A8C1BF407
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 11:19:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2220260727
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 11:19:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=163.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3j3Ek_c45HGt for <devel@linuxdriverproject.org>;
 Thu, 25 Mar 2021 11:19:52 +0000 (UTC)
X-Greylist: delayed 00:16:20 by SQLgrey-1.8.0
Received: from m12-17.163.com (m12-17.163.com [220.181.12.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0B5456069D
 for <devel@driverdev.osuosl.org>; Thu, 25 Mar 2021 11:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Date:From:Subject:Message-ID:MIME-Version; bh=k4Ptp
 EGNN7bW759zYtZmyz/dSMjxWWS3I+SUGjibQTU=; b=IkQG7A3N3vDEmYZL688Qc
 2MlLgDYbG2lh1Q5yeHRdwcPepGPnMnqKUioKn9JrLq8EwWi1i9Jz5SCho0UgCwEU
 S1PycnayGro9urtQg/QLNSPgYcjSIwRzqRLe5WtTWVxb+hmNgWwQQbsel53y4SeQ
 mby13qfAUK1yFJy4XbI1Uo=
Received: from localhost (unknown [218.94.48.178])
 by smtp13 (Coremail) with SMTP id EcCowAAXZBH_bVxgjpGKrw--.47645S2;
 Thu, 25 Mar 2021 19:03:28 +0800 (CST)
Date: Thu, 25 Mar 2021 19:03:39 +0800
From: Jian Dong <dj0227@163.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH]  staging: greybus: fix fw is NULL but dereferenced
Message-ID: <20210325190339.00007921@163.com>
In-Reply-To: <YFxl8hyx7murtlzW@kroah.com>
References: <1616667566-58997-1-git-send-email-dj0227@163.com>
 <YFxl8hyx7murtlzW@kroah.com>
Organization: yulong
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; i686-w64-mingw32)
MIME-Version: 1.0
X-CM-TRANSID: EcCowAAXZBH_bVxgjpGKrw--.47645S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZFy8Wry8Xr4xWF17XrWUArb_yoW8ury5pF
 WxJan2ka1rXa4Ygas8ZFWDZryFg3yxC3yxG348K3s5tr15ZF9YqFyUtFy5WF18ArZ3Ja15
 Xanagr9Yv3W2yFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07bjlksUUUUU=
X-Originating-IP: [218.94.48.178]
X-CM-SenderInfo: dgmqjjqx6rljoofrz/xtbBEABg3VUMV7OYlQAAsd
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vireshk@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Jian Dong <dongjian@yulong.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 25 Mar 2021 11:29:06 +0100
Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 25, 2021 at 06:19:26PM +0800, Jian Dong wrote:
> > From: Jian Dong <dongjian@yulong.com>
> > 
> >  fixes coccicheck Error:
> > 
> >  drivers/staging/greybus/bootrom.c:301:41-45: ERROR:
> >  fw is NULL but dereferenced.
> > 
> >  if procedure goto label directly, ret will be nefative, so the fw
> > is NULL and the if(condition) end with dereferenced fw. let's fix
> > it.  
> 
> Why is this all indented a space?
this maybe caused by my terminal, I will take notice next time.
> 
> > 
> > Signed-off-by: Jian Dong <dongjian@yulong.com>
> > ---
> >  drivers/staging/greybus/bootrom.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/greybus/bootrom.c
> > b/drivers/staging/greybus/bootrom.c index a8efb86..0439efa 100644
> > --- a/drivers/staging/greybus/bootrom.c
> > +++ b/drivers/staging/greybus/bootrom.c
> > @@ -246,7 +246,7 @@ static int gb_bootrom_get_firmware(struct
> > gb_operation *op) struct gb_bootrom_get_firmware_response
> > *firmware_response; struct device *dev =
> > &op->connection->bundle->dev; unsigned int offset, size;
> > -	enum next_request_type next_request;
> > +	enum next_request_type next_request =
> > NEXT_REQ_GET_FIRMWARE; int ret = 0;
> >  
> >  	/* Disable timeouts */
> > @@ -298,10 +298,10 @@ static int gb_bootrom_get_firmware(struct
> > gb_operation *op) 
> >  queue_work:
> >  	/* Refresh timeout */
> > -	if (!ret && (offset + size == fw->size))
> > -		next_request = NEXT_REQ_READY_TO_BOOT;
> > -	else
> > +	if (!!ret)  
> 
> That is hard to understand, please make this more obvious.
> 
if (A && B) else (!A || !B)

So, when ret is NON-ZERO, set next_request as GET_FIRMWARE, else set
READ_TO_BOOT. but if second express is flase, next_request still
need be set as GET_FIRMWARE, So, I initialze it as GET_FIRMWARE.

this is will keep consistent with the origin conditional express:
both ret is ZERO and second express TRUE, then set as READ_TO_BOOT,
else set as GET_FIRMWARE. 
 

> thanks,
> 
> greg k-h

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
