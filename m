Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E31212219
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 13:22:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E08108B142;
	Thu,  2 Jul 2020 11:22:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JAYTeP1mnZTA; Thu,  2 Jul 2020 11:22:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E04018B139;
	Thu,  2 Jul 2020 11:22:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE8801BF59B
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 11:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB1718A8B6
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 11:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R-nc8RnLWqCl for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 11:22:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 330818A88B
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 11:22:19 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id d194so9950533pga.13
 for <devel@driverdev.osuosl.org>; Thu, 02 Jul 2020 04:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=nt96k6iAKxqAFLPuGZvFYf33kEJ+/jRhegvfMeKc9Xs=;
 b=fPOtA6Tb7M5g4NKvW+QtMg8fBqYNtKBM0zq7JWAD5tEQeaj7a4EM4Uwc8uLzIuzjWI
 lbG7Pi2tuDApXckkKxuI9NGIwojlLArPSNCQkO2WZT6Go6TGqWFNIF8agRJawsmk2BUF
 fxDy/cKeelxjZ/sjBTk2pGEsZs+VLxn4V0OtgejWlUeQ5R63qL9ZVtiaHWobJp516QXY
 OSoIZN2tdyuLKfX62JLAE9riYDmbWzIrcecj61ogKcf1FvfEJTpzBB/cvYAVRzRsa9TA
 pLaN7Qpa3lDyBw1JNQrfaojZ1EPM8m5MhRRpFtm7yPOO/g+PnRZYHdz9SImPFIJNEZwr
 WAmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=nt96k6iAKxqAFLPuGZvFYf33kEJ+/jRhegvfMeKc9Xs=;
 b=rhS71/dmVP0dak49FwqEu9zi5EPALkZ+2ja51U6Z/QHHaC1e7hpoFy3FRcjr4wp0Uq
 qTumuvpdW6xcJ2S0hEYP6xrYQJ5eBBfAzLLI4kC04+3oWx2ijlEQvId8+PTLP8M7aNK3
 Fs0/f6fSKlKqg4eyA2AJ1NFa1fOHchHaYST2oqE+ETB+7xoudXMjHR4AI/L1H5ObyCcs
 dt59XbThfphjzOjkyo3gX1AMr+YZ7FDGc45mZNNm2b6SDxvBKaGHw/KfdS/EYUp3dbY4
 L+NcYbszutjlV6N2CsZFLmucIOUCHY6smr0pfOUVfEDM0CqUBM+xMLuh/v0zu5xQq3sx
 uohA==
X-Gm-Message-State: AOAM533xc9hTu6H8uBCNuDzc4xukm3dYp8YvnTjuCYygC3D5JBG6zEej
 IGiHyrGiNjmwp4nb/bg3KIy+TQ==
X-Google-Smtp-Source: ABdhPJydMbhu4w4dIm3e/HYEXc5ZMYlZN68Nglf/tCAmFxbrbQ+hA0WwrlNL0s0aS9y6fW5p5PNPhA==
X-Received: by 2002:a63:f814:: with SMTP id n20mr23250319pgh.92.1593688938793; 
 Thu, 02 Jul 2020 04:22:18 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id 7sm8674767pgw.85.2020.07.02.04.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 04:22:17 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 07:22:10 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: rtl8188eu: include: rtw_pwrctrl.h: fixed
 multiple parentheses coding style issues.
Message-ID: <20200702112210.th4aiiszhdtufbpe@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============0493105767742547129=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0493105767742547129==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ekcxpik5lw6jcut3"
Content-Disposition: inline


--ekcxpik5lw6jcut3
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
+#define LPS_DELAY_TIME	(1*HZ) /*  1 sec */

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


--ekcxpik5lw6jcut3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79w2IACgkQ471Q5AHe
Z2rdZgv+PEEd2Ajt0okuG+6fIqzpISYZ/28PJjGjrCVHhXZtavp3LSNrCKIdMCW6
ib6K4zOhMrHNgOd97ktSdq/uRaP2dN0cpXOhzbo1zzHcR27F6t4j7wAMnyHwA3o+
OOK/sPiUkhibXeggNQPqVSVXASBIowpHk4EbJ3QVwSYjhFYGQDz02Jn1qovs1F63
VSBuRBS0iQ9EDoENbWgnLxdirSL+aeXHEWTc4ZhM44bq2NCcmXdLcoBMdGIc5TUZ
dliMSNXrehaFZ8yEiT8NAVNzc29MtS2s8Cki9RMEvTH2kxFHTYM3mYacWv9JlJ2u
BBGB5h61u/TmGuzqcYwcdu1xfAj1FBCFdsMHPD/SKsYjrKD/v/CgiixKuSWc0Kla
VjKwXYqIXPugV0rH6HZMyBxTezhhKblr0dXectcGErf+6s5RqkBtW2ZcKtOIaaYE
gbcjSHHgSDhHMZUed9UsfvTzqJn18rJF6K7KVEIbAf2ia5LJLmJ0PWuiBE99Qair
A8zGIgg/
=hbqL
-----END PGP SIGNATURE-----

--ekcxpik5lw6jcut3--

--===============0493105767742547129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0493105767742547129==--
