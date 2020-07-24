Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2E222C60A
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 15:15:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5051923358;
	Fri, 24 Jul 2020 13:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 61rG3Xwkmvkn; Fri, 24 Jul 2020 13:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2E9DB231C8;
	Fri, 24 Jul 2020 13:14:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4C411BF40B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B1BE388884
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kv-2LoXCRITM for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 13:14:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 42E3388878
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 13:14:55 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id t6so5205394pgq.1
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 06:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=Nit0NnPmCNNlebQQdy2f4H1BvnX3IyziXDcDUEve7ZE=;
 b=tL4mCyjdrhqL+vhLgZx3IoyjYCPak1l0yCsxVJJMJD46G/apTkoyzVqHcSuIEHQ5PX
 KS+g9aizILE/96lLa01H/PgF/nPuvolx5lYFXRUsdqNA/t4vXft4j9GAigBRJQruALN8
 6Xq4YMvuhRcV6fPPCIhKdVSFmibF0OmZNaVr0qhQpzoDVJHjrhlfJJwYsoAWk8ztZeMT
 5j4YMve59l3cJGjK18T7EDTSItm2Q22+E3z2f4TmQQ92srUk8wtqXcuAh0ptSolLkOvw
 ZrRojXmw/VOVgTJLt/+grM+e+dyxyd9LYphkrRCAfbT0b38j1Cyutlae7k+Q8mVAye1g
 AlYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=Nit0NnPmCNNlebQQdy2f4H1BvnX3IyziXDcDUEve7ZE=;
 b=TcLBnFjJYy4TxMDL9/Wrm9TQvR7LLJL2MMWn1Df25HoBCGfVuvy/H3WcivZ3oLdoei
 FO4HHFMO0NNYW4q0/s8UkGS+7hGOD/ee0oQH/jGDpre5WZVyMoNuiys9aym8PXQRCZ3u
 AGvVfhQNGpXJGgHOc7asgF0yzJQIZSSsncASwmAvTml5le4yeoz3zuNzZLv3d/36Mmf7
 WjHUk7aXa4rtNIk+CfxXzFb/kXPxsrfc1WI44+F29RUw6R84Nfv1juVDgO5iBdM15YUx
 XobqvmEjVPffYv4adr7A6ycKXrcABTqaXb+32hO+pb4T5cntcdPT995E2Jopk7hhRnfO
 6Qkw==
X-Gm-Message-State: AOAM532UAP5KzBWzWbiGINqDHIYWaVHsxnblFH3Z6Sc3Njwg4kWe6r26
 UsDwE3PKyjLrp4wVX2rjPdA=
X-Google-Smtp-Source: ABdhPJwfoJqjs2vuQkHsJq/jeaTMMrtFZg4TEc5MLQyXYy6rOXOpJG//k9jRmuYbugA5lryOpdcmmQ==
X-Received: by 2002:a63:f814:: with SMTP id n20mr8203259pgh.92.1595596494738; 
 Fri, 24 Jul 2020 06:14:54 -0700 (PDT)
Received: from localhost ([1.22.41.181])
 by smtp.gmail.com with ESMTPSA id b21sm6501633pfb.45.2020.07.24.06.14.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jul 2020 06:14:54 -0700 (PDT)
Date: Fri, 24 Jul 2020 18:44:49 +0530
From: Mrinal Pandey <mrinalmni@gmail.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 mrinalmni@gmail.com
Subject: [PATCH 6/6] drivers: android: Fix the SPDX comment style
Message-ID: <20200724131449.zvjutbemg3vqhrzh@mrinalpandey>
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
Content-Type: multipart/mixed; boundary="===============7170321334737178948=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7170321334737178948==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="76felxngyahx4fmv"
Content-Disposition: inline


--76felxngyahx4fmv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

C source files should have `//` as SPDX comment and not `/**/`. Fix this
by running checkpatch on the file.

Signed-off-by: Mrinal Pandey <mrinalmni@gmail.com>
---
 drivers/android/binderfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
index 8a98a36ff71a..4eada4dc232f 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0 */
+// SPDX-License-Identifier: GPL-2.0
=20
 #include <linux/compiler_types.h>
 #include <linux/errno.h>
--=20
2.25.1


--76felxngyahx4fmv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE8DwCG1PwaC2uTI99xIwpEWwxhGQFAl8a3skACgkQxIwpEWwx
hGRgHw/+LIkaOIms9WecmHC1athhjWoFfmjy7JN2I/NyANmFfUbBtL/aAea868Dw
s48fTyq+sd6WpALiPiaCgD56cI878vH7H98qsm3FqYm76uZ/wzl6fKorIhAdJBy3
OyPj7j+8IEfDA/fBHxTYkGNpDY4gQET2nrgAqAqjaxih32tKrM7CI8FzkNPMiejL
m9pRZGV4tw2cdqMgUhtaEsQFsonAiJy+VnrUNGS9yylNGzLSeBi/CnwueSDo0Nu5
97YGWb6p9ck5Gs4FHgCxXgO8p3dvu29wVCaU7FjhRgvfv0DsFjEtlT2/kt3rtQJg
nPgOa6oljuPMiPGupFVXxI827PQJL+ASsF0sQD2VIpOBX6L79qXbF5DIpHTXrxCO
jbW5+fO6Eg1Bglj/D0QDY4QFqGDr/o9UzhOqLGtYP/efxK+5noHLaPWB4d7ps4uB
46jH0vJ/GxHwn8y+5ycXqAaujxznZIR5FPMXVP9TKs0ZjDwB6/Itg30HozynWRT9
E17uLXhUlWMri2EbPAabMiJCRe4IBwj34MCqAFrDwRNxfzIWhN5clLL01MnQdok2
SuERXVT4215iJpDRRrsyUaKo7iE4ebDa5MsSQTWoMktgg2CrtCSUB8fwPlAyPo3M
NoLo65uZ17ZwWuGvKtXQLSBEv5T5FswajawIVGkXpouWBtB/AdQ=
=8dgS
-----END PGP SIGNATURE-----

--76felxngyahx4fmv--

--===============7170321334737178948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7170321334737178948==--
