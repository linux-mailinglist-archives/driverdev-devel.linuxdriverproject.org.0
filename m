Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B72B2D5C
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Sep 2019 01:40:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8C29D204E3;
	Sat, 14 Sep 2019 23:40:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B-f2vv7yu3HL; Sat, 14 Sep 2019 23:40:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA12A20030;
	Sat, 14 Sep 2019 23:40:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85A261BF2CC
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 23:40:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7DD512047C
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 23:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0JJdreZt3Vfi for <devel@linuxdriverproject.org>;
 Sat, 14 Sep 2019 23:40:24 +0000 (UTC)
X-Greylist: delayed 00:07:46 by SQLgrey-1.7.6
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by silver.osuosl.org (Postfix) with ESMTPS id AD1B420030
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 23:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 08D131CA64;
 Sun, 15 Sep 2019 01:32:35 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-KoI0jHpXVu; Sun, 15 Sep 2019 01:32:34 +0200 (CEST)
Received: from function.home (unknown
 [IPv6:2a01:cb19:979:800:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 664361CA47;
 Sun, 15 Sep 2019 01:32:34 +0200 (CEST)
Received: from samy by function.home with local (Exim 4.92.2)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1i9HWr-0001im-EC; Sun, 15 Sep 2019 01:32:33 +0200
Date: Sun, 15 Sep 2019 01:32:33 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190914233233.lvlxd3p4josiir7w@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 Gregory Nowak <greg@gregn.net>, devel@driverdev.osuosl.org,
 Simon Dickson <simonhdickson@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, John Covici <covici@ccs.covici.com>
References: <20190712092319.wmke4i7zqzr26tly@function>
 <20190713004623.GA9159@gregn.net> <20190725035352.GA7717@gregn.net>
 <875znqhia0.fsf@cmbmachine.messageid.invalid>
 <m3sgqucs1x.wl-covici@ccs.covici.com>
 <CAOtcWM0qynSjnF6TtY_s7a51B7JweDb7jwdxStEmPvB9tJFU4Q@mail.gmail.com>
 <20190821222209.GA4577@gregn.net>
 <CAOtcWM0Jzo+wew-uiOmde+eZXEWZ310L8wXscWjJv5OXqXJe6Q@mail.gmail.com>
 <20190909025429.GA4144@gregn.net>
 <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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
Cc: devel@driverdev.osuosl.org, Simon Dickson <simonhdickson@gmail.com>,
 Gregory Nowak <greg@gregn.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 John Covici <covici@ccs.covici.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

Okash Khawaja, le sam. 14 sept. 2019 22:08:35 +0100, a ecrit:
> 2. We are still missing descriptions for i18n/ directory. I have added
> filenames below. can someone can add description please:

There are some descriptions in the "14.1.  Files Under the i18n
Subdirectory" section of spkguide.txt

Samuel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
