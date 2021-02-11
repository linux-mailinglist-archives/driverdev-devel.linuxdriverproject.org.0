Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79ACF319482
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 21:31:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2EE2F86F14;
	Thu, 11 Feb 2021 20:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lqg7nDlUwfBQ; Thu, 11 Feb 2021 20:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B361186E73;
	Thu, 11 Feb 2021 20:31:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 848E21BF3F6
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 20:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68C616F77B
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 20:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mb5Oh68M3CWs for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 20:31:17 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id B45B76F66A; Thu, 11 Feb 2021 20:31:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 70B716F765
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 20:30:45 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BF73064E15;
 Thu, 11 Feb 2021 20:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613075444;
 bh=T9SdAcek07M4Q+L/hvZW7D1xM6V0Avozed8OyLbtOZU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fr9pqJUj++Sg4xY6BfN8HkVe9bkUmxFqpcpvVydK5zEkwwBidT3Fcu7AuIpDy83kq
 D1a2ire6EoCr6q+FP5h2/KFw3BoCJqU8KzmRmx1CdSPYwnqljxgJzU+5RQiQs3REoy
 sRMvuWzxQWiW2JiiuqYSRQkqhdDgrsD5aNc30ZT0=
Date: Thu, 11 Feb 2021 21:30:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
Subject: Re: [PATCH] staging: wimax: Fix some coding style problems
Message-ID: <YCWT8Gr7huhXTkn4@kroah.com>
References: <20210211171320.141928-1-hemanshagnihotri27@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211171320.141928-1-hemanshagnihotri27@gmail.com>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 mail@anirudhrb.com, kuba@kernel.org, johannes@sipsolutions.net,
 lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 10:43:20PM +0530, Hemansh Agnihotri wrote:
> This fixes checkpatch errors :- "else should follow close brace '}'",
> "space required before the open parenthesis '('" and "spaces required
> around that '?' (ctx:VxW)" in drivers/staging/wimax/i2400m/rx.c file.
> 
> Signed-off-by: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
> ---
>  drivers/staging/wimax/i2400m/rx.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/wimax/i2400m/rx.c b/drivers/staging/wimax/i2400m/rx.c
> index 5b3a85035f6a..8ea0bd039ed7 100644
> --- a/drivers/staging/wimax/i2400m/rx.c
> +++ b/drivers/staging/wimax/i2400m/rx.c
> @@ -485,8 +485,7 @@ struct i2400m_roq_data {
>   * store the sequence number (sn) and the cs (packet type) coming from
>   * the RX payload header from the device.
>   */
> -struct i2400m_roq
> -{
> +struct i2400m_roq {
>  	unsigned ws;
>  	struct sk_buff_head queue;
>  	struct i2400m_roq_log *log;
> @@ -556,7 +555,7 @@ void i2400m_roq_log_entry_print(struct i2400m *i2400m, unsigned index,
>  {
>  	struct device *dev = i2400m_dev(i2400m);
>  
> -	switch(e->type) {
> +	switch (e->type) {
>  	case I2400M_RO_TYPE_RESET:
>  		dev_err(dev, "q#%d reset           ws %u cnt %u sn %u/%u"
>  			" - new nws %u\n",
> @@ -1046,7 +1045,7 @@ void i2400m_rx_edata(struct i2400m *i2400m, struct sk_buff *skb_rx,
>  			 ro_type, ro_cin, roq->ws, ro_sn,
>  			 __i2400m_roq_nsn(roq, ro_sn), size);
>  		d_dump(2, dev, payload, size);
> -		switch(ro_type) {
> +		switch (ro_type) {
>  		case I2400M_RO_TYPE_RESET:
>  			i2400m_roq_reset(i2400m, roq);
>  			kfree_skb(skb);	/* no data here */
> @@ -1346,7 +1345,7 @@ int i2400m_rx_setup(struct i2400m *i2400m)
>  {
>  	int result = 0;
>  
> -	i2400m->rx_reorder = i2400m_rx_reorder_disabled? 0 : 1;
> +	i2400m->rx_reorder = i2400m_rx_reorder_disabled ? 0 : 1;
>  	if (i2400m->rx_reorder) {
>  		unsigned itr;
>  		struct i2400m_roq_log *rd;
> @@ -1365,7 +1364,7 @@ int i2400m_rx_setup(struct i2400m *i2400m)
>  			goto error_roq_log_alloc;
>  		}
>  
> -		for(itr = 0; itr < I2400M_RO_CIN + 1; itr++) {
> +		for (itr = 0; itr < I2400M_RO_CIN + 1; itr++) {
>  			__i2400m_roq_init(&i2400m->rx_roq[itr]);
>  			i2400m->rx_roq[itr].log = &rd[itr];
>  		}
> -- 
> 2.30.0
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
