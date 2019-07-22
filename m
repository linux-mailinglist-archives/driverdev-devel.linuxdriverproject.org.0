Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3560A6F9DF
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 09:03:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2408F85641;
	Mon, 22 Jul 2019 07:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gYFIuwwCmve3; Mon, 22 Jul 2019 07:03:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C8160854AD;
	Mon, 22 Jul 2019 07:03:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E54481BF3FD
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 07:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DC0DA86F1B
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 07:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5uy6symz2-LU for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 07:03:08 +0000 (UTC)
X-Greylist: delayed 00:05:38 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A7A1F8777B
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 07:03:07 +0000 (UTC)
Received: from [192.168.1.110] ([77.2.59.209]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MYtoe-1htnpS2hzE-00UqxV; Mon, 22 Jul 2019 08:57:38 +0200
Subject: Re: [PATCH] staging: unisys: visornic: Update the description of
 'poll_for_irq()'
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 david.kershner@unisys.com, gregkh@linuxfoundation.org,
 hariprasad.kelam@gmail.com, petrm@mellanox.com, davem@davemloft.net,
 jannh@google.com
References: <20190721170824.3412-1-christophe.jaillet@wanadoo.fr>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <e40f7695-488e-12b2-685e-831b23072815@metux.net>
Date: Mon, 22 Jul 2019 08:57:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190721170824.3412-1-christophe.jaillet@wanadoo.fr>
Content-Language: en-US
X-Provags-ID: V03:K1:kLD45ADuhfL0FMOt26oA1wDSraM+e67+Mv8pwpi/0ivRetWSlLu
 Mhah2HZOMNxUuVDuhUodpjif1FEPP8MfH2j4dWnwv6PujS+ilsx1CxmlvalSYTuVXqCNjhz
 hx0qMD0eob7xREgNvBrPyAgrKEe5LVM/YtZ8XfKpoOg+iGlJykrlRm+N/HRmqeEZIyOt0gY
 mHRBRAR4Hw8SNuDntmbZQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:BWKLNLAwVKY=:6Lec05RcXd5PUcnT0SZmS0
 qPTjnPGYYBXIAgLUhrcL+1a1/43MoOj3zs08KhkHLeuK/GSgMuLZUFkH9BidPPk6T62g6xAtX
 GQZCOt7uZ+ornZcRHteUzvyiIJtJFg0v3h3N4QAh7jA1bNsjugPUhggO7ykkNUPSEjMwC6Rge
 WpWB2WmkWL9uVlfOfoIYAa2Pu7cV3SbmHbN/T8JhpQMBBcpVfUtSzjaba5hB0I9Ml/UjiE4cZ
 lVXyGS92EUygeqDYhB+WTewIvttgFGk0HtOMAl/0g3bk1ikMMg8fNlRfOaIXDgor9LPRELvQH
 EgmQK0I5C+S/nC7rNeqAorfGcrNRiT0jF2y0Fx5cDZc1AhaJ6kmTWS+qoetnZjipxopfO6jbA
 ZcWX9WzbA9cG7lKw1OvIMB4rUUSItJoMvDS0T7JFQ9r1u4/Apgm9bvh0cBkRSJubMGYA7JuFx
 5peHhFxJNj2mB6XRg3U/+id03TjR7InwZvAVoGVmtLx9NAhCzsZwuPCLPejsoj0aDNT0t8lB1
 PgI36mk1he0YtSkf/e4Z8eUx/ENUR+X8/pLtVaFqKlLAEXHA3aflrEC18haP+VCnsKbdfTPAw
 fFM1JEMXiabpVzEECSSqNzWHcbnEhmIEpnnthTiOfH2fA0zIawcYccPcNTmPlji+WXtOgWpjU
 9of2Fwmb8YHlIwsae6sBdTtdnM3Z6BZ2Vliq80qcCjj2QXwqVlhZeKLPyOnVfc8yk2j6CBR8a
 FkH7jFJfIoObHuMDwHDTPGtbFk9iH6YNbfXLEfqQ0jud6LbEuXNnIuhbRhQ=
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
