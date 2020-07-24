Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2277D22C605
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 15:14:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8B7186FFD;
	Fri, 24 Jul 2020 13:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JL864p7Fmt0h; Fri, 24 Jul 2020 13:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AEDFA86D31;
	Fri, 24 Jul 2020 13:14:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D9851BF40B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:14:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9A7A9868FE
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IMj5RIxdkMGZ for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 13:14:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 38CB88665E
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 13:14:39 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id gc9so5197230pjb.2
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 06:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=reMLRYlsYVkeM3mrx5IDn5+pquZ2PKUwq+BgQPeb0uE=;
 b=crDQbd0+Ra2ZheXq/4azXw+hYoYrjbQc11JsdCvANLDkTf8DoL96/OEeSL8+HTgJyp
 obQoiSet+rGZ5/JCo5sQjNwikd+TQoTXPDj6DYpCjt+AXr5HzOxgUh47x6T1EbancBVZ
 OtIxxi0ifmL/i5lXyyfgOM3H3BEi+P+qKvC9xRdwAw5wVN7tbHB1AtdYIpDYmmBZOQDu
 WcGFGUu4OKOgNhwSza5ek1VTyABtHAIpiQlnrobhnpix4OlG5C7NIu+KjAVRxJql74Bw
 YQvbFZs6L40npUAtmGjF2eNaCkV4tQ3OON9gl9TPam67WRwhRpJ17ZW6WDfq9x1qLJ13
 0KFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=reMLRYlsYVkeM3mrx5IDn5+pquZ2PKUwq+BgQPeb0uE=;
 b=YbL/LBYcN60lhIYdkbssSdzFupQP7V3xvpcyGlZ74MTZsR63/nl8CZGKeNdTwdAujM
 YbVEjgRlIEBTn9pP/srTPnS5IgdcuhTvFEkRGjvy0JkUaI0Z3rhJhTLH6P+pLT7m+hlx
 4Pd9SYjC1j6y3qFLkZURfdkqS2gqMvICNhTA4dw65oiKom0w4uvC3Uw+uqk3DpTV6h3r
 K2OU5kgbsAsZ/0On0ORpGqZad0RMoz1LQKkxOAHi0fsQ6D832zfVMRFLHB/dhhT/62cd
 OjGqoHKVUIIcLKYpDbKlD79jj4VaMjWXXU5UzAtfAy3QActpOFV+n2PTsS437y4GqrRw
 syIQ==
X-Gm-Message-State: AOAM531uXZfJnGKQ9UF/ldcsKUbjrswnwiSGWo4kI7NvwPUH7XdeZm+H
 baT9wKmfywMq6yBkGstsy0Q=
X-Google-Smtp-Source: ABdhPJzo6r4cVg9XFVnSSmhDLOnaM7HNU6jJzG2pIvwWmMAoLkD6y9qFg/71rcuEhHlZbvrnAbdtZw==
X-Received: by 2002:a17:90a:1089:: with SMTP id
 c9mr5403159pja.180.1595596478783; 
 Fri, 24 Jul 2020 06:14:38 -0700 (PDT)
Received: from localhost ([1.22.41.181])
 by smtp.gmail.com with ESMTPSA id 66sm6600458pfg.63.2020.07.24.06.14.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jul 2020 06:14:37 -0700 (PDT)
Date: Fri, 24 Jul 2020 18:44:33 +0530
From: Mrinal Pandey <mrinalmni@gmail.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 mrinalmni@gmail.com
Subject: [PATCH 5/6] drivers: android: Fix a variable declaration coding
 style issue
Message-ID: <20200724131433.stf3ycooogawyzb3@mrinalpandey>
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
Content-Type: multipart/mixed; boundary="===============8062668900081929106=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8062668900081929106==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="grqqnbefsvlkzzvh"
Content-Disposition: inline


--grqqnbefsvlkzzvh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Add a blank line after variable declarations as suggested by checkpatch.

Signed-off-by: Mrinal Pandey <mrinalmni@gmail.com>
---
 drivers/android/binderfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
index 7cf566aafe1f..8a98a36ff71a 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -351,6 +351,7 @@ static const struct super_operations binderfs_super_ops=
 =3D {
 static inline bool is_binderfs_control_device(const struct dentry *dentry)
 {
 	struct binderfs_info *info =3D dentry->d_sb->s_fs_info;
+
 	return info->control_dentry =3D=3D dentry;
 }
=20
--=20
2.25.1


--grqqnbefsvlkzzvh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE8DwCG1PwaC2uTI99xIwpEWwxhGQFAl8a3rkACgkQxIwpEWwx
hGTS3hAAnBoTVKJZTQYY6H7ngmGccBbE4quqljqUD8/0UyfwOCH91x3Py9M35U09
DeDH2opW3cJn3boASkps0OuDsd8Eizte2DOxVnvzcFgszkty6XLxzfuaNQnywx55
6HVPITlom5YCCV/gi1bJUBtbeTHzy9ILb3NXeycgiZua5aq9EwFqKNJaoHAtPGrT
B6QCkNAw1hrfvCd5bgqxOgO0ODgMbOL1w/MTnbobUHKeTrLPgKQyZpEsvTBPfJfa
8Swbmf7Wp3QNk/RJSVsHQOsOH7elK6P4ApGrAveoU/SSa9JU49G40ENHeuPDe9K+
cTStZkaX8sO48xRxB/yLwUyGbR0E/MRbKxI4BA699fMGOIeDnNN762lr8bZoRAkg
RUMkH7eQUgnAAsnUl3P/Mk1Wa1d4TlIdmnAeNFsa7CKxnMISGtQr/Wg6uE1guAbU
HvcZ1CzYmy8w2o/C4jJam3F+VymG2rtpskcLmnH7rpTLWtJGu3+oOULX/d04ordD
qCQaVuZmeg1268/RFaRICNN6oycEI3bZc8thGzmrH6YD1V9b5hoRBUo30tFJ+7Tf
ner0nESJWLg29oeEzPVeOklqh/2gLsCrIXq/doM3VMJm7RS99cgudjWYZayaO0xB
Ms4I19LgSIjj61avbj28nEJODFpAi+BYdZgcLBz7DiC4iR8wYpk=
=GUIX
-----END PGP SIGNATURE-----

--grqqnbefsvlkzzvh--

--===============8062668900081929106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8062668900081929106==--
