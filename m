Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9393D316EEB
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 19:40:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A3F8787427;
	Wed, 10 Feb 2021 18:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5S2KCXfE15r2; Wed, 10 Feb 2021 18:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 22FAC87391;
	Wed, 10 Feb 2021 18:40:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 498E81BF419
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 18:40:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 464A286AB3
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 18:40:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dzinZPE7tiCs for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 18:40:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4AA3686A9D
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 18:40:46 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11AIP7Gr089153;
 Wed, 10 Feb 2021 18:40:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=C+Gyl+bsnt2+HTSAhWjCVJVbRPBb0xQhVV2gG5aAxOg=;
 b=tGTEWrEqurwtPVMKI0IFlMMOs0OLVh/eJUWy18hgKf0uPEkIeBu/VMeRAw9NLZuWjhjD
 dYcg3AFFByq7RiYjRTALOcok+tWsIL2M8jlz96xdA5UXhEdZjpXmpspnfJU5omdRlkV5
 WS1rPFJE0nugv4j9M0DpC69VP5yMLHU1Bze69Nc4iODOpB51Qffjz6HGLJg0W4dB0YZN
 8/HEXEM4yapNdimboW4w4hK6BlGhP0iECSxlBDua5tE1IatXHHLYLAAMpV4iAvbSuAdq
 gzsRXZECyHZK1VNn9Z+7R5YNtr2c5bYWbmASlKyOGVyxKW74p8l0VP6j3XLQRQM/rRMM KQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 36hjhqvmcn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Feb 2021 18:40:45 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11AIP5u4183658;
 Wed, 10 Feb 2021 18:40:43 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 36j51xxy03-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Feb 2021 18:40:43 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11AIegxX032272;
 Wed, 10 Feb 2021 18:40:42 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 10 Feb 2021 10:40:41 -0800
Date: Wed, 10 Feb 2021 21:40:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Phillip Potter <phil@philpotter.co.uk>
Subject: Re: [PATCH] staging: rtl8723bs: cleanup macros within
 include/rtw_debug.h
Message-ID: <20210210184027.GZ2696@kadam>
References: <20210210170003.100880-1-phil@philpotter.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210170003.100880-1-phil@philpotter.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9891
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 phishscore=0
 mlxscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102100167
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9891
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 impostorscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 mlxscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=999 clxscore=1011 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102100167
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

On Wed, Feb 10, 2021 at 05:00:03PM +0000, Phillip Potter wrote:
> Remove do/while loops from DBG_871X, MSG_8192C and DBG_8192C.

I'm pretty hip to checkpatch.pl warnings, but I had forgotten what the
warning was for this:

WARNING: Single statement macros should not use a do {} while (0) loop

Please, include it for people who are forgetful like I am.

> Also
> fix opening brace placements and trailing single statement layout within
> RT_PRINT_DATA, as well as making newline character placement more
> consistent and removing camel case where possible. Finally, add
> parentheses for DBG_COUNTER definition.
> 
> This fixes 3 checkpatch warnings, 5 checkpatch errors and 3 checkpatch
> checks.

This patch would be easier to review if it were split into multiple
patches.

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

This can fit on one line:

	#define DBG_871X(...) _dbgdump(DRIVER_PREFIX __VA_ARGS__)

It's tough with staging code to know how much to change at one time
because even after you change the code then it still looks rubbish.
This define shouldn't be indented.  The _dbgdump() macro is just

#define _dbgdump printk

so you know, no printk level.  Wow.  etc.  This code is crap.

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
>  #endif /* defined(_dbgdump) */
>  #endif /* DEBUG */
>  

Yeah.  Do all the above as one patch.

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
> -			u8 *ptr = (u8 *)_HexData;				\
> +			u8 *ptr = (u8 *)_hex_data;						\
>  			_dbgdump("%s", DRIVER_PREFIX);						\
> -			_dbgdump(_TitleString);						\
> -			for (__i = 0; __i < (int)_HexDataLen; __i++)				\
> -			{								\
> +			_dbgdump(_title_string);						\
> +			for (__i = 0; __i < (int)_hex_data_len; __i++) {			\
>  				_dbgdump("%02X%s", ptr[__i], (((__i + 1) % 4) == 0)?"  ":" ");	\
> -				if (((__i + 1) % 16) == 0)	_dbgdump("\n");			\
> -			}								\
> -			_dbgdump("\n");							\
> -		}
> +				if (((__i + 1) % 16) == 0)					\
> +					_dbgdump("\n");						\
> +			}									\
> +			_dbgdump("\n");								\
> +		}										\
> +	} while (0)

This is okay, I suppose but we have functions to dump hex data.  I can't
remember what they are...  One patch for this.

>  #endif /* defined(_dbgdump) */
>  #endif /* DEBUG_RTL871X */
>  
>  #ifdef CONFIG_DBG_COUNTER
> -#define DBG_COUNTER(counter) counter++
> +#define DBG_COUNTER(counter) ((counter)++)

Heh...  I think these counters are write only variables.  Double check
and then just delete everything to do with CONFIG_DBG_COUNTER.
(In a separate patch).

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
