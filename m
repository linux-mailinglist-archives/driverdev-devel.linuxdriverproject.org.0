Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33477B7FC7
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 19:14:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 258BA86BE0;
	Thu, 19 Sep 2019 17:14:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BlFhmz7p7sHM; Thu, 19 Sep 2019 17:14:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C14986BA4;
	Thu, 19 Sep 2019 17:14:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2FF61BF359
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 17:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D7BE387EC5
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 17:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yQVgqXa3vgyj for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 17:13:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 00AE787E58
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 17:13:54 +0000 (UTC)
Received: from localhost (unknown [106.200.214.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7047214AF;
 Thu, 19 Sep 2019 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568913234;
 bh=OMKr/cmWPumpo9LCv+3v3aRUPCtQnLyLX5PRnZs/l1Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WleYMfFQAUT2Ob78sZcIRDgLfTKZG/AUrTqsaITJ2OYeCI9pCEVjSqgorDdF9M/6h
 7f96JC2rTxefq/1FFGt4R/+3wQ00Y2nTIibvhZqc/ePhF+i2n26lrLq827RIErvhVz
 oDQjUCLI3gL0nJ+niA0Uxoq29+ykYZ5eHovdGRdQ=
Date: Thu, 19 Sep 2019 22:42:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Alexander Gordeev <a.gordeev.box@gmail.com>, Greg KH <greg@kroah.com>
Subject: Re: [PATCH RFC 0/2] staging: Support Avalon-MM DMA Interface for PCIe
Message-ID: <20190919171246.GS4392@vkoul-mobl>
References: <cover.1568817357.git.a.gordeev.box@gmail.com>
 <20190919113708.GA3153236@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919113708.GA3153236@kroah.com>
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

On 19-09-19, 13:37, Greg KH wrote:
> On Thu, Sep 19, 2019 at 11:59:11AM +0200, Alexander Gordeev wrote:
> > The Avalon-MM DMA Interface for PCIe is a design found in hard IPs for
> > Intel Arria, Cyclone or Stratix FPGAs. It transfers data between on-chip
> > memory and system memory. This RFC is an attempt to provide a generic API:
> > 
> > 	typedef void (*avalon_dma_xfer_callback)(void *dma_async_param);
> >  
> > 	int avalon_dma_submit_xfer(
> > 		struct avalon_dma *avalon_dma,
> > 		enum dma_data_direction direction,
> > 		dma_addr_t dev_addr, dma_addr_t host_addr,
> > 		unsigned int size,
> > 		avalon_dma_xfer_callback callback,
> > 		void *callback_param);
> >  
> > 	int avalon_dma_submit_xfer_sg(struct avalon_dma *avalon_dma,
> > 		enum dma_data_direction direction,
> > 		dma_addr_t dev_addr,
> > 		struct sg_table *sg_table,
> > 		avalon_dma_xfer_callback callback,
> > 		void *callback_param);
> >  
> > 	int avalon_dma_issue_pending(struct avalon_dma *avalon_dma);

Why wrap the *existing* kernel APIs with you own!

A quick glance at the code submitted tells me that it mimcks kernel
APIs. But why you folks didnt use the kernel dmaengine APIs in not clear
to me. So please convert it (should be relatively easy as you seem to
have wrappers for dmaengine callbacks)

> > 
> > Patch 1 introduces "avalon-dma" driver that provides the above-mentioned
> > generic interface.
> > 
> > Patch 2 adds "avalon-drv" driver using "avalon-dma" to transfer user-
> > provided data. This driver was used to debug and stress "avalon-dma"
> > and could be used as a code base for other implementations. Strictly
> > speaking, it does not need to be part of the kernel tree.
> > A companion tool using "avalon-drv" to DMA files (not part of this
> > patchset) is located at git@github.com:a-gordeev/avalon-drv-tool.git

Heh! We do have a dmatest driver which does this and much more! why not
use that one instead of adding you own!

> > The suggested interface is developed with the standard "dmaengine"
> > in mind and could be reworked to suit it. I would appreciate, however
> > gathering some feedback on the implemenation first - as the hardware-
> > specific code would persist. It is also a call for testing - I only
> > have access to a single Arria 10 device to try on.

Why not use dmaengine in first place?

> > This series is against v5.3 and could be found at
> > git@github.com:a-gordeev/linux.git avalon-dma-engine
> 
> Why is this being submitted for drivers/staging/ and not the "real" part
> of the kernel tree?
> 
> All staging code must have a TODO file listing what needs to be done in
> order to get it out of staging, and be self-contained (i.e. no files
> include/linux/)
> 
> Please fix that up when resending this series.

-- 
~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
