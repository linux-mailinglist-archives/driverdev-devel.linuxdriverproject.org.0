Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E011F5AEB
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jun 2020 20:01:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD5FB250F6;
	Wed, 10 Jun 2020 18:01:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FpVdeifJOCNb; Wed, 10 Jun 2020 18:01:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C25FC24B6E;
	Wed, 10 Jun 2020 18:01:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9028F1BF5A9
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 18:01:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8CDE7881BC
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 18:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HMbunQrQYQH2 for <devel@linuxdriverproject.org>;
 Wed, 10 Jun 2020 18:01:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
 [217.70.183.198])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C523B880B2
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 18:01:23 +0000 (UTC)
X-Originating-IP: 86.202.110.81
Received: from localhost (lfbn-lyo-1-15-81.w86-202.abo.wanadoo.fr
 [86.202.110.81])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 07B8EC0005;
 Wed, 10 Jun 2020 18:01:18 +0000 (UTC)
Date: Wed, 10 Jun 2020 20:01:18 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 0/6] Enable Greybus Audio codec driver
Message-ID: <20200610180118.GZ3720@piout.net>
References: <cover.1591802243.git.vaibhav.sr@gmail.com>
 <20200610173711.GK5005@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610173711.GK5005@sirena.org.uk>
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
 Alex Elder <elder@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Greer <mgreer@animalcreek.com>, Takashi Iwai <tiwai@suse.com>,
 greybus-dev@lists.linaro.org, Johan Hovold <johan@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/06/2020 18:37:11+0100, Mark Brown wrote:
> On Wed, Jun 10, 2020 at 10:58:24PM +0530, Vaibhav Agarwal wrote:
> > The existing GB Audio codec driver is dependent on MSM8994 Audio driver.
> > During the development stage, this dependency was configured due to
> > various changes involved in MSM Audio driver to enable addtional codec
> > card and some of the changes proposed in mainline ASoC framework.
> 
> I'm not sure why you're copying me on a staging driver?  I don't recall
> the base driver having been submitted properly yet.

That was my suggestion, the whole history is that I submitted a patch
removing this driver as it was not getting compiled and so didn't go
through the componentization. See
https://lore.kernel.org/lkml/20200507212912.599433-1-alexandre.belloni@bootlin.com/

My point was that if we were to keep that driver, the goal would be to
have it out of staging instead of simply making it compile.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
