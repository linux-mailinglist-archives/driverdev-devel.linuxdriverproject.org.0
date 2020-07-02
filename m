Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7E1211B4C
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 06:58:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56BD08AAD0;
	Thu,  2 Jul 2020 04:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5-RTvZM5gQyM; Thu,  2 Jul 2020 04:58:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B72278AA8A;
	Thu,  2 Jul 2020 04:58:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9114D1BF59C
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8D6198A289
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m+Geuynk3P0k for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 04:58:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 217BA8A269
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 04:58:54 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id l63so12841837pge.12
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 21:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Fu+uvM9GGFzgfzLNgXcB41BKzaY2S3FZ9C27Xg/uHdA=;
 b=mRqio+jtK77pER9SguqKN4DUy9Yk5svDt0sMHSvPa80h06LVav75AF+0YXwrXHPd6h
 cb5wlkEOlKAYpkBxJa6Dy08BfgpuwFbiFpQ+Anbv4+xBpD2GUW8wwfjyVbpfVrRQ9gKA
 v1WYzZpUOkxBWAX4hU1KodO0GCXnmXPXt9Jaq38+yEEVUW0hd/NvxV2vJAbj92nvcvo/
 WOzobNEsRi/ACTb4OoyPK1eBHbOb3ovfJAmhHLVzLh1QqUK3upFodjMJx0hN3s1mtyKM
 4zUWRztT7TYvpJ1hVeL7f2h51zrkgBCn32VtC9JB7Xe77xGV1+g6oilTiyiKbGDnyzgq
 A6vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Fu+uvM9GGFzgfzLNgXcB41BKzaY2S3FZ9C27Xg/uHdA=;
 b=hAxuPvMneW9GTfNBcgVTFg9B1VR4SH9fvRYplXEBsW/KVTzBOdB1yEkRrZj2sC8NNP
 I3ZUjtTLknPy+BL0fUc6wf54UvkB4Yij2w+48sAjzln1WDRwrOGf1t3hZOCvzAknWB8K
 eYKtAPRD5SGrWiOO9SiRVg5O1jbQqIByQ5CxRz2Xa0mRhGD1sfU9bG1WbdGAbuyjkTn/
 m5HuxBiySvgQW+KR6ButsVXAVnf6Q0dFgWCkPAfcDsyWnl0G9944sa2AuWUhju/Lz/c4
 TrhOlSdb6Cyx7jAFcCttKlmYfByJ8Up9O98Csyws8St7Q9yH8rTtwgVWxIX9YHv0R72X
 F5MQ==
X-Gm-Message-State: AOAM530qLJsN/TxIW6YM0Q2+TekMVhWI0h6P39Ufb82E77tp9ruCWOeJ
 mWXoA1jwZM2e7zlenqH1dRB3hQ==
X-Google-Smtp-Source: ABdhPJyfmAZnIg+JFuPx3lJvM12dFnwMxKwQRb/ACEHZrZhd34wP1EvVY2s6yINGmrtkHWhq+GaEeA==
X-Received: by 2002:a65:60d4:: with SMTP id r20mr19455828pgv.436.1593665933697; 
 Wed, 01 Jul 2020 21:58:53 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id az16sm6458568pjb.7.2020.07.01.21.58.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 21:58:52 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 00:58:45 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: rtl8188eu: include: rtw_pwrctrl.h: fixed
 multiple parentheses coding style issues.
Message-ID: <20200702045845.terffnfygc4wl5cn@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============3386308588203394249=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3386308588203394249==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tfd45ozx6ehvkinw"
Content-Disposition: inline


--tfd45ozx6ehvkinw
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


--tfd45ozx6ehvkinw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79aYUACgkQ471Q5AHe
Z2oxnQwAsLH/gSaEGzzK6uIBR1LEqvH8RFXY6G6t5tW0JrF6YOkha2fVqNMWpXWc
U/ZLtHO2ze+KtaYPIXPjBr+7vVNFU9YU6FJAPbtOTWDRPH6Vt6RzahEuhXFmfngW
w6Vke1gmbsvMJmB02alDIyC28Ti0hud5gGMEWgMDuZ9LM7kYOEY+hNnYS7eVGgyH
0M/uXJxaOh06EORkRsReGqG5jk8wKCNMTbKpv46/Oxk/NYfNLVvTT2psLX5eIaEc
mhvpDMzRh5WxMKZCFCqVGlqxQoYhPWz0BUU5+XKPvAXTcvfKkQKlJoJOuC7EPg8s
uKZPDmulnzIMk6O6rfl4HvmgO3+xtcBXSEFEpn6z1mxbV7mgbV/Op8I0+hciUMqm
PHvYlDpszesP1mP+J+EudYy49VtXtjt96a8kshZKQMaIneoEGRMVUjb10XEhgxKb
APvRq63hMqHzSeebHVlSb60DysP7SFKbhVfxdH10/8G00cVQmp2N/CGu0YguW7mL
VarfP7Zo
=R5w2
-----END PGP SIGNATURE-----

--tfd45ozx6ehvkinw--

--===============3386308588203394249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3386308588203394249==--
