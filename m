Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECB6F8E9
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 14:32:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2C258774C;
	Tue, 30 Apr 2019 12:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dB8JyykhOnWk; Tue, 30 Apr 2019 12:32:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2498981EDD;
	Tue, 30 Apr 2019 12:32:49 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CDC941BF293
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 12:32:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CAC5F81431
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 12:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CpzjW1TaXCIr
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 12:32:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 11B6386905
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 12:32:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6425E2080C;
 Tue, 30 Apr 2019 12:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556627565;
 bh=2LYZNTu4nrvrvU9Vj6UZFYQAJXrVKJBynFzhZpOvQq0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cAPQIODopPAwx7AQjK2K0pCbsxSWyA3d/iW9PQJFGPdA7qixmoNjboqofFZFtQ7Ow
 ocbWzZ8zIdTAAcylhYYyWi6fHKSlm0D5nwwDTuuDjIS5DnRc2JF6C3JICTMxLJ7p6k
 FMtewL6+9Auipj1v9UviM3gSn5P8AtUKAiCLWUo0=
Date: Tue, 30 Apr 2019 14:32:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH v2] staging: most: sound: pass correct device when
 creating a sound card
Message-ID: <20190430123243.GA21404@kroah.com>
References: <1556626068-22650-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556626068-22650-1-git-send-email-christian.gromm@microchip.com>
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

On Tue, Apr 30, 2019 at 02:07:48PM +0200, Christian Gromm wrote:
> This patch fixes the usage of the wrong struct device when calling
> function snd_card_new.
> 
> Reported-by: Eugeniu Rosca <erosca@de.adit-jv.com>
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> Fixes: 	commit 69c90cf1b2faf5fa08fe5e18e4b47b044474506e

Nit, the proper format for this would be:
Fixes: 69c90cf1b2fa ("staging: most: sound: call snd_card_new with struct device")

and that can be gotten with this git line:
	git show -s --abbrev-commit --abbrev=12 --pretty=format:"Fixes: %h (\"%s\")%n"

I think it's documented somewhere in Documentation...

Anyway, I'll fix this up when applying it, thanks.

Also, I'll tag it for stable backports, as it should go back to 4.18+

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
