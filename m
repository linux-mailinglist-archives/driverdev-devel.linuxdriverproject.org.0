Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9FFF2AA
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 11:21:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03D2485116;
	Tue, 30 Apr 2019 09:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ibzIdOj8wNif; Tue, 30 Apr 2019 09:21:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E720E85E0B;
	Tue, 30 Apr 2019 09:21:05 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB2111BF281
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 09:21:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B752087524
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 09:21:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3l9EW-GeB9o6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 09:21:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 07641874F3
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 09:21:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CA0620652;
 Tue, 30 Apr 2019 09:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556616060;
 bh=UKEkSTBUKn1NZyn7YP8t8xTWBsvgcStKtEncOfFdzAo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Nx3z9L8geoZw7Evk4XAGcbU+wX+CnhMdXbzEoWWvMLDQZ9gR9fgk76kxJvwMkCm97
 WZmLIQ58oBS1I1+P++3bLOvrJWXZLd+tn52ibu0FDTnhEJo3u5wSh9Jzv9/8KIHWIq
 T0aSE1THFG4AOje4h0JYHs8qqOhyPN59hUBXQShw=
Date: Tue, 30 Apr 2019 11:20:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH] staging: most: sound: pass correct device when creating
 a sound card
Message-ID: <20190430092058.GA14684@kroah.com>
References: <1556614822-21464-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556614822-21464-1-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org, erosca@de.adit-jv.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 30, 2019 at 11:00:22AM +0200, Christian Gromm wrote:
> This patch fixes the usage of the wrong struct device when calling
> function snd_card_new.
> 
> Reported-by: Eugeniu Rosca <erosca@de.adit-jv.com>
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> ---
>  drivers/staging/most/sound/sound.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Does this fix a specific commit?  If so, should there be a "Fixes: " tag
in the s-o-b: area?  Does this need to go to the stable trees?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
