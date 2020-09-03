Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2991C25BE0D
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 11:05:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B4808738A;
	Thu,  3 Sep 2020 09:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u62JBOcsKz58; Thu,  3 Sep 2020 09:05:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C6CB7872AA;
	Thu,  3 Sep 2020 09:05:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F5B71BF476
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 09:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3C19F872AA
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 09:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1pPuJj4CW3OS for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 09:05:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C34A484CBD
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 09:05:13 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A9A420709;
 Thu,  3 Sep 2020 09:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599123913;
 bh=5msA1CmDUNZg69tLz8pFJJct70UtAz65Z8gc9Hz522Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vARd3doWYponZSo39/iKi+4VNVuDBqVDqZHKfZxm5KnfH9q2yzQouuWtjDwBwv3Mo
 5R6Uf76TdoB+PDWYTLMsEShH6G2r5QTgBUIE7ozJoZfJjQl16Uz4gsg/MTWv8fsdfa
 2N6X43s9q5DFrh91F3VVW/0Nmlw0ADX1eTcVu9Ao=
Date: Thu, 3 Sep 2020 11:05:09 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH][next] staging: media: atomisp: fix memory leak of
 object flash
Message-ID: <20200903110509.4542cdad@coco.lan>
In-Reply-To: <CAHp75Vda5jRqmgsCV=Z5e5NdwHiebBy_Xdb6dq2D7L-mqqsC_g@mail.gmail.com>
References: <20200902165852.201155-1-colin.king@canonical.com>
 <CAHp75Vda5jRqmgsCV=Z5e5NdwHiebBy_Xdb6dq2D7L-mqqsC_g@mail.gmail.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Colin King <colin.king@canonical.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Wed, 2 Sep 2020 21:15:31 +0300
Andy Shevchenko <andy.shevchenko@gmail.com> escreveu:

> On Wed, Sep 2, 2020 at 8:02 PM Colin King <colin.king@canonical.com> wrote:
> >
> > From: Colin Ian King <colin.king@canonical.com>
> >
> > In the case where the call to lm3554_platform_data_func returns an
> > error there is a memory leak on the error return path of object
> > flash.  Fix this by adding an error return path that will free
> > flash and rename labels fail2 to fail3 and fail1 to fail2.
> >  
> 
> Wouldn't be proper fix to move to devm_kmalloc() and return
> dev_err_probe() where appropriate?

Actually, we prefer not using devm_*() at media subsystem.

Once we started migrating alloc stuff to use it. We end needing
to revert those, as it caused side effects related to lifecycle
management: some object were de-allocating too late. Others
with multiple interfaces (USB, pci) had even worse troubles.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
