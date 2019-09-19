Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE502B788E
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 13:37:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8546486977;
	Thu, 19 Sep 2019 11:37:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zvOgZ0eWY7IT; Thu, 19 Sep 2019 11:37:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35C8C86ADD;
	Thu, 19 Sep 2019 11:37:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F9201BF2C7
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 11:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7B2A987E79
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 11:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1G-Vamf+3zWi for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 11:37:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A9C6987E74
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 11:37:13 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id E801D55D;
 Thu, 19 Sep 2019 07:37:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 19 Sep 2019 07:37:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=ZARt8hsAD051BiaNqNy7562HyN8
 dnfaPuX2yAo3nA44=; b=NA+ZP2sCRY3gy1Z0H31SNqMbZtdSvGuIuKgu1+xfrf/
 G20FIsW6V/ZoDwIT8atOKwEO+IWw4xekjBqWpu8bkHs0V0eCW94kvvNBBzGlK6pP
 yH1kd9H0yBQXSCsKUr511xLNQsEPK9Nvhuz8t2P+qpWdOnURyeiGL1Gff4/aEWfm
 xCcp+chkIH4V8N/nu7wO6qeuIZvYu8BhzrxkMudAyddYDOpt5lrVgwzLK/1jc6U/
 lpO3Ajngy4dPoitb/TeZUqi6ZmUPbhhf4AbpH6UiUe4lIVE1ZL+dwSAfu9aZW+yg
 GLc5f1JytRZLyvHP16clJBgMpeL6jXL6+fwZEOC4I3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ZARt8h
 sAD051BiaNqNy7562HyN8dnfaPuX2yAo3nA44=; b=I3Cchtg9uhi1ZFsrLN5Tqd
 vYI2slu1+DYe6Qrhqjy9gy+nBkL5CNQUdGcdBXyGbXqOkkvQBxe7cIn76bx8RwpW
 O3rUzfO0ktf7TSy9JJriM4p40YiNn/WXDw1RpiiFV68kj78XulxqnYbBi0ANU7dW
 hPTQf9i2AVtPXBAyLPTIqHi2/jBhrHk+Sj7yofgyw+hDM1B13jU+OunP2D5Z2qdQ
 hXm9AF2Gu0Cy+3+G6i1BE9nJhB0pAz5aXd4Z4wtRlbYeLrydPNaI6y1d3K/1X1t8
 k0LFOQqsoFbNFc3Fi1LicLzuoqfBONfm0Sz2kx2ba7vDJHStcvP5jDWIBS9OrfQg
 ==
X-ME-Sender: <xms:Z2iDXZX-i1b_ISJjhSqWLFvybvFbagfzKf1XYUGdYRIhcU9saI_U6A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrddutd
 ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
 lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:Z2iDXQHjHu2VslpUuPMpKBSJnMQov_hL1W6WXYP9f_GNm_EUzeBmsg>
 <xmx:Z2iDXTaY73GFQwUaHXI4dvdiYnAFjkYrGSdUbDB6zQhhWMJ7BgkNeg>
 <xmx:Z2iDXfGeNvks9qGsxzh1ownU__Bu0Oxc00C6iFUeQt172GwZM9umMg>
 <xmx:Z2iDXZc8JSv76pdOf06o1SZhQNnFI1y1O2BWmXBCseyUH93QeIt8Nw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id E420880060;
 Thu, 19 Sep 2019 07:37:10 -0400 (EDT)
Date: Thu, 19 Sep 2019 13:37:08 +0200
From: Greg KH <greg@kroah.com>
To: Alexander Gordeev <a.gordeev.box@gmail.com>
Subject: Re: [PATCH RFC 0/2] staging: Support Avalon-MM DMA Interface for PCIe
Message-ID: <20190919113708.GA3153236@kroah.com>
References: <cover.1568817357.git.a.gordeev.box@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1568817357.git.a.gordeev.box@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Thu, Sep 19, 2019 at 11:59:11AM +0200, Alexander Gordeev wrote:
> The Avalon-MM DMA Interface for PCIe is a design found in hard IPs for
> Intel Arria, Cyclone or Stratix FPGAs. It transfers data between on-chip
> memory and system memory. This RFC is an attempt to provide a generic API:
> 
> 	typedef void (*avalon_dma_xfer_callback)(void *dma_async_param);
>  
> 	int avalon_dma_submit_xfer(
> 		struct avalon_dma *avalon_dma,
> 		enum dma_data_direction direction,
> 		dma_addr_t dev_addr, dma_addr_t host_addr,
> 		unsigned int size,
> 		avalon_dma_xfer_callback callback,
> 		void *callback_param);
>  
> 	int avalon_dma_submit_xfer_sg(struct avalon_dma *avalon_dma,
> 		enum dma_data_direction direction,
> 		dma_addr_t dev_addr,
> 		struct sg_table *sg_table,
> 		avalon_dma_xfer_callback callback,
> 		void *callback_param);
>  
> 	int avalon_dma_issue_pending(struct avalon_dma *avalon_dma);
> 
> Patch 1 introduces "avalon-dma" driver that provides the above-mentioned
> generic interface.
> 
> Patch 2 adds "avalon-drv" driver using "avalon-dma" to transfer user-
> provided data. This driver was used to debug and stress "avalon-dma"
> and could be used as a code base for other implementations. Strictly
> speaking, it does not need to be part of the kernel tree.
> A companion tool using "avalon-drv" to DMA files (not part of this
> patchset) is located at git@github.com:a-gordeev/avalon-drv-tool.git
> 
> The suggested interface is developed with the standard "dmaengine"
> in mind and could be reworked to suit it. I would appreciate, however
> gathering some feedback on the implemenation first - as the hardware-
> specific code would persist. It is also a call for testing - I only
> have access to a single Arria 10 device to try on.
> 
> This series is against v5.3 and could be found at
> git@github.com:a-gordeev/linux.git avalon-dma-engine

Why is this being submitted for drivers/staging/ and not the "real" part
of the kernel tree?

All staging code must have a TODO file listing what needs to be done in
order to get it out of staging, and be self-contained (i.e. no files
include/linux/)

Please fix that up when resending this series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
