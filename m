Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22481A629C
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 09:35:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5363883F0;
	Tue,  3 Sep 2019 07:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xVUjjunjZf0E; Tue,  3 Sep 2019 07:35:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15C4E883CC;
	Tue,  3 Sep 2019 07:35:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A1ED1BF332
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 07:35:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6457A81E4D
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 07:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q4-ENQ3NRJBD for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 07:35:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 120D081A2D
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 07:35:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E69022CF8;
 Tue,  3 Sep 2019 07:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567496126;
 bh=g/tGl9iVFuPLvexhXY0vB0nltXebd6VJ1xSVyJPY2HY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M3ejSkoP+yquxFEF3viM+aBqK/yI4qmLZSzekWST6NVNnwvJ+m1jNyIIuI9vmrPCP
 NeigJMrlsTca7Kda1n7bvVSi0G/CbWHBvMZ1d4yX8+DliYSsqncfJgGWQEmNe29pmk
 RePsJGb8bW9P6uFiXgnXryTIcoktlVrnsaO7D6So=
Date: Tue, 3 Sep 2019 09:35:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Prakhar Sinha <prakharsinha2808@gmail.com>
Subject: Re: [PATCH] staging: rts5208: Fixed checkpatch warning.
Message-ID: <20190903073524.GB21543@kroah.com>
References: <20190831074055.GA10177@MeraComputer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190831074055.GA10177@MeraComputer>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, sabrina-gaube@web.de,
 linux-kernel@vger.kernel.org, nishkadg.linux@gmail.com, pakki001@umn.edu,
 tobias.niessen@stud.uni-hannover.de, kim.jamie.bradley@gmail.com,
 qader.aymen@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Aug 31, 2019 at 01:10:55PM +0530, Prakhar Sinha wrote:
> This patch solves the following checkpatch.pl's messages in
> drivers/staging/rts5208/sd.c
> 
> WARNING: line over 80 characters
> 4517: FILE: drivers/staging/rts5208/sd.c:4517:
> +                                               sd_card->sd_lock_status &=
> ~(SD_UNLOCK_POW_ON | SD_SDR_RST);
> 
> WARNING: line over 80 characters
> 4518: FILE: drivers/staging/rts5208/sd.c:4518:
> +                                               goto
> sd_execute_write_cmd_failed;
> 
> WARNING: line over 80 characters
> 4522: FILE: drivers/staging/rts5208/sd.c:4522:
> +                               sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON |
> SD_SDR_RST);
> 
> Signed-off-by: Prakhar Sinha <prakharsinha2808@gmail.com>
> ---
>  drivers/staging/rts5208/sd.c | 26 ++++++++++++--------------
>  1 file changed, 12 insertions(+), 14 deletions(-)

Same subject line as your previous patch, please fix it up to be unique.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
