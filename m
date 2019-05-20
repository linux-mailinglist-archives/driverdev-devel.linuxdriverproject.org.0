Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 193AF22ED7
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:30:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7EA498539A;
	Mon, 20 May 2019 08:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 30mPcsiUJuFW; Mon, 20 May 2019 08:30:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 10E7785313;
	Mon, 20 May 2019 08:30:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFC851BF2EF
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:30:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CBE1621568
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:30:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X-4OQFqnlF81 for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:30:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 657BB2078B
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:30:29 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5A9B20815;
 Mon, 20 May 2019 08:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558341029;
 bh=tZDNdez/lL2GlN0vbsvNhon4IRZJAWq0k4THPvqcEfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D5TPMne8RFbuCiGQUHl7kfJHoAQXsPj5GkN6D2NI9WF5vWKj8scGDEdiFEN1NhJPP
 BW2yAH3DYEgiqxu8qoSjDBSGdYZ5tRq/j6t7eVwr/BByB2fcR4SVx88HirLzKfjP9P
 huzb74C4c9Iw8Se9qG4CBPrlVZFcwH10BHIolKZk=
Date: Mon, 20 May 2019 10:30:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geordan Neukum <gneukum1@gmail.com>
Subject: Re: [PATCH 0/5] Updates to staging driver: kpc_i2c
Message-ID: <20190520083026.GA13877@kroah.com>
References: <cover.1558146549.git.gneukum1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1558146549.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 18, 2019 at 02:29:55AM +0000, Geordan Neukum wrote:
> Attached are an assortment of updates to the kpc_i2c driver in the
> staging subtree.

All now queued up.  I'll rebase my patches that move this file on top of
yours, as kbuild found some problems with mine, and I'll resend them to
the list.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
