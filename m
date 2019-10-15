Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1B8D7890
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 16:31:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19D8E8766D;
	Tue, 15 Oct 2019 14:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pf1kxEQCnZte; Tue, 15 Oct 2019 14:31:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D30B887653;
	Tue, 15 Oct 2019 14:31:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 563591BF3CB
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 14:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5331520441
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 14:31:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gSeKi6qK8YOK for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 14:31:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 5DCCD2043B
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 14:31:34 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id y19so24179776wrd.3
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 07:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9UK0oVrOW9D5IBSM1Dzz1X4iB4H2rdT5rdPNgZz/QRI=;
 b=BrR9Hxcw6qGVb3g9Q9/obyWtOAKteAGCgYeNta/bIWNvRs1h/gSf3rtMqp3YWY6fG2
 B4Bel2vc2H6pSYyU0UvydIvGsOIM/Mhyr+/bpEVRwIzE4JOyDJujuFk3WcDgL85yBt7L
 0CFpr8XSIZKH1ou0IxGQQp38Dtj9ndq8li55g8sVOJUmT0m3ms0QoBf8G2+iaHHYDj6v
 /+uHdnVqsZYRO7c1ICNAuKcNSrxRS1keuYj6DXMn/rxjyJAWlv8XFDzhurID1RC3zC98
 B/h1V1ai81O8Ag9397s6Bx5KpG7CxEaT6kMVl7Jf3N7hjSCuk8MrHjrBorytVXl/4sMl
 +fIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9UK0oVrOW9D5IBSM1Dzz1X4iB4H2rdT5rdPNgZz/QRI=;
 b=f8L/+Npqmtd/zOhrGnoB+SSspmLgizrJq0VlVLn/2WJjVjyaHfmYegUkrRJfduDMzZ
 wVDRl7KdHB8p0H0baHpK2Dit3JUVNu5xVf/C0kMYeCEsSrKbE8PTt4IbWhUbzENB+KsI
 dotOZ4pTE07T1/3wZrPZxNbE7toIhXerThdkB67Zatx5qponn+qbVaKZD1FYDpE+DLeN
 BFUu7gQCwoUEB5hSliTjJy4MQCtuEWxZfKhkpjRp2PVVrijao2muOF3xnPbJtYR4BvF4
 Oxxa4I5eXz+xgSQ8cmxr3HQQsM6UQWOTjsS4G+3pbStBWr6Vchhhlidj2syaCnMgflxf
 pVtg==
X-Gm-Message-State: APjAAAWCeWxIzz6PDwLuA4YkE1aGb38/q1i93tJqwhSy+LhvwnqF7TNU
 vtFc9jEjDMaBsSZc2Zl8dmGYLjSo2cY=
X-Google-Smtp-Source: APXvYqyCVC54sqGweqKHXCeLjthXHvwPS6MbVoX+RH5ac8O7X7fMgmTPXEBQUBWzupEwoWvJ4LvaJg==
X-Received: by 2002:adf:bad3:: with SMTP id w19mr8664785wrg.17.1571149892720; 
 Tue, 15 Oct 2019 07:31:32 -0700 (PDT)
Received: from AlexGordeev-DPT-VI0092 ([213.86.25.46])
 by smtp.gmail.com with ESMTPSA id o4sm52833357wre.91.2019.10.15.07.31.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 15 Oct 2019 07:31:32 -0700 (PDT)
Date: Tue, 15 Oct 2019 16:31:30 +0200
From: Alexander Gordeev <a.gordeev.box@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 1/2] dmaengine: avalon: Intel Avalon-MM DMA Interface
 for PCIe
