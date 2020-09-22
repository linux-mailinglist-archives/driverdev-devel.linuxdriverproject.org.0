Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D184C2748EA
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 21:15:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16BBD8672C;
	Tue, 22 Sep 2020 19:15:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lNF4ULL+OHUm; Tue, 22 Sep 2020 19:15:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AAF97862F4;
	Tue, 22 Sep 2020 19:15:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0EC511BF34A
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 19:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C1AFF203F3
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 19:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KVIOpDzJSMZM for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 19:15:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id CD04C2010C
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 19:15:42 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id s13so4500739wmh.4
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 12:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8JHPz5MB4op1E/QMo/ofzAV1pf8fpFit4gQe97vjeBo=;
 b=y0SiXBD6J9NQ3M9xk68ZG4Xy3Vql64rKBE4QlYvaUpTZR4UNaZVB9grChIR0qCoYrF
 pcwzY9r604nbPKLj+stTs2aQeSBn+yNB1rxixsVa1pezlXX4H8T3Qs6R2G5/QhinA1fg
 u0pXV6xFNdCwFVZM18ZnPsuJmqfCqlYzXxyZNJq2MuofyiOsZXcg97xpPuGD9BqqQsxD
 tvBlsQt7k6Q/LYqZ2IRBt4HLGOJQw6Xd0PxxFJjA3heVvnUnL+80mEzMfFurEg8V+zks
 pFmAuX7DMfiDEyJu0DOIa88CBYThiA4GZIDLkvr6/OTXrqTYJs0rS8npy8rXPkTW/eoo
 mb8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8JHPz5MB4op1E/QMo/ofzAV1pf8fpFit4gQe97vjeBo=;
 b=E8FMd3Q2FBrOhnW41MXuBMPtG4sDaYI9n1hASNMBgjWnmJBx7KW3WY9iOp7qGfk1HD
 65ftLf+hruZhhp7H9bs/vn+i7U3eGh/lfxqRz7e4e02hv3zlb+7HNnKPqPoqtsP7T1oT
 IEGyXnkrtmGZ+xL7/82HYWQ2/Q60eWR4FKkmb4yQiZJBLxqNi0erBZEZFPAy9lsX+eIl
 LPYV+CeHN21s5ggTEMMHrIpuk35+qH5FEi3nKuW8UO/KiaKn0ky0Q4zm6/yw3HiMXaQb
 0CIdgj2Mc0tiMiiAatlZ6hlDQMN/qcAAPHcGlScgjZSdIeFAgHGHt+GFsLJXz/x9vC5z
 bYIg==
X-Gm-Message-State: AOAM531UPopHoaeZazYQ0L5fq3Wqtwg31QrnermmoprA8Nc3PnwXmPlg
 D3NFXMjH8iYDmlaEusYLVgTgcQ==
X-Google-Smtp-Source: ABdhPJwED3IQ4OaZXiJzEgrIZmn98ae0TlXWdgza8puSbYb8D8lQDHqM6/GWZ3QBDm+UqK2ygsLX4w==
X-Received: by 2002:a1c:4b17:: with SMTP id y23mr2536272wma.162.1600802141131; 
 Tue, 22 Sep 2020 12:15:41 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id l5sm5915697wmf.10.2020.09.22.12.15.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 12:15:40 -0700 (PDT)
Date: Tue, 22 Sep 2020 21:15:38 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH RFT/RFC 01/49] staging: media: Revert "media: zoran:
 remove deprecated driver"
Message-ID: <20200922191538.GB12261@Red>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
 <1600683624-5863-2-git-send-email-clabbe@baylibre.com>
 <20200922051601.GC29480@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922051601.GC29480@infradead.org>
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

On Tue, Sep 22, 2020 at 06:16:01AM +0100, Christoph Hellwig wrote:
> > +		fh->buffers.buffer[i].v4l.fbuffer = mem;
> > +		fh->buffers.buffer[i].v4l.fbuffer_phys = virt_to_phys(mem);
> > +		fh->buffers.buffer[i].v4l.fbuffer_bus = virt_to_bus(mem);
> > +		for (off = 0; off < fh->buffers.buffer_size;
> > +		     off += PAGE_SIZE)
> > +			SetPageReserved(virt_to_page(mem + off));
> 
> This messing with SetPageReserved needs to go away before we bring
> back the driver, even for staging.

The whole old buffer management (with some virt_to_phys, virt_to_bus, SetPageReserved, etc...) is removed in "zoran: convert to vb2".

Regards
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
