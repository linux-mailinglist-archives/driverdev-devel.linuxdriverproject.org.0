Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A1A20BE6D
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 06:50:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48CE588C13;
	Sat, 27 Jun 2020 04:50:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id unP78tf7Kh6P; Sat, 27 Jun 2020 04:50:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A078E88A89;
	Sat, 27 Jun 2020 04:50:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F2751BF20F
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 04:50:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E39C88175
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 04:50:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E2bIz-OU4aYj for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 04:50:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B89E8884F
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 04:50:11 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id e8so5899465pgc.5
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 21:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=tM82nN98PD/iFRUwc7s9SC6I4w+oHpo70UtnZbaWoFQ=;
 b=jf1dEOdAeA5EcCIR8qObQ/wbPHUqoVwwBs6kEVZMFsHVe4a17OlVzSNKDxqqqa5aYn
 FjULqXMPqT1uvOwx8jPezGuPvJ5zwfbSw8QL9UmJw6gE0iOO/UKDUZinUQK9LLbxJfrp
 g+TG2B+tmxymKLzCF12h1D3CdAczXMERXHEg4eDyaGSkz6i5Q7hXrW2dIkUtELRXyrkZ
 iIbX0WlZVRisshR9HXWIqx7BlVlF3n3uc6sN0YFH8U0jXPZyZR7nyDJW5oNN+w+5jX5N
 rbXcV0vu7mb4Q5dfJU7hwfT6kQJua2tPETOeLe7cqEA3ywsYOFPRXq++0SMSZenzWwPo
 gDXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=tM82nN98PD/iFRUwc7s9SC6I4w+oHpo70UtnZbaWoFQ=;
 b=jMzBy9f2RHRKxjCWlFx41Vma9tUirjfi8ZX0zmA+jWH4abdhjlUb8rsBB8QTtpxY61
 LKdngUBpGGTRvf0eRCEPbqVZhfpjDiRBl+Y5RtWVgmW7Hs5kHP/0q1+/zAsDTI62avPu
 6u4coH6hSuIGJ8Z42EfIxdfKcLMdN5b1t6jqghSBPi5RKOpl4rnx4IB23lbn4fp7N2fK
 LkuEGJdbB0WESvEgw0pLRo6DPvIRnMlTLHIXSB1eGgye742QTt2/m+EuDY+c50g4a0Q2
 Pd1yHwnvnzyfQuJb9fpwwJS5b/htpD9XuW5cTQr/AJYUUUhR5iC1hWFrdf65nV/rIoUR
 CVeA==
X-Gm-Message-State: AOAM5301VFvP9BqAxqF7ZWrMk4cj2IMWjxijz9WQUekz1RN9k3Nt6pwY
 Ljd6xU4KffVI+stvdT32+MJDuA==
X-Google-Smtp-Source: ABdhPJw1T404vfNkBJqJi3CGby6UB/ljdx3K1oZ0OfkL5W4D7XFob76v7f8JkPz+QzojRx/fiIsWXg==
X-Received: by 2002:a62:8342:: with SMTP id h63mr5467050pfe.183.1593233410769; 
 Fri, 26 Jun 2020 21:50:10 -0700 (PDT)
Received: from localhost ([2406:7400:73:59a9:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id 7sm13692079pgh.80.2020.06.26.21.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 21:50:09 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Sat, 27 Jun 2020 00:50:04 -0400
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jan Sebastian =?utf-8?B?R8O2dHRl?= <linux@jaseg.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] fbtft-bus.c:
Message-ID: <20200627045004.a46jbqtbiintu2nt@pesu-pes-edu>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
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
Content-Type: multipart/mixed; boundary="===============3696382885641389612=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3696382885641389612==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wcjbyctbs2w26lm4"
Content-Disposition: inline


--wcjbyctbs2w26lm4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

fbtft-bus.c:

fixing ERROR: space prohibited before that close parenthesis ')' by removin=
g that space and ',' in line 65 and 67.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/fbtft/fbtft-bus.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtf=
t-bus.c
index 63c65dd67b17..847cbfbbd766 100644
--- a/drivers/staging/fbtft/fbtft-bus.c
+++ b/drivers/staging/fbtft/fbtft-bus.c
@@ -62,9 +62,9 @@ out:									      \
 }                                                                         =
    \
 EXPORT_SYMBOL(func);
=20
-define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8, )
+define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8)
 define_fbtft_write_reg(fbtft_write_reg16_bus8, __be16, u16, cpu_to_be16)
-define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16, )
+define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16)
=20
 void fbtft_write_reg8_bus9(struct fbtft_par *par, int len, ...)
 {
--=20
2.20.1


--wcjbyctbs2w26lm4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl72z/wACgkQ471Q5AHe
Z2o05Qv9ElUD8lscq3RLdrWxDC3fGK3n7kQZTWCQEFU+K0muQXceEX0JRhGy9N1F
8aGgIb3wumF0ZaWhX8b4HW7tivAQTkmJoKhWcYDzjrkfvFv/9viCvUw5A3SqUFoA
X919WgEO4epopUMRpK97SRksK1L6RACBVjTttO3BOX31i550BUSH53PCLtbdbiPm
F30wh0jIBPykPOSJXcctTTOYZXco03xpQ8J8POmfIGQVyluM/ZOjOL10PbQvJXlZ
SpqGUTwu3VRyPnSRCtBvvNHUNHUUNOMhhN1uG7Scrt4SONQJWe4trYHDSFaA838q
8QUXzwWFVRGYy9paUzdYPKH/B++F3xJ1//kySDxsSfYuZOaJIUc33gjOCCs+pkvU
sXzHAQdUPDKYm2S0WaZJqHHUDj1PRcJfIuHVxZCPegs5hcd5J6TECzhYrURzBadb
odcMJCHYpy/bt78inyLdi0CK8rseZDCJkHCfndjoWBVSclHqVlc9eGZ7X/xypu0L
r8Vq99ni
=7vSF
-----END PGP SIGNATURE-----

--wcjbyctbs2w26lm4--

--===============3696382885641389612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3696382885641389612==--
