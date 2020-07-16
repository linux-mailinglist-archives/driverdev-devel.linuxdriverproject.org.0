Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA5622251B
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 16:18:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E6DA889427;
	Thu, 16 Jul 2020 14:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QJoaNEN8Oas0; Thu, 16 Jul 2020 14:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 264B689405;
	Thu, 16 Jul 2020 14:18:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD9841BF2F6
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:18:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9395120471
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OXoHwt2tQiwA for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 14:17:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 8D83920423
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 14:17:54 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id o22so4746689pjw.2
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 07:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=rEeIaOldDGNkjFcOuft9AGbgxpRWfSHpKo4JvfAcXn8=;
 b=mGIKW6k4TxGGkzHtFF3wKDWKOgsrV88cP5ed7M9sUknwmJYa5D3/6enGw4Yq8NPu0U
 CSHGb2CfNe8wexNxP7KNcPBQwMAuQt80Wiz6T77N72qf1mGK8Vc1O9P/m7iFU/Kuo1jL
 HtssFEpKxPwtZIeXCV8kdmaFNkPOmIvXfnjahFC1xMf4d8VEc/352ajCnQkMg3kEv+kq
 YbO5qpze6zf3rL4tjo4sTBzfVThYBiBU1v9MP8MruTnvwgkE2uHACdCaAY2RC02TChn/
 oO+JWuuvnksVzZLzRXJv/c3ylbavlzfzAKJSdy9lfIsAc0tkwv0DUc28uEhjjiwq3in4
 wWew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=rEeIaOldDGNkjFcOuft9AGbgxpRWfSHpKo4JvfAcXn8=;
 b=OgtPdU1atQxmYBsXZxh3SwKuXKdkCRSIsGxqoNCHvRol110khVdC1nyou5wlDgffUG
 ed26A3gLlzs7hYPm3lko2LmpRFrt5+3glqn02izc0xkQS2K7alDVXdN+XkL2qj57n+x7
 ObQUwBjgHo11xHF133bXYITtBx8DvqqLwS9NdEzy8zUHMI/AIVCY8gYUN5zmHDVbPns9
 8+N8yakjuAbdPX1wrAy3mkrJGqepYVvczcD69lovon4ShDNXvllyQBm7oAaWvVkZYveW
 A+xovBXSixRt9eMmkC6q/2DxmTP4peyER5QwgdPp/TJq2CJMMSVfWEgNw4wId0mi3pKN
 7tBQ==
X-Gm-Message-State: AOAM532+t27f9fuWmpJtiScuh05ljglscM9Q45oW7epda2dcmtwj9pCm
 3M9gFnEU+CF+oWFjrlpbLE8Viw==
X-Google-Smtp-Source: ABdhPJzorlas012rUFUtmkee7W89cvDYC8KxwWfBaT4RjUZgzUmMOY2Z847ju5xrQvvZN1XAg1ho/Q==
X-Received: by 2002:a17:902:bd90:: with SMTP id
 q16mr3536713pls.54.1594909074008; 
 Thu, 16 Jul 2020 07:17:54 -0700 (PDT)
Received: from localhost ([2406:7400:73:bebb:9750:968d:7cd5:3ec7])
 by smtp.gmail.com with ESMTPSA id n15sm315045pjf.12.2020.07.16.07.17.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 07:17:52 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 16 Jul 2020 10:17:47 -0400
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Vlastimil Babka <vbabka@suse.cz>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: comedi: comedi_fops.c: added casts to get rid of
 sparse warnings
Message-ID: <20200716141747.wewrnejrygosqhd5@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============3724336241596719517=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3724336241596719517==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zyxfsogd63ii4ru7"
Content-Disposition: inline


--zyxfsogd63ii4ru7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

fixed sparse warnings by adding a cast in assignment from
void [noderef] __user * to unsigned int __force *
and a reverse cast in argument from
unsigned int * to  unsigned int __user * .

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
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


--zyxfsogd63ii4ru7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl8QYYsACgkQ471Q5AHe
Z2pdswv/eH6bR7z/dfqHeEvgMCkUBSMsHEZwIofJ73sEiS9x4p9iEdVHIRDo9CQ/
O5mOXQWbdAd5LH34YahhT07MV7W5CLFC0/t0qLm9qMeDdIMwJBz8ZI3kgkJZ+Gfm
tSK/CEF3wgglkhuD1OxPWPZJZzyUVbGOwsBcWQdR1vpf1CXatE10T5niZr9QEhZS
QjoguQEHmjpuUfJoYJHH/29sQwi7uDgzVjEGCwB+fzBRt2nOwf6kGNd5B55q7DNn
bFfaAk6Xx8K9TNFBpFoFnEefbjOL7ew3OIO60aF1A0SqqJ5vW18rUnWe3EeF+Bp3
hmwGCc2usRLifx2pgQ3FVUUX64G6EaBms1YO3ok+j+KBazM6HiE+TrTjA+CSbhv2
vnwVCDu6n7cck675mNEypjCoQgdBcQ3rGCbaOxe1SyB07ZwvZGyqXwEZCC33wmDw
rEYTAWc1q2QKhhTfk3Z+oDcc1jcrNOvTyKTSHPqYMZj0AUcXIBUoZ+EvVbexOD6f
BtUoBfk+
=5tym
-----END PGP SIGNATURE-----

--zyxfsogd63ii4ru7--

--===============3724336241596719517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3724336241596719517==--
