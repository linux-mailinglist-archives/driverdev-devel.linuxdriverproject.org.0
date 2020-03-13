Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AC9184182
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 08:28:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A04488E29;
	Fri, 13 Mar 2020 07:28:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ms+cEqsa3urC; Fri, 13 Mar 2020 07:28:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2621388DE9;
	Fri, 13 Mar 2020 07:28:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 934EA1BF39E
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 07:27:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8E9C0895EB
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 07:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gA8Av9T+UvGL for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 07:27:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 11323895E6
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 07:27:59 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id c7so4484879pgw.3
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 00:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wvA6h/ADCFmpO4/R58WqwTsyj0FZP41tEV3Px7U6ciw=;
 b=uyAkfSNHKkYjA+Ao2n9McRVmNL+oA0W06DzsicIwPy13UVOQPoRnEzPB+fYWQSNqFn
 hCer85T8KVYhhvKNgm1C/ud+9IAESjZqV5vQsDXMhfVQk1yfcUHyCzSL9GFwp5E5Xd5V
 N9sFhuifSO64xuoviHXsM0XziCYpGNEUo+J2mRkkilx01rKW0CzAvFjQyiBinqC1HGFy
 s6fAKlsFK2VbazbwSO3ILM+UNEaniNWnRgxKLFDIinTMjbeSHAqS8L7EUx97e9yTURaj
 RA8oQXMWWsKlISGqkRWzaQcnHQfRnY/LpxomBc21yeCxpROugy2MM/R9fD3TB+CafaMQ
 dx+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wvA6h/ADCFmpO4/R58WqwTsyj0FZP41tEV3Px7U6ciw=;
 b=SMoHsZLzv8j+nLx5OqvxE+IyQ1bukuzbiI5hA27k1eslNmDB3+XzkJ//OXDrjsfovx
 Cr6Pc/UFp5UC0gG4vM4SKsZul/CIupBW9flB4ne7iXMni6d2it0fq0Y2hUZugfQxv+Co
 9z4W1cOccImQf3hZE1id79wWULbbKi8jNvZg8M7vfyIPYr64sP3zTdFHV2yRN1ECsYjK
 qsQ3VwCqcgdjnewfLIgm9cmu+jdQzhU1tnl1KbnDeLfN13ERp0bthBDlsEwevA3ADrKn
 TtwP4YeqZc/8a11OcyjmfgSaa9FUogHuviaHxtmv+6D9safMGM8SR5rx/gMmLtZh87st
 /w7Q==
X-Gm-Message-State: ANhLgQ18G/PZXnT3q/p0U5F2oArSevfvomSBKSlmNpn3Q1A4cIvPmahs
 W6JSt9NkSkp1R1PPN0zef1E=
X-Google-Smtp-Source: ADFU+vvsKOdZhRpVPKEtihUt4qwoBo6IF06H6dzQVfBXYYDmCpzKykdDoErfu+zAvN4SfAdRAILQDw==
X-Received: by 2002:a62:1a83:: with SMTP id a125mr12496744pfa.78.1584084478438; 
 Fri, 13 Mar 2020 00:27:58 -0700 (PDT)
Received: from Shreeya-Patel ([1.23.249.228])
 by smtp.googlemail.com with ESMTPSA id y7sm17061880pfq.159.2020.03.13.00.27.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Mar 2020 00:27:57 -0700 (PDT)
Message-ID: <40e15d511cc2fbb4a13bb7df5a4f23ea942ab3a6.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: sdio_halinit:
 Remove unnecessary conditions
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Joe Perches <joe@perches.com>
Date: Fri, 13 Mar 2020 12:57:50 +0530
In-Reply-To: <20200313072021.GQ11561@kadam>
References: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
 <20200313072021.GQ11561@kadam>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, nramas@linux.microsoft.com,
 daniel.baluta@gmail.com, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 sbrivio@redhat.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2020-03-13 at 10:20 +0300, Dan Carpenter wrote:
> On Wed, Mar 11, 2020 at 07:08:11PM +0530, Shreeya Patel wrote:
> > diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> > b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> > index e813382e78a6..643592b0bd38 100644
> > --- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> > +++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> > @@ -551,18 +551,11 @@ static void HalRxAggr8723BSdio(struct adapter
> > *padapter)
> >  
> >  	pregistrypriv = &padapter->registrypriv;
> >  
> > -	if (pregistrypriv->wifi_spec) {
> > -		/*  2010.04.27 hpfan */
> > -		/*  Adjust RxAggrTimeout to close to zero disable
> > RxAggr, suggested by designer */
> > -		/*  Timeout value is calculated by 34 / (2^n) */
> > -		valueDMATimeout = 0x06;
> > -		valueDMAPageCount = 0x06;
> > -	} else {
> > -		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
> > -		/*  TX/RX Balance */
> > -		valueDMATimeout = 0x06;
> > -		valueDMAPageCount = 0x06;
> > -	}
> > +	/*  2010.04.27 hpfan */
> 
> Delete these sorts of comments where it's just a name of someone and
> a time stamp when they wrote it.  We don't know how to contact
> "hpfan"
> so it's useless.
> 

Thanks Joe and Dan for your explanation. I will remove the comments and
send the patch again.

> regards,
> dan carpenter
> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
