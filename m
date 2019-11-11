Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89A9F83CB
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 00:55:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6D9F8807C;
	Mon, 11 Nov 2019 23:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id alK5+304g8Ka; Mon, 11 Nov 2019 23:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0975487553;
	Mon, 11 Nov 2019 23:55:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 212E91BF381
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 23:55:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1DFC92000B
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 23:55:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YlEfH5XpcwH2 for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 23:55:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0106.hostedemail.com
 [216.40.44.106])
 by silver.osuosl.org (Postfix) with ESMTPS id 3054820006
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 23:55:36 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 8893A800A327
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 23:16:14 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id DA04540E1;
 Mon, 11 Nov 2019 23:16:11 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2198:2199:2200:2393:2551:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3868:3871:3872:4250:4321:4605:5007:6691:7901:8828:10004:10400:11026:11232:11658:11914:12050:12297:12438:12740:12760:12895:13069:13311:13357:13439:14180:14659:21080:21627:21972:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:20, LUA_SUMMARY:none
X-HE-Tag: nut53_18ddf32dd8d37
X-Filterd-Recvd-Size: 2182
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Mon, 11 Nov 2019 23:16:10 +0000 (UTC)
Message-ID: <c2c803570b92fc18ac62902bd99075ccc33eb5b6.camel@perches.com>
Subject: Re: [PATCH v2 3/3] staging: wfx: replace u32 by __le32
From: Joe Perches <joe@perches.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>, Jules Irenge
 <jbi.octave@gmail.com>
Date: Mon, 11 Nov 2019 15:15:54 -0800
In-Reply-To: <3445403.d56fhTCmfW@pc-42>
References: <20191111133055.214410-1-jbi.octave@gmail.com>
 <20191111133055.214410-3-jbi.octave@gmail.com> <3445403.d56fhTCmfW@pc-42>
User-Agent: Evolution 3.34.1-2 
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2019-11-11 at 16:58 +0000, Jerome Pouiller wrote:
> On Monday 11 November 2019 14:30:55 CET Jules Irenge wrote:
> [...]
> > -       u32   count_rts_failures;
> > -       u32   count_ack_failures;
> > -       u32   count_rx_multicast_frames;
> > -       u32   count_rx_frames_success;
> > -       u32   count_rx_cmacicv_errors;
> > -       u32   count_rx_cmac_replays;
> > -       u32   count_rx_mgmt_ccmp_replays;
> [...]
> > +       __le32   count_rts_failures;
> > +       __le32   count_rx_multicast_frames;
> > +       __le32   count_rx_cmacicv_errors;
> > +       __le32   count_rx_cmac_replays;
> > +       __le32   count_rx_mgmt_ccmp_replays;
> > +       __le32   count_rx_beacon;
> > +       __le32   count_miss_beacon;
> > +       __le32   count_ack_failures;
> > +       __le32   count_rx_frames_success;
> >         u32   count_rx_bipmic_errors;
> > -       u32   count_rx_beacon;
> > -       u32   count_miss_beacon;
> 
> Hello Jules,
> 
> Your patch reorders members of the structure. It will break API with the 
> chip.

And if the hardware really is le, then almost certainly
_all_ the members of the struct should be __le32

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
