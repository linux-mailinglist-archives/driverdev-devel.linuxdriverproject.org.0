Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEF355068
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 15:31:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E8A586569;
	Tue, 25 Jun 2019 13:31:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CoIV4sQK+cZd; Tue, 25 Jun 2019 13:31:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2327F864C5;
	Tue, 25 Jun 2019 13:31:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 688401BF417
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 13:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 658B5864C5
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 13:31:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1nfbfM24P0SO for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 13:31:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp72.iad3a.emailsrvr.com (smtp72.iad3a.emailsrvr.com
 [173.203.187.72])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CDA81860ED
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 13:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1561469137;
 bh=zeA5AkEl7qstiRqxeHhWXE6qlD3uozNu25/2AMFrpH0=;
 h=Subject:To:From:Date:From;
 b=gwBcUte5tcPApq6h5GPjcbgZwBaCzXzBwjF5mtytDS1STKq4oyJ/x8TbYp6CXedGo
 shQ1kW4o6XFl9hEjvTp+dG2zDBtMiniy560AWixny9qneJyevwNWk0QUcU0XaoR+s0
 W5W9sdxz1W08r8HfEUizqsDItl7S766mJ+FjkyMA=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp34.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 7D56724B56; 
 Tue, 25 Jun 2019 09:25:36 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.62] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Tue, 25 Jun 2019 09:25:37 -0400
Subject: Re: [PATCH] staging: comedi: use dma_mmap_coherent for DMA-able
 buffer mmap
To: Christoph Hellwig <hch@lst.de>
References: <20190625112659.13016-1-abbotti@mev.co.uk>
 <20190625120637.GB3979@lst.de>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <5cf818b7-17b8-8fa4-1ed6-618ca1f19a4f@mev.co.uk>
Date: Tue, 25 Jun 2019 14:25:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190625120637.GB3979@lst.de>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25/06/2019 13:06, Christoph Hellwig wrote:
> 
>  From the DMA point of view this looks good:
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks!

> I still think that doing that SetPageReserved + remap_pfn_range
> dance for the normal memory allocations is a bad idea.  Just use
> vm_insert_page on the page, in which case it doesn't need to be
> marked as Reserved.

Thanks for the hint.  I'll take a look at that.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
