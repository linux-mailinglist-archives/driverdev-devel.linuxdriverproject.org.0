Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FCF2DAC23
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Dec 2020 12:38:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9373A87432;
	Tue, 15 Dec 2020 11:38:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hX3k0AvbMPFt; Tue, 15 Dec 2020 11:38:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4280E86B07;
	Tue, 15 Dec 2020 11:38:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 678D41BF2B6
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 11:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 644D687638
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 11:38:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v5Fl0HBevBrM for <devel@linuxdriverproject.org>;
 Tue, 15 Dec 2020 11:37:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ozlabs.org (bilbo.ozlabs.org [203.11.71.1])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7BA348763B
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 11:37:58 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4CwGTZ34Hwz9sTX;
 Tue, 15 Dec 2020 22:37:54 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1608032275;
 bh=d9ZH0gSQ35C9d62QQnvUVBuHezmU6eE8PdFglz1NfxU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Qb/c/iPia3E0SyI1jdjpZXxuK+oKSh2dKwyOk/Vk74ZIuSV4tle4Qm2i0/d2MZMX/
 msb+b2mwlSqarI7l9ypkU2p5rUJfNAP+jzrolR4T2DvfzWGKz+5Cwhehbn7R2MDi6y
 97Pd207ERL9wXdWYAO74YwaFPM3ppau0RL3el+bAISmR0OJ4i2meslc0qooFuz3vLA
 Dx3H+GbFIn+vG5GXaCL0hAll69FBM9fPDLmbaSBsUCEFzSFAMjLrlldcL1nsfDHTV+
 d5systmDxZb8p33p/QscED2RUoj6p/RKB7lavXLMK4HByHMOU/jEDuzkFNYxk9thDZ
 OR+Dhnk7gg1pA==
Date: Tue, 15 Dec 2020 22:37:52 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [GIT PULL] Staging/IIO driver changes for 5.11-rc1
Message-ID: <20201215223752.42c377d7@canb.auug.org.au>
In-Reply-To: <X9iNTajXvwiLa1bV@kroah.com>
References: <X9iNTajXvwiLa1bV@kroah.com>
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
Cc: devel@linuxdriverproject.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2850321064514491883=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============2850321064514491883==
Content-Type: multipart/signed; boundary="Sig_/LQU1/MB8tSV+lD=OJGR5_rL";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/LQU1/MB8tSV+lD=OJGR5_rL
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Greg,

On Tue, 15 Dec 2020 11:17:49 +0100 Greg KH <gregkh@linuxfoundation.org> wro=
te:
>
> All have been in linux-next for a while with no reported issues.

There is, however, a semantic conflict with a commit that is now in
Linus' tree:

https://lore.kernel.org/lkml/20201207164601.2b9cefc8@canb.auug.org.au/

--=20
Cheers,
Stephen Rothwell

--Sig_/LQU1/MB8tSV+lD=OJGR5_rL
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl/YoBAACgkQAVBC80lX
0Gw0Mgf/Q6o96pqFTmXYchSeu6vGPpgA5HWT4gO1fwvwgp0gais28XXU/zXTET6x
EZLfuVBIkcm8JgDkY3rfFYQ86PzD+bkugvwdqi9HxkFXOctM21K+AsWATBPz2Whw
i5hgN1WvFgdAtfRlXLLa1pZeHEklNZPQMeQbUBA7xHtEXXLqRFOhOrMgbax/feJJ
iDfjnY+PHbXcg8IK8b0A2+C1x6TRCE4quNzEBl2Y18ZEcchEtpLFAKPwhS416AV6
5ahapng41mTpUiIK6poq6Fc6CULs0UpyVXnw4QFS0hUv0xSPeoNDVzRMCB6H206p
67Y7jeDbItfei/ZOzjvzh+/mo0HYrA==
=cKEQ
-----END PGP SIGNATURE-----

--Sig_/LQU1/MB8tSV+lD=OJGR5_rL--

--===============2850321064514491883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2850321064514491883==--
