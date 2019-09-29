Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6678BC22BC
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 16:08:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C64186781;
	Mon, 30 Sep 2019 14:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IonFGMmpWOmT; Mon, 30 Sep 2019 14:08:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A8518651C;
	Mon, 30 Sep 2019 14:08:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E7C61BF4E3
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 14:08:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 69F312079A
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 14:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S-+C7slWFRow for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 14:08:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E27F5204FD
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 14:08:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39150218DE;
 Mon, 30 Sep 2019 14:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569852501;
 bh=2mc2WJAfFNYLm+JXii+VJzzTASUubxbZlUcpObv3R/0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qGe3PHGQHW6M6wxHHWog/8+TUBx86qRsirrn3uYoGLop4V0MiGFBFkXPvt71++Bjr
 E07YsWeIqZAfoxGpFFMYOX/X5K30rZE+WRBxh2LMcF7gMOukh0ChjDeBoVI/0z31Jd
 7aM/Uu5+giWQANAKciJ6rWENkmlF7iR7NCXHQvWA=
Date: Sun, 29 Sep 2019 16:59:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jesse Barton <jessebarton95@gmail.com>
Subject: Re: [PATCH 3/3] Staging: exfat: exfat_super.c Fixed coding style
 issues.
Message-ID: <20190929145926.GC2017443@kroah.com>
References: <20190929145245.38816-1-jessebarton95@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929145245.38816-1-jessebarton95@gmail.com>
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

On Sun, Sep 29, 2019 at 09:52:45AM -0500, Jesse Barton wrote:
> Removed function argument wrapping to new line.

I don't think you "removed" anything here :(

Writing the changelog is usually harder than writing the patch in the
first place, welcome to programming!  :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
