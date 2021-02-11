Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EA0319014
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 17:36:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 068BA87491;
	Thu, 11 Feb 2021 16:35:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cWrnFnqzB2EH; Thu, 11 Feb 2021 16:35:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E09E87480;
	Thu, 11 Feb 2021 16:35:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 07A661BF3E1
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 16:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 03B31875BB
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 16:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XWh2RX2ekh2x for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 16:35:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 876F5875B4
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 16:35:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BC9F864EA1;
 Thu, 11 Feb 2021 16:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613061352;
 bh=6HNyKlRhMY6N/UJINZdYNfx8qLBUPv+3TixtshblhGI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CyXYXBYs6CX5U8UT2NIq8rP//TQ7X03wa0Sk2v4mbv6mASyROTM9B30s4vemjoyLo
 5WBkPNFbqioTWfZDOBK3dx1X9yajcvuTvvb8w98Qvnxs/mf/nlgsQpwvYr3HPRjiHr
 pT5sGAP2x7RZgdEo7aMG/v3jZqRBWTNoQQktMmoA=
Date: Thu, 11 Feb 2021 17:35:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
Subject: Re: [PATCH] staging: wimax: Fix some coding style problems
Message-ID: <YCVc5QTlPHdr8P+e@kroah.com>
References: <20210211161553.140871-1-hemanshagnihotri27@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211161553.140871-1-hemanshagnihotri27@gmail.com>
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

