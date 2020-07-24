Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4092E22C5FD
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 15:14:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9CF23204C0;
	Fri, 24 Jul 2020 13:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0CWbJZizTihA; Fri, 24 Jul 2020 13:14:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2BD0122CB0;
	Fri, 24 Jul 2020 13:14:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CE0C1BF40B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:14:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 79A7F8860D
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:14:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2vkG5Vb6L+xy for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 13:14:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 08AF788606
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 13:14:11 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id e8so5177799pgc.5
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 06:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=43P66Fc2aAnp4qTC6waFnOvWVRLlCg4Ewg4/5+qAaPc=;
 b=iesrQsY5ydwDmsTY2kTV8vuXCi2id+5XuBiuQzA7aNjAoiWDHlSg40vlCUO7dSUxTw
 0lPCJMsfPp1SULd/Byqd1MsVimdrS56zDGNAJCh22QjJdtNvObQf+DTa96cG0tnjy0K/
 luMX5rrKZ6yyN5c+9wfBgR3eE5QZBONaYqiqUPpGRRP/G+AgEj0APfIqObCOZ1ZKRAY7
 qzzX9QO+62y7UpIvT3WD3/E0B5/xLQwKZYvzV1WJaBpPpnDUxIgF5f3KJFMbIinyueLq
 jrycY2qU0iWYx67L5+t9AtCsWuCOio/L1iRCcMGJLAIhAmiS/UxJS6NkBRAq06+rHseA
 koeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=43P66Fc2aAnp4qTC6waFnOvWVRLlCg4Ewg4/5+qAaPc=;
 b=DrVatKio2ra2BIzWLFE+YK4JWvVCWRkWUWJWHo1A7a4lNuJUbnK4W7e7Qn8NbaTI2v
 X4kMrVoZXW2bCcKPfbnvl4ULjKQAatCYLVsK4eiFCsdT08u230KIE33Lvdkl83M6gfDP
 TnxqJPkYKfCBLaf/rDUrTBsXd+kmO6fRDE+he2xVCsI/ibxwPCnjtus3Wm7VnyeQ/Gz4
 ATJzM8SoYJ/+6wAd4qvFBUeEhTyNjPSF2nbzPsIc+4BU0EHofj4idu3E3ZTXm+UFu9W1
 iwRbiXKnopgFUiksojNuN9Ve23aoGjG3YNy0Gw2ZYhODLpp+j0FLa54cZ2vSVR0EEQwX
 aUvQ==
X-Gm-Message-State: AOAM531gUq0ZcBs5+BgzERL+7cRsQn8iFHXbMRAvW5fpAs333TXW9hn0
 lOTbZDyCoaHsTZ9PNQaBub0=
X-Google-Smtp-Source: ABdhPJxCX+WwMMOkaTap07DisAkCFoIimynX/6s/HS7vcD7LJ9fTsEUx54AZMGw7nCb9YUGc+VyEYA==
X-Received: by 2002:a65:43c1:: with SMTP id n1mr8271003pgp.67.1595596450534;
 Fri, 24 Jul 2020 06:14:10 -0700 (PDT)
Received: from localhost ([1.22.41.181])
 by smtp.gmail.com with ESMTPSA id x9sm6192051pgr.57.2020.07.24.06.14.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jul 2020 06:14:09 -0700 (PDT)
Date: Fri, 24 Jul 2020 18:44:03 +0530
From: Mrinal Pandey <mrinalmni@gmail.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 mrinalmni@gmail.com
Subject: [PATCH 3/6] drivers: android: Remove braces for a single statement
 if-else block
Message-ID: <20200724131403.dahfhdwa3wirzkxj@mrinalpandey>
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
Content-Type: multipart/mixed; boundary="===============8588937010968218146=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8588937010968218146==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3bvf6kql47vqrvnj"
Content-Disposition: inline


--3bvf6kql47vqrvnj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Remove braces for both if and else block as suggested by checkpatch.

Signed-off-by: Mrinal Pandey <mrinalmni@gmail.com>
---
 drivers/android/binder.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 5fdf982ec83b..3cf13ff16934 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2759,11 +2759,10 @@ static bool binder_proc_transaction(struct binder_t=
ransaction *t,
 	binder_node_lock(node);
 	if (oneway) {
 		BUG_ON(thread);
-		if (node->has_async_transaction) {
+		if (node->has_async_transaction)
 			pending_async =3D true;
-		} else {
+		else
 			node->has_async_transaction =3D true;
-		}
 	}
=20
 	binder_inner_proc_lock(proc);
--=20
2.25.1


--3bvf6kql47vqrvnj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE8DwCG1PwaC2uTI99xIwpEWwxhGQFAl8a3poACgkQxIwpEWwx
hGSkHA//RighMrxFGk+BTWAwUxsE+wTGy1Vvn0Nc1RSyxD0A6YPqaRCg4B9nGqhk
PCyg07NT2hGY2k/V2EDplmVu5oHpQREtED06uAEZY3efi1gdFsw4fEhd08x1kpu4
jDXzJuG2fJvfDLd49iVnfV2z5gtt8KQXyiZXZ2T/BP0w11JLJA9RcyRzAOkJUH4f
8PtiaN1EiMsXw/wPaYRWLc+RuojZl8AfSA3dsLtT8Pb7oCgn20QUDFDFPB4MMoaZ
ULVRGjcj81Oa4jWCTStSzzz01iywx+T+HV6nPwaV/QvZT2ga+l8c/b1H79TW4hcv
IFex7ns9CS9t1U59DOaPHnVtapyfrkg6kONfc1++StUvuxrXaTag/2EYmc9xpoFb
tVtlsoM/FtO+3tVC5UixIiVEGdQRdLElxvdMgnX+2I/HtT7IRyKeVjH8/J+7Akd5
n5CaMBTHqQxbyO0J7P+gF4MF9w8EF8BlLwYTdcmM/E9ktQJOGDnH3tGifMO4b+5U
bWOZ45mo5kN5ynkEPEdo0aPGoA2SWk1fgCZZKml5lyuKlxjsy+TpLcs9olpqx/HU
qryOd+4lLY/mF6j+vWZ7gnVwwIe04RQYATLIXl6xBOuRUnXUVjESdtKpBHLtBv7N
EDmO5dmBONAcpoYSE8qVyH8Y7Dh5FK+cVjwRqyuRt5I538BCuks=
=wUz9
-----END PGP SIGNATURE-----

--3bvf6kql47vqrvnj--

--===============8588937010968218146==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8588937010968218146==--
