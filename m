Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCD817D626
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Mar 2020 21:33:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 453F5886E5;
	Sun,  8 Mar 2020 20:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id otnr47YqzoDx; Sun,  8 Mar 2020 20:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 518C687525;
	Sun,  8 Mar 2020 20:33:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40E0E1BF2B0
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 20:33:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C86286D4D
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 20:33:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7vOgNc3btP8y for <devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 20:33:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A5FEE86D03
 for <devel@driverdev.osuosl.org>; Sun,  8 Mar 2020 20:33:17 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id y30so3729614pga.13
 for <devel@driverdev.osuosl.org>; Sun, 08 Mar 2020 13:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GK4c/eKJ7QEQIDQAkYSm28K6U9vkh6nkkxoflqtOBfo=;
 b=YQ9Pl+YeSr6cLsgl4sKOvl+ys4fHwJetGN0TQ3EF5eCM3m5kDEv3WUwdl2Ds/0qXaF
 Rhv4JlRNB3tsaVf31sBW8J5QNYSK+AFXGvNvs9ivLoUvu3NhF39E0BNhzC64Yvk4R/WJ
 CGIR6BWsby68t75OOBIMbfsWEpWK7kU1ydCr7dxSE02WiGFvnVMbFlL4+NFYd+ASaesd
 leLSZ7fciTuowxUbPjv7/YAR6LrCwkaaoV8qOzCPQyYO6P8mhXtLkZ46rT6ZSdedu08X
 5jw4Qgfq2R/A3BvQ7xMuU47vnybhjuheS8Sc68tk7FkxNdkR6X3CuLeqpTrVfomtGwsL
 1Sjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GK4c/eKJ7QEQIDQAkYSm28K6U9vkh6nkkxoflqtOBfo=;
 b=EWDIMVTTmv7z70RmERYrffhVdkVwywwxWwfuFPaO5iggLRfIkOiqltnNEmI/FSQzKt
 noVAwuaQ4dFRMQgJuiKtHV+vVDg6eUusnfuisx16gTvgXwkUoVtduiFdaPpMns6Igog0
 Gznzwh0qkPSVE8bshn5yl7JlPfT2j+dAiRi3FHE1vesD8UAQB4TBAQVENQTMAJtS+gTZ
 UUzUBVLFgNqBwXB3F/s41oidupr0NS7brXSypWFnmxLS73BlYTAaer5+Eu6CLiIbzCbm
 /pY3+nsiUZ7hYFT6fiHEI2Y/aiR8FHcfPPzh2AmmDRogwdZI9qDNkl/G+rgQ12v63LQS
 VRJg==
X-Gm-Message-State: ANhLgQ3QTSDQI6kjzYXIdm6LmkWKZvgxEL/0KaHsxCwrWksr+JACs9JE
 mQdrFvgq1KuWGmUC0MOIX/c=
X-Google-Smtp-Source: ADFU+vs1cWEri/U86lkcqDV3qe4fzJ8+NJwNql2lW614C0+3iLxWtCOh2+S2Vs0Oyl/OeDzoki142w==
X-Received: by 2002:a63:a055:: with SMTP id u21mr10473931pgn.100.1583699597039; 
 Sun, 08 Mar 2020 13:33:17 -0700 (PDT)
Received: from Shreeya-Patel ([1.23.250.201])
 by smtp.googlemail.com with ESMTPSA id c17sm21500825pfo.71.2020.03.08.13.33.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 08 Mar 2020 13:33:16 -0700 (PDT)
Message-ID: <bbcb07684a546a1d4f5cd063e3914788d04bea6d.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operator
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Joe Perches <joe@perches.com>, Julia Lawall <julia.lawall@inria.fr>
Date: Mon, 09 Mar 2020 02:03:11 +0530
In-Reply-To: <cc0adb1f81afda526780fb217559a72031513909.camel@perches.com>
References: <20200308192152.26403-1-shreeya.patel23498@gmail.com>
 <alpine.DEB.2.21.2003082030310.2400@hadrien>
 <5a28241e8c3b11cbfe1776caadcb799cd9e39ee4.camel@perches.com>
 <465a7cfe822438a8edd32d3a5120bd565797ca4d.camel@gmail.com>
 <cc0adb1f81afda526780fb217559a72031513909.camel@perches.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
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

On Sun, 2020-03-08 at 13:19 -0700, Joe Perches wrote:
> On Mon, 2020-03-09 at 01:40 +0530, Shreeya Patel wrote:
> > On Sun, 2020-03-08 at 12:59 -0700, Joe Perches wrote:
> > Hi Joe,
> 
> Hello.
> []
> > > > > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> > > > > b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> > > 
> > > []
> > > > > @@ -924,7 +924,7 @@ static void
> > > > > rtw_joinbss_update_network(struct
> > > > > adapter *padapter, struct wlan_net
> > > > >  	/* update fw_state will clr _FW_UNDER_LINKING here
> > > > > indirectly
> > > > > */
> > > > >  	switch (pnetwork->network.InfrastructureMode) {
> > > > >  	case Ndis802_11Infrastructure:
> > > > > -		if (pmlmepriv->fw_state&WIFI_UNDER_WPS)
> > > > > +		if (pmlmepriv->fw_state & WIFI_UNDER_WPS)
> > > > >  			pmlmepriv->fw_state =
> > > > > WIFI_STATION_STATE|WIFI_UNDER_WPS;
> > > 
> > > Like adding spaces around the | here too.
> > > 
> > 
> > I thought of doing this but then it was introducing another warning
> > of
> > "Line over 80 charachters" that is why I didn't proceed with it.
> 
> []
> > What is your suggestion over it? Should I let the line be over 80
> > characters and add spaces around the operators?
> 
> Just ignore the long line warnings, there are many already
> existing long
> lines in that subsystem.
> 
> That should be a style challenge for a later time.

Okay got it.

> 
> $ git ls-files drivers/staging/rtl8188eu | \
>   xargs awk '{ print length($0); }' | \
>   sort | uniq -c | sort -rn -k2
>       1 187
>       1 180
>       1 171
>       1 166
>       1 163
>       1 159
>       1 158
>       2 157
>       1 153
>       2 151
>       1 146
>       1 145
>       1 144
>       1 143
>       1 142
>       2 141
>       1 140
>       1 139
>       1 137
>       1 135
>       5 134
>       6 132
>       3 131
>       3 130
>       6 129
>       3 128
>       6 127
>       6 126
>       3 125
>       3 124
>       5 123
>       4 122
>       8 121
>       6 120
>       4 119
>       7 118
>      10 117
>      11 116
>       9 115
>       5 114
>      11 113
>      13 112
>       8 111
>      17 110
>      25 109
>      24 108
>      14 107
>      20 106
>      19 105
>      34 104
>      19 103
>      26 102
>      22 101
>      22 100
>      25 99
>      20 98
>      23 97
>      33 96
>      32 95
>      43 94
>      40 93
>      49 92
>      47 91
>      51 90
>      48 89
>      55 88
>      50 87
>      37 86
>      48 85
>      57 84
>      45 83
>      61 82
>      61 81

I think the idea of yours to automate the change for some common
warnings will be really helpful to get rid of them. 
Thanks, I'm going to try doing it for other drivers as well :)

> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
