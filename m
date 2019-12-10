Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB29118B54
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 15:42:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 575FE806E0;
	Tue, 10 Dec 2019 14:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCmdTnTF0FmX; Tue, 10 Dec 2019 14:42:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E21FA875AD;
	Tue, 10 Dec 2019 14:42:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B9841BF3AB
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 14:42:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 355D186FC1
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 14:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yx2VHQ-ADE4T for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 14:42:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A430A868AD
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 14:42:30 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CD3720828;
 Tue, 10 Dec 2019 14:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575988950;
 bh=fo4Ig2GCo7sLhJYHhhz6hQKFMZeSD+SQc5ZCTQZ7Fn0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QINYYuE12L3diIi6rGVdGnWyLYKBuPqFUs0uVK/eE9fFntivkXgtFqNJz79s/Amzo
 CP/k3h66us6DwLCAGXrdMFcLzNJRccUJEh/gm/Oqlu80FRmNIB7jVrVGh1LZbvZM4V
 E05DjsWMZiF+6Gcm61gok6fQPnYpSfyei6rLgvQc=
Date: Tue, 10 Dec 2019 15:42:28 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH for-5.6 0/4] staging: ALSA PCM API updates
Message-ID: <20191210144228.GA3937513@kroah.com>
References: <20191210141356.18074-1-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210141356.18074-1-tiwai@suse.de>
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
Cc: devel@driverdev.osuosl.org, alsa-devel@alsa-project.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 03:13:52PM +0100, Takashi Iwai wrote:
> Hi,
> 
> this is a patch set to adapt the latest ALSA PCM API to staging
> drivers.  Basically these are merely cleanups, as shown in diffstat,
> and there should be no functional changes.
> 
> As the corresponding ALSA PCM API change is found in 5.5-rc1, please
> apply these on 5.5-rc1 or later.  Or if you prefer, I can merge them
> through sound tree, too.  Let me know.

Because of some future most driver changes that will be happening
(hopefully soon), I'll just take all of these in the staging tree now,
thanks!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
