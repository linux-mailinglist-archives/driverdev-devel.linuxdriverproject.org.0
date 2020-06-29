Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A3720CD26
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 10:08:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E9248757C;
	Mon, 29 Jun 2020 08:08:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TIjny72gyD1; Mon, 29 Jun 2020 08:08:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7899187560;
	Mon, 29 Jun 2020 08:07:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 087761BF2C0
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0526A8937B
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Hs9Qkk2DAyW for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 08:07:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5B32089005
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 08:07:55 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id d6so7693459pjs.3
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 01:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=OXfEAC8m7WsWKLpZr4RzDGbNAcYuuq3MdYSLZ6OlkGQ=;
 b=pOimQYiak1CbHv7d59idxDYghN9l3G41PcKqfxGsTfgpSIyxG5bc/7aq0zT/8EvPeg
 3WOVfr4BbAciS6IYJBubYgbglqDpFERjl3Wl6bg26bjYaNOSlNQeR4AmjHwQd+9GQt/C
 jgxzDtTZ7Hhb1+K5YI1ZhURetiPSEU0pdNEGmQCfHWsIfXTM2c42q88OmkMzLzsvMODM
 dDrvvtv7ewkFnHse3xS34IDEZqKUWdrKgctWslz1Yxzreg9yly1Z2Sfdk2da8yb2qdEn
 I850t9J/guTuiDkuwX8LnGsBDrWHDkns0XP2a0AmPABHqBQD7EVY9ARZsDLGjK/WZ9+4
 cd4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=OXfEAC8m7WsWKLpZr4RzDGbNAcYuuq3MdYSLZ6OlkGQ=;
 b=miNI8ViPquPFdwlG+9h4RhvsO1KNLin1Hl9GCYlgXiEQe7wwx97/0KCzT9Z7OJQr9x
 JhiZw/SpKUMo2LeIEeNV42q6r1cSAyXsUsT5nNC0eG+Xny28c87M5NabTxqPdrB7nQl0
 bCwaRPFJlhHiNDRA4rme8Cq9DeEfvWNWE0N3MJHBSvmRHVnNfRexHs3p3FXg/Gqfth4w
 KycTKgbZ8o9ZjsYVfa/5SOG5GYZFwtl6iwLiXZJjl6xCSDRz3EeNRZuYZFMn4Rfw07yJ
 nsS0u746l3zXzNWDfSQZYhpCYD5jkzSMBT6Dfn2CBsBdMeZSb9aA7a47NHuOhc27JbeR
 kn4Q==
X-Gm-Message-State: AOAM532EukANryWFE3wa/K0THi6Gf2ghR8p6dLwkain464R2Cg/dSXQ7
 xc/jVgWHWY6/4VepBFGD1L58mg==
X-Google-Smtp-Source: ABdhPJxie99acwKP/77ZGxBZ2fXE0poRQF3nOSrZU7/tjM6WDJBL6sJEiEgmxDiYhMEZmiuSZA2KTQ==
X-Received: by 2002:a17:90b:1103:: with SMTP id
 gi3mr16296490pjb.110.1593418074892; 
 Mon, 29 Jun 2020 01:07:54 -0700 (PDT)
Received: from localhost ([2406:7400:73:703c:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id s12sm3410494pgp.54.2020.06.29.01.07.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 01:07:53 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Mon, 29 Jun 2020 04:07:48 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: include: odm.h: fixed a blank space
 coding style issue.
Message-ID: <20200629080748.l4ufcpuk4cg2m725@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============7514087675332677980=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7514087675332677980==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ky3s2llo3bsba3pz"
Content-Disposition: inline


--ky3s2llo3bsba3pz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

added blank space and enclosed a complex valued macro within parentheses for improved code readability.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8188eu/include/odm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/include/odm.h b/drivers/staging/rtl8188eu/include/odm.h
index 9d39fe13626a..27bffc2ead66 100644
--- a/drivers/staging/rtl8188eu/include/odm.h
+++ b/drivers/staging/rtl8188eu/include/odm.h
@@ -244,7 +244,7 @@ struct odm_rate_adapt {

 #define AVG_THERMAL_NUM		8
 #define IQK_Matrix_REG_NUM	8
-#define IQK_Matrix_Settings_NUM	1+24+21
+#define IQK_Matrix_Settings_NUM	(1 + 24 + 21)

 #define	DM_Type_ByFWi		0
 #define	DM_Type_ByDriver	1
--
2.20.1


--ky3s2llo3bsba3pz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl75oVQACgkQ471Q5AHe
Z2qxIwv6A7R+6jcIxfrGZmDNs1aGiG271nP9bJyOcZS3Trkc4IAghcVyMsLkQ6UE
B7Zm32o/NMawi7DNQKowf9kMM2crNKY1vDQgxVm38zlJPjLl/QuSL2OQf9QiGw8h
vYghWNcxiMJAqdEfXJh92KLFqzNh8Kru7CQ3DLE2XDSMDx9ohXjqRmciUL4cfj7H
2r6PC8a1iPBKC42wC1zYu+RNhCCRgNSFRntYbdfz/wfJsFulH3Gw1X3vFa6YIVaC
NRRvpsM6hR/gDAEGe1YoZ9VDQy5/8BKuoIa/DNbQ0zJsSE2cVFpYqLquI0nSGu1u
DFpjyj7rZNAHdd3Vp7CXI3msFRkUHinXGww6SZfd7morZV+7+jzDEXjnX4rMwaXh
hjLE7LrB5l7IBIL5vgbSymptwTqc0coUaW0vFEjiWoWN/FUIP+Diml+FhUkUgFi6
4rHopvniFo2/7Lz9T0cIgEwMvoGwPxB+DUB6Av0MH2xoz7SO3Kao2U9P1eXJpLnk
doyI6Kvx
=SdWm
-----END PGP SIGNATURE-----

--ky3s2llo3bsba3pz--

--===============7514087675332677980==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7514087675332677980==--
