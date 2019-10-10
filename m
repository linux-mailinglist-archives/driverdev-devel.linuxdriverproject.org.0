Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 311BBD2445
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 10:51:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FB6D86B7E;
	Thu, 10 Oct 2019 08:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kix5LL7INWAA; Thu, 10 Oct 2019 08:51:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E9D9086B7C;
	Thu, 10 Oct 2019 08:51:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 999A01BF2B8
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 08:51:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 931B287927
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 08:51:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nb9ygf6ixWNW for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 08:51:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3D3EC8790A
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 08:51:49 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 7so6012145wme.1
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 01:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iBVy5EpS5miZLPYXy54PXc4Tp3ZcCov2ByS5T+jtyzQ=;
 b=oPeNcuB6ERNhMIaqdBhqvoaicqED33w2ZnRTPI1p35C5PjIp7M9osj7CbCyJN8zPD3
 nG6qo00p+0C3GDV4s/9yBSa8mfu9zBhTYIglKOccIfc+j10IBM9F9DXFq4SIfkTQNXaE
 fE375uuX1MA0BcAHwBvL1otT/gRBtypTz3WyZ+7i2csJ0nBVgikl3eux1lElB7TYwEjv
 vnJOQVyLrrrEOe4XhskyXBXjBDp+ToI+0IwbqS5sW8lsPH33Lut4ZKWtJHjV9CC7Q/95
 L1DRvuYRO+1wfp6e/A2OpRyn91sFEAEHtTOOWNqYCTTPsrEmiXvoY2x1H1/G9O06cNzR
 y76g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iBVy5EpS5miZLPYXy54PXc4Tp3ZcCov2ByS5T+jtyzQ=;
 b=dGmWf2T3/lliI8K0h06V+sgEGIWedls7+VC8VG3yCfg3wDJi9CT9N6iDTGH+UbzGZ9
 iCudgA/e+hhztZE942zD2FxT5QHkYX6FWr+idefistx6fkFM9aYk8KsE85kRgMqvyXfY
 KNSZ83yJArUkz3DkVISxAN0LNcPX7ofyIJfVpQMz+bxRmRpoe08S/Dsd1eJ+6od4fPO7
 E1X/SGSuLkFwE+UZjfGEOgOrbEbUmt4tf5sqySqHPnnzeD/gaoGZUzVBwNFfi4+hjPke
 RZl55J4qL8S8PsXCMPFGQfrOE6oiBnKacwwSLBv7CHFz26ew63iCtQCmlv+G0vnExADs
 dskQ==
X-Gm-Message-State: APjAAAVCXnGDsV7PE9qh0MF74d9tujSencdLWfmxn7LRnTf+zNA4W05B
 aUc+SM5Djszsbzk+PbaHM0k=
X-Google-Smtp-Source: APXvYqyLknqLcUuYq9q/QesWPksjxjSFkRwD5oI5ldv1gDrTXvnqviOQWl53byaUzLuLESgiSA0EPw==
X-Received: by 2002:a05:600c:2190:: with SMTP id
 e16mr6254868wme.136.1570697507740; 
 Thu, 10 Oct 2019 01:51:47 -0700 (PDT)
Received: from AlexGordeev-DPT-VI0092 ([213.86.25.46])
 by smtp.gmail.com with ESMTPSA id g13sm4032958wrm.42.2019.10.10.01.51.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 10 Oct 2019 01:51:47 -0700 (PDT)
Date: Thu, 10 Oct 2019 10:51:45 +0200
From: Alexander Gordeev <a.gordeev.box@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 1/2] dmaengine: avalon: Intel Avalon-MM DMA Interface
 for PCIe
Message-ID: <20191010085144.GA14197@AlexGordeev-DPT-VI0092>
References: <cover.1570558807.git.a.gordeev.box@gmail.com>
 <3ed3c016b7fbe69e36023e7ee09c53acac8a064c.1570558807.git.a.gordeev.box@gmail.com>
 <20191009121441.GM25098@kadam>
 <20191009145811.GA3823@AlexGordeev-DPT-VI0092>
 <20191009185323.GG13286@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009185323.GG13286@kadam>
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

On Wed, Oct 09, 2019 at 09:53:23PM +0300, Dan Carpenter wrote:
> > > > +	u32 *rd_flags = hw->dma_desc_table_rd.cpu_addr->flags;
> > > > +	u32 *wr_flags = hw->dma_desc_table_wr.cpu_addr->flags;
> > > > +	struct avalon_dma_desc *desc;
> > > > +	struct virt_dma_desc *vdesc;
> > > > +	bool rd_done;
> > > > +	bool wr_done;
> > > > +
> > > > +	spin_lock(lock);
> > > > +
> > > > +	rd_done = (hw->h2d_last_id < 0);
> > > > +	wr_done = (hw->d2h_last_id < 0);
> > > > +
> > > > +	if (rd_done && wr_done) {
> > > > +		spin_unlock(lock);
> > > > +		return IRQ_NONE;
> > > > +	}
> > > > +
> > > > +	do {
> > > > +		if (!rd_done && rd_flags[hw->h2d_last_id])
> > > > +			rd_done = true;
> > > > +
> > > > +		if (!wr_done && wr_flags[hw->d2h_last_id])
> > > > +			wr_done = true;
> > > > +	} while (!rd_done || !wr_done);
> > > 
> > > This loop is very strange.  It feels like the last_id indexes needs
> > > to atomic or protected from racing somehow so we don't do an out of
> > > bounds read.

[...]

> You're missing my point.  When we set
> hw->d2h_last_id = 1;
[1]
> ...
> hw->d2h_last_id = 2;
[2]

> There is a tiny moment where ->d2h_last_id is transitioning from 1 to 2
> where its value is unknown.  We're in a busy loop here so we have a
> decent chance of hitting that 1/1000,000th of a second.  If we happen to
> hit it at exactly the right time then we're reading from a random
> address and it will cause an oops.
> 
> We have to use atomic_t types or something to handle race conditions.

Err.. I am still missing the point :( In your example I do see a chance
for a reader to read out 1 at point in time [2] - because of SMP race.
But what could it be other than 1 or 2?

Anyways, all code paths dealing with h2d_last_id and d2h_last_id indexes
are protected with a spinlock.

> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
