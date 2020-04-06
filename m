Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E75119F739
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 15:52:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 35CF48850E;
	Mon,  6 Apr 2020 13:52:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DB27t9a1paGf; Mon,  6 Apr 2020 13:52:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 825E5880C5;
	Mon,  6 Apr 2020 13:51:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0301A1BF27F
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 13:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F042A23039
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 13:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hzdsVweoG5R2 for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 13:51:54 +0000 (UTC)
X-Greylist: delayed 00:05:40 by SQLgrey-1.7.6
Received: from smtp66.iad3a.emailsrvr.com (smtp66.iad3a.emailsrvr.com
 [173.203.187.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 034022155F
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 13:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1586180773;
 bh=sx2GlTr1skgOMXpKH+SQvrYKaP6Enh0lTplHmXPTNik=;
 h=Subject:To:From:Date:From;
 b=RwgsTpCVtnWo4PMfPnROwtBYJIBV1+3EcSfnu+cJ3EevPf583Us7n0CxMHPHas/M5
 5F1TpjK399HZNECibwwQR96StBM09VI+bEBPxB5wW6nY+/ItGc3Ph0YqK74JeamS9Y
 retU886mpZLrjwPesNHv6DCW1/igNTdAU8kmNLns=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp17.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id B2E5625590; 
 Mon,  6 Apr 2020 09:46:12 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
 by 0.0.0.0:465 (trex/5.7.12); Mon, 06 Apr 2020 09:46:13 -0400
Subject: Re: [PATCH] Staging: comedi: dt2815: remove set but not used variable
 'hi'
To: Wang Hai <wanghai38@huawei.com>, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org
References: <1586264372-15872-1-git-send-email-wanghai38@huawei.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <7e76bc61-7f3e-4bc8-4687-dd6d82c23dc1@mev.co.uk>
Date: Mon, 6 Apr 2020 14:46:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1586264372-15872-1-git-send-email-wanghai38@huawei.com>
Content-Language: en-GB
X-Classification-ID: a405988f-90a9-4235-8856-dcf8a6351cf0-1-1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 07/04/2020 13:59, Wang Hai wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/staging/comedi/drivers/dt2815.c: In function dt2815_ao_insn:
> drivers/staging/comedi/drivers/dt2815.c:91:19: warning: variable 'hi' set but not used [-Wunused-but-set-variable]
> 
> commit d6a929b7608a ("Staging: comedi: add dt2815 driver")
> involved this, remove it.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wang Hai <wanghai38@huawei.com>
> ---
>   drivers/staging/comedi/drivers/dt2815.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/dt2815.c b/drivers/staging/comedi/drivers/dt2815.c
> index 83026ba..bcf85ec 100644
> --- a/drivers/staging/comedi/drivers/dt2815.c
> +++ b/drivers/staging/comedi/drivers/dt2815.c
> @@ -88,12 +88,11 @@ static int dt2815_ao_insn(struct comedi_device *dev, struct comedi_subdevice *s,
>   	struct dt2815_private *devpriv = dev->private;
>   	int i;
>   	int chan = CR_CHAN(insn->chanspec);
> -	unsigned int lo, hi;
> +	unsigned int lo;
>   	int ret;
>   
>   	for (i = 0; i < insn->n; i++) {
>   		lo = ((data[i] & 0x0f) << 4) | (chan << 1) | 0x01;
> -		hi = (data[i] & 0xff0) >> 4;
>   
>   		ret = comedi_timeout(dev, s, insn, dt2815_ao_status, 0x00);
>   		if (ret)
> 

That 'hi' value should be written to the hardware, but the driver is 
broken.  I don't think this driver has ever been tested as working 
because it has never written the 'hi' value to the hardware!

I think I know how to fix it.  I'll send a patch.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
