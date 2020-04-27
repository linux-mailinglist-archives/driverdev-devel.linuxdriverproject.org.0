Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF091B9A5C
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 10:36:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB7D185B0D;
	Mon, 27 Apr 2020 08:36:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AK8CDuVgc8qA; Mon, 27 Apr 2020 08:36:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6F8D8562A;
	Mon, 27 Apr 2020 08:36:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E1E831BF379
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 08:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D0D19203C4
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 08:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dXpHvni1p53x for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 08:36:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 760A920353
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 08:36:46 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id n4so13394811ejs.11
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 01:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vQTluHrFlTPouGYN0L8RFSa0ut56oC/RfYr17kNASok=;
 b=meKAh8FbBdII7WfsflAdIDuNSKAWExOwNGTQONordCK+iMffZUBH4QRLKIj9g3hUAn
 YdV1IZ903/Ia+CRl7z1QLOG/iAvLvkeIL46dC+N8HcIA085a47xkeVd/d8bh4ILznfGK
 mYG0TqRV+AdXCoDveEOkLJcaLWYYbpZaf7DWgkpl3d7DEzkPG7MzqxCPG++2mTyCXzBB
 hn2CMjRyBXSOLouKFBFwh/GBKSrvfsJlTDDekvK5NO2FzQWaOyfa9p1QwBfW9k21v7U5
 PCHOoFKOplRT4+78hCu4tj17YMcjc4ZIs+YJhSOwjlxGEh0trr1ZwuzG8JMqICaBTnqK
 TpeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vQTluHrFlTPouGYN0L8RFSa0ut56oC/RfYr17kNASok=;
 b=GnFsmQom/qTUSACMxbLGSxuQNLnOvDVQR1xS03UydTtoqmekn++pp9BoG6O737mJxo
 HvDMK5lA/+LQurRnvGGx6pmT2hsEJeWzHQR27cPr9SfWuqlQN9nqeddH+FfEF5kTxyVw
 0fJUosqdXTdARNoWUvJ4wtCZTXTxFhcs0Ao+4ZEtllCt1eNsfa8L6mQ/QVd06SYrVXej
 JnvA1Ebq4ekeSbeMLbR3x9MBB+hUkLaCH2NKwnqQiR/QKj7JMe9hLCgg2FLf1CRe0A3E
 dPtArkbIFsZO6pQI9a+CHM146xvnsS7a47/n5eBOTqDDjLBS15gBB0thqXiNMwi2h59u
 opbw==
X-Gm-Message-State: AGi0PubvryJ5auavv/YTVYWENyK4R3gnW9FPujWc8q136DlZu7FY/nYZ
 dytuCDl/mrvxD93qjh/VShM=
X-Google-Smtp-Source: APiQypIRUAnXaWz08Q8liiasN60ylITxEvvKR+QbUyjJant5k2FUB9f77S8t1viHZzIbcdXyf4L9nA==
X-Received: by 2002:a17:906:496:: with SMTP id
 f22mr18305568eja.311.1587976604820; 
 Mon, 27 Apr 2020 01:36:44 -0700 (PDT)
Received: from localhost
 (ipv6-80adf4751ff4da96.ost.clients.hamburg.freifunk.net.
 [2a03:2267:4:0:80ad:f475:1ff4:da96])
 by smtp.gmail.com with ESMTPSA id s18sm2810366ejm.63.2020.04.27.01.36.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Apr 2020 01:36:44 -0700 (PDT)
Date: Mon, 27 Apr 2020 10:36:42 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v1] staging: fbtft: fb_st7789v: Initialize the Display
Message-ID: <20200427083642.GD18436@portage>
References: <1586424337-26602-1-git-send-email-oliver.graute@gmail.com>
 <20200409102013.GP2001@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409102013.GP2001@kadam>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 gregkh@linuxfoundation.org, Oliver Graute <oliver.graute@kococonnector.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 09/04/20, Dan Carpenter wrote:
> On Thu, Apr 09, 2020 at 11:25:32AM +0200, Oliver Graute wrote:
> > From: Oliver Graute <oliver.graute@kococonnector.com>
> > 
> > Set Gamma Values and Register Values for the HSD20_IPS
> > 
> > Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> > ---
> >  drivers/staging/fbtft/fb_st7789v.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
> > index 84c5af2dc9a0..b0aa96b703a8 100644
> > --- a/drivers/staging/fbtft/fb_st7789v.c
> > +++ b/drivers/staging/fbtft/fb_st7789v.c
> > @@ -17,8 +17,8 @@
> >  #define DRVNAME "fb_st7789v"
> >  
> >  #define DEFAULT_GAMMA \
> > -	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25\n" \
> > -	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25"
> > +	"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\n" \
> > +	"D0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33"
> 
> How do you know this won't break someone else's setup?

Should I declare an extra define for my values?

+#define HSD20_IPS_GAMMA \
+	"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\n" \
+	"D0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33"

> 
> Without knowing anything at all about this driver, it feels like this
> should be:
> 
> 	if (new_hardware)
> 		write_reg(par, PORCTRL, 0x05, 0x05, 0x00, 0x33, 0x33);
> 	else
> 		write_reg(par, PORCTRL, 0x08, 0x08, 0x00, 0x22, 0x22);

ok, I'll update this.

Best regards,

Oliver
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