On Thu, Feb 11, 2021 at 09:45:53PM +0530, Hemansh Agnihotri wrote:
> This fixes following warnings and errors as reported by checkpatch.pl:
> 	1) WARNING: Missing a blank line after declarations
> 	2) WARNING: Block comments use a trailing */ on a separate line
> 	3) ERROR: code indent should use tabs where possible
> 	4) ERROR: space required before the open parenthesis '('
> 	5) ERROR: spaces required around that '?' (ctx:VxW)
> 	6) ERROR: open brace '{' following struct go on the same line
> 
> Signed-off-by: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
> ---
>  drivers/staging/wimax/i2400m/netdev.c |  2 +-
>  drivers/staging/wimax/i2400m/rx.c     | 20 +++++++++-------
>  drivers/staging/wimax/i2400m/tx.c     | 34 +++++++++++++++++++--------
>  drivers/staging/wimax/i2400m/usb-rx.c |  8 +++++--
>  drivers/staging/wimax/i2400m/usb.c    | 10 +++++---
>  drivers/staging/wimax/op-msg.c        |  1 +
>  drivers/staging/wimax/op-rfkill.c     |  7 ++++--
>  drivers/staging/wimax/stack.c         |  2 ++
>  8 files changed, 58 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/staging/wimax/i2400m/netdev.c b/drivers/staging/wimax/i2400m/netdev.c
> index cd06eaf75e8b..5b53e59084c8 100644
> --- a/drivers/staging/wimax/i2400m/netdev.c
> +++ b/drivers/staging/wimax/i2400m/netdev.c
> @@ -523,7 +523,7 @@ void i2400m_net_erx(struct i2400m *i2400m, struct sk_buff *skb,
>  
>  	d_fnstart(2, dev, "(i2400m %p skb %p [%u] cs %d)\n",
>  		  i2400m, skb, skb->len, cs);
> -	switch(cs) {
> +	switch (cs) {
>  	case I2400M_CS_IPV4_0:
>  	case I2400M_CS_IPV4:
>  		i2400m_rx_fake_eth_header(i2400m->wimax_dev.net_dev,
> diff --git a/drivers/staging/wimax/i2400m/rx.c b/drivers/staging/wimax/i2400m/rx.c
> index 5b3a85035f6a..036210a1fd55 100644
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
> @@ -522,6 +521,7 @@ static
>  unsigned __i2400m_roq_nsn(struct i2400m_roq *roq, unsigned sn)
>  {
>  	int r;
> +
>  	r =  ((int) sn - (int) roq->ws) % 2048;
>  	if (r < 0)
>  		r += 2048;
> @@ -556,7 +556,7 @@ void i2400m_roq_log_entry_print(struct i2400m *i2400m, unsigned index,
>  {
>  	struct device *dev = i2400m_dev(i2400m);
>  
> -	switch(e->type) {
> +	switch (e->type) {
>  	case I2400M_RO_TYPE_RESET:
>  		dev_err(dev, "q#%d reset           ws %u cnt %u sn %u/%u"
>  			" - new nws %u\n",
> @@ -694,7 +694,8 @@ void __i2400m_roq_queue(struct i2400m *i2400m, struct i2400m_roq *roq,
>  	 * not empty, so we are not the first ones; we also know we
>  	 * are not going to be the last ones. The list is sorted, so
>  	 * we have to insert before the the first guy with an nsn_itr
> -	 * greater that our nsn. */
> +	 * greater that our nsn.
> +	 */
>  	skb_queue_walk(&roq->queue, skb_itr) {
>  		roq_data_itr = (struct i2400m_roq_data *) &skb_itr->cb;
>  		nsn_itr = __i2400m_roq_nsn(roq, roq_data_itr->sn);
> @@ -1016,7 +1017,8 @@ void i2400m_rx_edata(struct i2400m *i2400m, struct sk_buff *skb_rx,
>  	/* now we have to pull and trim so that the skb points to the
>  	 * beginning of the IP packet; the netdev part will add the
>  	 * ethernet header as needed - we know there is enough space
> -	 * because we checked in i2400m_rx_edata(). */
> +	 * because we checked in i2400m_rx_edata().
> +	 */
>  	skb_pull(skb, payload + sizeof(*hdr) - (void *) skb->data);
>  	skb_trim(skb, (void *) skb_end_pointer(skb) - payload - sizeof(*hdr));
>  
> @@ -1046,7 +1048,7 @@ void i2400m_rx_edata(struct i2400m *i2400m, struct sk_buff *skb_rx,
>  			 ro_type, ro_cin, roq->ws, ro_sn,
>  			 __i2400m_roq_nsn(roq, ro_sn), size);
>  		d_dump(2, dev, payload, size);
> -		switch(ro_type) {
> +		switch (ro_type) {
>  		case I2400M_RO_TYPE_RESET:
>  			i2400m_roq_reset(i2400m, roq);
>  			kfree_skb(skb);	/* no data here */
> @@ -1146,6 +1148,7 @@ int i2400m_rx_msg_hdr_check(struct i2400m *i2400m,
>  {
>  	int result = -EIO;
>  	struct device *dev = i2400m_dev(i2400m);
> +
>  	if (buf_size < sizeof(*msg_hdr)) {
>  		dev_err(dev, "RX: HW BUG? message with short header (%zu "
>  			"vs %zu bytes expected)\n", buf_size, sizeof(*msg_hdr));
> @@ -1313,6 +1316,7 @@ void i2400m_unknown_barker(struct i2400m *i2400m,
>  	struct device *dev = i2400m_dev(i2400m);
>  	char prefix[64];
>  	const __le32 *barker = buf;
> +
>  	dev_err(dev, "RX: HW BUG? unknown barker %08x, "
>  		"dropping %zu bytes\n", le32_to_cpu(*barker), size);
>  	snprintf(prefix, sizeof(prefix), "%s %s: ",
> @@ -1346,7 +1350,7 @@ int i2400m_rx_setup(struct i2400m *i2400m)
>  {
>  	int result = 0;
>  
> -	i2400m->rx_reorder = i2400m_rx_reorder_disabled? 0 : 1;
> +	i2400m->rx_reorder = i2400m_rx_reorder_disabled ? 0 : 1;
>  	if (i2400m->rx_reorder) {
>  		unsigned itr;
>  		struct i2400m_roq_log *rd;
> @@ -1365,7 +1369,7 @@ int i2400m_rx_setup(struct i2400m *i2400m)
>  			goto error_roq_log_alloc;
>  		}
>  
> -		for(itr = 0; itr < I2400M_RO_CIN + 1; itr++) {
> +		for (itr = 0; itr < I2400M_RO_CIN + 1; itr++) {
>  			__i2400m_roq_init(&i2400m->rx_roq[itr]);
>  			i2400m->rx_roq[itr].log = &rd[itr];
>  		}
> diff --git a/drivers/staging/wimax/i2400m/tx.c b/drivers/staging/wimax/i2400m/tx.c
> index e9436212fe54..b55cf09daee2 100644
> --- a/drivers/staging/wimax/i2400m/tx.c
> +++ b/drivers/staging/wimax/i2400m/tx.c
> @@ -508,6 +508,7 @@ void i2400m_tx_skip_tail(struct i2400m *i2400m)
>  	size_t tx_in = i2400m->tx_in % I2400M_TX_BUF_SIZE;
>  	size_t tail_room = __i2400m_tx_tail_room(i2400m);
>  	struct i2400m_msg_hdr *msg = i2400m->tx_buf + tx_in;
> +
>  	if (unlikely(tail_room == 0))
>  		return;
>  	BUG_ON(tail_room < sizeof(*msg));
> @@ -563,6 +564,7 @@ void i2400m_tx_new(struct i2400m *i2400m)
>  	struct device *dev = i2400m_dev(i2400m);
>  	struct i2400m_msg_hdr *tx_msg;
>  	bool try_head = false;
> +
>  	BUG_ON(i2400m->tx_msg != NULL);
>  	/*
>  	 * In certain situations, TX queue might have enough space to
> @@ -622,9 +624,11 @@ void i2400m_tx_close(struct i2400m *i2400m)
>  	if (tx_msg->size & I2400M_TX_SKIP)	/* a skipper? nothing to do */
>  		goto out;
>  	num_pls = le16_to_cpu(tx_msg->num_pls);
> -	/* We can get this situation when a new message was started
> +	/*
> +	 * We can get this situation when a new message was started
>  	 * and there was no space to add payloads before hitting the
> -	 tail (and taking padding into consideration). */
> +	 * tail (and taking padding into consideration).
> +	 */
>  	if (num_pls == 0) {
>  		tx_msg->size |= I2400M_TX_SKIP;
>  		goto out;
> @@ -655,9 +659,11 @@ void i2400m_tx_close(struct i2400m *i2400m)
>  	if (padding > 0) {
>  		pad_buf = i2400m_tx_fifo_push(i2400m, padding, 0, 0);
>  		if (WARN_ON(pad_buf == NULL || pad_buf == TAIL_FULL)) {
> -			/* This should not happen -- append should verify
> +			/*
> +			 * This should not happen -- append should verify
>  			 * there is always space left at least to append
> -			 * tx_block_size */
> +			 * tx_block_size
> +			 */
>  			dev_err(dev,
>  				"SW BUG! Possible data leakage from memory the "
>  				"device should not read for padding - "
> @@ -728,9 +734,11 @@ int i2400m_tx(struct i2400m *i2400m, const void *buf, size_t buf_len,
>  		  i2400m, buf, buf_len, pl_type);
>  	padded_len = ALIGN(buf_len, I2400M_PL_ALIGN);
>  	d_printf(5, dev, "padded_len %zd buf_len %zd\n", padded_len, buf_len);
> -	/* If there is no current TX message, create one; if the
> +	/*
> +	 * If there is no current TX message, create one; if the
>  	 * current one is out of payload slots or we have a singleton,
> -	 * close it and start a new one */
> +	 * close it and start a new one
> +	 */
>  	spin_lock_irqsave(&i2400m->tx_lock, flags);
>  	/* If tx_buf is NULL, device is shutdown */
>  	if (i2400m->tx_buf == NULL) {
> @@ -763,8 +771,10 @@ int i2400m_tx(struct i2400m *i2400m, const void *buf, size_t buf_len,
>  	}
>  	if (i2400m->tx_msg == NULL)
>  		goto error_tx_new;
> -	/* So we have a current message header; now append space for
> -	 * the message -- if there is not enough, try the head */
> +	/*
> +	 * So we have a current message header; now append space for
> +	 * the message -- if there is not enough, try the head
> +	 */
>  	ptr = i2400m_tx_fifo_push(i2400m, padded_len,
>  				  i2400m->bus_tx_block_size, try_head);
>  	if (ptr == TAIL_FULL) {	/* Tail is full, try head */
> @@ -779,6 +789,7 @@ int i2400m_tx(struct i2400m *i2400m, const void *buf, size_t buf_len,
>  	} else {			/* Got space, copy it, set padding */
>  		struct i2400m_msg_hdr *tx_msg = i2400m->tx_msg;
>  		unsigned num_pls = le16_to_cpu(tx_msg->num_pls);
> +
>  		memcpy(ptr, buf, buf_len);
>  		memset(ptr + buf_len, 0xad, padded_len - buf_len);
>  		i2400m_pld_set(&tx_msg->pld[num_pls], buf_len, pl_type);
> @@ -799,8 +810,10 @@ int i2400m_tx(struct i2400m *i2400m, const void *buf, size_t buf_len,
>  	}
>  error_tx_new:
>  	spin_unlock_irqrestore(&i2400m->tx_lock, flags);
> -	/* kick in most cases, except when the TX subsys is down, as
> -	 * it might free space */
> +	/*
> +	 * kick in most cases, except when the TX subsys is down, as
> +	 * it might free space
> +	 */
>  	if (likely(result != -ESHUTDOWN))
>  		i2400m->bus_tx_kick(i2400m);
>  	d_fnend(3, dev, "(i2400m %p skb %p [%zu bytes] pt %u) = %d\n",
> @@ -1008,6 +1021,7 @@ int i2400m_tx_setup(struct i2400m *i2400m)
>  void i2400m_tx_release(struct i2400m *i2400m)
>  {
>  	unsigned long flags;
> +
>  	spin_lock_irqsave(&i2400m->tx_lock, flags);
>  	kfree(i2400m->tx_buf);
>  	i2400m->tx_buf = NULL;
> diff --git a/drivers/staging/wimax/i2400m/usb-rx.c b/drivers/staging/wimax/i2400m/usb-rx.c
> index 5b64bda7d9e7..5cb69c18478b 100644
> --- a/drivers/staging/wimax/i2400m/usb-rx.c
> +++ b/drivers/staging/wimax/i2400m/usb-rx.c
> @@ -147,6 +147,7 @@ void i2400mu_rx_size_maybe_shrink(struct i2400mu *i2400mu)
>  		size_t avg_rx_size =
>  			i2400mu->rx_size_acc / i2400mu->rx_size_cnt;
>  		size_t new_rx_size = i2400mu->rx_size / 2;
> +
>  		if (avg_rx_size < new_rx_size) {
>  			if (new_rx_size % max_pkt_size == 0) {
>  				new_rx_size -= 8;
> @@ -251,6 +252,7 @@ struct sk_buff *i2400mu_rx(struct i2400mu *i2400mu, struct sk_buff *rx_skb)
>  		break;
>  	case -EOVERFLOW: {		/* too small, reallocate */
>  		struct sk_buff *new_skb;
> +
>  		rx_size = i2400mu_rx_size_grow(i2400mu);
>  		if (rx_size <= (1 << 16))	/* cap it */
>  			i2400mu->rx_size = rx_size;
> @@ -277,10 +279,12 @@ struct sk_buff *i2400mu_rx(struct i2400mu *i2400mu, struct sk_buff *rx_skb)
>  			 (long) skb_end_offset(new_skb));
>  		goto retry;
>  	}
> -		/* In most cases, it happens due to the hardware scheduling a
> +		/*
> +		 * In most cases, it happens due to the hardware scheduling a
>  		 * read when there was no data - unfortunately, we have no way
>  		 * to tell this timeout from a USB timeout. So we just ignore
> -		 * it. */
> +		 * it.
> +		 */
>  	case -ETIMEDOUT:
>  		dev_err(dev, "RX: timeout: %d\n", result);
>  		result = 0;
> diff --git a/drivers/staging/wimax/i2400m/usb.c b/drivers/staging/wimax/i2400m/usb.c
> index 481b1ccde983..d2d9acc9c397 100644
> --- a/drivers/staging/wimax/i2400m/usb.c
> +++ b/drivers/staging/wimax/i2400m/usb.c
> @@ -327,7 +327,7 @@ int i2400mu_bus_reset(struct i2400m *i2400m, enum i2400m_reset_type rt)
>  }
>  
>  static void i2400mu_get_drvinfo(struct net_device *net_dev,
> -                                struct ethtool_drvinfo *info)
> +				struct ethtool_drvinfo *info)
>  {
>  	struct i2400m *i2400m = net_dev_to_i2400m(net_dev);
>  	struct i2400mu *i2400mu = container_of(i2400m, struct i2400mu, i2400m);
> @@ -349,6 +349,7 @@ void i2400mu_netdev_setup(struct net_device *net_dev)
>  {
>  	struct i2400m *i2400m = net_dev_to_i2400m(net_dev);
>  	struct i2400mu *i2400mu = container_of(i2400m, struct i2400mu, i2400m);
> +
>  	i2400mu_init(i2400mu);
>  	i2400m_netdev_setup(net_dev);
>  	net_dev->ethtool_ops = &i2400mu_ethtool_ops;
> @@ -651,9 +652,11 @@ int i2400mu_resume(struct usb_interface *iface)
>  	}
>  	d_printf(1, dev, "fw was up, resuming\n");
>  	i2400mu_notification_setup(i2400mu);
> -	/* USB has flow control, so we don't need to give it time to
> +	/*
> +	 * USB has flow control, so we don't need to give it time to
>  	 * come back; otherwise, we'd use something like a get-state
> -	 * command... */
> +	 * command...
> +	 */
>  out:
>  	d_fnend(3, dev, "(iface %p) = %d\n", iface, ret);
>  	return ret;
> @@ -702,6 +705,7 @@ static
>  int i2400mu_post_reset(struct usb_interface *iface)
>  {
>  	struct i2400mu *i2400mu = usb_get_intfdata(iface);
> +
>  	return i2400m_post_reset(&i2400mu->i2400m);
>  }
>  
> diff --git a/drivers/staging/wimax/op-msg.c b/drivers/staging/wimax/op-msg.c
> index e20ac7d84e82..fcf122384624 100644
> --- a/drivers/staging/wimax/op-msg.c
> +++ b/drivers/staging/wimax/op-msg.c
> @@ -260,6 +260,7 @@ int wimax_msg_send(struct wimax_dev *wimax_dev, struct sk_buff *skb)
>  	struct device *dev = wimax_dev_to_dev(wimax_dev);
>  	void *msg = skb->data;
>  	size_t size = skb->len;
> +
>  	might_sleep();
>  
>  	d_printf(1, dev, "CTX: wimax msg, %zu bytes\n", size);
> diff --git a/drivers/staging/wimax/op-rfkill.c b/drivers/staging/wimax/op-rfkill.c
> index 78b294481a59..862fdc900652 100644
> --- a/drivers/staging/wimax/op-rfkill.c
> +++ b/drivers/staging/wimax/op-rfkill.c
> @@ -291,10 +291,12 @@ int wimax_rfkill(struct wimax_dev *wimax_dev, enum wimax_rf_state state)
>  	mutex_lock(&wimax_dev->mutex);
>  	result = wimax_dev_is_ready(wimax_dev);
>  	if (result < 0) {
> -		/* While initializing, < 1.4.3 wimax-tools versions use
> +		/*
> +		 * While initializing, < 1.4.3 wimax-tools versions use
>  		 * this call to check if the device is a valid WiMAX
>  		 * device; so we allow it to proceed always,
> -		 * considering the radios are all off. */
> +		 * considering the radios are all off.
> +		 */
>  		if (result == -ENOMEDIUM && state == WIMAX_RF_QUERY)
>  			result = WIMAX_RF_OFF << 1 | WIMAX_RF_OFF;
>  		goto error_not_ready;
> @@ -378,6 +380,7 @@ int wimax_rfkill_add(struct wimax_dev *wimax_dev)
>  void wimax_rfkill_rm(struct wimax_dev *wimax_dev)
>  {
>  	struct device *dev = wimax_dev_to_dev(wimax_dev);
> +
>  	d_fnstart(3, dev, "(wimax_dev %p)\n", wimax_dev);
>  	rfkill_unregister(wimax_dev->rfkill);
>  	rfkill_destroy(wimax_dev->rfkill);
> diff --git a/drivers/staging/wimax/stack.c b/drivers/staging/wimax/stack.c
> index ace24a6dfd2d..0d0f6ab79bf5 100644
> --- a/drivers/staging/wimax/stack.c
> +++ b/drivers/staging/wimax/stack.c
> @@ -156,6 +156,7 @@ int wimax_gnl_re_state_change_send(
>  {
>  	int result = 0;
>  	struct device *dev = wimax_dev_to_dev(wimax_dev);
> +
>  	d_fnstart(3, dev, "(wimax_dev %p report_skb %p)\n",
>  		  wimax_dev, report_skb);
>  	if (report_skb == NULL) {
> @@ -362,6 +363,7 @@ EXPORT_SYMBOL_GPL(wimax_state_change);
>  enum wimax_st wimax_state_get(struct wimax_dev *wimax_dev)
>  {
>  	enum wimax_st state;
> +
>  	mutex_lock(&wimax_dev->mutex);
>  	state = wimax_dev->state;
>  	mutex_unlock(&wimax_dev->mutex);
> -- 
> 2.30.0


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
