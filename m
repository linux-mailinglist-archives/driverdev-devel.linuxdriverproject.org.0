Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 876D6316C37
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 18:13:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A8616F6E6
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 17:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TmSBtB4ujiRU for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 17:13:30 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 00A106F6E1; Wed, 10 Feb 2021 17:13:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95D8E6F6CE;
	Wed, 10 Feb 2021 17:13:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F25C31BF860
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:12:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EF75D86E3E
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:12:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qah0NZLHWoK1 for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 17:12:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7A32C86E2A
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 17:12:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 728D064D9D;
 Wed, 10 Feb 2021 17:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612977177;
 bh=IXFAvzAmj3bvyVOKaSl1kuAssl3nq4lfr+/YEDHum6s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lAzuVrxqPHD+rKFJux21eUwES82mm3Sn7njP3HK9RNDwoxpc68I2bmrG+glYb/8sz
 ktaI3o/avT8+lc9zDOnZ+ZVyhtGg1XEzW0PGk7Oh+SlnM3wtUIKJi1CJS+9Xai1ANR
 /wa8qugzQ5onLgJXK1ikz22TjLTOKZhUwdP7VcUk=
Date: Wed, 10 Feb 2021 18:12:54 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Phillip Potter <phil@philpotter.co.uk>
Subject: Re: [PATCH] staging: rtl8723bs: cleanup macros within
 include/rtw_debug.h
Message-ID: <YCQUFvhKW7rSR6qy@kroah.com>
References: <20210210170003.100880-1-phil@philpotter.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210170003.100880-1-phil@philpotter.co.uk>
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

On Wed, Feb 10, 2021 at 05:00:03PM +0000, Phillip Potter wrote:
> Remove do/while loops from DBG_871X, MSG_8192C and DBG_8192C. Also
> fix opening brace placements and trailing single statement layout within
> RT_PRINT_DATA, as well as making newline character placement more
> consistent and removing camel case where possible. Finally, add
> parentheses for DBG_COUNTER definition.
> 
> This fixes 3 checkpatch warnings, 5 checkpatch errors and 3 checkpatch
> checks.
> 
> Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
> ---
>  drivers/staging/rtl8723bs/include/rtw_debug.h | 40 +++++++++----------
>  1 file changed, 19 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/include/rtw_debug.h b/drivers/staging/rtl8723bs/include/rtw_debug.h
> index c90adfb87261..d06ac9540cf7 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_debug.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_debug.h
> @@ -201,19 +201,16 @@
>  #ifdef DEBUG
>  #if	defined(_dbgdump)
>  	#undef DBG_871X
> -	#define DBG_871X(...)     do {\
> -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> -	} while (0)
> +	#define DBG_871X(...)\
> +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
>  
>  	#undef MSG_8192C
> -	#define MSG_8192C(...)     do {\
> -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> -	} while (0)
> +	#define MSG_8192C(...)\
> +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
>  
>  	#undef DBG_8192C
> -	#define DBG_8192C(...)     do {\
> -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> -	} while (0)
> +	#define DBG_8192C(...)\
> +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)

Odd, the do/while is correct here, why is checkpatch complaining about
it?

>  #endif /* defined(_dbgdump) */
>  #endif /* DEBUG */
>  
> @@ -235,25 +232,26 @@
>  
>  #if	defined(_dbgdump)
>  	#undef RT_PRINT_DATA
> -	#define RT_PRINT_DATA(_Comp, _Level, _TitleString, _HexData, _HexDataLen)			\
> -		if (((_Comp) & GlobalDebugComponents) && (_Level <= GlobalDebugLevel))	\
> -		{									\
> +	#define RT_PRINT_DATA(_comp, _level, _title_string, _hex_data, _hex_data_len)		\
> +	do {											\
> +		if (((_comp) & GlobalDebugComponents) && ((_level) <= GlobalDebugLevel)) {	\
>  			int __i;								\

This is not the same as the above stuff, when you find yourself writing
"also" in a changelog text, that's a huge hint you should break the
patch up into a patch series.

Please do that here, this is too much for one patch.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
