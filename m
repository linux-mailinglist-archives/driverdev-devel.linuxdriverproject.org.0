Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0C7D11DB
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 16:58:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 940BA883AD;
	Wed,  9 Oct 2019 14:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8agsllGhVJRd; Wed,  9 Oct 2019 14:58:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEBFA8838E;
	Wed,  9 Oct 2019 14:58:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9CE481BF423
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 96DCB878D6
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L93yKQRN6VoZ for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 14:58:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0D8D9878C1
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 14:58:16 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id o18so3380778wrv.13
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 07:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bLOSHRRPDzF4u9wV1pAUxn+EtmiKCY8TCQWeWSJQ6Uo=;
 b=OYuPtr1jHzPRfv++Z2pCkoqLuGO/0+qLoBHw9RCheLRJMgSMKtaoTukrtr+lCdWivc
 jE0dSWd/VHkytRBntY3rh029k9/55x66tZhRxtPQCmxtwpvNb6V4J8TRdMP1SGBp1FkB
 e1aKT53MDA9G/4sgbLJzaWAt4ctbVmjqdxlkl0FXWKlk95JNfVajJmpI9ydLJ0n+y/eW
 Du/txE1OMchSZGkIlhVzo7xXk1iNsCsNPZFv+dWmIgtNSCAHdePd+2pTeTEzssDhyiPw
 W1f9LWAFCXKKZ8uFc8+8m/sPYN4lb1DKUYldNzxDewYdpm+wCva3BgwXIhh8dXEjOdyN
 PMWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bLOSHRRPDzF4u9wV1pAUxn+EtmiKCY8TCQWeWSJQ6Uo=;
 b=Dm7XuZ7ZxbmGGKh4jcqwhHBdWSHwlcgQHqFbtm/GQzNzs/WEqhrmIzBKsDRcyFuur+
 zQ2FLoZV5m09avYal9+VLvkC81Z9YLft/X2kT66USD+2KvynbNKAdfZRUrhkQwjezwSB
 3glPD+2xSwE2Ja14P38Y3XmHxTwnjQNWIHEPBm5Tr7QZUUzocXmP8ZLDHXKfhiW+gxAb
 9MkGMDoW6UY+FlwLxreUW2sBOTQuRFuoHDCMJSXcxpqLQCC/F73PQ27xMhKdfPiunsBE
 ZQCiV96VYBjK4sBLn/DGhbCxTARnB7lhEbJomgyY9cOXZ3ysS6i2Z6xnzd+LcLXpzpel
 fyOg==
X-Gm-Message-State: APjAAAVGqJ/Bskm9i84JvXSZp2Ocs/rWW1EUkeQ6Qpn49B8cuMuRqTce
 6Spi6IXr41/3ryuokgYk/WcbLDMs
X-Google-Smtp-Source: APXvYqzhuDvocnI5zvw34t/95cTa0BVorSk8YqtdkDxCZqRGi0eKZU91Ddkfq2+aCFgxSIWAdDvDAA==
X-Received: by 2002:a5d:540d:: with SMTP id g13mr438062wrv.8.1570633094550;
 Wed, 09 Oct 2019 07:58:14 -0700 (PDT)
Received: from AlexGordeev-DPT-VI0092 ([213.86.25.46])
 by smtp.gmail.com with ESMTPSA id n18sm1645825wrq.20.2019.10.09.07.58.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 09 Oct 2019 07:58:14 -0700 (PDT)
Date: Wed, 9 Oct 2019 16:58:12 +0200
From: Alexander Gordeev <a.gordeev.box@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 1/2] dmaengine: avalon: Intel Avalon-MM DMA Interface
 for PCIe
Message-ID: <20191009145811.GA3823@AlexGordeev-DPT-VI0092>
References: <cover.1570558807.git.a.gordeev.box@gmail.com>
 <3ed3c016b7fbe69e36023e7ee09c53acac8a064c.1570558807.git.a.gordeev.box@gmail.com>
 <20191009121441.GM25098@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009121441.GM25098@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, Michael Chen <micchen@altera.com>,
 dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 09, 2019 at 03:14:41PM +0300, Dan Carpenter wrote:
> > +config AVALON_DMA_PCI_VENDOR_ID
> > +	hex "PCI vendor ID"
> > +	default "0x1172"
> > +
> > +config AVALON_DMA_PCI_DEVICE_ID
> > +	hex "PCI device ID"
> > +	default "0xe003"
> 
> This feels wrong.  Why isn't it known in advance.

Because device designers would likely use they own IDs. The ones I
put are just defaults inherited from the (Altera) reference design.

> > +	u32 *rd_flags = hw->dma_desc_table_rd.cpu_addr->flags;
> > +	u32 *wr_flags = hw->dma_desc_table_wr.cpu_addr->flags;
> > +	struct avalon_dma_desc *desc;
> > +	struct virt_dma_desc *vdesc;
> > +	bool rd_done;
> > +	bool wr_done;
> > +
> > +	spin_lock(lock);
> > +
> > +	rd_done = (hw->h2d_last_id < 0);
> > +	wr_done = (hw->d2h_last_id < 0);
> > +
> > +	if (rd_done && wr_done) {
> > +		spin_unlock(lock);
> > +		return IRQ_NONE;
> > +	}
> > +
> > +	do {
> > +		if (!rd_done && rd_flags[hw->h2d_last_id])
> > +			rd_done = true;
> > +
> > +		if (!wr_done && wr_flags[hw->d2h_last_id])
> > +			wr_done = true;
> > +	} while (!rd_done || !wr_done);
> 
> This loop is very strange.  It feels like the last_id indexes needs
> to atomic or protected from racing somehow so we don't do an out of
> bounds read.

My bad. I should have put a comment on this. This polling comes from my
reading of the Intel documentation:

"The MSI interrupt notifies the host when a DMA operation has completed.
After the host receives this interrupt, it can poll the DMA read or write
status table to determine which entry or entries have the done bit set."

"The Descriptor Controller writes a 1 to the done bit of the status DWORD
to indicate successful completion. The Descriptor Controller also sends
an MSI interrupt for the final descriptor. After receiving this MSI,
host software can poll the done bit to determine status."

I sense an ambiguity above. It sounds possible an MSI interrupt could be
delivered before corresponding done bit is set. May be imperfect wording..
Anyway, the loop does look weird and in reality I doubt I observed the
done bit unset even once. So I put this polling just in case.

> > +	struct avalon_dma_chan *chan = to_avalon_dma_chan(dma_chan);
> > +	struct avalon_dma_desc *desc;
> > +	gfp_t gfp_flags = in_interrupt() ? GFP_NOWAIT : GFP_KERNEL;
> > +	dma_addr_t dev_addr;
> > +
> > +	if (direction == DMA_MEM_TO_DEV)
> > +		dev_addr = chan->dst_addr;
> > +	else if (direction == DMA_DEV_TO_MEM)
> > +		dev_addr = chan->src_addr;
> > +	else
> > +		return NULL;
> > +
> > +	desc = kzalloc(sizeof(*desc), gfp_flags);
> 
> Everyone else does GFP_WAIT or GFP_ATOMIC.  Is GFP_KERNEL really okay?

I am not sure why not to use GFP_KERNEL from non-atomic context.
Documentation/driver-api/dmaengine/provider.rst claims always to
use GFP_NOWAIT though:

  - Any allocation you might do should be using the GFP_NOWAIT
    flag, in order not to potentially sleep, but without depleting
    the emergency pool either.

So probably I just should use GFP_NOWAIT.

Thanks, Dan!

> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
