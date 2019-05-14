Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E30551CA0F
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 16:10:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DEF1D85EF3;
	Tue, 14 May 2019 14:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ca_p4CP5dswr; Tue, 14 May 2019 14:10:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1DE2844AA;
	Tue, 14 May 2019 14:10:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 220291BF3FF
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 14:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F2B386B92
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 14:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j7-qqOpsKlGf for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 14:09:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7DB148588C
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 14:09:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C509D20881;
 Tue, 14 May 2019 14:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557842948;
 bh=gRjBXjZVYSQGj59R3D69Ae84BqSlejmFQUNEKFbUPvY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y8eTW8jGaya7wtJ4ZlAfmHT867jTDITcpqzjlbrGqUQjFoPaDlA8h4IsH2mBo/szY
 UtDU1OmkmHMMMzN+kuobXA76im1nc49ahh/XNxClWohz3KrPU2vfVwh5Tk79bZeiou
 U2rghu4IZ1iQSVBzesDfgof+6jDIJS7h+oFqKQpM=
Date: Tue, 14 May 2019 16:09:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Puranjay Mohan <puranjay12@gmail.com>
Subject: Re: [PATCH V2 1/5] Staging: rtl8192u: ieee80211: Fix coding style
 warning
Message-ID: <20190514140905.GA16844@kroah.com>
References: <20190514091224.GA786@arch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514091224.GA786@arch>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 14, 2019 at 02:42:31PM +0530, Puranjay Mohan wrote:
> Remove braces around a single if statement to fix following
> checkpatch.pl warning.
> WARNING: braces {} are not necessary for single statement blocks
> 
> Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
> ---
> 
> V2 - remove extra blank line before the closing brace.

When you fix up a patch in a series, please resend the _whole_ series,
otherwise I have to try to piece together the different patches and put
them in the proper place.  When dealing with 1000+ emails a day, that's
a hard thing to ask a maintainer to do.

So please just resend this whole thing, in a threaded email series (such
that they are all grouped together.  You are sending these as individual
emails, and so email clients do not link them, making them harder to
manage :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
