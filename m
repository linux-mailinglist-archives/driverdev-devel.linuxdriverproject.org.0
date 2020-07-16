Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C7422253C
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 16:25:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7081F890C6;
	Thu, 16 Jul 2020 14:25:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Oy8snHkp9p4; Thu, 16 Jul 2020 14:25:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F7F888ED7;
	Thu, 16 Jul 2020 14:25:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD0EC1BF2F6
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:25:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C90F520502
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:25:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kw3W7TkZlQO3 for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 14:25:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 25870203E7
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 14:25:44 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66BEF207CB;
 Thu, 16 Jul 2020 14:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594909543;
 bh=PKHHa2U0Q/fS+204ojzXqyjFZw5lyyFrrzNLEaQzU9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jiHRefMypriSTxbcAZBCIT2gM7OotHWPd2OzKoj4aJLrgXi28At0mE73ZBwwIt09f
 Aj3Tsu2oNHp3Jh4im+q02Nm3bVeLte7b3IAHBo9IRXQoY2DhkNiyTixShVIfe3RHZh
 bOeZOnbXDULXOBVtAR37UqwB1cdHdpWaO3cFR2vQ=
Date: Thu, 16 Jul 2020 16:25:37 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH v3] staging: comedi: comedi_fops.c: added casts to get
 rid of sparse warnings
Message-ID: <20200716142537.GA2176745@kroah.com>
References: <20200716141747.wewrnejrygosqhd5@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716141747.wewrnejrygosqhd5@pesu-pes-edu>
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
Cc: devel@driverdev.osuosl.org, Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 linux-kernel@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>, Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>,
 Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 16, 2020 at 10:17:47AM -0400, B K Karthik wrote:
> fixed sparse warnings by adding a cast in assignment from
> void [noderef] __user * to unsigned int __force *
> and a reverse cast in argument from
> unsigned int * to  unsigned int __user * .
> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  drivers/staging/comedi/comedi_fops.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

What changed from previous versions?

That always goes below the --- line.

Please fix that up and resend a v4.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
