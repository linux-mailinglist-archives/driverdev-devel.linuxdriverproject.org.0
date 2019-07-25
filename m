Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3D07443A
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 06:13:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80E1387F84;
	Thu, 25 Jul 2019 04:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dnpm4A0pMu4d; Thu, 25 Jul 2019 04:13:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3DD7087F78;
	Thu, 25 Jul 2019 04:13:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06DF01BF5A7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 04:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 03B46869E1
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 04:13:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N1Ok1fzoOuxi for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 04:13:38 +0000 (UTC)
X-Greylist: delayed 00:09:29 by SQLgrey-1.7.6
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com
 [71.19.155.94])
 by whitealder.osuosl.org (Postfix) with ESMTP id 28EE38627B
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 04:13:38 +0000 (UTC)
Received: from localhost (unknown [IPv6:2602:61:7344:8d00::a00b:8ad9])
 by hurricane.the-brannons.com (Postfix) with ESMTPSA id F151A77888;
 Wed, 24 Jul 2019 21:04:08 -0700 (PDT)
From: Chris Brannon <chris@the-brannons.com>
To: Gregory Nowak <greg@gregn.net>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
References: <20190315130035.6a8f16e9@narunkot>
 <20190316031831.GA2499@kroah.com> <20190706200857.22918345@narunkot>
 <20190707065710.GA5560@kroah.com> <20190712083819.GA8862@kroah.com>
 <20190712092319.wmke4i7zqzr26tly@function>
 <20190713004623.GA9159@gregn.net> <20190725035352.GA7717@gregn.net>
Date: Wed, 24 Jul 2019 21:04:07 -0700
In-Reply-To: <20190725035352.GA7717@gregn.net> (Gregory Nowak's message of
 "Wed, 24 Jul 2019 20:53:52 -0700")
Message-ID: <875znqhia0.fsf@cmbmachine.messageid.invalid>
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Simon Dickson <simonhdickson@gmail.com>,
 Okash Khawaja <okash.khawaja@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Christopher Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Gregory Nowak <greg@gregn.net> writes:

> keymap
> I believe this is the currently active kernel keymap. I'm not sure of
> the format, probably what dumpkeys(1) and showkey(1) use. Echoing
> different values here should allow for remapping speakup's review
> commands besides remapping the keyboard as a whole.

AFAIK the Speakup keymap is just for remapping keys to Speakup
functions.  It's a binary format, not related to dumpkeys etc.  You need
a special program to compile a textual keymap into something that can be
loaded into /sys/accessibility/speakup/keymap.  I may have source for
that lying around here somewhere.  This is "here there be dragons"
territory.  I think the only specification of the format is in the
source code.

-- Chris
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
