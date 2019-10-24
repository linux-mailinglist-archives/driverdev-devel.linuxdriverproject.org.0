Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A62E29CE
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 07:27:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C3C0287778;
	Thu, 24 Oct 2019 05:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S-amjhKeZiFA; Thu, 24 Oct 2019 05:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71ECB877A7;
	Thu, 24 Oct 2019 05:27:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 30EEC1BF867
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 05:27:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2C29587746
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 05:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oy5+QBS-mKGH for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 05:27:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CD9EF87742
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 05:27:01 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.68,223,1569276000"; d="scan'208";a="407877160"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien)
 ([89.2.166.121])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 07:26:59 +0200
Date: Thu, 24 Oct 2019 07:26:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Paul Burton <paulburton@kernel.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/5] staging: octeon: remove
 typedef declaration for cvmx_wqe
In-Reply-To: <20191024050011.2ziewy6dkxkcxzvo@lantea.localdomain>
Message-ID: <alpine.DEB.2.21.1910240722070.2771@hadrien>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <fa82104ea8d7ff54dc66bfbfedb6cca541701991.1570821661.git.wambui.karugax@gmail.com>
 <20191024050011.2ziewy6dkxkcxzvo@lantea.localdomain>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> If you're making significant changes to this driver, please test them
> using the MIPS cavium_octeon_defconfig which is where this driver is
> actually used.
>
> This driver has broken builds a few times recently which makes me very
> tempted to ask that we stop allowing it to be built with COMPILE_TEST.
> The whole octeon-stubs.h thing is a horrible hack anyway...

Wambui,

Please figure out what went wrong here.  Are there two sets of typedefs
that should have been updated?

Others,

Would it be reasonable to put the information about how the driver should
be compied in the TODO file?  git grep cavium_octeon_defconfig in the
octeon directory turns up nothing.

thanks,
julia
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
