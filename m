Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6412A24A6D
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 10:32:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1CABF254B8;
	Tue, 21 May 2019 08:32:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aYJD3qpmu9LL; Tue, 21 May 2019 08:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 594512340C;
	Tue, 21 May 2019 08:32:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 62E6A1BF2C5
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:32:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5C5F0848A9
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:32:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RWuGzrGmF0jH
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:32:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9962881AEB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:32:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D60E8216B7;
 Tue, 21 May 2019 08:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558427535;
 bh=MAsSLPzSmhtzsDDjqt6Ro7y4kW6FYthx+PGNxvCIH74=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IPaU4s0wRe4MNyc5sdzlRGVRNUWOsYPJNPO/8Z9brRwl4YC3Q0ERMKAJNBMRT7G7+
 QXuHs1gFBSh9CJaAJB+AtItKDqxnnvkEbpuqgUAOtn3OiRfdGqJx82ztOo5qXsM6O/
 BmMBtoJhkPUo0neuh7ymdTBVlHcsf5onnMJDzUMI=
Date: Tue, 21 May 2019 10:32:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH v5 3/8] staging: kpc2000: improved formatting of core.c.
Message-ID: <20190521083213.GA2460@kroah.com>
References: <20190521075635.30458-1-jeremy@azazel.net>
 <20190521075635.30458-4-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521075635.30458-4-jeremy@azazel.net>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 08:56:30AM +0100, Jeremy Sowden wrote:
>   * Indented with tabs.
>   * Broke lines over 80 columns where possible.
>   * Removed braces from one-statement blocks.
>   * Tidied up some comments.
>   * Removed multiple blank lines.
> 
> Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> ---
>  drivers/staging/kpc2000/kpc2000/core.c | 788 ++++++++++++++-----------
>  1 file changed, 434 insertions(+), 354 deletions(-)

This patch fails to apply to my tree.  Can you rebase your series on my
staging-testing branch and resend?  I've applied the first two already.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
