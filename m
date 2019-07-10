Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7842264C06
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jul 2019 20:24:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E37B87E80;
	Wed, 10 Jul 2019 18:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kbh9Xc-V+8Um; Wed, 10 Jul 2019 18:24:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C947F87DAA;
	Wed, 10 Jul 2019 18:24:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A85AF1BF42E
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 18:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A40EE20394
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 18:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9UhZR3DgiwtQ for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 18:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E0C1E1FEB7
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 18:24:05 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id d23so3524317qto.2
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 11:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zAcgUolazA7luBwp8paMkjhRVKLXRJL6TdvFMDHQKzA=;
 b=Kt1bVy3oXSYkybEb7FUQPCdO097Dt4isI9Ses2ujAL1YsDGwte6PKN8oQ6YNdAwuSN
 ZWA8xM1IqoPVmtmjACl8m7STmZpn9rSDaorGYvusAi4iUZQycD4VR3E26NVAQ/DXlaNr
 4T49PxWMzreb34xbe+bgLiSrQHJ9hBVn5h1sDRvClBmYRNwC3yCYGLD/D5IKqIR6yW26
 g4rnvI96pinGTapFoziC5ozDI++h/b34Drw4qdW9uraNL5a5BnELNTL8FhzRombuLIt6
 dTPBJw4syTd15RmDgETe7pRIcm9NloYcxbkNxbuPLNK1D7DciqH0CnZhkCGSXqc8I5k+
 iDaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zAcgUolazA7luBwp8paMkjhRVKLXRJL6TdvFMDHQKzA=;
 b=I+EEc8b4ipo32Om1cvMbM6KcwmXH5O6yTyo6qx1oum3Pu+vBYevlXCubDNTycVSsGz
 X/K79JpDsd1FxytZEnUnJdJqubJUN/KBYU0r7UvgD6Z7Es6pAY2rgLLQM8fqi6m+7bqY
 6l8Zd5j0YJ6GB83utW1WTfF0z0FBjHEr2gskBswHsDzElEK+YodXdHTTTlPVat7jvwfQ
 MbJsfv4YHDqBoGZ46i9PpP9dWJWLrgZIix/DrGZ0b/cPPITs3WBuu21FtsvUjX9YkUpM
 rVH/oMI2ywr2/atStdkA1EqB1BQqbFs47/EaqwD6M9uNTdywpESpD8QLnay92uMcFKOt
 A0Ng==
X-Gm-Message-State: APjAAAVRyVrC5/1T4DvFjzpkTeeNedXoqUJOAOtQWgNuUTWZg+AmzZ29
 xyfNLejQKnWUJurA6H/X4A==
X-Google-Smtp-Source: APXvYqx9x9Hv8Yb01z7kNT2uDT6YWO3K7fCYZ/dkH2TwctUQ9egiiR8ut6bSAfySZQU4uXvTVDUyAw==
X-Received: by 2002:ac8:374b:: with SMTP id p11mr24711189qtb.316.1562783044890; 
 Wed, 10 Jul 2019 11:24:04 -0700 (PDT)
Received: from keyur-pc (modemcable148.230-83-70.mc.videotron.ca.
 [70.83.230.148])
 by smtp.gmail.com with ESMTPSA id f25sm1608616qta.81.2019.07.10.11.24.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 10 Jul 2019 11:24:03 -0700 (PDT)
Date: Wed, 10 Jul 2019 10:24:06 -0400
From: Keyur Patel <iamkeyur96@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: greybus: add logging statement when kfifo_alloc
 fails
Message-ID: <20190710142406.GA6669@keyur-pc>
References: <20190710122018.2250-1-iamkeyur96@gmail.com>
 <20190710163538.GA30902@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710163538.GA30902@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, David Lin <dtwlin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 10, 2019 at 06:35:38PM +0200, Greg Kroah-Hartman wrote:
> On Wed, Jul 10, 2019 at 08:20:17AM -0400, Keyur Patel wrote:
> > Added missing logging statement when kfifo_alloc fails, to improve
> > debugging.
> > 
> > Signed-off-by: Keyur Patel <iamkeyur96@gmail.com>
> > ---
> >  drivers/staging/greybus/uart.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
> > index b3bffe91ae99..86a395ae177d 100644
> > --- a/drivers/staging/greybus/uart.c
> > +++ b/drivers/staging/greybus/uart.c
> > @@ -856,8 +856,10 @@ static int gb_uart_probe(struct gbphy_device *gbphy_dev,
> >  
> >  	retval = kfifo_alloc(&gb_tty->write_fifo, GB_UART_WRITE_FIFO_SIZE,
> >  			     GFP_KERNEL);
> > -	if (retval)
> > +	if (retval) {
> > +		pr_err("kfifo_alloc failed\n");
> >  		goto exit_buf_free;
> > +	}
> 
> You should have already gotten an error message from the log if this
> fails, from the kmalloc_array() call failing, right?
> 
> So why is this needed?  We have been trying to remove these types of
> messages and keep them in the "root" place where the failure happens.
> 
> thanks,
> 
> greg k-h

Didn't notice that. I agree that this will result only into redundancy. 
Quick look over files reveal that there are multiple places
where people are using print statements after memory allocation fails. 
Should I go ahead and send patches to remove those
redundant print statements?

Sorry, if you're receiving this message again.

Thnaks.
Keyur Patel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
