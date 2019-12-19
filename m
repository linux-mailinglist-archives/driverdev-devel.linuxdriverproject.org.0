Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1B81267BD
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 18:13:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E747F87FF1;
	Thu, 19 Dec 2019 17:13:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v0AwoPJAslzg; Thu, 19 Dec 2019 17:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D573E87FD3;
	Thu, 19 Dec 2019 17:13:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34E431BF2C7
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 17:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3159B87FD9
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 17:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FriEtm-shE6f for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 17:13:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B1A287FD3
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 17:13:44 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1F082053B;
 Thu, 19 Dec 2019 17:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576775624;
 bh=jUparBvQsW8M+YEToL7Ck5iK+E2oINazJ3dWX8wTHqc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bYTOwOr8zUB3CtVY/km68f5K8rSXgOz9WyrilaEUlR+HAXDbuA978CvgemIH0xnQc
 2wbRtAYeZUHOIAgsrrSwKiU6Dm3IT2PVWvR3cT5Fz6Tsm+G+nihJfEqPv/vIkWSpwX
 A4WMg6cRTTBMHY08HKX0+hHGEUYFnd1Q+PvAGIdU=
Date: Thu, 19 Dec 2019 18:13:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julian Preis <julian.preis@fau.de>
Subject: Re: [PATCH v3] drivers/staging/exfat/exfat_super.c: Clean up
 ffsCamelCase function names
Message-ID: <20191219171342.GA2080752@kroah.com>
References: <y>
 <20191218074722.3338-1-julian.preis@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218074722.3338-1-julian.preis@fau.de>
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
Cc: devel@driverdev.osuosl.org, Johannes Weidner <johannes.weidner@fau.de>,
 linux-fsdevel@vger.kernel.org, =valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 18, 2019 at 08:47:22AM +0100, Julian Preis wrote:
> Rename every instance of <ffsCamelCaseExample> to <camel_case_example>
> in file exfat_super.c. Fix alignment.
> 
> Co-developed-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Julian Preis <julian.preis@fau.de>
> 
> ---
> Changes in v3:
> - Change renaming from <ffs_camel_case_example> to <camel_case_example>
> 
> Changes in v2:
> - Add email recipients according to get_maintainer.pl
> - Add patch versions
> - Use in-reply-to
> 
>  drivers/staging/exfat/exfat_super.c | 98 ++++++++++++++---------------
>  1 file changed, 49 insertions(+), 49 deletions(-)

This patch breaks the build horribly :(

Did you test it?

Please always do so, otherwise it makes maintainers grumpy :(

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
