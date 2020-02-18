Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DAF162FA1
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Feb 2020 20:18:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D7F886447;
	Tue, 18 Feb 2020 19:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4MdUOodtiPhd; Tue, 18 Feb 2020 19:18:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D1A2863D9;
	Tue, 18 Feb 2020 19:18:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8652C1BF389
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 19:18:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 80B4F204C1
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 19:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ky7AB-M+hvaF for <devel@linuxdriverproject.org>;
 Tue, 18 Feb 2020 19:18:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B96E820481
 for <devel@driverdev.osuosl.org>; Tue, 18 Feb 2020 19:17:58 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id b9so11278059pgk.12
 for <devel@driverdev.osuosl.org>; Tue, 18 Feb 2020 11:17:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hdis5Be2VylUOrCt10Cz6Yqnuk5YbPer1SATYKuRYm8=;
 b=d3gbxN0Eb1BCaa9gLyAoMPLm5uMOU4lHLgDMa8jfpH75ogLpXd95m95AIF0mTusmEH
 MUeKNqN0pYIwbAenzEdd6QpZDEC3FdYztj5vWXSffv/HT+hONr42+wiXCyRKuFNj1apz
 n1LZFAkPvnE/YliBP06K+CKh6vpG8IpwT9/g3jh7gZqPhdmJRh3TxNCoygUucNGuzWMU
 b912pH7Dx43ouulUY7T/lbOSD+DiLBgyaO1gaPYf2pN8VNRYmL0dwodx8Rc4fiBCYnJ9
 LS39tFVs1CRnOIgEToMois9djIZNuXBl5ptwoeDJX0ldqSpEPS5DeLhZj0mIua5gEtGN
 rCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hdis5Be2VylUOrCt10Cz6Yqnuk5YbPer1SATYKuRYm8=;
 b=GLIDy2fWdRc1sk3rNkbAx+3t3lgwSsHm3uRfQP1o3UWWHHDUqk56dc0P6vPvlo+n/3
 RBF9ArJ2i4C3MqO6i2wvpcmoOnLy7seUiiLtIt73IYHoHORdE3vWNCOaXW1UnW4NmH0t
 lk4IStSCEDhLcmquyPH95sMmt1PURg12rkEhEuZauYsoTz5lt1Vo+7ZKU+ybm+S4WcA6
 yCVkFLFmIsDZzshiJWyvFPCvotV07o6W0RMis/ltB7GjJvkxHjQbZU+U3cFb2FN0dYEa
 ffLli66wiNgDh45dyZ48l2Iy2LmgPWJA0BVS8zg2o6UwGLQrRo3MZ/BKPSmflgpIbGW8
 gaFQ==
X-Gm-Message-State: APjAAAXyPko+eCvlbdxOOp7wVhiTBPUiiHMmc6z2EoKqM1DWX1aeCTJN
 LleE1+xIxekIeGm4JPvQuu7lKA==
X-Google-Smtp-Source: APXvYqyh0pn6jwE7x9qEuaVNzph8xYHQuv1XhcCWUwyL8qLvGC2/yIcQyOL4I2O/iBd7nq53fqFDCg==
X-Received: by 2002:a63:d18:: with SMTP id c24mr24447947pgl.218.1582053478100; 
 Tue, 18 Feb 2020 11:17:58 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.173])
 by smtp.gmail.com with ESMTPSA id a35sm5769697pgl.20.2020.02.18.11.17.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Feb 2020 11:17:57 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Wed, 19 Feb 2020 00:47:47 +0530
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH] staging: bcm2835-camera: call function instead of macro
Message-ID: <20200218191747.GA12782@kaaira-HP-Pavilion-Notebook>
References: <20200218160727.GA17010@kaaira-HP-Pavilion-Notebook>
 <20200218183711.GE19641@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218183711.GE19641@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 18, 2020 at 09:37:11PM +0300, Dan Carpenter wrote:
> On Tue, Feb 18, 2020 at 09:37:28PM +0530, Kaaira Gupta wrote:
> > Fix checkpatch.pl warning of 'macro argument reuse' in bcm2835-camera.h
> > by removing the macro and calling the function, written in macro in
> > bcm2835-camera.h, directly in bcm2835-camera.c
> > 
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  .../bcm2835-camera/bcm2835-camera.c           | 28 +++++++++++++++----
> >  .../bcm2835-camera/bcm2835-camera.h           | 10 -------
> >  2 files changed, 22 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > index 1ef31a984741..19b3ba80d0e7 100644
> > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > @@ -919,9 +919,17 @@ static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
> >  	else
> >  		f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
> >  	f->fmt.pix.priv = 0;
> > -
> > -	v4l2_dump_pix_format(1, bcm2835_v4l2_debug, &dev->v4l2_dev, &f->fmt.pix,
> > -			     __func__);
> > +	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
> > +		 "%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n",
> > +		  __func__,
> > +		 (&f->fmt.pix)->width,
> > +		 (&f->fmt.pix)->height,
> > +		 (&f->fmt.pix)->field,
> > +		 (&f->fmt.pix)->pixelformat,
> > +		 (&f->fmt.pix)->bytesperline,
> > +		 (&f->fmt.pix)->sizeimage,
> > +		 (&f->fmt.pix)->colorspace,
> > +		 (&f->fmt.pix)->priv);
> 
> This is not as nice to look at as the original.  Just ignore the
> warning.
> 
> regards,
> dan carpenter
>
So, is this warning to be ignored from everywhere in every driver, as it
doesn't look good? And if yes, then why is it there in the first place?

Thanks!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
