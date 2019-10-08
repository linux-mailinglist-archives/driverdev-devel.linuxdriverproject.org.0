Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AA3CFAC6
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 14:59:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CC9B87FFF;
	Tue,  8 Oct 2019 12:59:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E+GQ06rsHDEd; Tue,  8 Oct 2019 12:59:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 413FB87FCF;
	Tue,  8 Oct 2019 12:59:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FE851BF255
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:59:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4D3F9226DB
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:59:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c4jMJKkgZEfR for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 12:59:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp68.iad3b.emailsrvr.com (smtp68.iad3b.emailsrvr.com
 [146.20.161.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 787CF2049A
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 12:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1570539576;
 bh=Rk1OhwzkAYUcc3XJoLuoSjzuGRaMgt5AejjxcAW27xA=;
 h=Subject:To:From:Date:From;
 b=JGcgYt3vNWW2uS8Kvr92u1+SxXeOVuApLey05Cz9esCVqCbm+9wmtg1fjEm8ziisp
 KUspa6MXJx7SielhsC12HIT4/dtBhkJYvtJx0SyaYzoU29XJkU+eFbgizRp7o2ODw2
 cutRZhJdjt05poWxlfIK8TixiWEURiIKpKm05gTA=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp17.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id CE17AA0158; 
 Tue,  8 Oct 2019 08:59:35 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Tue, 08 Oct 2019 08:59:36 -0400
Subject: Re: [PATCH v2 6/6] staging: comedi: Remove set but not used variable
 'aref'
To: zhengbin <zhengbin13@huawei.com>, gregkh@linuxfoundation.org,
 eric@anholt.net, wahrenst@gmx.net, hsweeten@visionengravers.com,
 dan.carpenter@oracle.com, devel@driverdev.osuosl.org
References: <1570520515-2186-1-git-send-email-zhengbin13@huawei.com>
 <1570520515-2186-7-git-send-email-zhengbin13@huawei.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <29915a31-b0be-8cf9-0531-bad412c319e8@mev.co.uk>
Date: Tue, 8 Oct 2019 13:59:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1570520515-2186-7-git-send-email-zhengbin13@huawei.com>
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
> drivers/staging/comedi/drivers/dt3000.c: In function dt3k_ai_insn_read:
> drivers/staging/comedi/drivers/dt3000.c:511:27: warning: variable aref set but not used [-Wunused-but-set-variable]
> 
> It is not used since commit 2e310235ca8f ("staging:
> comedi: dt3000: rename dt3k_ai_insn()")
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>
> ---
>   drivers/staging/comedi/drivers/dt3000.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/dt3000.c b/drivers/staging/comedi/drivers/dt3000.c
> index caf4d4d..f7c365b 100644
> --- a/drivers/staging/comedi/drivers/dt3000.c
> +++ b/drivers/staging/comedi/drivers/dt3000.c
> @@ -508,12 +508,11 @@ static int dt3k_ai_insn_read(struct comedi_device *dev,
>   			     unsigned int *data)
>   {
>   	int i;
> -	unsigned int chan, gain, aref;
> +	unsigned int chan, gain;
> 
>   	chan = CR_CHAN(insn->chanspec);
>   	gain = CR_RANGE(insn->chanspec);
>   	/* XXX docs don't explain how to select aref */
> -	aref = CR_AREF(insn->chanspec);
> 
>   	for (i = 0; i < insn->n; i++)
>   		data[i] = dt3k_readsingle(dev, DPR_SUBSYS_AI, chan, gain);
> --
> 2.7.4
> 

That looks fine, thanks.

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
