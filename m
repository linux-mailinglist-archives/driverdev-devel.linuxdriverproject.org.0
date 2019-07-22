Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7065C6FA06
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 09:10:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ABB1B2042A;
	Mon, 22 Jul 2019 07:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9Nfl5tmNhe7; Mon, 22 Jul 2019 07:10:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A705F203D1;
	Mon, 22 Jul 2019 07:10:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19CB91BF3AE
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 07:10:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1390E20397
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 07:10:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hwbirKOCQDtn for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 07:10:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by silver.osuosl.org (Postfix) with ESMTPS id 95A232014A
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 07:10:23 +0000 (UTC)
Received: from [192.168.1.110] ([77.2.59.209]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MirX2-1iJGlp2wBI-00euWx; Mon, 22 Jul 2019 08:57:13 +0200
Subject: Re: [PATCH] staging: unisys: visornic: Update the description of
 'poll_for_irq()'
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 david.kershner@unisys.com, gregkh@linuxfoundation.org,
 hariprasad.kelam@gmail.com, petrm@mellanox.com, davem@davemloft.net,
 jannh@google.com
References: <20190721170824.3412-1-christophe.jaillet@wanadoo.fr>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <9c65c094-ba60-cc07-e7eb-01741b91e04e@metux.net>
Date: Mon, 22 Jul 2019 08:57:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190721170824.3412-1-christophe.jaillet@wanadoo.fr>
Content-Language: en-US
X-Provags-ID: V03:K1:JScHAmko/jR3RmQqKpq6XSnvVMIv55H856GaLZrnGxO++8seAuE
 1fkvweWFkXtqPnY8sFf8Ols5OTt74idCBjoz3tPw2cOsz/4s9G+Zl3x++3PB4yWuTWWKjd5
 XgQl6LxhSBh/7HZdRROnRhq0P28V2dsRmIW1yJVXJigQCe1s0JGuxVE5/p+1gC9/jyZXUTY
 851F4FVJAVEI0pG8JS4Gw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:a8gHtv7zmww=:P/kYWyzXZPL9BhOGOUxQhG
 +EfYlFGBekL5hK5c7GE52xplkNdfqBlaCArqLgRwYOeSDPzArJK6WaLTgEhT6yfudBu14s5QU
 InqxgK4yNQQxJIoq1Y6Ph4sti//usaGa8OBMYmKHfw2uh5R23PTa/519uauwIFEv+vk+aIucT
 o8bpeyroCwoNkV1QeJbZKpUqHPvVENKzh8puK3BsICkryIl7ya6Yn03dNy31Swcz4W9uziWX8
 OIqRL3iBBC7x5xkKQJXQrH8S8YrrME996dS0EyGVcRtIzmx13MEhaHB/YJMA5BtA3nayY4Ygr
 cjBQL0txFOPCbKVus4V6OEfaB7kuZn9fqeV93lCVrxqnnREdNr3wCiHHBIS6tRseCPf56PApl
 XjefzmrVy2zn4/fdDQzm04GE2Qp49tj/xHyrPSHSZDBIMSg1aqcspDAe1Fx2+5DEWRHw1Oos/
 SuzLKPgaO4SU1BGEQ/dgnBrtV4yTTEveZfHwk/S3j95lk6RWSV+wNFdhzRJG0nmX53LCmBkeY
 ynX94bwkEeH5NWTMsJ1DEMGtP3+MQ5qd+MxsK0YxZFSg3cwkkI/XFPjYuYIdNPUWdKQ+yXbc7
 TKfj9wfHxOwzwghKcJA7t8x5ZSNbAgAjwdxgbBpX4C77BBLgJVNiWIXbl80CNoNsgQU9NvKIf
 BDViT5cDJFijlz6n39z+nKYv1Vjzc+Y5ff6GMglRkkpN4C6xB26Y9x+ryxJ3WYeUzerSCVW0a
 SIo4XLgWTx87bdZtYsDF9gDfDEjN3eyVEviMkJHoM+s8L+pNb5BdsVHWOwA=
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
Cc: devel@driverdev.osuosl.org, sparmaintainer@unisys.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 21.07.19 19:08, Christophe JAILLET wrote:
> Commit e99e88a9d2b06 ("treewide: setup_timer() -> timer_setup()") has
> updated the parameters of 'poll_for_irq()' but not the comment above the
> function.
> 
> Update the comment and fix a typo.
> s/visronic/visornic/
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>   drivers/staging/unisys/visornic/visornic_main.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/unisys/visornic/visornic_main.c b/drivers/staging/unisys/visornic/visornic_main.c
> index 9d4f1dab0968..40dd573e73c3 100644
> --- a/drivers/staging/unisys/visornic/visornic_main.c
> +++ b/drivers/staging/unisys/visornic/visornic_main.c
> @@ -1750,7 +1750,8 @@ static int visornic_poll(struct napi_struct *napi, int budget)
>   }
>   
>   /* poll_for_irq	- checks the status of the response queue
> - * @v: Void pointer to the visronic devdata struct.
> + * @t: pointer to the 'struct timer_list' from which we can retrieve the
> + *     the visornic devdata struct.
>    *
>    * Main function of the vnic_incoming thread. Periodically check the response
>    * queue and drain it if needed.
> 
Reviewed-By: Enrico Weigelt <info@metux.net>

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
