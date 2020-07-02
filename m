Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F68B211B3D
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 06:50:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 68A4825E5B;
	Thu,  2 Jul 2020 04:50:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lvK0xcPxjKCO; Thu,  2 Jul 2020 04:50:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9FAA623340;
	Thu,  2 Jul 2020 04:50:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF78C1BF59C
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BC7E489EE9
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6Oyn4-5oUTN for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 04:50:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7B879895ED
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 04:50:13 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id cv18so5975433pjb.1
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 21:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=F6LmeZX+6/twUDfqjCU4/+RVNpb2JuA2WcOC1ESyj6M=;
 b=RpxYDqlaOg+aSsozjdEH7TQfJZAZ7oKftHWfuxeffKsxYulJ4iEsGsetssji0IFCWG
 /eJO3DqsNCPVlsX6A771WSE0FkGM2pTwP9l6HhqEegFWErxXjuDHnHgmU1rJRhYn3WSV
 FgFeynLee6MaVCHNzoCM82jlqbnqv6LGQAczZ3FJJkmawahIfFFzq9ahnLyZckCx3eO+
 +VJkl684m9o4DqxjzYoqzkh+6bFFQePdr7gOpFQQSjk46VSZzhSbF/HI9981AcAjdk3j
 hrdEFlVlmylgQ06nTVqF3Bf6i2t7hcWCP0FQSSRegAd3fwVKPIZeYJCs8CVWWN0TQn8H
 5OeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=F6LmeZX+6/twUDfqjCU4/+RVNpb2JuA2WcOC1ESyj6M=;
 b=T3iqoxOBPjdlKDZzpGbBxdKzeqCJzEESw2lYJvFCaaXB6rC5qQYx0FBASelzcREAa/
 WnuvVB1AAvdR4TM4yQlyH+2x8Ktx99VaSKzXaKrNG1sNUtfZaOeab86cOeFWyDrx9L92
 ujYx7YqNF9QbxYULIYwS8SRZnbgKR9MZCvVgRTJeNOUlCNK/GxmWomfmokhRNOoTnxpG
 U1Hufd4ckYvhQFIQRQ1wFLidbs7aKF653hSvvWWJJo70/hciyH6WWutCPBQmEjjdj2pk
 H2PumhxNkEqSAOmNYNP7gOQRU/NYx/Q+Oa1fPhJJHYnUWYH1dN9vlQBcKTmb7Ait/weL
 xEWw==
X-Gm-Message-State: AOAM530NtzEkhWXpFfBXPN7ZnChW6GbVKVa+61ueWcj3fWZQm3GP3qVU
 DRqnqwMm/MI6csEFyo1falgHvg==
X-Google-Smtp-Source: ABdhPJw/dn0+RNR+K+qxXnTc0cST1WTsW5nKfm6ePohk8OsZskJJix5DKMHIdYwJwJgsb5nitMHv1g==
X-Received: by 2002:a17:90a:3a81:: with SMTP id
 b1mr25434275pjc.217.1593665412996; 
 Wed, 01 Jul 2020 21:50:12 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id l9sm6119303pjy.2.2020.07.01.21.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 21:50:12 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 00:50:04 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: include: rtw_cmd.h: fixed a blank space
 coding style issue.
Message-ID: <20200702045004.5wp7fnzw5pg4yov5@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============7941272985381001112=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7941272985381001112==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zygqjcf6nxczcpxr"
Content-Disposition: inline


--zygqjcf6nxczcpxr
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


--zygqjcf6nxczcpxr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79Z3wACgkQ471Q5AHe
Z2o58gwAg8Y6R1M+CQCan4VuSvGWvCvzR4lR/I2qDwvNYyK0oKRvch/PWcYex/cz
xaSHE4YHRJONZAbtkNM+twahIBfysdb2ZoHzKsQnSOa3oSmMpP6E5jsmi9yAfNJO
IgwqnU3bYNGr2ocA8tSLsq+MhbcdKy9ftu1GL7+bzdpUlmVb/muWZiRewq2CBjkE
CnNUFEemCpBOn5bORWNepScnl5siOzXBWOlxM8nt1t+XDs9qtSsYXLoTNNnaiL9u
YZ/I6NM6jMha7g44mO1+QxXZMbEtN3GAuqr+BF2kxaWo5y20W5ABPhNOU6CDrl2c
pC5BHmrEuSb8U4kiWtfGAyXOAKbdByKiOSFkjjgkJ5vRWxPWKXnfr/vWHJ4MILTU
Ydh+6v6cw4wygnTr8TClx64q/FyBHk4CE1VhGDTT+bg2SpgHLXxZRqvaxu1wJen2
D0c2Wf1k1p48ZEMFS7IBOuQ3H586BQQ7jZh0hYcBPJJj1MSlSqyP0WdU24MSvLai
rO+rrgcX
=x9Gc
-----END PGP SIGNATURE-----

--zygqjcf6nxczcpxr--

--===============7941272985381001112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7941272985381001112==--
