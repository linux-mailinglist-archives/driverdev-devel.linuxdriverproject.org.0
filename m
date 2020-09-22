Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8365B273A0A
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 07:14:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9668B86508;
	Tue, 22 Sep 2020 05:14:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2IxwCXTCLxDP; Tue, 22 Sep 2020 05:14:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 657768638F;
	Tue, 22 Sep 2020 05:14:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66B3B1BF2A6
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 05:14:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 63AFB87245
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 05:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LLsGd-gvGE9f for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 05:14:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8DE4487242
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 05:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5HqyDHXhBaJ+WGESDYJm9qtSqTzlNFPQXKLp06OXmXw=; b=s+5DtIJDJ8A4+st8nmMkTiApfr
 eEnnu68u0cZuwC4J4O05jTx2L0VouJHlO4VSb7yDugn8mfDO7ClS0w9NVXLBgZpEmgy+zEu3NueyC
 icP5QmKGnFB3NkVf9K9t12lle7tdiClaru5vsjlIszVOQ7R41aRZOMaktsA1BiW5C3EjwnWRp8Jut
 jySpxt1rg2Nr1oKwjbGGxWfb5N25O4xKVcrMkjcFyJ+esVmfhrryerg82YUWTuEj50PNELGEsaDKj
 TyTFjoy0ksgFRv6HRaKANc6uaBd9EVVuOf3mfWpGvng4RKAc0zJ/KLzu4092OCVOdaqvUuOifLL38
 bcaeerfA==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kKacx-0007vR-0y; Tue, 22 Sep 2020 05:14:07 +0000
Date: Tue, 22 Sep 2020 06:14:06 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH RFT/RFC 24/49] staging: media: zoran: Use DMA coherent
 for stat_com
Message-ID: <20200922051406.GB29480@infradead.org>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
 <1600683624-5863-25-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1600683624-5863-25-git-send-email-clabbe@baylibre.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, laurent.pinchart@skynet.be, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 21, 2020 at 10:19:59AM +0000, Corentin Labbe wrote:
> Instead of using a fragile virt_to_bus, let's use proper DMA coherent
> for the stat_com entry.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/staging/media/zoran/zoran.h        |  2 ++
>  drivers/staging/media/zoran/zoran_card.c   | 20 +++++++++++++-------
>  drivers/staging/media/zoran/zoran_device.c |  3 +--
>  3 files changed, 16 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
> index aa2a8f688a01..8f3faa4eb60f 100644
> --- a/drivers/staging/media/zoran/zoran.h
> +++ b/drivers/staging/media/zoran/zoran.h
> @@ -351,6 +351,8 @@ struct zoran {
>  	unsigned long frame_num;
>  
>  	wait_queue_head_t test_q;
> +
> +	dma_addr_t p_sc;
>  };
>  
>  static inline struct zoran *to_zoran(struct v4l2_device *v4l2_dev)
> diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
> index 3a7895be3341..a8d23bf126c3 100644
> --- a/drivers/staging/media/zoran/zoran_card.c
> +++ b/drivers/staging/media/zoran/zoran_card.c
> @@ -931,11 +931,15 @@ static int zr36057_init(struct zoran *zr)
>  	zoran_open_init_params(zr);
>  
>  	/* allocate memory *before* doing anything to the hardware in case allocation fails */
> -	zr->stat_com = kzalloc(BUZ_NUM_STAT_COM * 4, GFP_KERNEL);
>  	zr->video_dev = video_device_alloc();
> -	if (!zr->stat_com || !zr->video_dev) {
> +	if (!zr->video_dev) {
>  		err = -ENOMEM;
> -		goto exit_free;
> +		goto exit;
> +	}
> +	zr->stat_com = dma_alloc_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), &zr->p_sc, GFP_KERNEL);

Again, don't write junk coe like this.  Stick to the 80 lines unless
you have a very good reason.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
