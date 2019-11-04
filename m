Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02941EE57B
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 18:03:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8ABF8AA12;
	Mon,  4 Nov 2019 17:03:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YommZBQpMb6e; Mon,  4 Nov 2019 17:03:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1DCF8AA10;
	Mon,  4 Nov 2019 17:03:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F1E71BF4D6
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 17:03:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1B26B2050F
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 17:03:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PvLec5uG+SvR for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 17:03:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp118.ord1d.emailsrvr.com (smtp118.ord1d.emailsrvr.com
 [184.106.54.118])
 by silver.osuosl.org (Postfix) with ESMTPS id 38C9A204AB
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 17:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1572886986;
 bh=SJS/ittzgAH8BlGqcQ8TbkYpepfiiLoeVfFqeIS8430=;
 h=Subject:To:From:Date:From;
 b=lSOCFHyVtAeGxGgsfdwN3OXRioUUfK9ced6m1o9WRgKUOJhHYTTDo0w4ZKOjxfbtd
 NrovYV19+Y/qcbWh1Hije4nU3yMY8ZJp4aqdXUyU0q1WyZ4syNsAk6zCQPp1dV0uWv
 rS9vbqEROMFLMag9wJPmxIMI1BBHhPUcbUXu84bo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1572886986;
 bh=SJS/ittzgAH8BlGqcQ8TbkYpepfiiLoeVfFqeIS8430=;
 h=Subject:To:From:Date:From;
 b=blcGG18hc9sNzm6nF7m1Q5GAVQwpvZ8AWKKBn3b8Zjwg+xhK8t5HB4ENZtqI1xhi7
 E/MIKF7dE9Up0f6KO4aqeiVhuQKF9wUAD1oylcBCwLH2HtECNMu0LxLEDjuxrFP+8L
 2jAEN9PfXpt02C3WcyFcCkvbSHt/sGdQ3Jgb/lKE=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp23.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 985A320362; 
 Mon,  4 Nov 2019 12:03:05 -0500 (EST)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Mon, 04 Nov 2019 12:03:06 -0500
Subject: Re: [PATCH v2] staging: comedi: rewrite macro function with GNU
 extension typeof
To: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com
References: <20191104163331.68173-1-jbi.octave@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <84a2d50f-a1ac-bdc5-989c-b0294e9dea22@mev.co.uk>
Date: Mon, 4 Nov 2019 17:03:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191104163331.68173-1-jbi.octave@gmail.com>
Content-Language: en-GB
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 04/11/2019 16:33, Jules Irenge wrote:
> Rewrite macro function with the GNU extension typeof
> to remove a possible side-effects of MACRO argument reuse "x".
>   - Problem could rise if arguments have different types
> and different use though.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
> v1 - had no full commit log message, with changes not intended to be in the patch
> v2 - remove some changes not intended to be in this driver
>       include note of a potential problem
>   drivers/staging/comedi/comedi.h | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
> index 09a940066c0e..a57691a2e8d8 100644
> --- a/drivers/staging/comedi/comedi.h
> +++ b/drivers/staging/comedi/comedi.h
> @@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
>   
>   /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
>   
> -#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
> -#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
> +#define NI_USUAL_PFI_SELECT(x)\
> +	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
> +#define NI_USUAL_RTSI_SELECT(x)\
> +	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })
>   
>   /*
>    * mode bits for NI general-purpose counters, set with
> 

I wasn't sure about this the first time around due to the use of GNU 
extensions in uapi header files, but I see there are a few, rare 
instances of this GNU extension elsewhere in other uapi headers (mainly 
in netfilter stuff), so I guess it's OK.  However, it  does mean that 
user code that uses these macros will no longer compile unless GNU 
extensions are enabled.

Does anyone know any "best practices" regarding use of GNU extensions in 
user header files under Linux?

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
