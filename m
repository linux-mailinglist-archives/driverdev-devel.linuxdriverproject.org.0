Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A5919D16B
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 09:42:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8DFAC89271;
	Fri,  3 Apr 2020 07:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BKwMhPG5dtr8; Fri,  3 Apr 2020 07:42:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F05D189180;
	Fri,  3 Apr 2020 07:42:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 092AE1BF5A2
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 07:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E91DE204E7
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 07:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tP1f2UcfV7I9 for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 07:42:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5148C20481
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 07:42:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A9E0920721;
 Fri,  3 Apr 2020 07:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585899737;
 bh=GLPBE38Ftn/zMdfh9nlqAo69KXiCx0hDAEdZxNxgfnY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L4jKcIz50rd6m/Bg27DNSm1/t6FZCB5cLb2qkLDzpygyYqPmeBZt1txJEOyELN3k7
 hfVy5euxwETnU4AWd1wMf57jyGKclNHNhG4IzZDWoZkzFEFbgzcOeBh6sIaJqQpD5p
 dTbyIS2c7OUvZj2f0D9v0Owhqz2Xh5wzzbGCrahE=
Date: Fri, 3 Apr 2020 09:42:14 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Iulian Olaru <iulianolaru249@gmail.com>
Subject: Re: [PATCH] staging: uwb: Fix missing blank space coding style issue
Message-ID: <20200403074214.GA3478242@kroah.com>
References: <20200329225727.9222-1-iulianolaru249@yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329225727.9222-1-iulianolaru249@yahoo.com>
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
Cc: devel@driverdev.osuosl.org, daniel.baluta@gmail.com,
 linux-kernel@vger.kernel.org, alexios.zavras@intel.com, tglx@linutronix.de,
 Iulian Olaru <iulianolaru249@yahoo.com>, info@metux.net, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 30, 2020 at 01:57:27AM +0300, Iulian Olaru wrote:
> This patch adds a blank space before the switch argument parenthesis to
> silence checkpatch.pl errors.
> 
> Signed-off-by: Iulian Olaru <iulianolaru249@yahoo.com>
> ---
>  drivers/staging/uwb/drp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

This file is no longer in the kernel tree. Always make sure to work
against linux-next, and not Linus's tree, in order to not duplicate
existing efforts.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
