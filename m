Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D641211B46
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 06:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8C558A77D;
	Thu,  2 Jul 2020 04:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oRSw8exKo77s; Thu,  2 Jul 2020 04:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C4A48A56B;
	Thu,  2 Jul 2020 04:54:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A77671BF59C
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A456C88B04
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zm2DiLP5I5cC for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 04:54:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 326F388AE0
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 04:54:29 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id bj10so5578534plb.11
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 21:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=c4ZY+KBrUiqE7hKU7U5jCIHmx9RVu+3pKzZBaIVD28I=;
 b=Jfv9QkFWbkiV3rWqr0mzkXKK5pxO8QpF2guVXmfA2QI307ux7YkKxM/0u/TjN33y7i
 dXzQr9U2Xd1L8M8FTNWGleetqHhuQnUnksHvm3H9rontzgOoH/lRBRIdYQxtclq+0uQe
 zluqKAHahibcGLLrfTKZgjoXY6vFn+vXoTrwjvfFLyi2XExw0PCSgRIvJtbL+g3cdi/u
 5a7DMLBBkLe6DkaFr93/WkZRyMx4ulAMpQjMhUQtnch3wUX81di/abW5la9ebQtafLh2
 lB/RBzGVVYzmqhRQtSfEFWW3R9WOtqZC2Jr2SYiDoYfSaKAxvfi4IUiiMDyPKGSDSolv
 MDng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=c4ZY+KBrUiqE7hKU7U5jCIHmx9RVu+3pKzZBaIVD28I=;
 b=ONWBZVO4Wmj5xFwAHMODBeQNDy4lFNCoYn7ZiNo1D3gDn+PjgpsGq5jbOG9DjQZ5r/
 TXFxOGggS1XhxualijVPEx/X4SlLQElingj+35tQ5tm0/nLN/KgwrmL4E4l2dCs/+Uly
 EymaePEu6uFlHqtmiCp+WZ2IqNAwRYr2wD6QRWE0q4ZSWA1viQTYmCCG8055gU1RpODi
 lZ0oxiah/K7KxtmbvaH30VA6TwW6wakJhPxISzomqEaAf2omojBvDCokxsQ05xuo/BCl
 0nwOCnh8QZN0w5egvJHlmOI9WcTcvSsxyPzx1wJQIpOrpwg7SNsPZYN2k3czZCSqRilE
 D3NQ==
X-Gm-Message-State: AOAM5305hOQ/CFe4KnhJUFPgMWzDfmHdjsSPMywZQjvYPCcem1twpqva
 dkpSgUaTwxfBnltCXjHi3aXLDQ==
X-Google-Smtp-Source: ABdhPJxkodt+bF1jpzMbrhq5utYnPCW0/q19I4RBd8/NAN6IgXJXgtrUqkNSMNRjjIrKf0SWPUlQ+Q==
X-Received: by 2002:a17:902:bd46:: with SMTP id
 b6mr25186526plx.287.1593665668799; 
 Wed, 01 Jul 2020 21:54:28 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id q29sm7290417pfl.77.2020.07.01.21.54.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 21:54:27 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 00:54:20 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: include: rtw_recv.h: fixed a blank space
 coding style issue.
Message-ID: <20200702045420.tdbxeonfby7xytw4@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============7709217812281314313=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7709217812281314313==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="prm3plxrhabn5k3o"
Content-Disposition: inline


--prm3plxrhabn5k3o
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


--prm3plxrhabn5k3o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79aHwACgkQ471Q5AHe
Z2qZ4AwAiBqZnVjnWebi5VaCN7um86RMj/Bz8i0kSjFsngccXIacshQDJjiGqVxI
+68ILT1LJXZALyeS1PdHySLt/DXR57yDJtZZ8df3/2EQWGl1LZc4cgDt1c4okKtJ
zWJeuHoOGgtgpGpLVOU5qPb5EyRSYJtqO/xPBPYtjZKqwBy7xOpEVPyUFuYzDhC/
oJlzPlC+s1PFcFD4wN+zJ7Z+pXhWXNNJJSDYLxqdoD2sI5cvzDKYtqvXChrhVFS5
B+AX8xEfIA8ZnEDJatoM5DdAoqo8f99f/Zt6akzYr3He9KU+esCX9Q8dx1iAveDt
st+RmzQ7lRDVGZD1RKpjqs8ZjzD1kEYhZjrJwwf38DdrNu5w2mJcKD0cNGSgbz5H
7QA6/qAdxG79cFVxN0rui3JYefXYV7zq69//tPwzXCIkQj6xxTU88XlWjE6xGfcq
fLIWS1EM9Yxy6hC+gjtbRnShIJ2cPT5XAxT2ar1IZevgGA6tGNIZNxdHkuN3KD6j
hUzSpJeP
=ZLM1
-----END PGP SIGNATURE-----

--prm3plxrhabn5k3o--

--===============7709217812281314313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7709217812281314313==--
