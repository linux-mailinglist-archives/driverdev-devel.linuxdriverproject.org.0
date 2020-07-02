Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42730211B3E
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 06:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B27D89AB6;
	Thu,  2 Jul 2020 04:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uxMoJfR6KXJx; Thu,  2 Jul 2020 04:51:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD3DA899B2;
	Thu,  2 Jul 2020 04:51:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 177AE1BF59C
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:51:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1472A8856F
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:51:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NbpXeZd7mnXe for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 04:51:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6CC3F8855F
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 04:51:31 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id m22so2481339pgv.9
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 21:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=/YARYDgAoocQGIiJPdXQ/OBNzg9SVquA525nyFPetjI=;
 b=RTgR1R4pF0FKxBMUiO1ySajqUMjzwSomk7BeRnUlSAheR8sN1yghpi81c7QzAPi30S
 Cd2RmKtaz1EAHX928beEqY8698DBkIlTm2d57H/jz+09SFQRZjqSqegfpIeMkrBc02J5
 4l2oLR8Vzl733jEo0n66VgSt6BHqpX0gTOWQyWroO5eocilGBNUjVV0k9z73iCmB1opi
 aC2bUeo3vIBOSQfgKiB2ixtz38ZfYEnkngbjD4S3Ei1vTRGufTAbIuRpjNV+ppWyT5fn
 W67O7zmu8DxPmnMFWrDKgh3+L1D4/Huhbp3sj/PNp6aT7/jqy4p4OBpM+u7XUdJdIsEk
 pA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=/YARYDgAoocQGIiJPdXQ/OBNzg9SVquA525nyFPetjI=;
 b=bugo26uPiBsv7nbceMl2JAIoVV6IET6Cw40V0eCG9+z/kMTDB0ibgWzmT4lk1zdl2Q
 7cnom0pNmwrmEZ2VP4BhLHr1vmCFSM9d/VjT4a7nMOsJwy68tsmDN0CctaFr8EbRrC8N
 /+KP5mMX97qe8jes5dBbuCYhtnBIM83doRv77GRocw4Kyndz8c0GAtD51KNfb9q+M47u
 WG93YbI9yBTTj9ggjZcdkxq8hKuuxnPPefDDZRszVJrmGNihZR03uwVmWkgIjwYLbKaZ
 DrSsYZ2QaisJ+5dJIHs1JqfvRJ3YyALXU9R6O0q58f+EJnWk1tJte5vxTa8oz9v/u+uN
 FJzA==
X-Gm-Message-State: AOAM531U2kcBRbtkAMu5y1HGoMMKJTmUhRZ+Cp15D03M4EelhvK8X9lq
 XgagQSBGXW8JTDOS6DfWfRxu0w==
X-Google-Smtp-Source: ABdhPJxPTZPC3w/d59Fp37ZizB8i5GBUp8REhCRxOQW8S18y3Z2Rbc7ie3Ym+iWR58XPlJoEGQBCoA==
X-Received: by 2002:a62:cf07:: with SMTP id b7mr25710527pfg.33.1593665490994; 
 Wed, 01 Jul 2020 21:51:30 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id br9sm6310418pjb.56.2020.07.01.21.51.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 21:51:30 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 00:51:22 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: rtl8188eu: include: rtw_pwrctrl.h: fixed
 multiple parentheses coding style issues.
Message-ID: <20200702045122.xysl7ctdke6wxedz@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============4152282961254739565=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4152282961254739565==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ks6c27hjdea646tv"
Content-Disposition: inline


--ks6c27hjdea646tv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

add parentheses since complex valued macros must be enclosed within parentheses.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
index 404634999e35..c89328142731 100644
--- a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
@@ -84,7 +84,7 @@ struct reportpwrstate_parm {
 	unsigned short rsvd;
 };

-#define LPS_DELAY_TIME	1*HZ /*  1 sec */
+#define LPS_DELAY_TIME	(i*HZ) /*  1 sec */

 #define EXE_PWR_NONE	0x01
 #define EXE_PWR_IPS		0x02
@@ -201,7 +201,7 @@ struct pwrctrl_priv {
 };

 #define rtw_get_ips_mode_req(pwrctrlpriv) \
-	(pwrctrlpriv)->ips_mode_req
+	((pwrctrlpriv)->ips_mode_req)

 #define rtw_ips_mode_req(pwrctrlpriv, ips_mode) \
 	((pwrctrlpriv)->ips_mode_req = (ips_mode))
--
2.20.1


--ks6c27hjdea646tv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79Z8oACgkQ471Q5AHe
Z2oL3Qv/Y9lIZMUuMYffWsvo/dS/mAzAgBEYtZmXv8NFysaG6SLLXr5euK0SRAtT
u5sziSw40waWJfp4O/DYMiTshprA8tTojvCjoSZP+jdLj/H/aduVAalCRvF8oCNU
ASaEip5GZUcFYKhFVEa/9qfjUd3gbZBEBuWpJhDyC3jx6cxeX+d7RKseKApNbF7j
aE7uXtGaZY14l8b0QPJWXbzN7aqVEIwkJujJKR6/0rLDxYtXD5GVYpW3+mTF103c
e9L3yGZCn/PMMnoE2eTB4oEXZhJWmcOj2lKVa17V0+ZFdkytmxhofxlYBfgRVUSR
yUI6keUD2Y3nO1Eh/xdCuxnCBFzl/sPk4ylYZLMn5RqI/icpNfhcuzCv/FsdkdHo
nLMHg/+TgyVFPDpj9uRSAQ8Nuuk17h/PE3fhgK3BklT+vcosH8YI2NKmN0MtEZkY
7Y3E8YJ+Rr5wG8KIER14sm6d721DGlJxjacCOVJu7jbTQtr/Y4sg7xD7mrjH7PZz
IR5raRTj
=fmwW
-----END PGP SIGNATURE-----

--ks6c27hjdea646tv--

--===============4152282961254739565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4152282961254739565==--
