Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD3E2121FD
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 13:18:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1A93727344;
	Thu,  2 Jul 2020 11:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0k+FMOF6YlPl; Thu,  2 Jul 2020 11:18:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EB44227469;
	Thu,  2 Jul 2020 11:18:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9B3F1BF59B
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 11:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CF3EB26EF8
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 11:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P21a-eMUregt for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 11:18:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 007AF26BD5
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 11:18:31 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id j1so12410561pfe.4
 for <devel@driverdev.osuosl.org>; Thu, 02 Jul 2020 04:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=hpv92noNXKFQIELCQobv5aGCxAJ2KsOj9UAoixtSt6c=;
 b=X2XS2kqy/bZIyOyu1ULA/H+QtfgfiMDyKEjsIahG+lHzJ6q/B5q4ZANbPgDuV7lNRm
 I1h5lL4PqjnF5tKD304rVXRptyus1gzSwccHT+ImHIn09zB/bLT0Re7LzC0QD7yNHOKi
 VaPizAN5JgXCUzsmJV+0USOOcMJGcaaMkmEhp5/h1sa4iYsBIn9bvXhYZXg+QhaLwrD2
 1CJcbqNa+VOrpHkKfkdbPmEJZ5QosoQFQsZvV9cKmIrtT5QOk2/lBJGynRAkC8VChEPE
 g8cjqTN4Nemxa4Td2TOaGqc+y4pJvKxNRnj++6HhcweJSqksDHctQyXhiECVsMtL+7Gs
 bm6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=hpv92noNXKFQIELCQobv5aGCxAJ2KsOj9UAoixtSt6c=;
 b=ehbbFZUs3CsjbxLhButlFXNVy2//MqQM9nO46zCWoy4GJCYSRlqIxU9nOBP+xwkveL
 EaSb8luD5HNMHq0oKQZfpyWcaqbt5XBQw5vInNdKN9Gnxyp38+97DWyifVOmDBfu8tEY
 Ig3yXyZb6MEhAIJi+F1OXg3MRLAjsU4Bb4LtBqfU/cfYx2+dOam6Mw0kKxeCeOPU18C7
 C2FWejDIk3bmgIJQvLhMGs5rW5puMwO3XPby/1tBQltPXxFViih3jYyFYcQ+8xBNVK32
 rCZK/t4lD34AaB4s/xbD8/he751irrAI9zolgXHvRft5FvlSWJg2F8eW4gAFj1zLw7Vh
 DP3w==
X-Gm-Message-State: AOAM530BpPoTS+JFaaOxQlN7+ZWvoqEoXgtxYCgxpi+JSydwFWBh1tmI
 +Xj25ZvdPcSYoWrnqa3osw5rhQ==
X-Google-Smtp-Source: ABdhPJyUJQcGKm9KgClqnWTupG+/Bs3x9/Q2gimX0+YV6o5xHjuThoNrYM7Iv2Vy1pVRMEEth0kUJg==
X-Received: by 2002:a65:640c:: with SMTP id a12mr23929517pgv.88.1593688711513; 
 Thu, 02 Jul 2020 04:18:31 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id 4sm8637361pgk.68.2020.07.02.04.18.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 04:18:30 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 07:18:23 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: include: rtw_cmd.h: fixed a blank space
 coding style issue.
Message-ID: <20200702111823.hzvtrmag62plph5m@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============3854736026151878015=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3854736026151878015==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cotxqrvu6kfbsmy5"
Content-Disposition: inline


--cotxqrvu6kfbsmy5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

add blank spaces for improved code readability.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8188eu/include/rtw_cmd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_cmd.h b/drivers/staging/rtl8188eu/include/rtw_cmd.h
index fa5e212fc9e0..002a797c6d0a 100644
--- a/drivers/staging/rtl8188eu/include/rtw_cmd.h
+++ b/drivers/staging/rtl8188eu/include/rtw_cmd.h
@@ -115,7 +115,7 @@ struct	setopmode_parm {
  */

 #define RTW_SSID_SCAN_AMOUNT 9 /*  for WEXT_CSCAN_AMOUNT 9 */
-#define RTW_CHANNEL_SCAN_AMOUNT (14+37)
+#define RTW_CHANNEL_SCAN_AMOUNT (14 + 37)
 struct sitesurvey_parm {
 	int scan_mode;	/* active: 1, passive: 0 */
 	u8 ssid_num;
--
2.20.1


--cotxqrvu6kfbsmy5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79wn4ACgkQ471Q5AHe
Z2r1CQv8C2v6LH61YRDS0MeO1cNSBKoSjWzYL6gleqHuL0QLkCu9rCA1gdVjyk3L
ji2xAMrLnlqU6jh64b8933Xcj1030X5hkbVFHBrdYzxldhNw2lqpWfLxnXn+7N53
kDgjj0WFDVxZpRFpxdmwMYZ/xlg38X2p+4YNal34JUaIFmML3GyjikWZL5k6Q9c8
NsiYKFtQbF7J3BLv0giXi5IkBYb0zEmNhTv/AjBKeokhLNE6eA0q4+RpvB2bEu1K
vSqT74C/RZkyovnLG+v0C+uxLuhS9WeaUBUQk+AurO+HRmM2NIZONkVqxtgPuIzk
FBSFbtWXsd7X7y7dGG+8vU8aebZK1wGIplBj6SNu8520uCziK7zoJz7eCV5p4oUp
Iy3OnC6yRBWXwWURZTg8/XILiIR9KWuOB9/V/4YaiL7YumGu6XkMN00LtRK/t3/p
hYgk7ISq96yrnmOW1JxJdx59vfG1Uana0Ta63XXsHq1NvBSAIRkmpZFB3YXcbI5L
J9WhLaX3
=kgxc
-----END PGP SIGNATURE-----

--cotxqrvu6kfbsmy5--

--===============3854736026151878015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3854736026151878015==--
