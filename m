Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 114B9102237
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Nov 2019 11:47:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6A23C226FF;
	Tue, 19 Nov 2019 10:47:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DpZjwPgzwRUE; Tue, 19 Nov 2019 10:47:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F0C9C226CA;
	Tue, 19 Nov 2019 10:46:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F22021BF215
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 19 Nov 2019 10:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EDBE28830C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 19 Nov 2019 10:46:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nhmgAmYdb54L
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 19 Nov 2019 10:46:47 +0000 (UTC)
X-Greylist: delayed 00:09:54 by SQLgrey-1.7.6
Received: from smtp70.iad3a.emailsrvr.com (smtp70.iad3a.emailsrvr.com
 [173.203.187.70])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9A74D882E3
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 19 Nov 2019 10:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1574159812;
 bh=gl2U2O6i0+8YsT9+0HQN57GesfUs8qzSP65chccWksY=;
 h=Subject:To:From:Date:From;
 b=jihaa6tLM05oo1WjI8lU81DR/HdPmbEQ39X8B8mhKsobSO9idA1QbbdaPxwwkSLnb
 IZjq6GSFikEN3mIIw1wy+M8DSOmyobUoajBp6lBTfo6MALZgXi2DgJCZEkrc43Scgr
 2KgtYmaWwJnjUWjvlNfqeAXMweKOLltIV6YaNxEE=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp17.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 9061425DCE; 
 Tue, 19 Nov 2019 05:36:51 -0500 (EST)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Tue, 19 Nov 2019 05:36:51 -0500
Subject: Re: [PATCH] staging: comedi: usbduxfast: usbduxfast_ai_cmdtest
 rounding error
To: Bernd Porr <mail@berndporr.me.uk>, gregkh@linuxfoundation.org
References: <20191118230759.1727-1-mail@berndporr.me.uk>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <680db3f9-6a4b-878c-ad27-10f47c9fa042@mev.co.uk>
Date: Tue, 19 Nov 2019 10:36:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118230759.1727-1-mail@berndporr.me.uk>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 18/11/2019 23:07, Bernd Porr wrote:
> The userspace comedilib function 'get_cmd_generic_timed' fills
> the cmd structure with an informed guess and then calls the
> function 'usbduxfast_ai_cmdtest' in this driver repeatedly while
> 'usbduxfast_ai_cmdtest' is modifying the cmd struct until it
> no longer changes. However, because of rounding errors this never
> converged because 'steps = (cmd->convert_arg * 30) / 1000' and then
> back to 'cmd->convert_arg = (steps * 1000) / 30' won't be the same
> because of rounding errors. 'Steps' should only be converted back to
> the 'convert_arg' if 'steps' has actually been modified. In addition
> the case of steps being 0 wasn't checked which is also now done.
> 
> Signed-off-by: Bernd Porr <mail@berndporr.me.uk>
> ---
>   drivers/staging/comedi/drivers/usbduxfast.c | 21 ++++++++++++++-------
>   1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/usbduxfast.c b/drivers/staging/comedi/drivers/usbduxfast.c
> index 04bc488385e6..4af012968cb6 100644
> --- a/drivers/staging/comedi/drivers/usbduxfast.c
> +++ b/drivers/staging/comedi/drivers/usbduxfast.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0+
>   /*
> - *  Copyright (C) 2004-2014 Bernd Porr, mail@berndporr.me.uk
> + *  Copyright (C) 2004-2019 Bernd Porr, mail@berndporr.me.uk
>    */
>   
>   /*
> @@ -8,7 +8,7 @@
>    * Description: University of Stirling USB DAQ & INCITE Technology Limited
>    * Devices: [ITL] USB-DUX-FAST (usbduxfast)
>    * Author: Bernd Porr <mail@berndporr.me.uk>
> - * Updated: 10 Oct 2014
> + * Updated: 16 Nov 2019
>    * Status: stable
>    */
>   
> @@ -22,6 +22,7 @@
>    *
>    *
>    * Revision history:
> + * 1.0: Fixed a rounding error in usbduxfast_ai_cmdtest
>    * 0.9: Dropping the first data packet which seems to be from the last transfer.
>    *      Buffer overflows in the FX2 are handed over to comedi.
>    * 0.92: Dropping now 4 packets. The quad buffer has to be emptied.
> @@ -350,6 +351,7 @@ static int usbduxfast_ai_cmdtest(struct comedi_device *dev,
>   				 struct comedi_cmd *cmd)
>   {
>   	int err = 0;
> +	int err2 = 0;
>   	unsigned int steps;
>   	unsigned int arg;
>   
> @@ -399,11 +401,16 @@ static int usbduxfast_ai_cmdtest(struct comedi_device *dev,
>   	 */
>   	steps = (cmd->convert_arg * 30) / 1000;
>   	if (cmd->chanlist_len !=  1)
> -		err |= comedi_check_trigger_arg_min(&steps,
> -						    MIN_SAMPLING_PERIOD);
> -	err |= comedi_check_trigger_arg_max(&steps, MAX_SAMPLING_PERIOD);
> -	arg = (steps * 1000) / 30;
> -	err |= comedi_check_trigger_arg_is(&cmd->convert_arg, arg);
> +		err2 |= comedi_check_trigger_arg_min(&steps,
> +						     MIN_SAMPLING_PERIOD);
> +	else
> +		err2 |= comedi_check_trigger_arg_min(&steps, 1);
> +	err2 |= comedi_check_trigger_arg_max(&steps, MAX_SAMPLING_PERIOD);
> +	if (err2) {
> +		err |= err2;
> +		arg = (steps * 1000) / 30;
> +		err |= comedi_check_trigger_arg_is(&cmd->convert_arg, arg);
> +	}
>   
>   	if (cmd->stop_src == TRIG_COUNT)
>   		err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
> 

It looks fine to me.

Note to Greg: The patch subject line and patch description has been 
changed in this version of the patch, but the patch body is the same. 
The previous version with subject line "[PATCH] staging: comedi: 
usbduxsigma: usbduxfast_ai_cmdtest rounding error" can therefore be dropped.

I guess this can be applied to stable to fix problems with round-trip 
rounding.  If so, the following can be added:

Cc: <stable@vger.kernel.org> # 4.4+

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
