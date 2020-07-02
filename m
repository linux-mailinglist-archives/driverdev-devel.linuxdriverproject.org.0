Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9EB212207
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 13:20:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E94EC8A8AE;
	Thu,  2 Jul 2020 11:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lyEHxUAY7PxZ; Thu,  2 Jul 2020 11:20:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 33F938A88B;
	Thu,  2 Jul 2020 11:20:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B37A71BF59B
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 11:20:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B056189021
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 11:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QT7Ig43vqWGb for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 11:20:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 55BB489018
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 11:20:18 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id 72so619895ple.0
 for <devel@driverdev.osuosl.org>; Thu, 02 Jul 2020 04:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=w32r7hP9DyDdYKhcgit4fHbtLWUQgHNgxb3Y7c+rxpY=;
 b=hH8W2oJbiuals+PcHNVm7hmYsiZVfkIogdIqUTC/fcLnRcsKxm0SLQ0Aw0GPyUEQvD
 DFGHstWxhDzx/isFWh3bBA6DI6XGcr9l3O6eKLR/KVJ/xawPke0g5fkaowESqirepd/e
 ljSR8p+931wEQpbx5RLhIBPKAsXx/lkiPQPxyiX0z+Lj3cywCoPwBbcQasOB1DZjBThT
 Z/ziutu/3kLUjYccx5OqoevdLU4DQ9eghMNqNXntzBcVrXjGFSivF5RopNbZ2i6RdW87
 z6phHTamPlFf6PrXQfhpCgsqDu0mCfQc/z2aFgfn0VUMrhmXV5QUdJB2XAIapqfuESag
 gvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=w32r7hP9DyDdYKhcgit4fHbtLWUQgHNgxb3Y7c+rxpY=;
 b=nKHi9bcnD7MfiI/vvJabPWq8yzlSTybykSQ9uJpoBoq/HIU/faMP3DuqUx/uTRbGeA
 h8ulfypJY76t3FGDbo0X2HKXISWdgKwSWIM0/W1cj9tev1y9EGI+Q6oZhf3q1ZyzuOiS
 jSNkSqbwQ+fAPYItc0TQEI0tQLupzfe+mce+Bo1qD66dCDXBOZVgWyD1CDcb+wc+mhc9
 P/3RqdTiPq7CuDaqlSDsTL8VEjx7qBQcXuWmKHpSPbn4g2BFIcijBVknavCoE7ZVH6x/
 hAqD1eKIryMEZYrABkP2vHhxnFLvzajNv4mLaITFNDVZl70/T7Wk+qqbrR3OF6oEzDuG
 0MDw==
X-Gm-Message-State: AOAM5317P5svGg9l9T7kP0UXFURrs9nqfIYaMec5W+qL3g4H1eXh+X96
 I2OiPEpHoH/hc8xefcDM5ZSd/Q==
X-Google-Smtp-Source: ABdhPJxyKrvnwA/G6ip9llUHSVcbD3cH52NH4wYdGk7r+mRgXdFqnKp1QbolGJ5p5x4+nIk9t/TDeg==
X-Received: by 2002:a17:90a:2562:: with SMTP id
 j89mr29546187pje.218.1593688817973; 
 Thu, 02 Jul 2020 04:20:17 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id a68sm7979172pje.35.2020.07.02.04.20.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 04:20:17 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 07:20:09 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: include: rtw_recv.h: fixed a blank space
 coding style issue.
Message-ID: <20200702112009.6qe6v3rb5n7jklsh@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============8925782895555610032=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8925782895555610032==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ec5skvv4ljvpvhat"
Content-Disposition: inline


--ec5skvv4ljvpvhat
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

added blank spaces to improve code readability.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8188eu/include/rtw_recv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_recv.h b/drivers/staging/rtl8188eu/include/rtw_recv.h
index e383cb119e1b..b281b9e7fcea 100644
--- a/drivers/staging/rtl8188eu/include/rtw_recv.h
+++ b/drivers/staging/rtl8188eu/include/rtw_recv.h
@@ -13,7 +13,7 @@
 #define NR_RECVFRAME 256

 #define RXFRAME_ALIGN	8
-#define RXFRAME_ALIGN_SZ	(1<<RXFRAME_ALIGN)
+#define RXFRAME_ALIGN_SZ	(1 << RXFRAME_ALIGN)

 #define MAX_RXFRAME_CNT	512
 #define MAX_RX_NUMBLKS		(32)
--
2.20.1


--ec5skvv4ljvpvhat
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79wukACgkQ471Q5AHe
Z2qzmwv9HGfnIeRPc6bPWSi8yr+D5OnkpdgD8B/keJnaXqqaCWdHHRyko+of2Jlu
xe/xqU3pTln6YyynMYXIx3A+lXmbRKHr269OGMztg9VV2smu8sS3EXODg8G7GnjH
VfHa2vRcyHhyWQnT3TrZ+6rntn15wWuhHRVtTlTCO2BcUX9YPvm3OPL7UPZJk2MI
zZw8vyFwK76dvDZDJl8ZI+7wZefqxKiMXnSOVC2SzKiVUbvn+ExYbXk3BSABquIy
v6gn4/ZBIZTFECdDOxWsqPvzDBoW72KrihP5BFUUMBlF/ZQ2B2zckHXnCYYwyBnl
AIpb5Tk0pkyVDqxWXX4M4GlF6Rmd8NjDN3N4tCEH3ba8duJvWFKkYGoq+sMUkcc0
SKyWziXwBRlE8t8ZICiXYfsOBV0SkVTO3iC8j4lzY38H8V8uP90iNrV0TwY+E+Ra
G9TPLU619Cx1D2J5m0DUkG4F7txUViM7Wgrl10tBGSqQj1SJZXyTSvzQ1wCCBDIx
QvShBdK2
=ukqj
-----END PGP SIGNATURE-----

--ec5skvv4ljvpvhat--

--===============8925782895555610032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8925782895555610032==--
