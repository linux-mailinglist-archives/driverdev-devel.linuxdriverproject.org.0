Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE83224A16
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 11:17:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4593D204C1;
	Sat, 18 Jul 2020 09:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LQacRcPzAQPR; Sat, 18 Jul 2020 09:17:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7759620498;
	Sat, 18 Jul 2020 09:17:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A7901BF5F5
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 09:17:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 62B2A87EDB
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 09:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F+2U9dyTKYCW for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 09:17:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0E9AD87ED2
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 09:17:46 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id e8so7842410pgc.5
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 02:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=dPpR8M5iZHHlhAhtQMCfYZIYY4QgLTvQ7b9UaLMulFA=;
 b=Gf7N3quaKvxXNjE4IJH5DUM904x4OWIim1UTAiHGOnKrZo1QDsaLrUlubsPLNEQTOs
 1C7MVRmMa5A+Twpj3+h7dJuh5WSYm6sWZfYlE1ZvJd3IWOYmA4V18iKDVik1IAwO1ks1
 sB267DIK4h2GnEiyHtCNfOqfRbrsPJLOaaPRGQO++0K0JiIEimPOEQToCE8RZeZ4U0ye
 Lr9H3hFeOwQrnF9XMbhQiEmeClH96S0EgsyLRJh46uiB4h3BmI7E7hV8abuudTm0lRdE
 6I/4JP3q7CDm0BJ17z177MkraHN/uLLxRp07Lf6E4TYPaNWXq+DFRP4URIpwD2oKG/VR
 dbFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=dPpR8M5iZHHlhAhtQMCfYZIYY4QgLTvQ7b9UaLMulFA=;
 b=fT35Rm/JI26zdXBZqLbq0l6C28ntwvGpl1JW+YFV27yzXHIWUKMfC7078RsgoLyi3x
 e2kur5XN3nwkT0ZDZi1pA41erBRzmLDfznu6znV09USAAsRa8rOjwCMFRhWksyHLTrKN
 tOoGOeaY9va7hdwnH0wMkIFJwlR9YUm5x46XkB8JPysUhoAGBx20Vh5uAE8zozvGVUdh
 zWC+Y/30IWty3Cpn77JBlIJB97KdvMTqFoNJZXODzIawp117RJ8KWv2rcO6o9Jp4xlKV
 RJgzqcJtn/viY+niHowuccA6KrslyvLHI0hgADjmcHPuHz4W1PFZxyV+7kWXEFrI039E
 lGQg==
X-Gm-Message-State: AOAM530cMPtrmFKIVPl2+LO55Bi816g845FHn3qHl/1oBSD207Oj50dT
 QnFpz3H+Li7ygnKgV66PC7Y69Q==
X-Google-Smtp-Source: ABdhPJzWNj2+FsQiyHogMgKzYgJZla4S93f86nHKs2TwDQLTcKKRVIPW6LJ7ACe1X9VN/m1Y1ygSfg==
X-Received: by 2002:a63:8c4a:: with SMTP id q10mr11994522pgn.431.1595063866411; 
 Sat, 18 Jul 2020 02:17:46 -0700 (PDT)
Received: from localhost ([2406:7400:73:207:8b43:3062:877d:c647])
 by smtp.gmail.com with ESMTPSA id s22sm9525830pgv.43.2020.07.18.02.17.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jul 2020 02:17:45 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Sat, 18 Jul 2020 05:17:40 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] staging: rtl8188eu: include: enclosed macros in do-while
 loops
Message-ID: <20200718091740.mzinnyks5tjafowm@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============3607914999853847733=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3607914999853847733==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7gh2egzqcljdzn7p"
Content-Disposition: inline


--7gh2egzqcljdzn7p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

enclosed macros starting with if inside do-while loops to
avoid possible if-else logic defects

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8188eu/include/odm_debug.h | 28 +++++++++++--------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/odm_debug.h b/drivers/stagin=
g/rtl8188eu/include/odm_debug.h
index 857c64b8d2f4..c7a928d396b0 100644
--- a/drivers/staging/rtl8188eu/include/odm_debug.h
+++ b/drivers/staging/rtl8188eu/include/odm_debug.h
@@ -76,20 +76,24 @@
 #endif
=20
 #define ODM_RT_TRACE(pDM_Odm, comp, level, fmt)				\
-	if (((comp) & pDM_Odm->DebugComponents) &&			\
-	    (level <=3D pDM_Odm->DebugLevel)) {				\
-		pr_info("[ODM-8188E] ");				\
-		RT_PRINTK fmt;						\
-	}
+	do {
+		if (((comp) & pDM_Odm->DebugComponents) &&			\
+			(level <=3D pDM_Odm->DebugLevel)) {			\
+			pr_info("[ODM-8188E] ");				\
+			RT_PRINTK fmt;						\
+		}
+	} while (0)
=20
 #define ODM_RT_ASSERT(pDM_Odm, expr, fmt)				\
-	if (!(expr)) {							\
-		pr_info("Assertion failed! %s at ......\n", #expr);	\
-		pr_info("      ......%s,%s,line=3D%d\n", __FILE__,	\
-			__func__, __LINE__);				\
-		RT_PRINTK fmt;						\
-		ASSERT(false);						\
-	}
+	do {
+		if (!(expr)) {							\
+			pr_info("Assertion failed! %s at ......\n", #expr);	\
+			pr_info("      ......%s,%s,line=3D%d\n", __FILE__,	\
+				__func__, __LINE__);				\
+			RT_PRINTK fmt;						\
+			ASSERT(false);						\
+		}
+	} while (0)
=20
 void ODM_InitDebugSetting(struct odm_dm_struct *pDM_Odm);
=20
--=20
2.20.1


--7gh2egzqcljdzn7p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl8SvjQACgkQ471Q5AHe
Z2qt7AwAqyyxs0GY+J+0HsnO0XAp6PNIVdb506/UI/umTX12rlVBwRSmmjPvB5O3
0LVTMxsp7N25Ds1KFPVr7mxttARjVTG8BusnYRGHhzk0u/56pGEWLxZqow5yVgfl
lxE6zFBwts467ho8YtbG5pMCZBsrH83bIBvwjXuXT7Ru8mlt2HuvcVxfD7QL9zLQ
Y/9cM62zrJWxYL+FAYdpiYe9Zcn6q+850l/uwuvY2hYce5Y329rSDes44MfDouI0
qe+n9gYmCFog8VTpDeRgWzWKddS90FfqbFrG/DPEV8VG043JvBbeq4Q9Whok7Eh7
eMP7ejNiV/XlFSHGBDn/cmWhAUfcvTVjlYY1En4FQKdLDopUbcYB8YclBgKEFWUd
3TEKsByunnAYeZKLHwJGc4hp/CdiTLarh/NZG7jTvSNkZLho9IlKc1ISZhQIg+6R
EYthXze0BtjTgYWR4xPrVboiRfPtmISA2+zEgFHvmlNRdNwV5VwAd+DC7oH4h677
kUKAqkpA
=Hygm
-----END PGP SIGNATURE-----

--7gh2egzqcljdzn7p--

--===============3607914999853847733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3607914999853847733==--
