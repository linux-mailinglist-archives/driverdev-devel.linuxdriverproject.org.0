Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 164A0D965B
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 18:06:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5E8787872;
	Wed, 16 Oct 2019 16:05:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p18I8CxRjIGs; Wed, 16 Oct 2019 16:05:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFDAE810E7;
	Wed, 16 Oct 2019 16:05:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 632491BF30E
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 16:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5D8DA1FEE0
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 16:05:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kSasRYN-bWnJ for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 16:05:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 8C8B81FEAB
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 16:05:54 +0000 (UTC)
Received: from mr2.cc.vt.edu (mr2.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8400:0:90:e077:bf22])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9GG5rOn004178
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 12:05:53 -0400
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9GG5m7a005198
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 12:05:53 -0400
Received: by mail-qk1-f199.google.com with SMTP id q80so24147880qke.22
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 09:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=Cc00vF+ZmzoZk3aEyCGrhUsksukEBOoMGKgFpD+Z/O8=;
 b=MebPaO1wdcSs1XVgHX8r6EPC7D6AYRgFbWRe1uYlV1CH9yfT65GVh/sI9DsDj6lwMJ
 awo6JNJLY/hiE+dPRiq5qM5QT9cnhtIKOZF5tsOZrHisio8xGnQt97dfDhPwzqVHACSt
 4JCxVVPy2Jw7M5aNRv81cLloNfWDHp9+lq5BkxPXPB53S3kMCOvD4djZA2w9NxW6yVGs
 UyRgpdV6ytDBtAlX0fwpL5zQj/8nmqpHBDyTR7GvshXjbMAOqIKn86k3qNjm9ZTZJw9J
 EiaP8vsHTsq6+vmm2jiCAbynObhi8DOwE6cn7bULRH7+4hfACDTG8X53Sv8U21axQLnL
 E6Pg==
X-Gm-Message-State: APjAAAXAKyOXx2QkzbunUFhJMgASX+4FJO9GteblIQwRN5qqyNGd98CG
 lrHaWXiIYFodkPRfd2Ynq4Xwyli1W/c4JSAiPg2DIt4MKr3iZU+naD8G/M88DMwMJV0VZzuZvSk
 ihxD1eUnPWw4KyA2uGGZEXgpVGpoIZ9pw
X-Received: by 2002:a05:620a:89d:: with SMTP id
 b29mr5064578qka.266.1571241947964; 
 Wed, 16 Oct 2019 09:05:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyxFqltsKGrKtwqF17O9iibdxSM9S5WlrJxC+GCESGrDZgAo+ncpxnY/6mYmIUe2vm9OOVKfg==
X-Received: by 2002:a05:620a:89d:: with SMTP id
 b29mr5064547qka.266.1571241947613; 
 Wed, 16 Oct 2019 09:05:47 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::9ca])
 by smtp.gmail.com with ESMTPSA id e5sm15152719qtk.35.2019.10.16.09.05.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 09:05:46 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
In-Reply-To: <20191016143113.GS31224@sasha-vm>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali> <184209.1567120696@turing-police>
 <20190829233506.GT5281@sasha-vm> <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
Mime-Version: 1.0
Date: Wed, 16 Oct 2019 12:05:45 -0400
Message-ID: <158801.1571241945@turing-police>
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali.rohar@gmail.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1904593909730113466=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============1904593909730113466==
Content-Type: multipart/signed; boundary="==_Exmh_1571241945_33600P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1571241945_33600P
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Wed, 16 Oct 2019 10:31:13 -0400, Sasha Levin said:
> On Wed, Oct 16, 2019 at 04:03:53PM +0200, Pali Roh=E1r wrote:

> >Now one month passed, so do you have some information when missing par=
ts
> >of documentation like TexFAT would be released to public?
>
> Sure, I'll see if I can get an approval to open it up.
>
> Can I assume you will be implementing TexFAT support once the spec is
> available?

It's certainly something that *should* be supported. The exact timeframe,=
 and
who the =22you=22 that actually writes the patch is of course up in the a=
ir (and
will likely end up being a collaborative effort between the first author =
and
corrections from others).


--==_Exmh_1571241945_33600P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXac/2AdmEQWDXROgAQL74w/+PBT69vQpDRQ38D0E+OMJwMnyCoXnCUU8
8xVZjGM3mGHPtChb9+wO2l8NjtT9XBiDm5r53Yr5GN53Vh1awdp1A2LaK8ba//SA
cQxNjDeVK1aKpJ+mxBAkVsic+h38rR9ajMfGWHtQ/+PT2Co3OmQHmKvyb5VGSXbC
UlTZjfyEpNofW2QjAFPyurkRHD3HS8DiA4e58t9Pm1VavQAr0NgIb8DclCOF2mVj
9HluyEcc9WoYceCqnWwkmT6k0KynYgtouJjteBMMdNlfStdvWOsdmrOvrKnUL3Y1
e+KmwXxg4mOjvlet0FjRtm48HSDIeA8o7kiB697KPSFa/oD9XPcLmg1ck1u/b7M0
HoHJ9fuPHkafe0OOW6T0ZQWWbcouOZh+jhoniakz+sfMrNpDWEcJklWfrs34hJty
6Sy9xQ4fRf3U7eVJTbbNImU4kc+ByHhcvcxkCOJKunKVP5DIliOjstIX2UXSRKGo
RhVTIWmS0Ds8+yuu2p4rpNfnab40G7KCMopq3gIGLEu/feYrUSWSMg0SqhbRsJ3e
gJGhKiUUnLDkiISt3fl8flb1XpbFZJ5OIUcguJGVEv7rpco5ovcgGTsdnXC9IFjS
X2vnUi44X5r/JX5hyBzxHxuUacQdtimzz12sRHCMIJSd0873lqKyTANgeWlYo1He
O0opOSTeAyE=
=QAWJ
-----END PGP SIGNATURE-----

--==_Exmh_1571241945_33600P--

--===============1904593909730113466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1904593909730113466==--
