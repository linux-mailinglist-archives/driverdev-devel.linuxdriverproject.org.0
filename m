Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E22D3CFAAA
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 14:57:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A01FE87660;
	Tue,  8 Oct 2019 12:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ldl-lynS1TJQ; Tue,  8 Oct 2019 12:57:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 219638765E;
	Tue,  8 Oct 2019 12:57:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CFA931BF35A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CA99986142
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aNB0Q9mSmZdF for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 12:56:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp75.iad3b.emailsrvr.com (smtp75.iad3b.emailsrvr.com
 [146.20.161.75])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7683986088
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 12:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1570539410;
 bh=BqZs64MHv07kczdMmnSZtL40EhBN+71kpWfFd6DpH/E=;
 h=Subject:To:From:Date:From;
 b=QR6dFHWsHVWQbcQ5SdKHsVdgiR8SOrAsQpF+imqeEw75UVWwCP6qgPUJCqOHrfWZ6
 z8sda9Wwd7MVDee9STctx4aOs5Ns+i0IRepz8sV+bLLTAkO5cCdmuoqBhLf8qJK8C2
 DeUcwzVnQwd53oZhLyPKYF+pWfBMiNbiZpbUyzJk=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp2.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id D7403200BA; 
 Tue,  8 Oct 2019 08:56:49 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Tue, 08 Oct 2019 08:56:50 -0400
Subject: Re: [PATCH v2 5/6] staging: comedi: Remove set but not used variable
 'hi'
To: zhengbin <zhengbin13@huawei.com>, gregkh@linuxfoundation.org,
 eric@anholt.net, wahrenst@gmx.net, hsweeten@visionengravers.com,
 dan.carpenter@oracle.com, devel@driverdev.osuosl.org
References: <1570520515-2186-1-git-send-email-zhengbin13@huawei.com>
 <1570520515-2186-6-git-send-email-zhengbin13@huawei.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <03d15655-46fb-5312-5770-c0ebde1dc009@mev.co.uk>
Date: Tue, 8 Oct 2019 13:56:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1570520515-2186-6-git-send-email-zhengbin13@huawei.com>
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

On 08/10/2019 08:41, zhengbin wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/staging/comedi/drivers/dt2815.c: In function dt2815_ao_insn:
> drivers/staging/comedi/drivers/dt2815.c:91:19: warning: variable hi set but not used [-Wunused-but-set-variable]
> 
> It is not used since commit d6a929b7608a ("Staging:
> comedi: add dt2815 driver")
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>
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
> --
> 2.7.4
> 

There is something fishy going on in this one too.  It should be writing 
the 'hi' value to the card registers.

Please could you omit this patch from the series so I can investigate?

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
