Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A299223B688
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 10:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B839887590;
	Tue,  4 Aug 2020 08:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gMHdS8QWABJn; Tue,  4 Aug 2020 08:11:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7615874A7;
	Tue,  4 Aug 2020 08:11:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26B811BF82B
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 08:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 206C6856E8
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 08:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0_FfpP0SWOTd for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 08:11:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6ABB085683
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 08:11:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B82442076C;
 Tue,  4 Aug 2020 08:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596528706;
 bh=vDIdMthlwvK/lkIZaP62qRcbBqyYKHtAH/TIlf2+Eh4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QAOqMFQBXE6gbzCuR+sDBsl8IRxsLNFDP6Il/GaPzZT+gvA5oW0wVuRUqzDPvDuQp
 r8UCTIIT31gsbQEhsvEnC79nrk+7FRDKCi1hajUnkC27OS8olMycbG4OrilGdUOySY
 +6nCD/Zdd2WXZi+ckAUmdh7dfFuCKqKmk6zoyxbg=
Date: Tue, 4 Aug 2020 10:11:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "hongxu.zhao" <hongxu.zhao@mediatek.com>
Subject: Re: [PATCH] staging: Add Mediatek High Frequency Manager Framework
Message-ID: <20200804081126.GA1765831@kroah.com>
References: <20200804075339.9820-1-hongxu.zhao@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804075339.9820-1-hongxu.zhao@mediatek.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 wsd_upstream@mediatek.com, Weiqi Fu <weiqi.fu@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>,
 Cunliang Du <cunliang.du@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Zhen jiang <zhen.jiang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 04, 2020 at 03:52:49PM +0800, hongxu.zhao wrote:
> Add a new sensor framework into linux kernel which can support multi client request sensor data.
> There are the following features:
>     1.Ringbuffer between manager and client;
>     2.Kernel space user interface;
>     3.User space user interface with syscall;
>     4.Each client hang detect mechanism;
>     5.Polling timer management in framework no need driver concern;
>     6.Polling kthread work intergrated into a single kthread
>       worker to save system resources in framework no need driver concern;
>     7.Proc file system to show manager device and client details;
>     8.Compitable with android and widely used in many mediatek platform products;
> 
> Change-Id: I6361cdc2d51de50f66eede7df099c4575e7ec473

Did you not run checkpatch.pl on this?  :)

No need for change-id here.

But, most importantly, why is this in drivers/staging?  What keeps it
from being in the "real" part of the kernel?  I need a TODO file in the
directory of the driver listing what remains to be done and who is
responsible for doing this work and reviewing patches.

Can you resend this with that file added and the Change-id removed?

Also, why not just use the IIO interface, why are you creating
yet-another api for sensors?  We already have 2, making a third seems
like something that guarantees this will never be mergable to the
correct part of the kernel.

And finally, /proc/ is not for devices, that is what sysfs is for,
please use that.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
