Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1D1211B4F
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 07:00:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A86E8A5C8;
	Thu,  2 Jul 2020 05:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id asxmHtT1Sk3F; Thu,  2 Jul 2020 05:00:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05A3A8A5B5;
	Thu,  2 Jul 2020 05:00:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F6981BF27F
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 05:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 77DE08A597
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 05:00:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J2B51O-BHA3q for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 05:00:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E60BD8A593
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 05:00:00 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id o1so4238854plk.1
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 22:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Pr1sEuloYTO3PoNym4dRyjYz9qutOl3oSwCRaMr1Qxg=;
 b=pFEIifpaBqZWHvwxUpSwh0W7TzHeaTDCSDtJ1ae/lb5eGHqX1AJ2pV1Jd8FVaA0Yiq
 m5OamhhubkR0o08wref97YKddAjP/s2+5FLM3seKRDDCgUnpuVOJz6Hwg1G8B03D7zIW
 5ildj3m+L/5NVN6lUl35/M5TiytE5eXxlnNEm/bdVCLtKTBSR1AKrI9jYNrWAhGXkbhF
 YLBuVJMXWb01NSDVWD0KVUL88hZ/ordoGNOIu/IEbJbCaDOibE+2Emx2jzLQX0jZd/Ie
 DwGwPugNG1JQnD4EP8Ye1OC6AhfrOi0Bdbfx2tS5AYZRU/pkq9W5ezwx3SXCiM8WEt+9
 knFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Pr1sEuloYTO3PoNym4dRyjYz9qutOl3oSwCRaMr1Qxg=;
 b=Idhd8JEvY7//6tWapwmj9tKgrAWCP9dE9PwXM+sEzU5Ga2XDBOTZ/cFrGGu1f1MKVQ
 5jcq7x1u4Cb3B8tJHJwS4Z1k5tDVwrblSoaEvdngfxoIBMtGcWwK5od5eSUJqoc7N/aC
 yBCR/V1VPxKDmymvrnz8wGjAnPOrwxNGPcLpxSZ8difgMvtwcwybfH35fHWQtZKhsbYZ
 7BLk+JxAx9sEwY4v8nrbMMH05G1hZ6+nTZwUrcpnorHn2jivlCXNUyCGPm62izTmhUW8
 UfXhieHvRzqswP5ERq0BZ1pAuaNTE+3gTQ8ACa65Rx38wvAIky+oalj/SSFBkWp9GdVK
 nTFA==
X-Gm-Message-State: AOAM533+V2rrjt3ae+xBzTrLhcsDT3YfHvbHkeOMjAN4l5pp1CrHI4Rm
 7xLP1sHruWyD2sGuyaDBJmrSYA==
X-Google-Smtp-Source: ABdhPJxJeD/qSJ2W5mN0WChKiANAnBgmITS+BdwTUUmTkLuh2e9SYjdr2/DSRzrng1kbTqu6gbjzNQ==
X-Received: by 2002:a17:902:8f83:: with SMTP id
 z3mr24313007plo.203.1593666000448; 
 Wed, 01 Jul 2020 22:00:00 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id h17sm6936442pgv.41.2020.07.01.21.59.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 21:59:59 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 00:59:52 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] staging: rtl8188eu: include: rtw_pwrctrl.h: fixed a
 blank space coding style issue.
Message-ID: <20200702045952.upb3aroqvyo5o7u5@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============1329082561161186989=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1329082561161186989==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="arxmo2od4a4upx6r"
Content-Disposition: inline


--arxmo2od4a4upx6r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

add blank spaces to improve code readability.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
index c89328142731..b4cf0f1ce6d3 100644
--- a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
@@ -84,7 +84,7 @@ struct reportpwrstate_parm {
	unsigned short rsvd;
 };

-#define LPS_DELAY_TIME	(1*HZ) /*  1 sec */
+#define LPS_DELAY_TIME	(1 * HZ) /*  1 sec */

 #define EXE_PWR_NONE	0x01
 #define EXE_PWR_IPS		0x02
--
2.20.1


--arxmo2od4a4upx6r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79accACgkQ471Q5AHe
Z2o9iAwAivoR5wWeV+tLwLnB+bL8rRMzoLHOVGGCMl32HWYU7W6i4djQ37CoQQtY
YknQEGY/1LojpxrqhyBcWmjfa9GE/ULREas/UClYmbxroG6ifuOwT7EFfWUkWSDy
0/nvwMyGQRr+2wxLE+4i0nmIb/oWIaTaCKSIHKFl0pVPMlS0lEDhjp8eE4j4S+m/
35waq0gwHTNEEw1H0cYF2NYKzLtrJ5xHaZw9OvAu6C+7p0FpkcALAsFQ3r2sIRY0
q1M/2obqlTkuawy47jsnPgevEknqR/eNvS+ndavVCZPDeYDdVeuPBfSNjacbNPJW
af5Ijhsl0uSYHFifkfbBx/x2pKnyWWsfHi6fOvHpn9W7oJPA41JzIDeT1Q62j4IT
RuWgzhi2ZH09hmQdhbbzX9xMVb0anadH8D/C6aJryKImMIkb/N08VzgUQsjvOzSg
a0Dl3Ui6AvhohVUrg62YYOniGLhMRFJ0+e4f+TP0W7HSyi6RV4w7VKuNLM7HONY/
5bWho8XF
=nlZX
-----END PGP SIGNATURE-----

--arxmo2od4a4upx6r--

--===============1329082561161186989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1329082561161186989==--
