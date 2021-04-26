Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2730136B504
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Apr 2021 16:37:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58656608B9;
	Mon, 26 Apr 2021 14:37:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulBuQezSn6lj; Mon, 26 Apr 2021 14:37:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 934FF606C6;
	Mon, 26 Apr 2021 14:37:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81DA31BF3DA
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 14:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 70A6740351
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 14:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=rothwell.id.au
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rMUq3GDcO974 for <devel@linuxdriverproject.org>;
 Mon, 26 Apr 2021 14:37:09 +0000 (UTC)
X-Greylist: delayed 00:10:04 by SQLgrey-1.8.0
Received: from gimli.rothwell.id.au (gimli.rothwell.id.au
 [IPv6:2404:9400:2:0:216:3eff:fee1:997a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B651040350
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 14:37:09 +0000 (UTC)
Received: from authenticated.rothwell.id.au (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.rothwell.id.au (Postfix) with ESMTPSA id 4FTRzY6r3wzymk;
 Tue, 27 Apr 2021 00:26:49 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rothwell.id.au;
 s=201702; t=1619447216;
 bh=M7hahHb9ZVwRs1gsNFLeF9qcPe2Uxmrhxr11CvVxURM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YYMNZxTKWf3mGo7kZl2wPMlKKQmoso7z0n0aDHoxjFybRBwYdcVd7My4Q9m7TOcEt
 11V9ZZXlnS9siZy9ZEblHBCne2XvpgHifgHpvLuWdkv4p0Ojlo7MDEhAmQIudSpirF
 vGymv+zPH/13rTs4bahKRBlEi6iBawq0EJBuxZ0UAfhrVwW+5OaJghGTmVFqt6CguW
 IuWP+OtZZA2TU1BW5miw/ZJXD505o+I60jvcf1xUd8f3qWCl16boFlpWmAiXWnedWf
 BafxNcY/grUUJRXTYFSohRZ0l1Yc41kmHWhx+TJik3gCTjPWpYpkA4o9isityHAmjC
 eXi2l0nWQpblA==
Date: Tue, 27 Apr 2021 00:26:48 +1000
From: Stephen Rothwell <sfr@rothwell.id.au>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [GIT PULL] Staging/IIO driver updates for 5.13-rc1
Message-ID: <20210427002648.22459fa7@elm.ozlabs.ibm.com>
In-Reply-To: <YIa2ErYuJyCfSkS+@kroah.com>
References: <YIa2ErYuJyCfSkS+@kroah.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Olof Johansson <olof@lixom.net>, devel@linuxdriverproject.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3985420275779873882=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============3985420275779873882==
Content-Type: multipart/signed; boundary="Sig_/LIWecum9MUpAsQRxcfBxnbs";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/LIWecum9MUpAsQRxcfBxnbs
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Greg,

On Mon, 26 Apr 2021 14:46:10 +0200 Greg KH <gregkh@linuxfoundation.org> wro=
te:
>
> All of these have been in linux-next for a while with no reported
> issues.

There was just these:

https://lore.kernel.org/linux-next/20210329165525.32d51a3a@canb.auug.org.au/

https://lore.kernel.org/linux-next/20210331175151.67fcfe4d@canb.auug.org.au/

(the scmi tree commit mentioned in the latter is now in the arm-soc tree)

Not issues as such, but worth mentioning the conflicts and resolutions.
--=20
Cheers,
Stephen Rothwell

--Sig_/LIWecum9MUpAsQRxcfBxnbs
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmCGzakACgkQAVBC80lX
0GyzKAgAobiMi+YHh7vVuIiLauo/vRee40i+Lm+a+SJSKfhdPXDBuvPnOxrtIHqr
6LUTkJ1yNu9Ne28RAeucxkkoQXnK9j2euF/NlUA/Yxg8ISgMbLkvy0k7lNBayZdj
TIR+0b//4ZhMR37vn2EpO+INCK1OUx42L4hGboUgxrTo0Io/8r4Cn3ZLfTC2UQO5
IYXjpZBNRsVqs63+BliOa8gZvZ3d4bVGVeITlR2nQZUlP6cGJHSkxp0pZcYAvSi9
Iu7rCpxkR1PrTH4U6PR5xsMVREzUNUk5YcKLfj/hgjKmLJHAOTw0IKaz3L9rY+u2
5Lm1vdd76PsfuVNRPT0iSxFxxhbcSA==
=LO1A
-----END PGP SIGNATURE-----

--Sig_/LIWecum9MUpAsQRxcfBxnbs--

--===============3985420275779873882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3985420275779873882==--
