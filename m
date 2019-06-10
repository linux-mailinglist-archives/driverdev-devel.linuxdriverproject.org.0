Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E203B6F7
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 16:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 072E9863E0;
	Mon, 10 Jun 2019 14:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bODTwmJVmt6n; Mon, 10 Jun 2019 14:09:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8313C85380;
	Mon, 10 Jun 2019 14:09:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7845C1BF41D
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 14:09:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 733E82010F
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 14:09:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ontzjTxgM2gO for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 14:09:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D609920004
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 14:09:49 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F01F207E0;
 Mon, 10 Jun 2019 14:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560175789;
 bh=ZAdzIptRY5irvM99E4Rd4sa4j4ZDbKjnWVOozitc7jA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mUWo8Wug7Wud6ryWjivz2LO3St7mSAblmp81R6eSmB9pMqPwNqr9/hEvrQtoKgD8r
 2SI8V7RcQCjJMZsl9MuOpLwLMKaFMv7Vd7tOO07735Cotp0leXUGw/rND9MJUH4cUB
 sR3w/GcCm4K4H571eyof1Ot/MQnVh4RdsCBp/TpU=
Date: Mon, 10 Jun 2019 16:09:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH v2 -next] staging: fieldbus: Fix build error without
 CONFIG_REGMAP_MMIO
Message-ID: <20190610140947.GB18627@kroah.com>
References: <CAGngYiU=uFjJFEoiHFUr+ab73sJksaTBkfxvQwL1X6WJnhchqw@mail.gmail.com>
 <20190528142912.13224-1-yuehaibing@huawei.com>
 <CAGngYiW_hCDPRWao+389BfUH_2sP4S6pL+gteim=kDrnb9UDzQ@mail.gmail.com>
 <3f4c1d4c-656b-8266-38c4-3f7c36a2bd7e@huawei.com>
 <20190528155956.GA21964@kroah.com>
 <CAGngYiW8Y3jt9ikb5e9LtfSkquZquLgB5iSRVXyka9fUXLrqYQ@mail.gmail.com>
 <CAGngYiV9XsPL8Mk9_K9=0a-k6P6JN_waJvk5bDH+mDwGMAYbmw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiV9XsPL8Mk9_K9=0a-k6P6JN_waJvk5bDH+mDwGMAYbmw@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 10, 2019 at 08:51:10AM -0400, Sven Van Asbroeck wrote:
> Hello Greg, just a friendly ping regarding this patch. It got my Reviewed-by tag
> two weeks ago, no further feedback from anyone. Is there anything you would
> like us to do before queuing this?
> 
> Link to v2 that got the Reviewed-by:
> https://lkml.org/lkml/2019/5/28/609
> 
> On Tue, May 28, 2019 at 1:31 PM Sven Van Asbroeck <thesven73@gmail.com> wrote:
> > For the v2 patch:
> > Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>

Odd, sorry, must have fell through the cracks, I'll pick it up now.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
