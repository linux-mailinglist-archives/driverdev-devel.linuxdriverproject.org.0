Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFFF273CC3
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 09:56:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A43981CA1;
	Tue, 22 Sep 2020 07:56:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJCipWoVKusZ; Tue, 22 Sep 2020 07:56:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81DAB8728B;
	Tue, 22 Sep 2020 07:56:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 08EDF1BF27E
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 07:56:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 025A286678
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 07:56:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kH1qEWPhM2Bj for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 07:56:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 649D284EA0
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 07:56:03 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FB4D239A1;
 Tue, 22 Sep 2020 07:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600761363;
 bh=e8uyanv5QamZvHhEIRb+/GaChkLBDot++bgyhunyOuc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wMxC6Q8c4bLB99PsBz13WD7bURR/xwpfC+Lj2+q1a1CRXUIK4P8IO1uLV/IROCNf6
 cROZbqFmOSSgVXRjtnzjILFdvBgbcRPh/f3kKLc+JoNBAz2ARdgRQDXfleNt42iAWU
 fblGWrrOyz9Gl6QB0PD2Nu7/PWL+zYVZHpm5K2cU=
Date: Tue, 22 Sep 2020 09:52:24 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: James Browning <jamesbrowning137@gmail.com>
Subject: Re: [PATCH] staging: comedi: comedi.h: Fixed typos in comments
Message-ID: <20200922075224.GA1789797@kroah.com>
References: <20200921053018.64095-1-jamesbrowning137@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200921053018.64095-1-jamesbrowning137@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Ian Abbott <abbotti@mev.co.uk>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 20, 2020 at 10:30:00PM -0700, James Browning wrote:
> Removed repeated words "the" and "in"
> 
> Signed-off-by: James Browning <jamesbrowning137@gmail.com>
> ---
>  drivers/staging/comedi/comedi.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

What tree did you make this against?  It's already in my development
tree and in linux-next, so I can't apply this again :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
