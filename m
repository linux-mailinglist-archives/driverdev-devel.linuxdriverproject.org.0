Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BDF100B18
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 19:04:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC5298608D;
	Mon, 18 Nov 2019 18:04:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BhrIMf5Rr3I4; Mon, 18 Nov 2019 18:04:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B32785FA6;
	Mon, 18 Nov 2019 18:04:44 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D3DD41BF344
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 18:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CFE48867A1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 18:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AyXssOdE1IDy
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 18:04:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp94.ord1d.emailsrvr.com (smtp94.ord1d.emailsrvr.com
 [184.106.54.94])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9673886661
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 18:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1574100280;
 bh=jTyXnwhCDb8Np+4QYDHZvH97jBq7YtVjsqiKwvE2oK4=;
 h=Subject:To:From:Date:From;
 b=QCd+2iyjCnVrDXKVcbCZBNMpZ29xaHAiUT2gP0azJgnlnQwBMhSUWR7FcvRutDp+c
 rNvrpaYGBNr02+r1cvsxP8binT4l4wLFcqwPOjJeUNjhFCCHA1PfPlJHHnNWLFCgJh
 7zZa/7Ukb8iISPsJkJwVsZR/I4RJWwIV9luGF7Bk=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp12.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 48576E04DC; 
 Mon, 18 Nov 2019 13:04:40 -0500 (EST)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Mon, 18 Nov 2019 13:04:40 -0500
Subject: Re: [PATCH] staging: comedi: usbduxsigma: usbduxfast_ai_cmdtest
 rounding error
To: Bernd Porr <mail@berndporr.me.uk>, gregkh@linuxfoundation.org
References: <20191118172155.5314-1-mail@berndporr.me.uk>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <02cd939a-3d1a-01d8-c730-5d0a6881df2b@mev.co.uk>
Date: Mon, 18 Nov 2019 18:04:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118172155.5314-1-mail@berndporr.me.uk>
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

On 18/11/2019 17:21, Bernd Porr wrote:
> 'get_cmd_generic_timed' fills the cmd structure with an informed
> guess and then calls 'usbduxfast_ai_cmdtest' repeatedly while
> 'usbduxfast_ai_cmdtest' is modifying the cmd struct until it
> no longer changes. However, because of rounding errors this never
> converged because 'steps = (cmd->convert_arg * 30) / 1000' and then
> back to 'cmd->convert_arg = (steps * 1000) / 30' won't be the same
> because of rounding errors. 'Steps' should only be converted back to
> the 'convert_arg' if 'steps' has actually been modified. In addion
> the case of steps being 0 wasn't checked which is also now done.
> 
> Signed-off-by: Bernd Porr <mail@berndporr.me.uk>

The patch subject needs changing as it refers to usbduxsigma, and this 
patch is for usbduxfast.

While we're at it, there is a typo in the patch description "addion" => 
"addition".

Also, make it clear that 'get_cmd_generic_timed' is the user-space 
comedilib function 'comedi_get_cmd_generic_timed()'.

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

The actual patch looks good.  A 'Cc:' line for "stable" kernel versions 
4.4 and later could be added:

Cc: <stable@vger.kernel.org> # 4.4+

Please mark the updated patch as '[PATCH v2]' in the subject.  Thanks.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
