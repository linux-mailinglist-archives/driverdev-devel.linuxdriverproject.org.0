Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C938E4206
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 05:17:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6976986A01;
	Fri, 25 Oct 2019 03:17:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qznqltOhzWp2; Fri, 25 Oct 2019 03:17:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4569B862E4;
	Fri, 25 Oct 2019 03:17:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 503061BF9CD
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 03:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4BDE487927
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 03:17:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H10v-rkzQoxX for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 03:17:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 88C298795E
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 03:17:52 +0000 (UTC)
Received: from localhost (unknown [38.98.37.137])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33B4E2166E;
 Fri, 25 Oct 2019 03:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571973472;
 bh=QuOpuTEqghbYbDPXBE0/lyFy+emlMYI74JUhK1F3hPs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iZYuuaJcMIZ5wXZd8dRwccdFHUfkYYxyC3E8cKNjjyDRG9kywRVxGAjiUp/4oUgEy
 DuYo+JNscpJ5ueO5X+GjXcjVp5hFaD/2T/iBAJWY4u1wGPNY5uLYZU95kX386Wu/6D
 WfsW4X044JCqufauc4LP2vJzftBYMKUW/Kw8Go2Q=
Date: Thu, 24 Oct 2019 23:17:01 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Samuil Ivanov <samuil.ivanovbg@gmail.com>
Subject: Re: [PATCH 0/3] Staging: qlge: Rename of function prefix ql_ to qlge_
Message-ID: <20191025031701.GA535333@kroah.com>
References: <20191024212941.28149-1-samuil.ivanovbg@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024212941.28149-1-samuil.ivanovbg@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 manishc@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 25, 2019 at 12:29:38AM +0300, Samuil Ivanov wrote:
> In terms of namespace, the driver uses either qlge_, ql_ (used by
> other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
> clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
> prefix.
> 
> So I renamed three functions to the prefered namespace "qlge",
> and updated the occurrences in the driver.
> 
> Samuil Ivanov (3):
>   Staging: qlge: Rename prefix of a function to qlge
>   Staging: qlge: Rename prefix of a function to qlge
>   Staging: qlge: Rename prefix of a function to qlge

You sent 3 patches that do different things, yet have the same identical
subject line :(

Please fix up and resend the series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
