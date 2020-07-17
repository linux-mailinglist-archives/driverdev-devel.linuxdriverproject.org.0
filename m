Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83959223949
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 12:30:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 02C8B862EC;
	Fri, 17 Jul 2020 10:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fsd26NVYxN6h; Fri, 17 Jul 2020 10:30:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17BE5862CA;
	Fri, 17 Jul 2020 10:30:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4CB771BF304
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 10:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4944B883F9
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 10:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zFA-n8qgv8Q9 for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 10:30:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 51E03883F8
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 10:30:39 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id w2so6472928pgg.10
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 03:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=O8Rb4ehIk0UZ6E5odInG38hop6T9BR/0TgqD2swqKlQ=;
 b=i6Qm5XrmD92+y/wj2u+SJM0+Oz7MzBYO8yRiSCHhnyNyfLVZYWczAuMM8whuRR35J3
 3GirgXTB6vXFF3Z4MXMDG1cpo7P+2ghbpOU/S/zeI6IgJk7nW9w+sRA7JDhQjjOnxcXp
 Z0uKiyGpnriYW89rE/pHymZk9sFq/QM4Jbf6rkSDx0FVCsxj3jj/cBbPo2qHBG/lfVL8
 EiR0b27CbHQtKsIpW2TljgxjgaM5VtsiDdsTXFp957BYTR+PKZb3mO1h+9IG8UJUG4GN
 85YlR33nqv5KfJMgWyztMFuKdN14Kg071V9PAyHHIXXmZHPkqKowcjG73CDQQrhAdORc
 9XOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=O8Rb4ehIk0UZ6E5odInG38hop6T9BR/0TgqD2swqKlQ=;
 b=QKRq3m7sKLZMAesrHSXd9IbwAhDLKKTN6Vy/DTMnBXF0IPEOixJd+lYlwlQttI2Ngh
 7kA9lSdHDZ4BkF+9CH338g+WIoJ0K6ZK62eM5mhvrD0GNMGPLCOGN6UKsmWCyjHSs8BP
 10jLUXHAV9VddMdouiLN/RDm3acwcLn3oWzbh6phbQejVPgtPqXvYvbXwmYWx0mgAOdw
 eUgzSpQ2NulqGFR2eYJPj0bMeGYSU+uvIVXmesNt9y0ySBQ05VXSZtMbRxBBu4H8/MbY
 XGU3Ccz9Z2eMzLCJ3M4hWqvOgjNKAJRogCYm0kgY8XG5Ms3zprgUyBgJ1Urn15qqVuop
 ovCA==
X-Gm-Message-State: AOAM533z5MubuWI1RauimAsKnMKJN/geWyG3q2Wpm9dY/C9uYY96+MAx
 yv7l5ODqLw6KAIGuTYbbUL1l4w==
X-Google-Smtp-Source: ABdhPJyhqntyH8+/xcS4Ig6qyFqVGttcJl3h3ca/nXRjO2lCkRDpSrbH1FSMrXf+7NuD41F+nzxYAg==
X-Received: by 2002:a65:6554:: with SMTP id a20mr7071306pgw.301.1594981838660; 
 Fri, 17 Jul 2020 03:30:38 -0700 (PDT)
Received: from localhost ([2406:7400:73:f893:55c8:468b:6675:c054])
 by smtp.gmail.com with ESMTPSA id f72sm7297633pfa.66.2020.07.17.03.30.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jul 2020 03:30:37 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Fri, 17 Jul 2020 06:30:31 -0400
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 Vlastimil Babka <vbabka@suse.cz>,
 Andrew Morton <akpm@linux-foundation.org>,
 Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5] staging: comedi: comedi_fops.c: added casts to get rid of
 sparse warnings
Message-ID: <20200717103031.3mfnlvqo3waolsee@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============2579114231466866283=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2579114231466866283==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7wrplbydiie2qrlz"
Content-Disposition: inline


--7wrplbydiie2qrlz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

fixed sparse warnings by adding a cast in assignment from
void [noderef] __user * to unsigned int __force *
and a reverse cast in argument from
unsigned int * to  unsigned int __user * .

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
Reviewed-by: Ian Abbott <abbotti@mev.co.uk>
---
v1 -> v2:
- Added a reverse cast in argument
v2 -> v3:
- Changed commit description
v3 -> v4:
- Added versioning info in commit description
v4 -> v5:
- Move versioning info below the divider line

 drivers/staging/comedi/comedi_fops.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/=
comedi_fops.c
index 3f70e5dfac39..9cdc1e8a022d 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
 	cmd->scan_end_arg =3D v32.scan_end_arg;
 	cmd->stop_src =3D v32.stop_src;
 	cmd->stop_arg =3D v32.stop_arg;
-	cmd->chanlist =3D compat_ptr(v32.chanlist);
+	cmd->chanlist =3D (unsigned int __force *)compat_ptr(v32.chanlist);
 	cmd->chanlist_len =3D v32.chanlist_len;
 	cmd->data =3D compat_ptr(v32.data);
 	cmd->data_len =3D v32.data_len;
@@ -2983,7 +2983,7 @@ static int put_compat_cmd(struct comedi32_cmd_struct =
__user *cmd32,
 	v32.stop_src =3D cmd->stop_src;
 	v32.stop_arg =3D cmd->stop_arg;
 	/* Assume chanlist pointer is unchanged. */
-	v32.chanlist =3D ptr_to_compat(cmd->chanlist);
+	v32.chanlist =3D ptr_to_compat((unsigned int __user *)cmd->chanlist);
 	v32.chanlist_len =3D cmd->chanlist_len;
 	v32.data =3D ptr_to_compat(cmd->data);
 	v32.data_len =3D cmd->data_len;
--=20
2.20.1


--7wrplbydiie2qrlz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl8RfccACgkQ471Q5AHe
Z2olwQwAq3x8BJVFPqVKJHIME24hUIUYy/l2VmcCJt2dJm889o5AOO/+sBbbEqeI
BFTqNwJNK/wEO28O/KC69AzBZysRkokiA349nkJiGhDdpeZrpaca4pjMqXPJ2FzR
AEzT1y1Y+krXMIqsFtscXgbH0ounqD9gMFNV5ly3Q7cdEwhUwd7+ZWh9bBXuNWe0
Gqh4WuqOBo5+IyXKiA4gwNbDckyWu7tBduexGnLGTLqGL5ymCVwnXF/PWmM9wMwV
3Xqbl5kanZAqNBJAlb+VjGwKLwqeDitOdMO6wZt5jB1dFfRqC+4BTf6SlfAU6Ele
U0VH6FSrq3+BYLj0/xXNnQAkB2DIt1/GbG054BcwxJXM97pV419ZSG/1hQDjH92g
um1xfyaxAgzhPRh+PHYP+uYBa8m+BTQSmKH/qC3oG6B+76Ql45uxt+zKNglNYbT5
w4/bKZtaueih7m4YsGFqxGs6OYO1sZVwFsyyBcWgkLBx1ygz3F/91mV6qM1RP7nG
cLqJogJT
=vmTC
-----END PGP SIGNATURE-----

--7wrplbydiie2qrlz--

--===============2579114231466866283==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2579114231466866283==--
