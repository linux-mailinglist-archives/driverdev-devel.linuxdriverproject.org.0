Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BAB20CCA1
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 07:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1DA588934B;
	Mon, 29 Jun 2020 05:57:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8FwG4x9o1KMf; Mon, 29 Jun 2020 05:57:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8846888C45;
	Mon, 29 Jun 2020 05:57:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0ADB01BF3C0
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 05:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 07C9185F8D
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 05:57:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z2N0nWMlUvCH for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 05:57:39 +0000 (UTC)
X-Greylist: delayed 00:22:47 by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4362985F74
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 05:57:39 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id f9so7443673pfn.0
 for <devel@driverdev.osuosl.org>; Sun, 28 Jun 2020 22:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=PLzwnsru7uXe97PgGUdN3v/8H1BV8GdZHweH5WV3o2U=;
 b=JC4covp7h9MQ3mBo81HAG9L6bvM7ALyvFFOlzv1szglIjAQAgR6eIwR4u9QSJo808B
 8onNGyokVvlDJsQutaNoEmLLINhSi0ekzZsiVYMMBy9Yu5lx5RHlp1OdUJs3h+yAmYGT
 ge6s0nXoIZQ2+qd4gkxbMXRzHO+E/Saj/nKyqmmj/2mCCXwqJq6/n6Z1Vc8wUwl1Qfmg
 ywResd9LwvA+CRCIoSSTIrR/ZkSl0vUF9fH2KYIfAhC3lztDOiUTJZKgFmly2lO/WDRG
 vB4BZVVn8FUgEa8rIUF0Lumknwvl1VPXdz7u5YGv+jP/Zyl7rQzFD3VtCHgKy7PlADXJ
 NCxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=PLzwnsru7uXe97PgGUdN3v/8H1BV8GdZHweH5WV3o2U=;
 b=MhM30AMuz7AYeWR8kgnewpO76SVuqfr2nP4oYM8V/LYwM5NHQx4BiV7ylZgJ3zkpaT
 PcYOgVDDtmnnA2GCUyxfVjbpG1EAFgLbbek6s1aQMJFVUaJ6YBhl0X2HIH/sPNSSGpqc
 V45tYTkqSpg7KtJkQvYm0LwLrhiOktkM9uC7R+OZAnmX79FrnlxBfcFIdjHZbe9bkHMr
 FRz+5T9DGxd5WDNlw44WWg+fPFTyRpfpNBetMOJm5/7myl4PyhgeNR3JR7lxnCJqy5i8
 fAG951ckyfIWeFCgbXn/LzSCx9TO5vgyjqNGVdlVUS8vflP0sVt5f4ZBK1GjbW/+2Szw
 0MXA==
X-Gm-Message-State: AOAM530f/SL3mMqQEYgzk5KRHvIYFN6p4GMpL8Mae8jeMS4lrvWjUjh6
 i1mbLKj5lsoTKd+DwjwdmRvYc2gI5+OllQ==
X-Google-Smtp-Source: ABdhPJy2baizvtZuar/8Tzvq2EPS2YQ/BGUWe9ZloTvm/n4kPDa662zfVUL6W0omlAfsTOfrPFo/1w==
X-Received: by 2002:a63:1119:: with SMTP id g25mr8721160pgl.126.1593408891526; 
 Sun, 28 Jun 2020 22:34:51 -0700 (PDT)
Received: from localhost ([2406:7400:73:703c:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id fv7sm14248389pjb.22.2020.06.28.22.34.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Jun 2020 22:34:50 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Mon, 29 Jun 2020 01:34:42 -0400
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: include: hal8188e_rate_adaptive.h: fixed
 a blank space coding style issue
Message-ID: <20200629053442.eob7oixlxbs5rh33@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============1041297321299956166=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1041297321299956166==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h7dv7tjs5edeqagw"
Content-Disposition: inline


--h7dv7tjs5edeqagw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

added blank space around arithmetic operators to improve readability

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 .../rtl8188eu/include/hal8188e_rate_adaptive.h       | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h b/d=
rivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h
index 5b59c25e4c8a..79c0d2f9961e 100644
--- a/drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h
+++ b/drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h
@@ -35,17 +35,17 @@
 #define GET_TX_REPORT_TYPE1_RERTY_0(__pAddr)			\
 	LE_BITS_TO_4BYTE(__pAddr, 0, 16)
 #define GET_TX_REPORT_TYPE1_RERTY_1(__pAddr)			\
-	LE_BITS_TO_1BYTE(__pAddr+2, 0, 8)
+	LE_BITS_TO_1BYTE(__pAddr + 2, 0, 8)
 #define GET_TX_REPORT_TYPE1_RERTY_2(__pAddr)			\
-	LE_BITS_TO_1BYTE(__pAddr+3, 0, 8)
+	LE_BITS_TO_1BYTE(__pAddr + 3, 0, 8)
 #define GET_TX_REPORT_TYPE1_RERTY_3(__pAddr)			\
-	LE_BITS_TO_1BYTE(__pAddr+4, 0, 8)
+	LE_BITS_TO_1BYTE(__pAddr + 4, 0, 8)
 #define GET_TX_REPORT_TYPE1_RERTY_4(__pAddr)			\
-	LE_BITS_TO_1BYTE(__pAddr+4+1, 0, 8)
+	LE_BITS_TO_1BYTE(__pAddr + 4 + 1, 0, 8)
 #define GET_TX_REPORT_TYPE1_DROP_0(__pAddr)			\
-	LE_BITS_TO_1BYTE(__pAddr+4+2, 0, 8)
+	LE_BITS_TO_1BYTE(__pAddr + 4 + 2, 0, 8)
 #define GET_TX_REPORT_TYPE1_DROP_1(__pAddr)			\
-	LE_BITS_TO_1BYTE(__pAddr+4+3, 0, 8)
+	LE_BITS_TO_1BYTE(__pAddr + 4 + 3, 0, 8)
=20
 /*  End rate adaptive define */
=20
--=20
2.20.1


--h7dv7tjs5edeqagw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl75fXIACgkQ471Q5AHe
Z2pF2QwAj3e+d2jjhvUgSJyfTQ7y8RzV08p6OhTRDmWuq735at2sKKu3SPmnD6QX
48B4WPqOg+ltGQXw+PYeNjQJYHkoVTb/qfxHvXhxLD8fubc7Z4EI7/aDHMsVeW7x
dQlRV7J3lBSNup6CDYm4fi5xNzcmpr1YUpeDVYF7JEYfJDPxcqdusr+OOuuqgaJy
D7NTD/cTopgjzLE6RmSPWQFm/vX+g8EYCYKl/gl1sjWL14AomX4qxeDa8fRFTa8X
rD/wTn75fJnxCZ6QQ+PvBFZDQ2G1sPSCG2Q/iSUYa0Ko7JDMu5NgdeAJlDARN0HU
wnW33NJ6V1fTD/qscWMsGqK+MVVBq6psL7/GREnvdwnqZ4u42smzh+zab8SDo0xd
lT0Qok+pACeG2YzrEvGYElJpc46h+Ooaccgzm3vXMrJq4P/dK0Gn/e5Siq+okj8U
UOus+gsojl58/ZEobu+LTPUh4NKo9AdEB5H9Bnkz/9+lmyXc/kWs8hRUZ9aQlLTF
YtO2xcBX
=Zy66
-----END PGP SIGNATURE-----

--h7dv7tjs5edeqagw--

--===============1041297321299956166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1041297321299956166==--
