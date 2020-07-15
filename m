Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2634220EE0
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 16:10:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A0E32352E;
	Wed, 15 Jul 2020 14:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LYLEKgeGvhDm; Wed, 15 Jul 2020 14:10:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 838BA23B44;
	Wed, 15 Jul 2020 14:10:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F3391BF846
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 14:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 854DA8B484
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 14:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b+YQtKe0n2NS for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 14:10:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1C09B8B483
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 14:10:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CE96205CB;
 Wed, 15 Jul 2020 14:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594822222;
 bh=A66RLT4w/WW8bo0ykuWzP30GpTf1urXpWepa4WoWfJE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0LWPB1jWAyJcSvlCIcF9Q/U+g9ogr5zUvOeBXsti7fcwsIJxZSpe6E9im0oCLc22R
 34rq7a3GpTkiXiiCeEah5gJnzVqcLhdonqv2iUaSSwMPWrubCCdcdp7z2PJUqvx3p8
 suSfUzUVFYzCaL/E4BN3WM8rE8tB336v/Tu48hE0=
Date: Wed, 15 Jul 2020 16:10:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: Re: [PATCH 0/6] staging: dpaa2-ethsw: cleanup of link state and MAC
 addresses
Message-ID: <20200715141018.GA3377845@kroah.com>
References: <20200714133431.17532-1-ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714133431.17532-1-ioana.ciornei@nxp.com>
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

On Tue, Jul 14, 2020 at 04:34:25PM +0300, Ioana Ciornei wrote:
> This patch set is cleaning up the link state handling of the switch
> ports in patches 1-4. The last two patches are setting up the MAC
> addresses of the switch ports automatically so that the user is not
> forced to manually add them before adding them to a bridge.

This feels like adding new functionality to this code.  What is keeping
it from getting out of staging at this point in time?  I would prefer
for it to be moved out before adding new stuff to it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
