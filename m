Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 554256AF88
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 21:04:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 889D284031;
	Tue, 16 Jul 2019 19:04:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WFzTCn+V9giZ; Tue, 16 Jul 2019 19:04:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 48D17840A3;
	Tue, 16 Jul 2019 19:04:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5997B1BF28D
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 19:04:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 536BE87DA6
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 19:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0xm2bNobtDxK for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 19:04:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 39EE987E7A
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 19:04:01 +0000 (UTC)
Received: from localhost (unknown [113.157.217.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92E1420665;
 Tue, 16 Jul 2019 19:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563303841;
 bh=3/ov3VwS9EiXrpwopTh1rrJAVNzOq+ih6WrfMLxRyjw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ub7qkkGvDvkP+GeSSsaTu9TylY6bx4RaiJ5eLv7Ipn884BgdOl/DPIBJyQtGEZ53E
 aM0kTYj/QqcTxrKDF+i8wQugGgoyx8VdZWdXL4+p+Na8I/QC21HvLFKlTA2btfMpZl
 TW4Oq3320MgnKeEjFXI4/xR5+nwDnwitZDHNvxZA=
Date: Wed, 17 Jul 2019 04:03:58 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Karen Palacio <karen.palacio.1994@gmail.com>
Subject: Re: [PATCH] staging: erofs: fix typo
Message-ID: <20190716190358.GB20227@kroah.com>
References: <1563295663-312-1-git-send-email-karen.palacio.1994@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563295663-312-1-git-send-email-karen.palacio.1994@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org, yucha0@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 16, 2019 at 01:47:43PM -0300, Karen Palacio wrote:
> Signed-off-by: Karen Palacio <karen.palacio.1994@gmail.com>
> ---
>  drivers/staging/erofs/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

I can not take patches without any changelog text, sorry.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
