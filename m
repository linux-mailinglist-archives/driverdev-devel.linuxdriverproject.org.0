Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E6131E86F
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 11:21:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1625986457;
	Thu, 18 Feb 2021 10:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agLon8h1a5F5; Thu, 18 Feb 2021 10:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCEF786433;
	Thu, 18 Feb 2021 10:21:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74F551BF2B9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7149586239
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QvvkWiEQIDak for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 10:21:44 +0000 (UTC)
X-Greylist: delayed 00:08:38 by SQLgrey-1.7.6
Received: from smtp104.iad3a.emailsrvr.com (smtp104.iad3a.emailsrvr.com
 [173.203.187.104])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A62DD861AB
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 10:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1613643185;
 bh=m8t/XvYW9G95yu9XimEdQKxasSEtsFIC/kxyuxGznXQ=;
 h=Subject:To:From:Date:From;
 b=yA6Z0QaT4Ycd/kgyfT6p/CRzVhqj+XQlFw/KcCy8Rv4VEoufamI5JAaBYjYlShTd+
 m3WGGaCUINsdB/RxQN8mR3sGCBtdqyFrL//CM178XYRYvSZPLfRNYxMi3ixwbZ9auN
 GIfQl1dRBA+9+DyeKv2livU6AHcScfGGC6qBEMFI=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1613643185;
 bh=m8t/XvYW9G95yu9XimEdQKxasSEtsFIC/kxyuxGznXQ=;
 h=Subject:To:From:Date:From;
 b=EaDRJM9YUnPRxXAlMwcJ+Q/sy4Z6YrgcX+hS6Va3bRlf8DGNKiQwJnpHne+0VxRx8
 JhcKzWlIXGnvif/45YEpqcLM+4rsmvbXxkAuvjWHuyKaXVHZ1JNCXuLufgFxwlaZ+B
 m9MLRLgx4R/Cc7zKtZes/7kUYWcUg9sjCp+YTTdo=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp22.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id F1CB8195C; 
 Thu, 18 Feb 2021 05:13:04 -0500 (EST)
Subject: Re: [PATCH] drivers: staging: comedi: Fixed side effects from macro
 definition.
To: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
References: <20210217142008.29699-1-chakravarthikulkarni2021@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <3c1ddf91-da6c-5620-61e7-1ec453b2aa93@mev.co.uk>
Date: Thu, 18 Feb 2021 10:13:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210217142008.29699-1-chakravarthikulkarni2021@gmail.com>
Content-Language: en-GB
X-Classification-ID: d7105027-4594-4034-967a-e94a4fffd174-1-1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ethan Edwards <ethancarteredwards@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 17/02/2021 14:20, chakravarthikulkarni wrote:
> Warning found by checkpatch.pl script.
> 
> Signed-off-by: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
> ---
>   drivers/staging/comedi/comedi.h | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
> index b5d00a006dbb..b2af6a88d389 100644
> --- a/drivers/staging/comedi/comedi.h
> +++ b/drivers/staging/comedi/comedi.h
> @@ -1103,9 +1103,12 @@ enum ni_common_signal_names {
>   
>   /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
>   
> -#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
> -#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
> -
> +#define NI_USUAL_PFI_SELECT(x) \
> +	({ typeof(x) _x = x; \
> +	 (((_x) < 10) ? (0x1 + (_x)) : (0xb + (_x))); })
> +#define NI_USUAL_RTSI_SELECT(x)	\
> +	({ typeof(x) _x = x; \
> +	 (((_x) < 7) ? (0xb + (_x)) : 0x1b); })
>   /*
>    * mode bits for NI general-purpose counters, set with
>    * INSN_CONFIG_SET_COUNTER_MODE
> 

I'd rather not do that because this is intended to be a userspace 
header.  This change adds GCC extensions and prohibits the use of the 
macros in constant expressions.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
