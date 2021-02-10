Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E96AB316F4F
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 19:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9249486FA2;
	Wed, 10 Feb 2021 18:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n3n+Ms2j04iF; Wed, 10 Feb 2021 18:55:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7EB2786EC8;
	Wed, 10 Feb 2021 18:55:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98E161BF419
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 18:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 950F4847EB
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 18:55:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 83VuvBbSvkUV for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 18:55:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79A7F84471
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 18:55:48 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id o15so927119wmq.5
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 10:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AAePRhaYdh8IR3fav5qzi16yCJ4dvJcD8Hr4awo6sqg=;
 b=xzE1+Zfo6WjzIVQ6sQPRizZxaH8vtOoI8fCXALfGd1f4NR0zmslqKN0sdCDN1aaYMe
 mHu+1+q772zg5sruTt9S0Ue/8NYj8h3fUqgzRksH3sYffeYnDE4yDS9hJdPl3x3G/WkD
 Swp6Smn6D0rMrqd0v2X852p45xy+VBAfGm0FFwBliyS6SK+k0Jre0Dd7UU31YDP+njOe
 I2YUkI1K6M0EHNs2NVfzPJZyuDiR+OT9TeDJ0weNBKuzFOHUY1r5V+OjGdtpfjD7zlGX
 y2sHolQDeWDERnUcmDv3Du9t18KeC4BRula4wk+UfNuu/99K9LtUcZmQuFnreHLnatS2
 8byA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AAePRhaYdh8IR3fav5qzi16yCJ4dvJcD8Hr4awo6sqg=;
 b=U9JcWXKZMqaYjI84gPx4vNZsB7YWDzXY6Ii5c9bGdmHQ4grlQuil+lYFJrmFCX7kOm
 q1O6KlSX4qfcmII7X0Vztbu8CyLRLaAWdqUyFcmydaVscXfpMWpOae7yv/o9j6LxS8HW
 s0FSwTOQubKFb0Oli+O4NAGDxSfGNf0Vr3g2m/ZvwTUPj8gk10E4oHbbu+S7pdlW9Ngt
 Qd3lP63Upcy/Kw1BOHxd6IpOD38waYgZHG0N5Q8nr+XPBsVxUyX0ZNFiJ9UrFbqpgg+e
 hXiFAdyHtoQbbfVpT5cqUkybUPz17iJHF5fWGaIo30Yinux2+Sl4ygNm6rfvnBdoTqNq
 bUBQ==
X-Gm-Message-State: AOAM530z0Jwubr76zYdaIxuV8xIXKFhlEp9tyTtJY/1/j3jZP0e0txHm
 ho8t3Uc7HaLNN3RBvtpWnWXhtg==
X-Google-Smtp-Source: ABdhPJypOD8g1AAXNkZV9oOdvxbuXUW5wGmn8pO4JVXtoSW08tacbgMuvcZ8UbiM5jtefiHXSXzsdA==
X-Received: by 2002:a1c:f001:: with SMTP id a1mr338842wmb.21.1612983346932;
 Wed, 10 Feb 2021 10:55:46 -0800 (PST)
Received: from kernelvm
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id u142sm3812064wmu.3.2021.02.10.10.55.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 10:55:46 -0800 (PST)
Date: Wed, 10 Feb 2021 18:55:44 +0000
From: Phillip Potter <phil@philpotter.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8723bs: cleanup macros within
 include/rtw_debug.h
Message-ID: <20210210185544.GA1786@kernelvm>
References: <20210210170003.100880-1-phil@philpotter.co.uk>
 <20210210184027.GZ2696@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210184027.GZ2696@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, luk@wybcz.pl,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 09:40:27PM +0300, Dan Carpenter wrote:
> On Wed, Feb 10, 2021 at 05:00:03PM +0000, Phillip Potter wrote:
> > Remove do/while loops from DBG_871X, MSG_8192C and DBG_8192C.
> 
> I'm pretty hip to checkpatch.pl warnings, but I had forgotten what the
> warning was for this:
> 
> WARNING: Single statement macros should not use a do {} while (0) loop
> 
> Please, include it for people who are forgetful like I am.
> 
> > Also
> > fix opening brace placements and trailing single statement layout within
> > RT_PRINT_DATA, as well as making newline character placement more
> > consistent and removing camel case where possible. Finally, add
> > parentheses for DBG_COUNTER definition.
> > 
> > This fixes 3 checkpatch warnings, 5 checkpatch errors and 3 checkpatch
> > checks.
> 
> This patch would be easier to review if it were split into multiple
> patches.
> 
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
> 
> This can fit on one line:
> 
> 	#define DBG_871X(...) _dbgdump(DRIVER_PREFIX __VA_ARGS__)
> 
> It's tough with staging code to know how much to change at one time
> because even after you change the code then it still looks rubbish.
> This define shouldn't be indented.  The _dbgdump() macro is just
> 
> #define _dbgdump printk
> 
> so you know, no printk level.  Wow.  etc.  This code is crap.

So I'm in the process of stripping out _dbgdump entirely as per Greg
K-H's suggestion - am I to understand raw printk is frowned upon though,
even with the correct KERN_x level specified?

> 
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
> >  #endif /* defined(_dbgdump) */
> >  #endif /* DEBUG */
> >  
> 
> Yeah.  Do all the above as one patch.
> 
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
> > -			u8 *ptr = (u8 *)_HexData;				\
> > +			u8 *ptr = (u8 *)_hex_data;						\
> >  			_dbgdump("%s", DRIVER_PREFIX);						\
> > -			_dbgdump(_TitleString);						\
> > -			for (__i = 0; __i < (int)_HexDataLen; __i++)				\
> > -			{								\
> > +			_dbgdump(_title_string);						\
> > +			for (__i = 0; __i < (int)_hex_data_len; __i++) {			\
> >  				_dbgdump("%02X%s", ptr[__i], (((__i + 1) % 4) == 0)?"  ":" ");	\
> > -				if (((__i + 1) % 16) == 0)	_dbgdump("\n");			\
> > -			}								\
> > -			_dbgdump("\n");							\
> > -		}
> > +				if (((__i + 1) % 16) == 0)					\
> > +					_dbgdump("\n");						\
> > +			}									\
> > +			_dbgdump("\n");								\
> > +		}										\
> > +	} while (0)
> 
> This is okay, I suppose but we have functions to dump hex data.  I can't
> remember what they are...  One patch for this.
> 
> >  #endif /* defined(_dbgdump) */
> >  #endif /* DEBUG_RTL871X */
> >  
> >  #ifdef CONFIG_DBG_COUNTER
> > -#define DBG_COUNTER(counter) counter++
> > +#define DBG_COUNTER(counter) ((counter)++)
> 
> Heh...  I think these counters are write only variables.  Double check
> and then just delete everything to do with CONFIG_DBG_COUNTER.
> (In a separate patch).
> 
> regards,
> dan carpenter
> 

Thank you for your feedback (and thank you Greg for yours also). I
hugely appreciate it as a novice/newb.

One query I have is that individual patches I'm working on for this file are
generating an awful lot of checkpatch warnings themselves due to the
nature of the existing violations on the relevant lines. Is it
considered acceptable for me to still submit these, providing I do so in
a series which cleans up the other violations in separate patches?

Regards,
Phil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
