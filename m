Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E76316CD7
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 18:35:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A9486F702
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 17:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R5msX3jKw6Jf for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 17:35:13 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 258206F74E; Wed, 10 Feb 2021 17:35:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81EBB6F6D0;
	Wed, 10 Feb 2021 17:34:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C944E1BF860
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:34:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C5F798749A
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PStJhBC5Z7Ou for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 17:34:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4FC8A873F1
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 17:34:42 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id t15so1188580wrx.13
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 09:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=poliqhhZuPxsaL4gj+QoHSIxghPiK7BMrYkoz3UqiFY=;
 b=usSUoBdL1MYUKtb2WRbXs7zi+Hc/qvmDWP9Wk3QEs39ZhsA9LmwDebR6oNis3IPbJf
 xZ7qzJTR3YXhKVeimktSt4S9HPaCb2RjuU815f0aqBGOlVWTCQvVqroKLN13W9qOnAEf
 rFlJz8fYrtOWj6C6PUk3KaH0xoxKv2wZJ6nLvhhzO0d9sJk1CTz2b9/MQMhJXLVHeOvn
 CP03sJem2n73qVAYCAcjxDqI9qAhETwDiZzI8gLtl2kG5TUMJCSabMQCC+euZJvF6jZN
 oN4Ni1jyK/TxvHMi7aBIsVUH4G/M714ANfYaKh4xfWoareKddkyvDODiLsqMMEEr/Bw8
 OMzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=poliqhhZuPxsaL4gj+QoHSIxghPiK7BMrYkoz3UqiFY=;
 b=sY3xSzQgGqpIXuNVU9pufLCjG/D7sfPMJ3APtxFtl64WqlmPG3rR+vO0/KJPAAfBpB
 jtRCwmXyHUSIf02ncGunrmTmKVh875yD7fjvwlHMvtHOspGgbP6bb0dmMfX0FOIRWNKQ
 1YE55QyKN3ElH0x2XECxomWM7km21OE4rGRFXF0Dp5j2yaqkIZQJwID6kynIu+0VBhsM
 xvNa3ghnvB8NKt7S0EN6otghx+tf04nUVL67wSsQf5QXaAR0rF98Rlh15lRH0N6XHHgn
 B8WWWdZMrxTliqGJ7Yojs0RD8sQbhTZnCKfMBttPFZftBCuQ02SFG7Lg59GWaK9f0PpA
 9Rqw==
X-Gm-Message-State: AOAM533sqApU37RXruUM2iDTSKK+WoKwMbOdiO06oZYedSGhxtQvdazA
 pZ+rbVbDjg4aYO7LTOY9fU47BmB4xaj3+g==
X-Google-Smtp-Source: ABdhPJw2loeaen4WaZxpBe/spA/fVs+4ffRjHSze4eDridvB2az6VqCfxFD+ex7l2U2+TGVENJ7Bpw==
X-Received: by 2002:a5d:640c:: with SMTP id z12mr4861979wru.342.1612978480701; 
 Wed, 10 Feb 2021 09:34:40 -0800 (PST)
Received: from kernelvm
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id o12sm3913030wrx.82.2021.02.10.09.34.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 09:34:40 -0800 (PST)
Date: Wed, 10 Feb 2021 17:34:38 +0000
From: Phillip Potter <phil@philpotter.co.uk>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: rtl8723bs: cleanup macros within
 include/rtw_debug.h
Message-ID: <20210210173438.GA1349@kernelvm>
References: <20210210170003.100880-1-phil@philpotter.co.uk>
 <YCQUFvhKW7rSR6qy@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCQUFvhKW7rSR6qy@kroah.com>
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
Cc: devel@driverdev.osuosl.org, luk@wybcz.pl, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 06:12:54PM +0100, Greg KH wrote:
> On Wed, Feb 10, 2021 at 05:00:03PM +0000, Phillip Potter wrote:
> > Remove do/while loops from DBG_871X, MSG_8192C and DBG_8192C. Also
> > fix opening brace placements and trailing single statement layout within
> > RT_PRINT_DATA, as well as making newline character placement more
> > consistent and removing camel case where possible. Finally, add
> > parentheses for DBG_COUNTER definition.
> > 
> > This fixes 3 checkpatch warnings, 5 checkpatch errors and 3 checkpatch
> > checks.
> > 
> > Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
> > ---
> >  drivers/staging/rtl8723bs/include/rtw_debug.h | 40 +++++++++----------
> >  1 file changed, 19 insertions(+), 21 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/include/rtw_debug.h b/drivers/staging/rtl8723bs/include/rtw_debug.h
> > index c90adfb87261..d06ac9540cf7 100644
> > --- a/drivers/staging/rtl8723bs/include/rtw_debug.h
> > +++ b/drivers/staging/rtl8723bs/include/rtw_debug.h
> > @@ -201,19 +201,16 @@
> >  #ifdef DEBUG
> >  #if	defined(_dbgdump)
> >  	#undef DBG_871X
> > -	#define DBG_871X(...)     do {\
> > -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> > -	} while (0)
> > +	#define DBG_871X(...)\
> > +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
> >  
> >  	#undef MSG_8192C
> > -	#define MSG_8192C(...)     do {\
> > -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> > -	} while (0)
> > +	#define MSG_8192C(...)\
> > +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
> >  
> >  	#undef DBG_8192C
> > -	#define DBG_8192C(...)     do {\
> > -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> > -	} while (0)
> > +	#define DBG_8192C(...)\
> > +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
> 
> Odd, the do/while is correct here, why is checkpatch complaining about
> it?

The warning it gives me for these is:
WARNING: Single statement macros should not use a do {} while (0) loop

> 
> >  #endif /* defined(_dbgdump) */
> >  #endif /* DEBUG */
> >  
> > @@ -235,25 +232,26 @@
> >  
> >  #if	defined(_dbgdump)
> >  	#undef RT_PRINT_DATA
> > -	#define RT_PRINT_DATA(_Comp, _Level, _TitleString, _HexData, _HexDataLen)			\
> > -		if (((_Comp) & GlobalDebugComponents) && (_Level <= GlobalDebugLevel))	\
> > -		{									\
> > +	#define RT_PRINT_DATA(_comp, _level, _title_string, _hex_data, _hex_data_len)		\
> > +	do {											\
> > +		if (((_comp) & GlobalDebugComponents) && ((_level) <= GlobalDebugLevel)) {	\
> >  			int __i;								\
> 
> This is not the same as the above stuff, when you find yourself writing
> "also" in a changelog text, that's a huge hint you should break the
> patch up into a patch series.
> 
> Please do that here, this is too much for one patch.
> 
> thanks,
> 
> greg k-h

Thank you for the feedback, I'll do this - shall I leave out the
do/while stuff if you're saying checkpatch is wrong?

Regards,
Phil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
