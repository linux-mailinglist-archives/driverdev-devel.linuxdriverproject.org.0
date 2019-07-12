Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EEA669D8
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 11:23:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 801518766A;
	Fri, 12 Jul 2019 09:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S353oANeIBEL; Fri, 12 Jul 2019 09:23:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05CD687659;
	Fri, 12 Jul 2019 09:23:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 569621BF37F
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 09:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4E3AB204DE
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 09:23:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AmmJPpljJLOB for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 09:23:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by silver.osuosl.org (Postfix) with ESMTPS id 3B729203E4
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 09:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 80491918D;
 Fri, 12 Jul 2019 11:23:25 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RzIOWer-JWEV; Fri, 12 Jul 2019 11:23:24 +0200 (CEST)
Received: from function (212.99.1.109.rev.sfr.net [109.1.99.212])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id B71A7918A;
 Fri, 12 Jul 2019 11:23:24 +0200 (CEST)
Received: from samy by function with local (Exim 4.92)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1hlrlv-0007Ty-DQ; Fri, 12 Jul 2019 11:23:19 +0200
Date: Fri, 12 Jul 2019 11:23:19 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: speakup@linux-speakup.org
Subject: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190712092319.wmke4i7zqzr26tly@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 speakup@linux-speakup.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Okash Khawaja <okash.khawaja@gmail.com>, devel@driverdev.osuosl.org,
 Kirk Reiser <kirk@reisers.ca>,
 Simon Dickson <simonhdickson@gmail.com>,
 linux-kernel@vger.kernel.org,
 Christopher Brannon <chris@the-brannons.com>
References: <20190315130035.6a8f16e9@narunkot>
 <20190316031831.GA2499@kroah.com>
 <20190706200857.22918345@narunkot>
 <20190707065710.GA5560@kroah.com> <20190712083819.GA8862@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712083819.GA8862@kroah.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Simon Dickson <simonhdickson@gmail.com>,
 Okash Khawaja <okash.khawaja@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Christopher Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

To readers of the linux-speakup: could you help on this so we can get
Speakup in mainline?  Neither Okash or I completely know what user
consequences the files in /sys/accessibility/speakup/ have, so could
people give brief explanations for each file (something like 3-6 lines
of explanation)?

The i18n/ files have been already documented in section 14.1 of the
spkguide.txt, so we do not need help for them.

Thanks!
Samuel

Greg KH, le ven. 12 juil. 2019 10:38:19 +0200, a ecrit:
> Can you make up a patch to create a
> drivers/staging/speakup/sysfs-speakup file with the needed information?
> That way it will be much easier to determine exactly what these sysfs
> files do and my review can be easier, and perhaps not needed at all :)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
