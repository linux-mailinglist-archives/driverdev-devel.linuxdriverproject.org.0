Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A2612902
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 09:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BB4387A44;
	Fri,  3 May 2019 07:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bEltUcyH79SE; Fri,  3 May 2019 07:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98BFE87A20;
	Fri,  3 May 2019 07:40:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA42B1BF3DB
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 07:40:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AF928861F9
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 07:40:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VQWYG7Fevc_D for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 07:40:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp1.de.adit-jv.com (smtp1.de.adit-jv.com [93.241.18.167])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 72604861F2
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 07:40:54 +0000 (UTC)
Received: from localhost (smtp1.de.adit-jv.com [127.0.0.1])
 by smtp1.de.adit-jv.com (Postfix) with ESMTP id 741C73C0034;
 Fri,  3 May 2019 09:40:51 +0200 (CEST)
Received: from smtp1.de.adit-jv.com ([127.0.0.1])
 by localhost (smtp1.de.adit-jv.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HggogzNF1TRK; Fri,  3 May 2019 09:40:44 +0200 (CEST)
Received: from HI2EXCH01.adit-jv.com (hi2exch01.adit-jv.com [10.72.92.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp1.de.adit-jv.com (Postfix) with ESMTPS id 739DB3C00C1;
 Fri,  3 May 2019 09:40:44 +0200 (CEST)
Received: from vmlxhi-102.adit-jv.com (10.72.93.184) by HI2EXCH01.adit-jv.com
 (10.72.92.24) with Microsoft SMTP Server (TLS) id 14.3.439.0;
 Fri, 3 May 2019 09:40:44 +0200
Date: Fri, 3 May 2019 09:40:41 +0200
From: Eugeniu Rosca <erosca@de.adit-jv.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: most: cdev: fix chrdev_region leak in mod_exit
Message-ID: <20190503074041.GA4686@vmlxhi-102.adit-jv.com>
References: <20190424192343.15418-1-erosca@de.adit-jv.com>
 <20190502173920.GA14304@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502173920.GA14304@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.72.93.184]
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
Cc: devel@driverdev.osuosl.org, Eugeniu Rosca <roscaeugeniu@gmail.com>,
 Takashi Iwai <tiwai@suse.de>, linux-kernel@vger.kernel.org,
 Marcin Ciupak <marcin.s.ciupak@gmail.com>,
 Suresh Udipi <sudipi@jp.adit-jv.com>,
 Colin Ian King <colin.king@canonical.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 02, 2019 at 07:39:20PM +0200, Greg Kroah-Hartman wrote:
> On Wed, Apr 24, 2019 at 09:23:43PM +0200, Eugeniu Rosca wrote:
> > From: Suresh Udipi <sudipi@jp.adit-jv.com>
> > 
> > It looks like v4.18-rc1 commit [0] which upstreams mld-1.8.0
> > commit [1] missed to fix the memory leak in mod_exit function.
> > 
> > Do it now.
> > 
> > [0] aba258b7310167 ("staging: most: cdev: fix chrdev_region leak")
> > [1] https://github.com/microchip-ais/linux/commit/a2d8f7ae7ea381
> >     ("staging: most: cdev: fix leak for chrdev_region")
> > 
> > Signed-off-by: Suresh Udipi <sudipi@jp.adit-jv.com>
> > Signed-off-by: Eugeniu Rosca <erosca@de.adit-jv.com>
> > Acked-by: Christian Gromm <christian.gromm@microchip.com>
> 
> In the future, please use the "correct" way to mark a fixup patch.  For
> this, it would be:
> Fixes: aba258b73101 ("staging: most: cdev: fix chrdev_region leak")
> 
> I'll go add it, and the needed stable tag to the patch when applying it.

Thank you for the suggestion. I'll follow it next time.

> 
> thanks,
> 
> greg k-h

-- 
Best Regards,
Eugeniu.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
