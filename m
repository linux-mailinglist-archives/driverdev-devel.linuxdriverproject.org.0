Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 210F530C82
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 12:26:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21106869B9;
	Fri, 31 May 2019 10:26:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WoRCOM7zWz65; Fri, 31 May 2019 10:26:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F506868B6;
	Fri, 31 May 2019 10:26:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC8221BF97E
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 10:25:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E988486942
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 10:25:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WJuJJp5893E9 for <devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:25:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp65.ord1d.emailsrvr.com (smtp65.ord1d.emailsrvr.com
 [184.106.54.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3092A868B6
 for <devel@driverdev.osuosl.org>; Fri, 31 May 2019 10:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1559298357;
 bh=+RyXWqRhvrx46/X9uDvSyUTN7HW9qCylh6KVuj6gMts=;
 h=Subject:To:From:Date:From;
 b=HrTvH2rfJc3JxXza8WwraZ7VbrPncQJsSJinzEHEoln6GccBuDQxq9B4g5kyYoWOW
 JryjYPZvi2RhKOAn/cRTIKCiR7E7gxr5baAfAvuiRyCxKz8Tf8EEfSafxDR5eygFA6
 hTGsVLtCRHOrVbZ3D+gQxJlDHKL6AV5CpB7svr3E=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1559298357;
 bh=+RyXWqRhvrx46/X9uDvSyUTN7HW9qCylh6KVuj6gMts=;
 h=Subject:To:From:Date:From;
 b=cvZXbugWw23POqggq5TbKOn/+todCezZby6ZEdzFBsKDmXgNR9jm2aLsDhloYR+Lj
 lRvmKBq1ClFcHCVHfETPN73C/u7VCG8TK+SMzqKlp3kgtLsvG+sqSkp0iIL261YmRT
 WJm5WvH2OQHZEeZyWcwW05BiSM6iBcET1avUYKlI=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp1.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 158AA4015F; 
 Fri, 31 May 2019 06:25:55 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.62] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Fri, 31 May 2019 06:25:57 -0400
Subject: Re: [PATCH] staging: comedi: Remove variable runflags
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, hsweeten@visionengravers.com, 
 gregkh@linuxfoundation.org, olsonse@umich.edu, jkhasdev@gmail.com,
 giulio.benetti@micronovasrl.com, nishadkamdar@gmail.com,
 kas.sandesh@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20190530205131.29955-1-nishkadg.linux@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <8292224d-9c4a-d29e-4a86-d3352fcd2be1@mev.co.uk>
Date: Fri, 31 May 2019 11:25:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190530205131.29955-1-nishkadg.linux@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 30/05/2019 21:51, Nishka Dasgupta wrote:
> Remove variable runflags and use its value directly. Issue found with
> checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>   drivers/staging/comedi/comedi_fops.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index f6d1287c7b83..b84ee9293903 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -676,16 +676,12 @@ EXPORT_SYMBOL_GPL(comedi_is_subdevice_running);
>   
>   static bool __comedi_is_subdevice_running(struct comedi_subdevice *s)
>   {
> -	unsigned int runflags = __comedi_get_subdevice_runflags(s);
> -
> -	return comedi_is_runflags_running(runflags);
> +	return comedi_is_runflags_running(__comedi_get_subdevice_runflags(s));
>   }
>   
>   bool comedi_can_auto_free_spriv(struct comedi_subdevice *s)
>   {
> -	unsigned int runflags = __comedi_get_subdevice_runflags(s);
> -
> -	return runflags & COMEDI_SRF_FREE_SPRIV;
> +	return __comedi_get_subdevice_runflags(s) & COMEDI_SRF_FREE_SPRIV;
>   }
>   
>   /**
> 

I couldn't reproduce this checkpatch issue, even with '--subjective'.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
