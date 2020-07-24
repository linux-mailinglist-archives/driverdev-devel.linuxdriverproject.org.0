Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B51C522C5F3
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 15:13:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD1F98888D;
	Fri, 24 Jul 2020 13:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9YItrDVIewDM; Fri, 24 Jul 2020 13:13:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD2F688861;
	Fri, 24 Jul 2020 13:13:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83F761BF40B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:13:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 80A868860D
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:13:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dhWOC9tlbWj8 for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 13:13:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DAB5188606
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 13:13:00 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id d7so4393064plq.13
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 06:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=uy5GDfVpen8IjesHL+QozgZfDoKohnfQkQwgiP2hb/0=;
 b=G0b5lRQ2JHmuo1woB0xTnk2hNcPNeZEOWeeusKVOd2g0ThyHiMrabUpJ2+PrChiJNW
 eTd29oBiuyGzSbLWjuR9T2JcMaCoqhhtLM3MjntnYhyr4xBhxeqYA4MJPBUTp7EdGzo5
 YjVg3c0q+UJ7tVfVf7ukxjIjV++5lgOPrDFC9yd16/pV3nPtr1XRQv8yQKtw6hHpkYft
 57NyeUFK6XNGte+kFyeIHtlHyh2M6lIlSYHwxxqTroqvz1TfEBSOkhwhgg9FwiEewgJd
 2ZJZXMhc40qiGL5Fq/L3LFNgywRCMGcqNL/NexdMArxkekw3OCMqggfjyYrV1x2nt/uz
 RDlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=uy5GDfVpen8IjesHL+QozgZfDoKohnfQkQwgiP2hb/0=;
 b=lVGfxxBMX61bw+BdZDnI3QlHrnzdFhVElKtk8qY6sRP3dc+BLyfA2WJxKBt5NoL0s+
 yb1Npyu21MYwn3lPjIMuLx7dO5YZRpAS5e9+Ql6BaQBZ9ykAwjQNRcIAxIbvOkGWbgvS
 67nXgmbKuO7YR0i5zy0n8nizG3CxuqkkdMCMN5V/7dI4+F5apvDK2HXpdRDGi4s08Hyp
 Nw/QGfi5DHmpL9JxIBut/HZLMvQH//+rPHxJbcP+VBtXGK6o4eR2dIIhbSBxLS9XSv7t
 JBBOHOO+XPSA+x5VRAN1x5lTOmY9avxPNd0QQ2ogm1KcaWzlzQ81SWaLL5NRGZq5iXm4
 Wrmg==
X-Gm-Message-State: AOAM531VCiVZQdDGlxcy1kat2J/P2GCc3CtMTBrUQFgY2QOkNOj1CbpJ
 zfPKSCl0y/uPEFXQ1DSk+3k=
X-Google-Smtp-Source: ABdhPJz9hwR2frZ16gDaMHsbAQu7DNluhcyY32F11pCoh0UXgEGpFH3HCzQjEMH9Nl4fXVP9DrDSqA==
X-Received: by 2002:a17:902:e904:: with SMTP id
 k4mr2630986pld.156.1595596380372; 
 Fri, 24 Jul 2020 06:13:00 -0700 (PDT)
Received: from localhost ([1.22.41.181])
 by smtp.gmail.com with ESMTPSA id az16sm5868462pjb.7.2020.07.24.06.12.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jul 2020 06:12:59 -0700 (PDT)
Date: Fri, 24 Jul 2020 18:42:54 +0530
From: Mrinal Pandey <mrinalmni@gmail.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 mrinalmni@gmail.com
Subject: [PATCH 1/6] drivers: android: Fix a variable declaration coding
 style issue
Message-ID: <20200724131254.qxbvderrws36dzzq@mrinalpandey>
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
Content-Type: multipart/mixed; boundary="===============0363240376410574450=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0363240376410574450==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kfrm7gxkb523ry5o"
Content-Disposition: inline


--kfrm7gxkb523ry5o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Add a blank line after variable declarations as suggested by checkpatch.

Signed-off-by: Mrinal Pandey <mrinalmni@gmail.com>
---
 drivers/android/binder_alloc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index 42c672f1584e..0294cef7402c 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -547,6 +547,7 @@ static void binder_delete_free_buffer(struct binder_all=
oc *alloc,
 {
 	struct binder_buffer *prev, *next =3D NULL;
 	bool to_free =3D true;
+
 	BUG_ON(alloc->buffers.next =3D=3D &buffer->entry);
 	prev =3D binder_buffer_prev(buffer);
 	BUG_ON(!prev->free);
--=20
2.25.1


--kfrm7gxkb523ry5o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE8DwCG1PwaC2uTI99xIwpEWwxhGQFAl8a3lEACgkQxIwpEWwx
hGR5CBAAuNoMJLRil4reD9Cc8gxG+uzpUuRZgJQv8X4k2BgZ68DRep3z+SRgpbxU
D+dp0aT6Lr4J4EhnZaBKXJcrs4nynnDyXN0eGFXgLUGYHiPwzk3X1J/NqhsKavNW
Liy0OmqMeF4ST/KZZRtWjBh/CZORKE/WZkbSXAWECS5TObsKAyGac9j3qkZh22JI
mxJ7YfqYpyxPUb/6slFifNSIADZATzxD50SH0CiQHCYsSsjQaEl6YYMbI/npwWD5
+Uxp4e4P4BlFMy4iyKoVsVNAomGhfRbiEVWx71o7qoVP/33SOmSyt5ch9OfAF+jU
VuIMXbrfKXv2OUieVF1GB5LzAdmiDzkiM6QSq3oPfSiy9b0X3rFEN3pTF3kgIdBy
c5HadCKFH3VPATZG3KSTL0yzXdBMtCFm1j3kopJMY0sV/Z5k1bJ1mxUs7myYkrb0
TIHMvmCeuo0QEa6ZU0kGyBBiyauhCop1K+rkmr3a1tPR7EEUkuZ6/pVFhXlDHzkL
FkIGOknBlDWp9P8SYYFGO4g8drD3qYw/tFTg7Nf//JD6wDCFS1vhY7QlNDbYmWWW
GBBvUH1MpATPO8UOU4IhnHoZNZrFQUTlyC5nDwdmbi0/3wcO3qf+ibm+zOVnVQsN
cqc9lcnqCeGNK/4esZMfwghmaUXdE3r+nlBcgKDPYpYPm5QprmA=
=rLgY
-----END PGP SIGNATURE-----

--kfrm7gxkb523ry5o--

--===============0363240376410574450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0363240376410574450==--
