Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4EA31704D
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 20:37:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 922E16F4E2
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 19:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3E1gf3TLpvPx for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 19:37:00 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 687216F57B; Wed, 10 Feb 2021 19:37:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F07D76F73B;
	Wed, 10 Feb 2021 19:36:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC5F61BF403
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 19:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C6DF286D23
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 19:36:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPWAhwGezhxc for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 19:36:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F13B286684
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 19:36:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 34B1B64DA1;
 Wed, 10 Feb 2021 19:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612985787;
 bh=x54ZabpyxNtHweYLCJv/rL8elgjOpBrpIHhKUVAamQc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fcUNW1IaRCMcRzVAB3A6ug1xlPUYrogwD2BQDlRvyeaBoc+MbxIjOtRKGgS7KxT9v
 88NjINx0zGNcinzWcxLPz5kqMDD+3pXYLIODNbA7hHcAySfcVK+5/flguMcVzKeFcJ
 tQ8OtP3EVINLL/OQrJ6bbZ9Hz5LN8PpxJnUGM6YM=
Date: Wed, 10 Feb 2021 20:36:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Phillip Potter <phil@philpotter.co.uk>
Subject: Re: [PATCH] staging: rtl8723bs: cleanup macros within
 include/rtw_debug.h
Message-ID: <YCQ1uQoNigBySa8i@kroah.com>
References: <20210210170003.100880-1-phil@philpotter.co.uk>
 <20210210184027.GZ2696@kadam> <20210210185544.GA1786@kernelvm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210185544.GA1786@kernelvm>
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
Cc: devel@driverdev.osuosl.org, luk@wybcz.pl,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 06:55:44PM +0000, Phillip Potter wrote:
> On Wed, Feb 10, 2021 at 09:40:27PM +0300, Dan Carpenter wrote:
> > On Wed, Feb 10, 2021 at 05:00:03PM +0000, Phillip Potter wrote:
> > > Remove do/while loops from DBG_871X, MSG_8192C and DBG_8192C.
> > 
> > I'm pretty hip to checkpatch.pl warnings, but I had forgotten what the
> > warning was for this:
> > 
> > WARNING: Single statement macros should not use a do {} while (0) loop
> > 
> > Please, include it for people who are forgetful like I am.
> > 
> > > Also
> > > fix opening brace placements and trailing single statement layout within
> > > RT_PRINT_DATA, as well as making newline character placement more
> > > consistent and removing camel case where possible. Finally, add
> > > parentheses for DBG_COUNTER definition.
> > > 
> > > This fixes 3 checkpatch warnings, 5 checkpatch errors and 3 checkpatch
> > > checks.
> > 
> > This patch would be easier to review if it were split into multiple
> > patches.
> > 
> > > 
> > > Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
> > > ---
> > >  drivers/staging/rtl8723bs/include/rtw_debug.h | 40 +++++++++----------
> > >  1 file changed, 19 insertions(+), 21 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8723bs/include/rtw_debug.h b/drivers/staging/rtl8723bs/include/rtw_debug.h
> > > index c90adfb87261..d06ac9540cf7 100644
> > > --- a/drivers/staging/rtl8723bs/include/rtw_debug.h
> > > +++ b/drivers/staging/rtl8723bs/include/rtw_debug.h
> > > @@ -201,19 +201,16 @@
> > >  #ifdef DEBUG
> > >  #if	defined(_dbgdump)
> > >  	#undef DBG_871X
> > > -	#define DBG_871X(...)     do {\
> > > -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> > > -	} while (0)
> > > +	#define DBG_871X(...)\
> > > +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
> > 
> > This can fit on one line:
> > 
> > 	#define DBG_871X(...) _dbgdump(DRIVER_PREFIX __VA_ARGS__)
> > 
> > It's tough with staging code to know how much to change at one time
> > because even after you change the code then it still looks rubbish.
> > This define shouldn't be indented.  The _dbgdump() macro is just
> > 
> > #define _dbgdump printk
> > 
> > so you know, no printk level.  Wow.  etc.  This code is crap.
> 
> So I'm in the process of stripping out _dbgdump entirely as per Greg
> K-H's suggestion - am I to understand raw printk is frowned upon though,
> even with the correct KERN_x level specified?
> 
> > 
> > >  
> > >  	#undef MSG_8192C
> > > -	#define MSG_8192C(...)     do {\
> > > -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> > > -	} while (0)
> > > +	#define MSG_8192C(...)\
> > > +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
> > >  
> > >  	#undef DBG_8192C
> > > -	#define DBG_8192C(...)     do {\
> > > -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> > > -	} while (0)
> > > +	#define DBG_8192C(...)\
> > > +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
> > >  #endif /* defined(_dbgdump) */
> > >  #endif /* DEBUG */
> > >  
> > 
> > Yeah.  Do all the above as one patch.
> > 
> > > @@ -235,25 +232,26 @@
> > >  
> > >  #if	defined(_dbgdump)
> > >  	#undef RT_PRINT_DATA
> > > -	#define RT_PRINT_DATA(_Comp, _Level, _TitleString, _HexData, _HexDataLen)			\
> > > -		if (((_Comp) & GlobalDebugComponents) && (_Level <= GlobalDebugLevel))	\
> > > -		{									\
> > > +	#define RT_PRINT_DATA(_comp, _level, _title_string, _hex_data, _hex_data_len)		\
> > > +	do {											\
> > > +		if (((_comp) & GlobalDebugComponents) && ((_level) <= GlobalDebugLevel)) {	\
> > >  			int __i;								\
> > > -			u8 *ptr = (u8 *)_HexData;				\
> > > +			u8 *ptr = (u8 *)_hex_data;						\
> > >  			_dbgdump("%s", DRIVER_PREFIX);						\
> > > -			_dbgdump(_TitleString);						\
> > > -			for (__i = 0; __i < (int)_HexDataLen; __i++)				\
> > > -			{								\
> > > +			_dbgdump(_title_string);						\
> > > +			for (__i = 0; __i < (int)_hex_data_len; __i++) {			\
> > >  				_dbgdump("%02X%s", ptr[__i], (((__i + 1) % 4) == 0)?"  ":" ");	\
> > > -				if (((__i + 1) % 16) == 0)	_dbgdump("\n");			\
> > > -			}								\
> > > -			_dbgdump("\n");							\
> > > -		}
> > > +				if (((__i + 1) % 16) == 0)					\
> > > +					_dbgdump("\n");						\
> > > +			}									\
> > > +			_dbgdump("\n");								\
> > > +		}										\
> > > +	} while (0)
> > 
> > This is okay, I suppose but we have functions to dump hex data.  I can't
> > remember what they are...  One patch for this.
> > 
> > >  #endif /* defined(_dbgdump) */
> > >  #endif /* DEBUG_RTL871X */
> > >  
> > >  #ifdef CONFIG_DBG_COUNTER
> > > -#define DBG_COUNTER(counter) counter++
> > > +#define DBG_COUNTER(counter) ((counter)++)
> > 
> > Heh...  I think these counters are write only variables.  Double check
> > and then just delete everything to do with CONFIG_DBG_COUNTER.
> > (In a separate patch).
> > 
> > regards,
> > dan carpenter
> > 
> 
> Thank you for your feedback (and thank you Greg for yours also). I
> hugely appreciate it as a novice/newb.
> 
> One query I have is that individual patches I'm working on for this file are
> generating an awful lot of checkpatch warnings themselves due to the
> nature of the existing violations on the relevant lines. Is it
> considered acceptable for me to still submit these, providing I do so in
> a series which cleans up the other violations in separate patches?

Yes, that is fine, and expected in many of these files :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
