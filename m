Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5434022C5FF
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 15:14:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E6E6288892;
	Fri, 24 Jul 2020 13:14:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zpii7IWNISln; Fri, 24 Jul 2020 13:14:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 63C068860D;
	Fri, 24 Jul 2020 13:14:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D77D91BF40B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:14:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C39742049B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:14:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yofa-QbdgnG2 for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 13:14:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F230203C8
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 13:14:25 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id b92so5195976pjc.4
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 06:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=dzxDyqTxC5C7vOfI1scwv7wBqFZhHOHAY1E3Yx1fnmk=;
 b=gCvhAN8gxAEKQC133j2Q+Rm3uTGWgxKhD0gv7q41xwW0fbceAjto7tQEgP4wUu1QUf
 VLwLAvfF5yIxCk5qCzaKP2SBJZPNKWkcnaDxALRDetyY7IHrJNRZ+NKKWY01eCBVWiGl
 FMiyyqXq3jWZkGlcEl+UihN1NW6aT2KLu0en+t6K4unTRJwiBsHPcLiwoq7dP9e+j2Me
 Ks4abwmgYS4q/EN65iHht/xB9jnLyJbfYZO4g8BBhrkjyoCfRR1TTJhfrP84G3xl5+ts
 wqaSPUTjDa+iMXVSIxgUT3X0guICOL7+JWSA2zEI92fq34KgPOjrqH5pN46qjbJrDLah
 GqCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=dzxDyqTxC5C7vOfI1scwv7wBqFZhHOHAY1E3Yx1fnmk=;
 b=RtL1FlRN07bntbl9LWeK6YDfGGHWFP+3QR7jMgRAntIfD12s9eg1UcQvQkWXDs8/y7
 /iGqPnTpetWs9sCsMd1hNcJ5Z+q/BYCbxExy+Auzm3P3YaABhtiJyCVsUZpLybF+ECTF
 nJJ8uxwpX3k2yUVzUOrqQ4JmlARqAcCu8fT3VW1DYhdpHxIb6n6AazoVFh6cdWAA3SyK
 HSBmZ1eAEmNGCX4c6ZkQ2zYVnBdj2nvHXqU7O42m2t2kKvovjHSac53nqJnS06CXJF48
 nxkyEre8FuhIGwsqhiteFuO0ZKUlyWNy2tg3Kk2Ur+SMFI07dgCYxpa/C4v4nobWELxe
 uqAA==
X-Gm-Message-State: AOAM531K4wbccV0jT/yRJcNG4RBvZxamT6Zowk177wJOw/3EuaoMdaQm
 cS1Li2Q4M8tW8Kjvt3apRoQ=
X-Google-Smtp-Source: ABdhPJwnqD+PuzPqE8lSUn06RHEbKZLPKf8OY6mWdmU+OVlpL8eg4wB7BrSKTL5Mr4WU/34dAQnhyg==
X-Received: by 2002:a17:90a:3523:: with SMTP id
 q32mr4964274pjb.185.1595596464961; 
 Fri, 24 Jul 2020 06:14:24 -0700 (PDT)
Received: from localhost ([1.22.41.181])
 by smtp.gmail.com with ESMTPSA id s22sm6030243pgv.43.2020.07.24.06.14.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jul 2020 06:14:24 -0700 (PDT)
Date: Fri, 24 Jul 2020 18:44:20 +0530
From: Mrinal Pandey <mrinalmni@gmail.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 mrinalmni@gmail.com
Subject: [PATCH 4/6] drivers: android: Fix a variable declaration coding
 style issue
Message-ID: <20200724131420.fkyzzgnmrmqk6dfe@mrinalpandey>
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
Content-Type: multipart/mixed; boundary="===============7059438904075442995=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7059438904075442995==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ps7jevsm5xmkvks7"
Content-Disposition: inline


--ps7jevsm5xmkvks7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Add a blank line after variable declarations as suggested by checkpatch.

Signed-off-by: Mrinal Pandey <mrinalmni@gmail.com>
---
 drivers/android/binder.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 3cf13ff16934..75832f236bf9 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3631,6 +3631,7 @@ static int binder_thread_write(struct binder_proc *pr=
oc,
 			ret =3D -1;
 			if (increment && !target) {
 				struct binder_node *ctx_mgr_node;
+
 				mutex_lock(&context->context_mgr_node_lock);
 				ctx_mgr_node =3D context->binder_context_mgr_node;
 				if (ctx_mgr_node)
--=20
2.25.1


--ps7jevsm5xmkvks7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE8DwCG1PwaC2uTI99xIwpEWwxhGQFAl8a3qsACgkQxIwpEWwx
hGRP9A/+LlCEIXuSRjF2CIXkRNs3TC/xhRcngfEZT/1QR8Eu1Z0JwUt9H42mptu+
NmgJ8wXAElh7IRVhrscLUxjwyuc48APblUGNr1fDMGUw+ASQne6OUyug+KNiGw0c
CwfAKKBu9hcw249WSK+sREfvTCh4mau8pVXfo/9EmT3CNLbqOJjIPXgZKVo13+0D
z3IvVH5Pi6SBTcCYwvQna7xsPYfqQFRseouk6XobCqPmTtdSOmC/PEHzloWLRPPm
DbTAzohl8XAA/CgZFDuvxaLdlwV3yiCjvDIK7MXe8U8nVmcXQtaU+3GUUArFct4T
VbfJKOZ/XIkgl97QSsr4ZCB9T9a3OLVzsVK7tithTbbMqB7yuJZaoUoYYYnY6TXD
u7Ou22JU9JsZVyE7j5LffDMvZaJnVo0TpxIWzpSvFL2kmkyb5rsNnQBBgzu5dLUu
ITDhLBexx8ammY2xkKiZNeZLMNi9noiFVZX00n/HhvSLj5RiwC01Wvd6ezn3L5nw
nraSdXJnr+4QXOuJEI2zquTP0OFi9loSav7tcaVlC+OPv7kmZV95R5oaVEfBDe9c
vgiBHaw1OBf2y0oMYMY8nsPrfsM8zGmpasbXTboZmC4ZJwb4r48YmXFaS3tVF7ms
Wj9mmw5E4rxKyT5RhY5r7x1twv3b9+ABKjfbBvR6oeZT0mufW90=
=zILk
-----END PGP SIGNATURE-----

--ps7jevsm5xmkvks7--

--===============7059438904075442995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7059438904075442995==--
