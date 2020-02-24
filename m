Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBF616AC08
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 17:47:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70D97864E0;
	Mon, 24 Feb 2020 16:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Nx9BD2PlxBL; Mon, 24 Feb 2020 16:47:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65D8985C9E;
	Mon, 24 Feb 2020 16:47:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E6881BF3EE
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B16785CC3
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s2OJOOMusbvo for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 16:47:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BC94085C9E
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 16:47:28 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id 12so4441378pjb.5
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 08:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2zePMqHb3pxqOSl/NHaUkMDrUSvpWjI4HscCu6Jr28k=;
 b=ZwdohMMjroCJi5cDmXzMY1AW4fuHeMb0XbtE7ZyLvdY2TmdNxW4nhXx6yqm4f03V4O
 eT3TFPHeWwM2FEyVDDAvDi+WtbvSyoqjV6MkeirxuqmP70depek/y+KRWpeWdnaiqGFS
 Z+76/2ZoqQLn0ew3wr7AJ39b3DSalwhweP2CQvZ+O4/N03aQ5R9CV9iSLCv0j9dL6TD7
 kUY6/Bb4yRNNfLGRj60fR0SUuwvkwcMrTFRjB/tqpFiiMhw1aKdRg1Tq7qyEe8SKRNxZ
 uNmI5mAV5zoffPBG/GN2+NvnGFdN5MUCEB3F34AXL5kmt26jahSW5Do+o6OUe1BLRTfL
 buyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2zePMqHb3pxqOSl/NHaUkMDrUSvpWjI4HscCu6Jr28k=;
 b=FKmN6J23kEonIALh9gwCGkNyTBcAiSk9StzT85VSroYK6QVdEvaLBysqb5c7D6cm3Q
 ErTxNUtVTvXrZkilqZEbToiR3re8ltwyp987f5SXiLIv+wQ2CEEsuYTSEV10LLQzn8Dj
 dXW7UMM8OWyZddm9M5yrX+S+2joxC6KvWYdFBkiqrw4OMrQIwNSVtH9XS58cchEuzkOD
 XegNB2pkjTdqAS8ZQYkPdfx1R4jFYrjZavws0Sv18U1BfWvGM+b1apXsZVR9sxpOnSZO
 6YUYjLayfiuoI3aftTr5JqosIrJQYAJZqGgcHAwH4UUndZ1aUMqCYH8h1VPz48v1Ss8O
 Z+Nw==
X-Gm-Message-State: APjAAAVAA+i7my2hONdJOsA2Aw7Bg0GZEVHKlQ2rmp/mkwCBweCbDnbS
 f5ui3HqG37jEGRODXpcFpLrrzw==
X-Google-Smtp-Source: APXvYqwecQZyBx2Lu6irbcoubh2qjH4GBrXCroPb6bZfgoJ7nVIHn8R8yjAR6JV/sdr+Y/WoSHiLuw==
X-Received: by 2002:a17:902:9342:: with SMTP id
 g2mr49081074plp.339.1582562848308; 
 Mon, 24 Feb 2020 08:47:28 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.170])
 by smtp.gmail.com with ESMTPSA id d3sm13201089pfn.113.2020.02.24.08.47.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Feb 2020 08:47:27 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Mon, 24 Feb 2020 22:17:21 +0530
To: Joe Perches <joe@perches.com>, Manish Chopra <manishc@marvell.com>,
 GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] staging: qlge: emit debug and dump at same level
Message-ID: <20200224164721.GA7214@kaaira-HP-Pavilion-Notebook>
References: <20200224082448.GA6826@kaaira-HP-Pavilion-Notebook>
 <84410699e6acbffca960aa2944e9f5869478b178.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <84410699e6acbffca960aa2944e9f5869478b178.camel@perches.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 24, 2020 at 05:38:09AM -0800, Joe Perches wrote:
> On Mon, 2020-02-24 at 13:54 +0530, Kaaira Gupta wrote:
> > Simplify code in ql_mpi_core_to_log() by calling print_hex_dump()
> > instead of existing functions so that the debug and dump are
> > emitted at the same KERN_<LEVEL>
> []
> > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> []
> > @@ -1324,27 +1324,10 @@ void ql_mpi_core_to_log(struct work_struct *work)
> >  {
> >  	struct ql_adapter *qdev =
> >  		container_of(work, struct ql_adapter, mpi_core_to_log.work);
> > -	u32 *tmp, count;
> > -	int i;
> >  
> > -	count = sizeof(struct ql_mpi_coredump) / sizeof(u32);
> > -	tmp = (u32 *)qdev->mpi_coredump;
> > -	netif_printk(qdev, drv, KERN_DEBUG, qdev->ndev,
> > -		     "Core is dumping to log file!\n");
> 
> There is no real need to delete this line.
> 
> And if you really want to, it'd be better to mention
> the removal in the commit message description.
> 
> As is for this change, there is no "debug" and "dump"
> as the commit message description shows, just "dump".

This patch has already been added to the tree, if I amend the commit now
using git rebase, won't it affect the upstream as the SHA-1 of the
commit and it's children will change?

> 
> 
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
