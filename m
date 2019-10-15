Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C575DD767F
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 14:27:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3FA268666C;
	Tue, 15 Oct 2019 12:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GfxYe2YPBg8M; Tue, 15 Oct 2019 12:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33D77860C8;
	Tue, 15 Oct 2019 12:27:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E0071BF33C
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 12:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3831122836
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 12:27:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4eGLxIiYbUEn for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 12:27:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 612D5204B9
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 12:27:24 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id b9so23649759wrs.0
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 05:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4hTyTKATeOIbqPECdaIMFPIQ+kkXZ7Yjh6SF4N/1fVc=;
 b=bWmWx/5qo5LjCAVvXpAcg12upTfg8qcewvMIkjsTgspO1O+RBmF3NNaQkxFanLyhQN
 37vw/QnXljPI5T3DpwYnPDTakxyW7FY4G4Dv7Y2nTgfN3cpSKSmJg8UldhGJni0mVyEB
 7iGG7P1W2SqP23aUC/7/fPu0W04fhEUU1+NvqgEKGPT8Jbu5lDSif/JQhPrMBWkPZyye
 3oMqw729npEpyO6rV7AxhC07kMrqr5+vE/wZrYHFwGHVCD652byqMv1YF8MPzQvEtDSy
 BXnICE6ww3/U8GFKTMBbtknMK6XDbVws7joW2Igh5fib1FTe1LsvXNLGsANeOnMhxYG1
 ztQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4hTyTKATeOIbqPECdaIMFPIQ+kkXZ7Yjh6SF4N/1fVc=;
 b=By6n7Vw0xJDhPh4VZtxO41r9lMAsbAacG5D5FcmZnp8ZXiL9v1jvxZVguUZgW+JrFB
 o3prXIgxHaWNX1f8E1QdpM7USwuk0gb8yle1J1zC2jBFSQW1IH1eD6ivkcTupA+gC/gT
 ZVF1hafMbGd2oE/QTgJMhm4OTjKQL4r1Nntb21koh+XVajy6u+0JxsrZkIxNEjB/2MFL
 5Yw6x7Fxbu6CaEKOhSe99E9LHBkeHG1XZzNcwKBiEv8owwr4e8JEyZUXCl3c7PTkYuDP
 9pd9/ekjVi1fgl8KJZVwYcRKygGhEHFlSCWos7E6+nBLkrKex3Nwd0uQ6w8hfEzdhrei
 gpew==
X-Gm-Message-State: APjAAAVLaOL5eE2KqhzGT2O5+Vf4+J40XiWFGbK+QpCC/B0XaGjSyxt2
 AJg8tmFqZz1qg90NGTkau2A=
X-Google-Smtp-Source: APXvYqy6m/69vs3V1OEi86NEzfYQktvtypdOIpBrVFzKBI1sjIlc1ijrURisQ4GAvkwHCaIFkqNmGQ==
X-Received: by 2002:adf:f98b:: with SMTP id f11mr20156814wrr.350.1571142442781; 
 Tue, 15 Oct 2019 05:27:22 -0700 (PDT)
Received: from AlexGordeev-DPT-VI0092 ([213.86.25.46])
 by smtp.gmail.com with ESMTPSA id n15sm19424015wrw.47.2019.10.15.05.27.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 15 Oct 2019 05:27:22 -0700 (PDT)
Date: Tue, 15 Oct 2019 14:27:20 +0200
From: Alexander Gordeev <a.gordeev.box@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 1/2] dmaengine: avalon: Intel Avalon-MM DMA Interface
 for PCIe
Message-ID: <20191015122720.GA20768@AlexGordeev-DPT-VI0092>
References: <cover.1570558807.git.a.gordeev.box@gmail.com>
 <3ed3c016b7fbe69e36023e7ee09c53acac8a064c.1570558807.git.a.gordeev.box@gmail.com>
 <20191009121441.GM25098@kadam>
 <20191009145811.GA3823@AlexGordeev-DPT-VI0092>
 <20191009185323.GG13286@kadam>
 <20191010085144.GA14197@AlexGordeev-DPT-VI0092>
 <20191010113034.GN13286@kadam>
 <20191015112449.GA28852@AlexGordeev-DPT-VI0092>
 <20191015114108.GF4774@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015114108.GF4774@kadam>
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

On Tue, Oct 15, 2019 at 02:41:08PM +0300, Dan Carpenter wrote:
> > > > > > > > +	spin_lock(lock);
> > 
> > [*]
> 
> [ snip ]
> 
> > I struggle to realize how the spinlock I use (see [*] above) does not
> > protect the reader.
> 
> Argh....  I'm really sorry.  I completely didn't see the spinlock.  :P

Np ;) May be in the next version it will be more visible.
I done it the way you asked ( even though I do not like it :D ):

	spin_lock(&chan->vchan.lock);

> I am embarrassed.  Wow...
> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
