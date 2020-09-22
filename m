Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F27FE273D05
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 10:11:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E069620108;
	Tue, 22 Sep 2020 08:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKYia1qYhLpK; Tue, 22 Sep 2020 08:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E216020018;
	Tue, 22 Sep 2020 08:11:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C5AFD1BF271
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 08:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC78720018
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 08:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9jC1cx+N9115 for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 08:11:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id DCEDD20002
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 08:11:48 +0000 (UTC)
Received: from coco.lan (ip5f5ad5bc.dynamic.kabel-deutschland.de
 [95.90.213.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44D81239E5;
 Tue, 22 Sep 2020 08:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600762308;
 bh=fWJzGI51JbOQ0EigOk9NkLRd/sd4iHc9gzBCY0IWYJg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sTwHb0LdUDdaYaz1WEoQs/WX+6fD1qwMMnIQnQ84Ny3q51nKAYYkZRcSCHFrMvPBU
 ZrwUNYY8j9VTCSbjGowHDps41OOE+BnEmorhYJghPDQJNFvPGDyHlSPQs5dgC9fW1Y
 7amqAezO/639kVfTGqF8SY/a4plgYXzAEfBgtGb8=
Date: Tue, 22 Sep 2020 10:11:43 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Alex Dewar <alex.dewar90@gmail.com>
Subject: Re: [PATCH RESEND 0/5] atomisp: Fixes and cleanups
Message-ID: <20200922101143.28779711@coco.lan>
In-Reply-To: <20200921215359.45003-1-alex.dewar90@gmail.com>
References: <20200921215359.45003-1-alex.dewar90@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Alan Cox <alan@linux.intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 21 Sep 2020 22:53:49 +0100
Alex Dewar <alex.dewar90@gmail.com> escreveu:

> Hi Mauro,
> 
> Over the last month I've sent a few scattered patches to fix various
> warnings from static analysers, but they seem to have fallen through the
> cracks? I'm reposting them here as a series to make them easier to
> review. If you do have any feedback that'd be great :)

Usually, there's no need to re-send the patches, as we pick them
from a patchwork queue.

However, only one of the patches actually applied against the
linux-media tree.

So, please rebased the remaining patches on the top of it.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
