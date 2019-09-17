Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 326FFB4644
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 06:19:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B40085477;
	Tue, 17 Sep 2019 04:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E0FZw4fyYaT6; Tue, 17 Sep 2019 04:19:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F6EB857EB;
	Tue, 17 Sep 2019 04:19:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50EBC1BF317
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 04:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D5DA85BB5
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 04:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4HyOXuv8TJQb for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 04:19:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0FEA085092
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 04:19:45 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x8H4JiRI025196
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 00:19:44 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x8H4JdrF022437
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 00:19:44 -0400
Received: by mail-qk1-f200.google.com with SMTP id n135so2639676qke.23
 for <devel@driverdev.osuosl.org>; Mon, 16 Sep 2019 21:19:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=4Uxy06CS4wSQ81eCVHfxRv9J152NHpquq1sd63pwycc=;
 b=I+wK4JntpMsen1Ui4YsoK5ppxzhT5hwFpQX/NFWlYQJs4id/JlT/s4s+lwkwEZUGtx
 ntEF2aTFD/VXQRwb7WCpY8/3kLY1qd/m2OSmJZ5xLMuA0rk/xRD3tvB4XBc84ZeTK03W
 wN/KrD4/S1r6DiuOQNFAqEMI9d/Z5gH9Xm5gGUUtMQAgua/TC9rx/2j9fQLLc6FmxwnC
 nPqgVA7ZxpMpKMcd43y7XsqRrlHhnv/NE1wU21UvhHfH2uoSsSzrmkUgunfE6W/brJ9l
 FREM8IXSagf1S+mxrn70WVOCx/gNkfX9+bSbGde/VGoTvv5aEj6INAiWgc2Tw863+UK8
 uFNA==
X-Gm-Message-State: APjAAAXL7TTpJimWo9o0gtYe3JHgCRDhfE4jsuTuQE+JVdVgislS7jRM
 vybXNbpy1TnItWxoLu5ex1n355sAMaHYASH4hJSB0pKj1iYqxeWSTtROVA3HglVQBgIzW512s1O
 enj+gW9bj3zdoA1AXqntrF/QlFKkk7bR9
X-Received: by 2002:a37:3c4:: with SMTP id 187mr1709432qkd.424.1568693979355; 
 Mon, 16 Sep 2019 21:19:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyTkGscHLC5Mm8Ddz+ZkfN1sf+b4s6OeZaJW4YViOQb7XVGM3mlSEzQ7WpdH90fRajQlmWSQw==
X-Received: by 2002:a37:3c4:: with SMTP id 187mr1709417qkd.424.1568693979095; 
 Mon, 16 Sep 2019 21:19:39 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::359])
 by smtp.gmail.com with ESMTPSA id 33sm680373qtr.62.2019.09.16.21.19.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 21:19:37 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: "Namjae Jeon" <namjae.jeon@samsung.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
In-Reply-To: <003701d56d04$470def50$d529cdf0$@samsung.com>
References: <CGME20190917025738epcas1p1f1dd21ca50df2392b0f84f0340d82bcd@epcas1p1.samsung.com>
 <003601d56d03$aa04fa00$fe0eee00$@samsung.com>
 <003701d56d04$470def50$d529cdf0$@samsung.com>
Mime-Version: 1.0
Date: Tue, 17 Sep 2019 00:19:36 -0400
Message-ID: <8998.1568693976@turing-police>
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
Cc: devel@driverdev.osuosl.org, Namjae Jeon <linkinjeon@gmail.com>,
 'Greg KH' <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 alexander.levin@microsoft.com, sergey.senozhatsky@gmail.com,
 linux-fsdevel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6608089843165841256=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============6608089843165841256==
Content-Type: multipart/signed; boundary="==_Exmh_1568693976_2440P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1568693976_2440P
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Tue, 17 Sep 2019 12:02:01 +0900, =22Namjae Jeon=22 said:
> We are excited to see this happening and would like to state that we ap=
preciate time and
> effort which people put into upstreaming exfat. Thank you=21

The hard part - getting Microsoft to OK merging an exfat driver - is done=
.

All we need now is to get a driver cleaned up. :)

> However, if possible, can we step back a little bit and re-consider it?=
 We would prefer to
> see upstream the code which we are currently using in our products - sd=
fat - as
> this can be mutually benefitial from various points of view.

I'm working off a somewhat cleaned up copy of Samsung's original driver,
because that's what I had knowledge of.  If the sdfat driver is closer to=
 being
mergeable, I'd not object if that got merged instead.

But here's the problem... Samsung has their internal sdfat code, Park Yu =
Hyung
has what appears to be a fork of that code from some point (and it's uncl=
ear ,
and it's unclear which one has had more bugfixes and cleanups to get it t=
o
somewhere near mainline mergeable.

Can you provide a pointer to what Samsung is *currently* using? We probab=
ly
need to stop and actually look at the code bases and see what's in the be=
st
shape currently.


--==_Exmh_1568693976_2440P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXYBe1wdmEQWDXROgAQIoqRAAm8jm/cfHwLtmt/GjplQFdaIBNROwXTcR
OTCa7aqyK0BzgwO9cDqRMwbGEDaN3ywuY6N9YqPsmhZfvZi57390XSXohlsbURw4
Q1ejw0aOlcKdzmSJJCm6/WMGE+DDLXTyDLowzTNXz39RfRx0y4bGu0JKiFr2QJh8
NaB1XRYo1BurpgyiwuWIqI+jrAEa1VvuSDSWSO/EL8BbJbxGbxJPnmjBkkLSpJlW
BnCTqr7ABrKSibxTGOeoDf/yX3Ce04HU11XBPoHNHqR8f1iUHZaCP6IhBUoxofAM
is3h8PZ/6e1YiME83PHpK4vllzcChhdVk9mxcMxMEpIzsIPLN70jQDhZ3z1G7iC2
eYRtkmBtBhdpDQt6CIQYwEffJB2X9yrfLNIhB5tw+IH94Eh4TgHiPFqxtEHlVSaT
WFHhyN954V+PAWL1brma3rxdY+xOK+IEOnY5DM5bW/c+YeJAIrur2c4iZLVHSRTH
kO0bFYOZ41WPThEJnyzzbtMz9HX0WdR+4A5QqIHnoqnmaTKviMAiMeAlor3rlrjk
RzfSfJUJ7oxOQVPpxCIB0/YJ+HtHXR9nEgKHvdCMmyCfb6/Pq2dqJrqQu9YbUPoW
NlRunOynwSQ5ipVKHwmwGTWyjeprRDzfMUObln77rUI03K8Vtap1he0fmjXlZTFl
x0yeZPkfRJk=
=mJjz
-----END PGP SIGNATURE-----

--==_Exmh_1568693976_2440P--

--===============6608089843165841256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6608089843165841256==--
