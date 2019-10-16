Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CEED9DC9
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 23:53:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3043E88534;
	Wed, 16 Oct 2019 21:53:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iNNfG-T144CL; Wed, 16 Oct 2019 21:53:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F6128851D;
	Wed, 16 Oct 2019 21:53:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D56751BF9BD
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 21:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D1C9D88466
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 21:53:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nilhmy2gbP7Y for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 21:53:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 25BB58851D
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 21:53:53 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9GLrq0N014111
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 17:53:52 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9GLrkNW023315
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 17:53:51 -0400
Received: by mail-qk1-f200.google.com with SMTP id x77so92045qka.11
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 14:53:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=gqUpgmdxzpasd7pMU+uxnneMl1+ktu9g6I4Qah8EhxI=;
 b=NXRSE3EhpelcRdFP2Yy8In7q81FolfdhqYG/NpDU06OTdpYG9Fqle1LAZ/yI0b2scB
 zHZXdKu2Eo84DaOQHOcUlLcIouEzKUQsVua7chJzTBlug2+3pUqRFS2zrp8GMXeOWmAi
 n5sK39EOcz86lRcDUdPNPgkLYvaKasbKTPNc12wC8vdXIVwo893Cv4seV258hNDErQJp
 zlaYuxmtLwCnPPfyCzbnic4bOBpiffuDwygbaYOmeQgctp0gBn5NXDImkrrM7jxsEk5K
 s0alcFp68+okC7HZYwaK7Tl2dEPn5iJKIaDzYccrcBNbOmL327asiyKPKR4AOxFfXmVx
 dWSA==
X-Gm-Message-State: APjAAAWnJ6tSBS19F7WVV4v8YsaNmS+lOxWSEaUVfPLj3fiLjmfaGrcs
 NKuxu4SMfsnsBbTjkYTriXyajmZCwqkT/d7qzBcTuZRoKhfwxZ597UMQoPZc92zr5++KDm6HaQI
 iCBCnU2X/MzkAKMtv+6AJBQjL7nvdePA1
X-Received: by 2002:ac8:24d4:: with SMTP id t20mr347277qtt.114.1571262826689; 
 Wed, 16 Oct 2019 14:53:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzpCWG1Ma5xOzqYk3ZIkraUe0CS6rlGbWN/U3tPDHeSWZQKr532KeiINo5Te24b9bVE4E5nZA==
X-Received: by 2002:ac8:24d4:: with SMTP id t20mr347249qtt.114.1571262826283; 
 Wed, 16 Oct 2019 14:53:46 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::9ca])
 by smtp.gmail.com with ESMTPSA id a9sm79794qkb.94.2019.10.16.14.53.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 14:53:44 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
In-Reply-To: <20191016203317.GU31224@sasha-vm>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali> <184209.1567120696@turing-police>
 <20190829233506.GT5281@sasha-vm> <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali> <20191016143113.GS31224@sasha-vm>
 <20191016160349.pwghlg566hh2o7id@pali>
 <20191016203317.GU31224@sasha-vm>
Mime-Version: 1.0
Date: Wed, 16 Oct 2019 17:53:43 -0400
Message-ID: <207853.1571262823@turing-police>
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
Content-Type: multipart/mixed; boundary="===============5147566427650505454=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============5147566427650505454==
Content-Type: multipart/signed; boundary="==_Exmh_1571262823_33600P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1571262823_33600P
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Wed, 16 Oct 2019 16:33:17 -0400, Sasha Levin said:

> It looks like the reason this wasn't made public along with the exFAT
> spec is that TexFAT is pretty much dead - it's old, there are no users
> we are aware of, and digging it out of it's grave to make it public is
> actually quite the headache.

Ahh.. For some reason I had convinced myself that base exfat implementati=
ons
used at least the 'keep a backup FAT' part of TexFAT, because on a teraby=
te
external USB drive, losing the FAT would be painful.  But if Windows 10 d=
oesn't
do that either, then it's no great sin for Linux to not do it (and may ca=
use
problems if Linux says =22currently using FAT 2=22, and the disk is next =
used on a
Windows 10 box that only looks at FAT 1....)


--==_Exmh_1571262823_33600P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXaeRZgdmEQWDXROgAQJPCA//crwtbuFdEHDJcuk9rjqzuC30MRUzo20V
1S7m1bIEl21fh/qg/JhUagKwHZxImRyN3u5Jy+J5iiq3zpQzAIGxRhqYX3e+6ykB
b+/DlAUjv0S8YNpqDpqsYaafnCOsc0omfbYNPfxFGZWOyJWdsP+II3DsxUGTKyui
TaQXR9s0ErjATdZ0kWr72Ap5HcrQ4ixI+poANMobYyq/k9Pjw50oyGCvJR2ErZSw
B9Sm246KwHBFzwSDXrxbLggNx5+uE0B7/nvMPYzSrBBeqmvDxTcOSAygfwQSK0UT
FvLmHIJiGkYHpFIY7zwa0Fs55nexKj4Rz+Uy8e05aohAOBGOTV9QxkcCSJhIf/Zw
h9KZ2tyMcsXsDOh/0lGR8DCGxCE6sqo3KK7kuxPnAzNTbh9wli98tX3sQacr0E4D
HhUYTGfeOaP12qa3ije8SZRo1yqdxs3KIyQtRhNWWZaIYL84BtFo8G4d1RSts/AH
t+rkhtsmEytHdFY32qYMkD2NSCU3FOaM90Zz/zWBr5rMIhiw1WIySVH6P1ZOr1U6
C1+TtuMeV9g1SS80ik35GX4h5wYeEWXr/vrBD8mw2HSfj78lin2d0aLAxnaHEc+H
wmfB72ECZ9Mq6SKblhcvRqhpNBHsX7WiLj1hVE8HSxufaEfT0A3Iz1Y8+oQKbX7I
8etTqEg46ZI=
=oSaw
-----END PGP SIGNATURE-----

--==_Exmh_1571262823_33600P--

--===============5147566427650505454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5147566427650505454==--
