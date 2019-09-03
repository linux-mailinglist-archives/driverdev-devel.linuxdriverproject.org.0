Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9C8A654D
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 11:33:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CEC387691;
	Tue,  3 Sep 2019 09:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8xLj0q+41IsA; Tue,  3 Sep 2019 09:33:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 369B4873B6;
	Tue,  3 Sep 2019 09:33:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3282F1BF28E
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 09:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2AC828638F
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 09:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vJolAcdHKquX for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 09:33:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1C09086375
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 09:33:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66E5522DBF;
 Tue,  3 Sep 2019 09:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567503214;
 bh=NRTEkLhjDekB8QQSnVDsDRRMHjFNQ3z8KPm/6p9Qc6Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hRB4E5qWMntCDKmwywBVHqSDJPNT/kRUZUhDPZRlYoI3yNmqoP8KKIeI1OadLa+ab
 LEUEJLoffIt6gZBqGZzP4e92ppjUMP+AnaOpWbxyPHR9d/IrGS8U9cv9+cczfWgpOj
 jdm8conexHveJcBEjBQ4biHJenordlxJ0h/lYkm8=
Date: Tue, 3 Sep 2019 11:33:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Prakhar Sinha <prakharsinha2808@gmail.com>
Subject: Re: [PATCH] staging: rts5208: Modified nested if blocks.
Message-ID: <20190903093332.GC12325@kroah.com>
References: <20190903090240.GA6104@MeraComputer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903090240.GA6104@MeraComputer>
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

On Tue, Sep 03, 2019 at 02:32:40PM +0530, Prakhar Sinha wrote:
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

Please keep the full line without wrapping them in these messages.

And your subject is a big odd, look at the documentation for how to
create a good subject line.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
