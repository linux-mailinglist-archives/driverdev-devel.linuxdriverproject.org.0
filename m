Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDCE118392
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 10:31:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C50F18757F;
	Tue, 10 Dec 2019 09:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JBDGAmS6mYLB; Tue, 10 Dec 2019 09:31:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 929AA8732C;
	Tue, 10 Dec 2019 09:31:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF02E1BF2A0
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 09:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CA82885F89
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 09:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m7Z2h6hpK08Q for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 09:31:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 19A68857D6
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 09:31:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B2CA2073D;
 Tue, 10 Dec 2019 09:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575970280;
 bh=F9zbYw4QoH+VxLbWXNRiNT675hB3jGQPv2pn866Wypk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ph+o4iv2hHNcOGIN1iNsCwK4uyuSIgVenOpeNZmqHFiYvnobnsJSpqpMazGFPuMNk
 EpyA/WiNd9N4EKi2iPekdDjkPVJTVl9b/VrZgRujHpdB8tXtXcKxfCYJPZzdCRRMQp
 N0XxC1vpHC8CMlrdVIMEgQNCbpnORvZiN9ybzcbw=
Date: Tue, 10 Dec 2019 10:31:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julian Preis <julian.preis@fau.de>
Subject: Re: [PATCH] drivers/staging/exfat: Fix spelling mistakes
Message-ID: <20191210093117.GA3571029@kroah.com>
References: <n>
 <20191202145517.14488-1-julian.preis@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202145517.14488-1-julian.preis@fau.de>
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
Cc: devel@driverdev.osuosl.org, Johannes Weidner <johannes.weidner@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 02, 2019 at 03:55:17PM +0100, Julian Preis wrote:
> Fix spelling mistakes in exfat_core.c and exfat_super.c.
> 
> Co-developed-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Julian Preis <julian.preis@fau.de>
> ---
>  drivers/staging/exfat/exfat_core.c  |  6 +++---
>  drivers/staging/exfat/exfat_super.c | 10 +++++-----
>  2 files changed, 8 insertions(+), 8 deletions(-)

Any reason you forgot to cc: the maintainer of these files?

Please fix up and resend both of your patches, and remember to use
scripts/get_maintainer.pl for when you send patches to know who to send
them to, and to what list.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
