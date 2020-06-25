Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F87E20A233
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 17:42:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2CD258692E;
	Thu, 25 Jun 2020 15:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vPBpESKQ-JCM; Thu, 25 Jun 2020 15:42:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 977AC85E25;
	Thu, 25 Jun 2020 15:42:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 38E341BF3BE
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 15:42:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 256022313B
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 15:42:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g-yQ2fQx0rk1 for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 15:42:39 +0000 (UTC)
X-Greylist: delayed 00:07:13 by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 5D5CC204B0
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 15:42:39 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d194so96230pga.13
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 08:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=x5rltbZgoac+dXb+DOgX5rzO4ebpNO9QKIAaqizWabE=;
 b=1YlTo2+HW3hy9QDNoY9ia6mxIaKs0Lmc62+aANLbGds86ssI1gK73TAkjnObtlBJ59
 s8tgqw+IHZmO4qHNdku31gfctjoCG5Gay5R6e6iJBbVX2prZ4X3MkQ6ikPMCmFN7XUoy
 x9qVWk2zDe3W1xy3riTJGueSp06DeMbd1gO9BSdpWMz4bVFwpOIZDqnWqK4JL0q+GzdZ
 KRhVDKUnjRhRr1ylDZkZa4Z4gWB91Hs1nJHHBLX0yseO1KI6Y6lqRo8NV+d8D263DsMT
 EfJF8tjhRDmqoTP6ruWR0N2/Skk18+JZ2M/0HoqI3Hxf4eS8k40ZrADS7BacuDQg2uiz
 rc8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=x5rltbZgoac+dXb+DOgX5rzO4ebpNO9QKIAaqizWabE=;
 b=iDidSEbO9eOjOamytO9vdqKjFWjCh5RueASQyWjSANxb/DMdVdhZIfkMSvG/bnR8qp
 /ILnUvfe6Vf4d3PltlRoExiErpvfZ45JTfNsY8ZQj9tGK2SeU3TZCKqpjMsEf67DNO+q
 j6q8UA+OKELajQ8Upu0z3u5s0vi9tRogJyannC57DGqCLAEmUlfd9fDs8wOh5nxrsU5v
 O7hq35mVqFHms3ph3wS1bpmG/G4LHj4oLF0Oz8xlQu9zi2hFJ1z9XSudb0PhSNLDl8lu
 wRzG98D1Z+RZ/deAvnFrNsT7DlNxkas6q8wSusNuY93sLItwFg/1nd5hqnB/YuqD+DMc
 tc7A==
X-Gm-Message-State: AOAM530/D/CE8HZlShWFMqCH+ZOfI7jBUUzbDxT9XW1yLualHg96zod3
 Gid1eMgvp61v2kVuDxobRsibZ4hfWFD8Mg==
X-Google-Smtp-Source: ABdhPJz92oCQkSLzT6L0cPk15+CVAR5bLEmDnDtyxkVfGo3rWkJazMXpdCnSRpNO27I/0plMLIwTew==
X-Received: by 2002:aa7:84cc:: with SMTP id x12mr33886230pfn.235.1593099325951; 
 Thu, 25 Jun 2020 08:35:25 -0700 (PDT)
