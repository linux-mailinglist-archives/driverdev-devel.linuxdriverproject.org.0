Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E377298EB1
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 14:58:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 01B302E10B;
	Mon, 26 Oct 2020 13:58:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wcLAyaLkrI1t; Mon, 26 Oct 2020 13:58:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4374F20371;
	Mon, 26 Oct 2020 13:58:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D2E6F1BF334
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 13:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CC047867A9
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 13:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vqQxGDNQtpO0 for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 13:58:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BE48F86791
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 13:58:25 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id o7so6115435pgv.6
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 06:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5S48F96TCcBfO3U6cADlQQJx4sxIZKKwp3TMj141Of0=;
 b=JT6x7PZx0ywRSc6ckedfYEJsjzcHD0qOgY231CiejWS0IqsQaAPjq91bf7mB32P7L1
 VbNMKjaD7YRxL3F2HPLboocJNIovJ4PgMQxZguY7bBmRrQqyOt/EOfHNbTuoh37jN7Y0
 iluHJYxJfe+NY9000J24UIV19Lh8fKy98rqWJTATk0Nt8iXLZe3orMUAdqCVXJdDfr0h
 PduKwmlecR7ASoniZCDugZzsbZRVx2s8rNjD+6FRUFsGQO6NIJc1K0Yb1siagBkxPAsk
 7KpgXrr8WmWe6M4CYjivqsGW/5D7qxP037Z3zq18dniMIgw4C1DW8i8KrMkZ6830/aZo
 0Ctg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5S48F96TCcBfO3U6cADlQQJx4sxIZKKwp3TMj141Of0=;
 b=HsuOZe40spIArnigMa7VbhGNZjVtm4XrJ4M+rSG/0hSkQ8amTrAIuf5h2eXp+21g/c
 vLNu3FhEpAqVt5RFjqKf37xAvqzoOuJHYIgLBQP5moR/leLkxH1vPDHL4i6WJ7u6APPT
 Xx0AuoIOvZLE4Y/uuokh2eze/0hxEkNiKtzVJQyTrZFQzzLCRKPkwjMQzDXvvN8DyjpB
 6WDwyZuQfZbizhX/bvsuGVQkXVZ698fIqKTffUX8hbxOB7re5xabaH1TkQ3j7z/OFfjT
 f8JOPAcxcfLPeCm7c2v20AQHMwlkTu5ywXtCqcLVkZ+dotM8LK5fQq7VygSyMYu0CnO+
 xpkQ==
X-Gm-Message-State: AOAM531loZtDb83KERX45c+K+eyHKMFwrFMHZSuIzmxffT96C0d4TClJ
 lszzJTMo2yeRX4VaC1hhS/E=
X-Google-Smtp-Source: ABdhPJz3iO66x77mL7gJYCPUTuayaeX0XjjQ5C4MYUndNY69OI+BkkGLZ5VfPopUot+X55nDMQiM8A==
X-Received: by 2002:a63:fb4a:: with SMTP id w10mr13944291pgj.285.1603720705406; 
 Mon, 26 Oct 2020 06:58:25 -0700 (PDT)
Received: from my--box ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id j5sm12646743pjb.56.2020.10.26.06.58.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Oct 2020 06:58:24 -0700 (PDT)
Date: Mon, 26 Oct 2020 19:28:19 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma:
 rearrange lines exceeding 100 columns
Message-ID: <20201026135819.GA14348@my--box>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <20201026040453.GC5074@my--box>
 <20201026041652.GM20115@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201026041652.GM20115@casper.infradead.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 26, 2020 at 04:16:52AM +0000, Matthew Wilcox wrote:
> On Mon, Oct 26, 2020 at 09:34:53AM +0530, Deepak R Varma wrote:
> > > -		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n", cur, cur->acd);
> > > +		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n",
> > > +			cur,
> > > +			cur->acd);
> 
> Why do you put 'cur' and 'cur->acd' on different lines?

Hello,
I was thinking it makes it more readable. However, I understand your
comment and will rearrange the changes accordingly. Thank you for
pointing it out.

> 
> > > -	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED, KP_DRIVER_NAME_DMA_CONTROLLER, eng);
> > > +	rv = request_irq(eng->irq,
> > > +			 ndd_irq_handler,
> > > +			 IRQF_SHARED,
> > > +			 KP_DRIVER_NAME_DMA_CONTROLLER,
> > > +			 eng);
> 
> Likewise.  I'd do:
> 
> 	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED,
> 			KP_DRIVER_NAME_DMA_CONTROLLER, eng);
> 

Yes, will correct all such occurrences and resend another version.

Thank you,
Deepak.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
