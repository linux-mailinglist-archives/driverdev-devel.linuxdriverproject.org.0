Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9889273E87
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 11:27:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E9E5C86673;
	Tue, 22 Sep 2020 09:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nP0KHq7NVKyM; Tue, 22 Sep 2020 09:27:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22F1B86678;
	Tue, 22 Sep 2020 09:27:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B21B1BF25F
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 159BE86673
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJGNP57pmbQq for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 09:27:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 98D56860FF
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 09:27:36 +0000 (UTC)
Received: from coco.lan (ip5f5ad5bc.dynamic.kabel-deutschland.de
 [95.90.213.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F67420BED;
 Tue, 22 Sep 2020 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600766856;
 bh=VxFgH7Ev5rUGi3aRCl8C8jCW5freXl117SHPqM83i78=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SPr3dMqyGCY+VVlQoTe8XCBnE3dVciItQvAf7hxzeqpJNrME8+dvwKDcCSZ4okhfn
 JaP4nHSjzeKw3/VSZEFDpEC705UOPe91iyraLq6iHeBKxQnFcFOeZfrwjjaEHV+uE9
 /zNlNviWHM5AveopipKbPWa7DI5q09qdktRw4Blo=
Date: Tue, 22 Sep 2020 11:27:29 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Alex Dewar <alex.dewar90@gmail.com>
Subject: Re: [PATCH REBASE 0/3] atomisp: Rebased fixes
Message-ID: <20200922112729.313d454d@coco.lan>
In-Reply-To: <20200922090914.20702-1-alex.dewar90@gmail.com>
References: <21f18dc2-a1bc-0a37-0336-fc35170a40e9@gmail.com>
 <20200922090914.20702-1-alex.dewar90@gmail.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Alan Cox <alan@linux.intel.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 22 Sep 2020 10:09:07 +0100
Alex Dewar <alex.dewar90@gmail.com> escreveu:

> Hi Mauro,
> 
> I've rebased the patches now, but there is a slight hiccup. For patches 2
> and 3 of this series there will now be a conflict with commit 9289cdf39992
> ("staging: media: atomisp: Convert to GPIO descriptors") in Greg's tree.
> 
> I'm not sure what the best way to handle this is? The merge conflicts
> will be trivial (due to a conversion between the gpio_* and gpiod_*
> APIs), but I could alternatively send these last two patches in via
> Greg's tree if that's easier for people. Let me know what works.

Maybe the best would be to re-send those after the merge window, when
both patches will arrive upstream.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