Received: from localhost ([2406:7400:73:51e4:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id o1sm8649025pjp.37.2020.06.25.08.35.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 08:35:24 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 25 Jun 2020 11:35:17 -0400
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] staging: media: soc_camera: Adding parentheses to macro
 defination at line 241, Clearing alignment issues at lines 410 and 1270,
 fixing return values at EPOLLERR
Message-ID: <20200625153516.fibpfsodnogrimlh@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============7288681374750111840=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7288681374750111840==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fhzbuehlmb54oq5j"
Content-Disposition: inline


--fhzbuehlmb54oq5j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

staging: media: soc_camera: soc_camera.c: Clearing coding-style problem
"Macros with complex values should be enclosed in parentheses" in line 241 =
by adding parentheses.
staging: media: soc_camera: soc_camera.c: Clearing coding-style problem
"Alignment should match open parenthesis" by adding tab spaces in line 410.
staging: media: soc_camera: soc_camera.c: Clearing coding-style problem
"return of an errno should typically be negative" by adding a "-" in front =
of EPOLLER in line 812.
staging: media: soc_camera: soc_camera.c: Clearing coding-style problem
"Alignment should match open parenthesis" by adding tab spaces in line 1270.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/media/soc_camera/soc_camera.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/soc_camera/soc_camera.c b/drivers/stagin=
g/media/soc_camera/soc_camera.c
index 39f513f69b89..66a14ebd8093 100644
--- a/drivers/staging/media/soc_camera/soc_camera.c
+++ b/drivers/staging/media/soc_camera/soc_camera.c
@@ -238,8 +238,8 @@ unsigned long soc_camera_apply_board_flags(struct soc_c=
amera_subdev_desc *ssdd,
 }
 EXPORT_SYMBOL(soc_camera_apply_board_flags);
=20
-#define pixfmtstr(x) (x) & 0xff, ((x) >> 8) & 0xff, ((x) >> 16) & 0xff, \
-	((x) >> 24) & 0xff
+#define pixfmtstr(x) ((x) & 0xff, ((x) >> 8) & 0xff, ((x) >> 16) & 0xff, \
+	((x) >> 24) & 0xff)
=20
 static int soc_camera_try_fmt(struct soc_camera_device *icd,
 			      struct v4l2_format *f)
@@ -407,7 +407,7 @@ static int soc_camera_dqbuf(struct file *file, void *pr=
iv,
 }
=20
 static int soc_camera_create_bufs(struct file *file, void *priv,
-			    struct v4l2_create_buffers *create)
+			    		struct v4l2_create_buffers *create)
 {
 	struct soc_camera_device *icd =3D file->private_data;
 	int ret;
@@ -806,10 +806,10 @@ static __poll_t soc_camera_poll(struct file *file, po=
ll_table *pt)
 {
 	struct soc_camera_device *icd =3D file->private_data;
 	struct soc_camera_host *ici =3D to_soc_camera_host(icd->parent);
-	__poll_t res =3D EPOLLERR;
+	__poll_t res =3D -EPOLLERR;
=20
 	if (icd->streamer !=3D file)
-		return EPOLLERR;
+		return -EPOLLERR;
=20
 	mutex_lock(&ici->host_lock);
 	res =3D ici->ops->poll(file, pt);
@@ -1267,7 +1267,7 @@ static int soc_camera_i2c_init(struct soc_camera_devi=
ce *icd,
 	}
=20
 	subdev =3D v4l2_i2c_new_subdev_board(&ici->v4l2_dev, adap,
-				shd->board_info, NULL);
+						shd->board_info, NULL);
 	if (!subdev) {
 		ret =3D -ENODEV;
 		goto ei2cnd;
--=20
2.20.1


--fhzbuehlmb54oq5j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl70xDQACgkQ471Q5AHe
Z2oZlAv/bmnvULtnv3yC5oXsH9CF4NejDM305ZbwMYLCm0k5INVKHk2hgumFNw/v
mHDKoKT+D7vujqhWAlVh/l996TVlIbTAntl2W76FoJ0xBsZ4C4Qczn0GOKpDE08N
kQKuqtUCRv1Cb9Uz+e8yJJJ68O3Lhhb82NKEc9oI5YzwfC1sge97L05xcAmHqGRn
lkl2aNouT4hAm03kIl0aSM8mT3Ik3lkECcT9tncwaSa9iHwxXI/XW8B9yZaXDvDA
HEIJjpHHqtii5srCdxkQn8MR5cvYOWvocxx6leyqZrq3lo6bPJpIT4+zwqanKFPM
jl2VHSqHO7h/3nS04NVnUrS0ONon8REFoIU5iKLlN0lnwL1XY+XHNqNlbqpknb8s
/6+ah50oOevSmjjMGXE19JSr46GRgaDcSYcbV9ODQFziFtr3U40j7BssOqveWVDw
bXojJE1ObgFwcq7OjXJhKIy+OsjJf0Rp195iIVpWmrudGb670/sIQdaAXo/H4ocn
DyfxNma/
=OdLO
-----END PGP SIGNATURE-----

--fhzbuehlmb54oq5j--

--===============7288681374750111840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7288681374750111840==--
