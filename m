Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A6E211B41
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 06:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BC4A88AE0;
	Thu,  2 Jul 2020 04:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E6Ek8VxELIuE; Thu,  2 Jul 2020 04:52:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25B7688AEC;
	Thu,  2 Jul 2020 04:52:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F0DE71BF59C
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EDD1088AEC
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id noFKfLwwSD5B for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 04:52:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7662188AE0
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 04:52:38 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id d4so12855423pgk.4
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 21:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=D0fzDV6d+DhPIhu1xk99/I6s73Vn8AZolXIwVAG94/I=;
 b=DpFxI1yMZ5vpr2aIVjRL5vJJibjCGstgiWvQVYYAyB7eD5YmXwLQbZBJkCuOwSX2ES
 RFxnu0ea3uYGamC4DEIjEgsuuCLa/chiJrzJk60Seym9cPOXmd/fbn6HN8ZK/lxoAJWn
 GBhvO9kCfund8cY0pHKQIFm/5FIfv5vAE07p/ApdPIoo0C3iN+3RgnCbKGndfqr6TRcz
 rWtmBA8Dre/lB2ICQEI3Dl7lEGkynvsPTKmMLS+lci0/QZKcQK6IjNOeMyEQ40WM8SN8
 OmErpL71CHaCHcFD/HLeH0wxyhtRgk0pwwG3voi252SQ5ybZBFMagKw65C4qX2Qe7WaD
 sVRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=D0fzDV6d+DhPIhu1xk99/I6s73Vn8AZolXIwVAG94/I=;
 b=Aev461JM5iqDaKlnoHK6Y0CLpuam5IjuAI6Lre+rj9wzCBT53cYrou2jOLYCp1F8iI
 tZ/9rLwny+LDQ+mOPuIFzeyzx31Yx3RjkR4eepRgAfKJlnrwif7nDg1p0krnRYk2jNC2
 +6s6ngbSRDFJIlhk0QnyY53Li/y4JPJrWZzPSE3j8E7BuSsOFGjoOT0DttZNMG2IBNrb
 fxleaEx7GLHbeLUBSDWl8DI9LgSVHLKbUvxUNCqGZFU8WvB4Rn+/R/eJCe3G7mH1D/3P
 dXha/N5u05K2pxigCQvlr6oDpE6uxnS0raT+sN98W+P7ZwErqWbvF5LD2zoht503JtHn
 hLeQ==
X-Gm-Message-State: AOAM533U3OhKSkOT17t14IK4yquKGeh7WagHjTTf0fputxyfoqwZnNsd
 4Q46amZWggPeSDSbBb8Qx1oEPdruPlU=
X-Google-Smtp-Source: ABdhPJxVQHjRzTxGnZbx7lJlBX54b771nynXfP+KSK8qEd1f/DaP7MFu/QkkDf9fTBp6+tcIgjN4ag==
X-Received: by 2002:a63:3c09:: with SMTP id j9mr21042092pga.206.1593665557996; 
 Wed, 01 Jul 2020 21:52:37 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id x10sm7553820pfp.80.2020.07.01.21.52.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 21:52:37 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 00:52:29 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] staging: rtl8188eu: include: rtw_pwrctrl.h: fixed a
 blank space coding style issue.
Message-ID: <20200702045229.4qvoictqtyq7pgds@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============8647849289327739339=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8647849289327739339==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vaenm4hzlcnpktmd"
Content-Disposition: inline


--vaenm4hzlcnpktmd
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


--vaenm4hzlcnpktmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79aA0ACgkQ471Q5AHe
Z2qE8gv9HdNyih+caQXARUv5pkIbZDt+E4h30rUcBr6EeWSuYb2Ks5EGshaL3kaW
3VbCCmQBdcDyGUWadrKokOwml9A4PP4vTccV183NFfYP0gW/tlzG+aJDt+pu4BaB
Ho8+OeHY1mN2guLIUSdIxZJsQMuYNHA6UciZp32mALByyL2YvuSiDOx0XoNTCVa1
Q+8jTOnDF2BPzyBogPhE11meJvp1q6wIGDIi9WCPqGhrvN42OvQ10ugZ552IR/Ez
D5cSsviIUwffsehR3kRDikSL+DFVKucYAiGTHmfCEpMgBlkWp4v+jaGhT3VaeXha
QNQtOJyN8KW0anEE84Uoxqa+pWawczs1K1rW+I2v10CPgkL8ap843vi2RmzffKkF
6yTFOHf+L7Op2/03yApscLNFoqMPnByxll/hq4d9/Ds48UUuyoexSankOCD/4HUc
4g+gDinO/+NX7VJsKoJItng4P8K28A1braBgPa1MBZCbB1bpK6wHUkJBqhMbdh4g
oqpCwrz0
=/B2n
-----END PGP SIGNATURE-----

--vaenm4hzlcnpktmd--

--===============8647849289327739339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8647849289327739339==--