Message-ID: <20191015143129.GA32565@AlexGordeev-DPT-VI0092>
References: <cover.1570558807.git.a.gordeev.box@gmail.com>
 <3ed3c016b7fbe69e36023e7ee09c53acac8a064c.1570558807.git.a.gordeev.box@gmail.com>
 <20191009121441.GM25098@kadam>
 <20191009145811.GA3823@AlexGordeev-DPT-VI0092>
 <20191009185323.GG13286@kadam>
 <20191010085144.GA14197@AlexGordeev-DPT-VI0092>
 <20191010113034.GN13286@kadam>
 <20191015112449.GA28852@AlexGordeev-DPT-VI0092>
 <20191015131955.GH4774@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015131955.GH4774@kadam>
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

On Tue, Oct 15, 2019 at 04:19:55PM +0300, Dan Carpenter wrote:
> On Tue, Oct 15, 2019 at 01:24:50PM +0200, Alexander Gordeev wrote:
> > On Thu, Oct 10, 2019 at 02:30:34PM +0300, Dan Carpenter wrote:
> > > On Thu, Oct 10, 2019 at 10:51:45AM +0200, Alexander Gordeev wrote:
> > > > On Wed, Oct 09, 2019 at 09:53:23PM +0300, Dan Carpenter wrote:
> > > > > > > > +	u32 *rd_flags = hw->dma_desc_table_rd.cpu_addr->flags;
> > > > > > > > +	u32 *wr_flags = hw->dma_desc_table_wr.cpu_addr->flags;
> > > > > > > > +	struct avalon_dma_desc *desc;
> > > > > > > > +	struct virt_dma_desc *vdesc;
> > > > > > > > +	bool rd_done;
> > > > > > > > +	bool wr_done;
> > > > > > > > +
> > > > > > > > +	spin_lock(lock);
> > 
> > [*]
> > 
> > > > > > > > +
> > > > > > > > +	rd_done = (hw->h2d_last_id < 0);
> > > > > > > > +	wr_done = (hw->d2h_last_id < 0);
> > > > > > > > +
> > > > > > > > +	if (rd_done && wr_done) {
> > > > > > > > +		spin_unlock(lock);
> > > > > > > > +		return IRQ_NONE;
> > > > > > > > +	}
> > > > > > > > +
> > > > > > > > +	do {
> > > > > > > > +		if (!rd_done && rd_flags[hw->h2d_last_id])
> > > > > > > > +			rd_done = true;
> > > > > > > > +
> > > > > > > > +		if (!wr_done && wr_flags[hw->d2h_last_id])
> > > > > > > > +			wr_done = true;
> > > > > > > > +	} while (!rd_done || !wr_done);
> 
> 
> Thinking about this some more, my initial instinct was still correct
> actually.  If we're holding the lock to prevent the CPU from writing
> to it then how is hw->d2h_last_id updated in the other thread?  Either
> it must deadlock or it must be a race condition.

hw->d2h_last_id and hw->h2d_last_id indexes are not expected to get
updated while within the handler.

It is wr_flags[hw->d2h_last_id] and/or rd_flags[hw->h2d_last_id] that
should be set from zero to one by the DMA controller once/before it
sends the MSI interrupt. Therefore, once we're in the handler, either
wr_flags[hw->d2h_last_id] or rd_flags[hw->h2d_last_id] should be non-
zero.

However, the Intel documentation uses a suspicious wording for description
of the above: "The Descriptor Controller writes a 1 to the done bit of
the status DWORD to indicate successful completion. The Descriptor
Controller also sends an MSI interrupt for the final descriptor.
After receiving this MSI, host software can poll the done bit to
determine status."

(The "the status DWORD" in the excerpt above are located in coherent DMA
memory-mapped arrays wr_flags[hw->d2h_last_id] and rd_flags[hw->h2d_last_id])

The confusing statement is "After receiving this MSI, host software can
poll the done bit to determine status." Why would one poll a bit *after*
the MSI received? In good design it should be set by the time the MSI
arrived. May be they meant "checked" rather than "polled" or implied the
CPU still could see zero in the status DWORD due to DMA memory incoherency..

Anyways, that has never been observed and I added the loop out of the
paranoia, it never loops for me.

HTH

> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
