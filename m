Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FC9C1429
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 12:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E580020500;
	Sun, 29 Sep 2019 10:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JU5xAFZ-XGZ5; Sun, 29 Sep 2019 10:10:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 73B82204EC;
	Sun, 29 Sep 2019 10:10:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6904B1BF38B
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 10:10:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 657388610F
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 10:10:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id od8QKlgT4P8x for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 10:10:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 99BA385EF9
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 10:10:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3631207FA;
 Sun, 29 Sep 2019 10:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569751801;
 bh=pwJo+EJtrS9oVfQHiXOw4zn6GSy+QbPofSc0wlHv20s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TFd7ZaiHJmGnMYOpWsB+hf6lWfl1aKy5rGbTBM9Oyxp8fibSU2Fr4tkzgxJ/mLkvQ
 0pA/9PkQFJkwTHJk2L8PBd0ltvjwtawZLuGMJsrGoD5ttraMw0TNirVDDCnSXtM0ly
 M9yJz1N92jr9Mdn9I+6wWSoS+vRj7fKNm3zAAWsA=
Date: Sun, 29 Sep 2019 12:09:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jesse Barton <jessebarton95@gmail.com>
Subject: Re: [PATCH] Staging: exfat: exfat_super.c: fixed camelcase coding
 style issue
Message-ID: <20190929100958.GA1906533@kroah.com>
References: <20190928231910.16898-1-jessebarton95@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190928231910.16898-1-jessebarton95@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Sep 28, 2019 at 06:19:10PM -0500, Jesse Barton wrote:
> Fixed a coding style issue.

What coding style issue?  Always be specific here.

> Signed-off-by: Jesse Barton <jessebarton95@gmail.com>
> ---
>  drivers/staging/exfat/exfat_super.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Also remember to follow the output of scripts/get_maintainer.pl to
properly find the maintainer to cc:, otherwise patches might get
overlooked.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
