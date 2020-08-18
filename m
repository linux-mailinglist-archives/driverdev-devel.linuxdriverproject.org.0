Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EBA2486BD
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:09:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 700A020419;
	Tue, 18 Aug 2020 14:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RnOLdE+n9JQP; Tue, 18 Aug 2020 14:09:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7724C203F9;
	Tue, 18 Aug 2020 14:09:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D4A811BF3D0
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D173D845D9
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3IHxaBDrz1RB for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:09:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4FF7D854B4
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:09:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9567C20786;
 Tue, 18 Aug 2020 14:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597759787;
 bh=HgHc4ESZwhbbEAe1yXtGZBgMlETAW1fB2DVt/PGNgAg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zl5bZUyFmc5LcO7VsYG+6oHb1jwgmNvUKSUS+Re5X9wyvNupQoisEwg8uCoN7T0fr
 AF8HGohr0LWYljWy+CdrGRYPBQtq7zBpk2M5iv4UV6UczHP208ZnLKWO1uuhoAHoCa
 qnfifpuWkbsm0GcmelwQIYP6O4ZxJw/zAf2w4gss=
Date: Tue, 18 Aug 2020 16:10:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tomer Samara <tomersamara98@gmail.com>
Subject: Re: [PATCH v2 2/4] staging: android: Add error handling to
 ion_page_pool_shrink
Message-ID: <20200818141009.GA562377@kroah.com>
References: <cover.1597602783.git.tomersamara98@gmail.com>
 <73d1b8b904ae867f59e7ada14c3fb90e27f12bbb.1597602783.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73d1b8b904ae867f59e7ada14c3fb90e27f12bbb.1597602783.git.tomersamara98@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Joel Fernandes <joel@joelfernandes.org>,
 Riley Andrews <riandrews@android.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Laura Abbott <labbott@redhat.com>,
 Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 16, 2020 at 10:24:22PM +0300, Tomer Samara wrote:
> Add error check to ion_page_pool_shrink after calling
> ion_page_pool_remove, due to converting BUG_ON to WARN_ON.
> 
> Signed-off-by: Tomer Samara <tomersamara98@gmail.com>

So this fixes a previous patch?  That's not good, please merge them
together so you do not cause a bug and then fix it up later on.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
