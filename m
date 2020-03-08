Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E101617D623
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Mar 2020 21:28:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A64486165;
	Sun,  8 Mar 2020 20:28:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5iiofyKysngN; Sun,  8 Mar 2020 20:28:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 74218861B2;
	Sun,  8 Mar 2020 20:28:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC9051BF2B0
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 20:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C2EC123771
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 20:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oq37EKhYXNar for <devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 20:28:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0169.hostedemail.com
 [216.40.44.169])
 by silver.osuosl.org (Postfix) with ESMTPS id 6A7C020500
 for <devel@driverdev.osuosl.org>; Sun,  8 Mar 2020 20:28:49 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id CF55F1801A5EA
 for <devel@driverdev.osuosl.org>; Sun,  8 Mar 2020 20:21:10 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 675C9182CED2A;
 Sun,  8 Mar 2020 20:21:08 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2197:2199:2393:2559:2562:2693:2828:2895:3138:3139:3140:3141:3142:3354:3622:3865:3866:3868:3870:3871:3872:3874:4321:4605:5007:6119:7903:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12296:12297:12438:12740:12760:12895:13071:13439:14093:14096:14097:14180:14659:14721:21060:21080:21221:21611:21627:21740:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: lift73_7e1d8c9f8d338
X-Filterd-Recvd-Size: 3514
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf17.hostedemail.com (Postfix) with ESMTPA;
 Sun,  8 Mar 2020 20:21:06 +0000 (UTC)
Message-ID: <cc0adb1f81afda526780fb217559a72031513909.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operator
From: Joe Perches <joe@perches.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>, Julia Lawall
 <julia.lawall@inria.fr>
Date: Sun, 08 Mar 2020 13:19:27 -0700
In-Reply-To: <465a7cfe822438a8edd32d3a5120bd565797ca4d.camel@gmail.com>
References: <20200308192152.26403-1-shreeya.patel23498@gmail.com>
 <alpine.DEB.2.21.2003082030310.2400@hadrien>
 <5a28241e8c3b11cbfe1776caadcb799cd9e39ee4.camel@perches.com>
 <465a7cfe822438a8edd32d3a5120bd565797ca4d.camel@gmail.com>
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
Cc: devel@driverdev.osuosl.org, nramas@linux.microsoft.com,
 daniel.baluta@gmail.com, sbrivio@redhat.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-03-09 at 01:40 +0530, Shreeya Patel wrote:
> On Sun, 2020-03-08 at 12:59 -0700, Joe Perches wrote:
> Hi Joe,

Hello.
[]
> > > > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> > > > b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> > []
> > > > @@ -924,7 +924,7 @@ static void rtw_joinbss_update_network(struct
> > > > adapter *padapter, struct wlan_net
> > > >  	/* update fw_state will clr _FW_UNDER_LINKING here indirectly
> > > > */
> > > >  	switch (pnetwork->network.InfrastructureMode) {
> > > >  	case Ndis802_11Infrastructure:
> > > > -		if (pmlmepriv->fw_state&WIFI_UNDER_WPS)
> > > > +		if (pmlmepriv->fw_state & WIFI_UNDER_WPS)
> > > >  			pmlmepriv->fw_state =
> > > > WIFI_STATION_STATE|WIFI_UNDER_WPS;
> > 
> > Like adding spaces around the | here too.
> > 
> I thought of doing this but then it was introducing another warning of
> "Line over 80 charachters" that is why I didn't proceed with it.
[]
> What is your suggestion over it? Should I let the line be over 80
> characters and add spaces around the operators?

Just ignore the long line warnings, there are many already
existing long
lines in that subsystem.

That should be a style challenge for a later time.

$ git ls-files drivers/staging/rtl8188eu | \
  xargs awk '{ print length($0); }' | \
  sort | uniq -c | sort -rn -k2
      1 187
      1 180
      1 171
      1 166
      1 163
      1 159
      1 158
      2 157
      1 153
      2 151
      1 146
      1 145
      1 144
      1 143
      1 142
      2 141
      1 140
      1 139
      1 137
      1 135
      5 134
      6 132
      3 131
      3 130
      6 129
      3 128
      6 127
      6 126
      3 125
      3 124
      5 123
      4 122
      8 121
      6 120
      4 119
      7 118
     10 117
     11 116
      9 115
      5 114
     11 113
     13 112
      8 111
     17 110
     25 109
     24 108
     14 107
     20 106
     19 105
     34 104
     19 103
     26 102
     22 101
     22 100
     25 99
     20 98
     23 97
     33 96
     32 95
     43 94
     40 93
     49 92
     47 91
     51 90
     48 89
     55 88
     50 87
     37 86
     48 85
     57 84
     45 83
     61 82
     61 81


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
