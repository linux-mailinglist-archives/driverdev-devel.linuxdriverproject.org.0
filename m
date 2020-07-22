Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92662229B26
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 17:19:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 37E7388702;
	Wed, 22 Jul 2020 15:19:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MDA924VzTtzm; Wed, 22 Jul 2020 15:19:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3CE8F88668;
	Wed, 22 Jul 2020 15:19:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E69781BF360
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 15:19:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E3AEA855D3
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 15:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kBruXiELe31t for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 15:19:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7DE0985540
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 15:19:08 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id gc9so1676604pjb.2
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 08:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=Hnc1prn4gqdZY/uJrCuRN7dMv55IchBRg3AjBbSa9HY=;
 b=oEqY+uZztK+GTH0rvS82TpQ0E5rlT8GitcDlEjjT6sUzuHIY7BWKb0Y28BvioJW1t8
 KbnjWbWqaykvr8qEBeOQeaSBW04aI69x4f+b5jxjvyZgP/WBQKnScj4HyMZyLbbI4fCA
 cd+DJ8fiePq0JoH+Q5dFOpPkKuocgEjWCJ+IbNbN8ZjxYoSjyhJcPzhzKIt7iH2CThGN
 3b7yzo/9XgNvtmnS+CAODzPUVvoAo+P7LJXRIgFzCVFdJbCOXl3UjXhjF1nSj/KB9r4L
 kO53qX9tcHwFOgGp20vQ5QhxARO0STGcaOcgrsn+RgmyFeaPxjHnFtQ9xpnUZCX1nRWh
 VRcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=Hnc1prn4gqdZY/uJrCuRN7dMv55IchBRg3AjBbSa9HY=;
 b=msOfWnO5i+pfe9lYa9LkjB3lvxqyWMV/cFwKtxA7wnvV+EEO0NesIEw0KqVo3qzHW7
 Nuf9ySBy8jua+QqgnC4l3/NzBGwfSUpAHWcGwxv3/l6jI5ujBJ8NFAAATD5tsMSvY6hd
 0BaYW6hpgov/lnaEfkpT0t3TbXTU+g1NcEF/HyKWnxSURA/bM+ReCqS1+a8fVIJPgCe/
 3i308V5qX+PKflQhKHSHEdffkP/0cQ2tI1E1scosc738IGNLVdg2A5LqfdUwFxlIxW6y
 VhzdzynABZBlj591UX5ONR7+KxuGm9uwucuSMPwN7OppqhsEUthDHNXcRmmdkNvV8Fiz
 Oeyw==
X-Gm-Message-State: AOAM533vxNcVU3Av1oWa5RVdF/FqVFVq6/PmBnpEDiojb8cTz0rCQjhZ
 TuPrEa+NGhWD9JNp4JkQeUY=
X-Google-Smtp-Source: ABdhPJyQgeFZerWlXivVvCHlBW+hxP8zzZ9rASx4/DF8X48FIeK29YiPlb+nmor4Ax1S/z2qIUAaPQ==
X-Received: by 2002:a17:90a:3684:: with SMTP id
 t4mr10143619pjb.91.1595431147867; 
 Wed, 22 Jul 2020 08:19:07 -0700 (PDT)
Received: from localhost ([1.23.142.145])
 by smtp.gmail.com with ESMTPSA id 64sm281319pgb.63.2020.07.22.08.19.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 08:19:06 -0700 (PDT)
Date: Wed, 22 Jul 2020 20:49:00 +0530
From: Mrinal Pandey <mrinalmni@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 insafonov@gmail.com, straube.linux@gmail.com, simon.fodin@gmail.com,
 yepeilin.cs@gmail.com, saurav.girepunje@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: Fix an indent coding style issue
Message-ID: <20200722151900.5dcebtavkdi5cc77@mrinalpandey>
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
Content-Type: multipart/mixed; boundary="===============5390469732475617648=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5390469732475617648==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fpt4wn3ldqcwypba"
Content-Disposition: inline


--fpt4wn3ldqcwypba
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Only a single tab space is required after the if statement.
Fix this issue by running scripts/checkpatch.pl on the file.

Signed-off-by: Mrinal Pandey <mrinalmni@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rt=
l8188eu/core/rtw_recv.c
index 656fe70ae4fb..0a4c1b2686b5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -671,8 +671,8 @@ static int sta2sta_data_frame(struct adapter *adapter,
 		if (mcast) {
 			/*  For AP mode, if DA =3D=3D MCAST, then BSSID should be also MCAST */
 			if (!is_multicast_ether_addr(pattrib->bssid)) {
-					ret =3D _FAIL;
-					goto exit;
+				ret =3D _FAIL;
+				goto exit;
 			}
 		} else { /*  not mc-frame */
 			/*  For AP mode, if DA is non-MCAST, then it must be BSSID, and bssid =
=3D=3D BSSID */
--=20
2.25.1


--fpt4wn3ldqcwypba
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE8DwCG1PwaC2uTI99xIwpEWwxhGQFAl8YWN4ACgkQxIwpEWwx
hGTV7BAAi1/qy9HC1pFSyKBVuey7wA8uYsw2/tIGlmHamM7UunyD9mOdyTKjHQaH
VKUukWo1302Gl2kiUG/mfLRbEzcZedY/qOuUfVaxP1Nfa+Hp25W4rfn6Mt0CXo7D
sneUd2HAexEvPn+qN+EoiZC/tCa/VqbwwPMovJ8/3riORAsSPhb661YHceJVjIjH
FI1peJln9zfGYTViju4CtIXbJpfADvntrDG9QJO/B8QLpcWr6WmefvJ+worv+ouZ
JUecDwPsPC5OCgm2Nqi1gNwfhHZzgVkyT7ucDgZCWeCYLazFffWZ2UoAKho23fmQ
iQnzjCG66tX5MZpwZObrWda2csvXtuZi019i0iBE9ZxD+2/G+5nAZ3OT5bChPK2o
lm9OYzJXaOJZZHRWVNM4FFLk/bzhuda9b/l9rjwKJqVLZXfn67TqvYhhPHp03CF9
2EEU92f+RTUlrO2m64AcBGitpzqOPTtFOKRtSONYFcukSonrXKPUSwQ75I2LeaoF
ICo7G3j2mzOcxIk+9XP4WtMvjclbzYwIJzIEElfHGXZxFc1AlIaEdZW13vHel3gA
hVJDUGHV9OqltqNXkryvj3vZ3QjRAUwC7OF0a8P/7QFOTrpS3DlgRGo/CYASwYZj
drGAErnjTln/x3+oMapcZUQxJsJRBbJDvxgugCaGIdD4WaHeiC0=
=vAMR
-----END PGP SIGNATURE-----

--fpt4wn3ldqcwypba--

--===============5390469732475617648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5390469732475617648==--
