Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79A1A2A9C
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 01:18:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FE0288CAE;
	Thu, 29 Aug 2019 23:18:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id muQJhH7F0s1S; Thu, 29 Aug 2019 23:18:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6352B88C7B;
	Thu, 29 Aug 2019 23:18:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0188B1BF3EA
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 23:18:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EED24204B5
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 23:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id em0nSM8b3ipp for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 23:18:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 4375620336
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 23:18:26 +0000 (UTC)
Received: from mr5.cc.vt.edu (smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x7TNIPC0004183
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 19:18:25 -0400
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x7TNIKMZ004724
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 19:18:25 -0400
Received: by mail-qk1-f199.google.com with SMTP id e18so5305421qkl.17
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 16:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=DcLFLaAqEp29ZGYNoD8NLhDO1+i3Ahy1cBfneYPS5dc=;
 b=lV91g0UviMvhZ5nFmZ1Q82mxEivfx7skUtlCoTqXEYJeW2wxTu4AF9R5lgNZND8Lj6
 qynWbAA+9CyO+JlAqYxgCv4VpCtM8Km9f+cWj1j4CeEwLUcUQ0jQWhyN1Sx6ze5z1uFP
 DycwAzaOx2dxqidDoeIjIy3ViubGEyYkx02v1yaSKKi0T8EETlGtw1uYSVHxnEjyD1ZB
 PuZXh3a2R2jHVQ1Hzx5BIx/YDr73AVd57Tx6r48y8AAgiu63k+yJJ9+fejkq6n/OCX/q
 +S6n+zWDOPYn8sMyzhLC+rNBBWYNjlg46f6J69iTDMPODi/gj6rnLx2cE+3PHrbAnSlt
 RfWg==
X-Gm-Message-State: APjAAAVatXSj5NoHkQp3MtrZ8RZozpBgHYuRufN0Ltfkij+3Xaodnfg+
 IJDjFgVbwLF60ebDYxJ5NN19Ir02a5xevr6sECDrzZ93fl00At4enHjIpcnMbi1ukpghmjN8Qry
 44fbDIPGU7aQpYnKF/bDpUU1HGekHdk+O
X-Received: by 2002:ac8:40cc:: with SMTP id f12mr12407867qtm.256.1567120699869; 
 Thu, 29 Aug 2019 16:18:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwRfRQ8XctL68FBd61p6RkC4McNCSssT+S7q+CnkZYf4L9k+NRhYpVxkO19yp//P/cbraMTJQ==
X-Received: by 2002:ac8:40cc:: with SMTP id f12mr12407856qtm.256.1567120699589; 
 Thu, 29 Aug 2019 16:18:19 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4340::ba0])
 by smtp.gmail.com with ESMTPSA id h137sm1498736qke.51.2019.08.29.16.18.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 16:18:17 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
In-Reply-To: <20190829205631.uhz6jdboneej3j3c@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
Mime-Version: 1.0
Date: Thu, 29 Aug 2019 19:18:16 -0400
Message-ID: <184209.1567120696@turing-police>
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
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4160397008800684452=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============4160397008800684452==
Content-Type: multipart/signed; boundary="==_Exmh_1567120695_4251P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1567120695_4251P
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Thu, 29 Aug 2019 22:56:31 +0200, Pali Roh=E1r said:

> I'm not really sure if this exfat implementation is fully suitable for
> mainline linux kernel.
>
> In my opinion, proper way should be to implement exFAT support into
> existing fs/fat/ code instead of replacing whole vfat/msdosfs by this
> new (now staging) fat implementation.

> In linux kernel we really do not need two different implementation of
> VFAT32.

This patch however does have one major advantage over =22patch vfat to
support exfat=22 - which is that the patch exists.

If somebody comes forward with an actual =22extend vfat to do exfat=22 pa=
tch,
we should at that point have a discussion about relative merits....

--==_Exmh_1567120695_4251P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXWhdNwdmEQWDXROgAQKwxhAAkSM5ieCfKxqUaqzZUaVmPpuahxnowIFR
eFxW+Tm+35kuld2GKKYZgRE4R8rm/JoklscOoVhrKxv/TSCOeKaWrGg3EDB8NKpB
6Zk3vvC39n/bADWzoDyYdN5h0nwUX15GsFiP1VHVTyjOEszXpgz1FDoZMwBP+e8b
wK/868C/mF1pbgMa2VMXa/ZVJbfzyNk3E9oUVTQukJZ2Pjj4p6v9TvTCOSuLahBq
xvz4ZcYx0v9GlVzmpGYWYF86dkzTq/UfnLnt1vcHzdGXsmbAqj0NjXGOUnVy9VxX
PjtUsR/0PkNkURAcMu52528LNfxYvhTKPxv+TuSpwFniW6bq8vh+AOm1BGCR+yPF
mhNASlvEaXRGh1lEWcFx34z0zaGzOsfJOoQEUtIkdri+pNjNMo+GjE31BtgPHToZ
VbOtbjdOXLTsVwW5v0rSyhZYYicN2Pd5nS/cw0K/OH1vq3p32X1IfNoS3/aPbh32
BDhSUvJ05USbLRFtTDRZ7TPRyGyUjAjPqHQ24AIDHNfi42XW8mmXs7CSEltgPWA3
Qm5hhAKt4l+UHoJ6DWJrxJc4Hpqj4HL3MVbqhc3J5LW8XEHXlUQQpqre1oaf5ZmT
XZqC5A7azJKudRo3ceswErH2uxM8Geib+uhcjIofduUk8cJiyBhK459A7Z7BxTMG
Rvrxs5lfh88=
=9MW/
-----END PGP SIGNATURE-----

--==_Exmh_1567120695_4251P--

--===============4160397008800684452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4160397008800684452==--
