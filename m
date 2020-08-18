Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8812488AD
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 17:07:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7FDA620452;
	Tue, 18 Aug 2020 15:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uAOJa5M4DFPM; Tue, 18 Aug 2020 15:07:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 285DF2043A;
	Tue, 18 Aug 2020 15:07:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06CCF1BF834
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 15:07:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 035D28639B
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 15:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dWz31nVTRhxy for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 15:07:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 436BA86378
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 15:07:00 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id a14so18613121wra.5
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 08:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Kz3kTcwHF2a+OrN5byUdnh38//L2z+SfVrhYCq8FFBo=;
 b=VCKa9l+59jL2AIGwzpE1bLZ9zsBeyMEYVRlQhSWSPl+5pYlXgfdOKQ3pR52dclz7DE
 tBGoXFJ1lfUTKTrbr0VsQ6/8ubwrLcOIQt+iambwKD4vO94aBADs+hQIWWpNrxtrXhEG
 Pq8vgtvBRd9k7SLvIun5McFrdZnoWsOhNZuDwixZ53kUUAlM0h0HNX3OglBjsqbGpgp6
 0Jnp+k5TGdbjcdeDScBaqjfiEvJD9aVEvzp3QnJI9r/fzzPLFPVyg6sOapdlmbR25xYW
 RA+gcEKSmrvaB+n8nKHJAa/P5c8OpPf8IKTEuxn1A8DE5FwXyKKsdvDbj8hAvwO+psUw
 mUyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Kz3kTcwHF2a+OrN5byUdnh38//L2z+SfVrhYCq8FFBo=;
 b=l4Sf8xpf0PAka265g40Akw1DeGmHN4EfSasCO6hhLu13CZliSjzyvG60PVaTTv8Npn
 Nfp2OkSX6aqiPI57CjAyc6TqbluJNn+GxvB3atGmvYId+pEE571qTsYI4xrZU1bSFl4f
 Ur6z3rSaXdooAMj07U1DKwsB+1pZwdzfyxPj/Nge6LpJ6qfwt+J58OM0V5c8GAQ/9VM8
 sL7xSrsdrC5Xh1IpddtoFGD6692hePy+Ng9IT9eBdbdI882/+H5813WjVAuZr25eL/p7
 CoO61XMaUWqf/o1ThYBqcXzQUGwh99Eg6CXF+eN8V5P80z6N44bcmvYoBgjqJ0yvtqdx
 QU+g==
X-Gm-Message-State: AOAM5305pmhmpjoe6zDKXYxBr8OSERLbqEz44NlILjs71NSkQmWmoVkI
 tpP70kh4e71ctTClETqaGio=
X-Google-Smtp-Source: ABdhPJy/3VCGV4xF9tBIceW/kpcTFoTQQBkQNN7HbLL1XZZ1S4/04oQ+0xEn6uOZQ6BiXPKA5U2UYg==
X-Received: by 2002:adf:e712:: with SMTP id c18mr21633963wrm.92.1597763218793; 
 Tue, 18 Aug 2020 08:06:58 -0700 (PDT)
Received: from medion (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net.
 [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id v8sm275614wmb.24.2020.08.18.08.06.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 08:06:58 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
X-Google-Original-From: Alex Dewar <alex.dewar@gmx.co.uk>
Date: Tue, 18 Aug 2020 16:06:56 +0100
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH] staging: emxx_udc: Use standard BIT() macro
Message-ID: <20200818150656.4ikg6fwzmmnwqapx@medion>
References: <20200818134922.409195-1-alex.dewar90@gmail.com>
 <baecb36e-1f82-1e0e-6460-d6759a9193c1@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <baecb36e-1f82-1e0e-6460-d6759a9193c1@infradead.org>
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
 Alex Dewar <alex.dewar90@gmail.com>, linux-kernel@vger.kernel.org,
 Saiyam Doshi <saiyamdoshi.in@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 18, 2020 at 07:29:02AM -0700, Randy Dunlap wrote:
> On 8/18/20 6:49 AM, Alex Dewar wrote:
> > Currently emxx_udc.h defines bit values using local macros. Use the
> > standard one instead.
> > 
> > Also, combine bit values with bitwise-or rather than addition, as
> > suggested by Coccinelle.
> > 
> > Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> 
> Hi,
> 
> Does this build?  Just checking.
> 
> Looks like it would need this:
> 
> #include <linux/bits.h>
> 
> since it (indirectly) provides definition of the BIT() macro.

Yeah, it builds, because emxx_udc.c includes emxx_udc.h after a bunch of
standard headers. I agree that it would probably be cleaner to have the
include in there explicitly, though.

Best,
Alex

> 
> > ---
> >  drivers/staging/emxx_udc/emxx_udc.h | 456 +++++++++++++---------------
> >  1 file changed, 211 insertions(+), 245 deletions(-)
> 
> 
> thanks.
> -- 
> ~Randy
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
