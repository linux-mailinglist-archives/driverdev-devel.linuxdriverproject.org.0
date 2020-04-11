Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B521A521F
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 14:52:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6BF1D877E2;
	Sat, 11 Apr 2020 12:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XasAQYQO-n7d; Sat, 11 Apr 2020 12:51:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB29086C0A;
	Sat, 11 Apr 2020 12:51:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A12671BF5DE
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 95EB68698E
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jbfXaFqZKnlb for <devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 12:51:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1CA0A86A7C
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 12:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586609507;
 bh=SVlJCMTqCvv1c7w+nfXau/qquMjlmrvygXkqNvJ5DeA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=OTvl5qOXk+sZS01NtSzMawPXJv0EYDrjhqI10N/3pkGGezTZs3HAjDudN4e16ZWcc
 zuF8/XcNpehMy8FWThKLijWm/kamBmjNE3AdnC7ooPqfa97w+mDmAVz7JCdTfHYbrR
 KdRweir4YfuEMKZoFeVMopiFrq06cp3FUjtQhAZQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1N3se2-1jELf10eY4-00zjYw; Sat, 11 Apr 2020 14:51:47 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: vt6656: Remove unnecessary local variable
 initialization
Date: Sat, 11 Apr 2020 14:51:04 +0200
Message-Id: <20200411125104.9625-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411125104.9625-1-oscar.carter@gmx.com>
References: <20200411125104.9625-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:tNvyN6LT2MEV85uEyIvoHXTQfbD8/HTPpV5C1/Zxar6stA3PZZA
 vn95fFukMuJQmtJ5nhhR8aTK7OPF0cUt/h45oKgo/X1le6zM1k2F7roBba5JTdS8sxsZJwj
 lZyAFU5fAi54xlkRBEBdSH5sjJh1M6Q9wRUppoGTTYw773O/OQKphcsgaOw5QgPVpsCjbwy
 nm9jj9EuwRlwt6xh8QjEw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:nkd81Q42ko0=:946dBrp9QK3j+5gy9BSKYx
 VZeqvLvElj8sRI6cNqg5AgSfQgowxwakhPM61IUjEliUWe1b8RrJ2cNsIg9pPFul1TYISIOUE
 uso0JQLMRrY3viawSLTiDRDlhHgQDGatTrJPQtUGt3vP/RcLjO8rciXwhOb9h5OsKvUIOTZwC
 m4W+Dceb2Ljeem6Mbdl4WDLez8zxkY4zF7qExo+SPVMDW5Gwb48pA86zedVq+VIJsyCo8/O9l
 ne2IYlrrrWa0z6sfPYhsbZ+GvJT/EwkcTKX6WxModm/b3lcYRyhjzolvSwpFzg7OmQAv3EN+z
 XMAO8omytfdi3yH1h21A9EoTidDYUZahU+scmErNJKmC+oD/tNBGzRZGifXaQ+1+zomFAEG2A
 9XbEw1kQlNkF+IEZ/Md0kf9xqLPAB7aQLhNhADFEFmr2R7FHwvzEtjkJAQZThIA71cAsoI5sT
 5qXcLOjtQ9J+IWqMiWte7TVahmwjjePgY5ikQq09IswbLcuREWwmQds2BCeNV03hRGxhdKzpA
 D3XTho4XZCFPzjRKJexVxIb0ZJNTPseinHqG09Ffkoo+W4DE56KsaMlzmKnCqTs1JHgm1jHQb
 9mzOV3f4VoF6NGeB8vh7Bb1UXGrvbCMBU5SrEPVFrrba8HNVNUiumZhkC37dOy4nLOHshcoIz
 pwthBwIZpC3MD2XEtKBNWnB6YhafuBrPz21sCzXHIrNeFWi+jGtl82C0+Y0f/Gx1LBJnspmSP
 LwT48sIFq3ce9B5Us2Fwd4wNCtWF5KQEsen4fLY9iIshU9OdNP34HjvYAkH6YzPcyUSvfVWrf
 Z9U1k5X89O+IKUwUUrOH/OUSUDmMGKoqokzjg2dlzTtjujnFZb41TImohek5zJDFWAODnh5A0
 UA7jwtLhUIXEQoWZFfbgN/+L5LQ7WgIGTf87yZy/umAieauY4gZYpx77fuEkkizYL02iS6tx+
 Is57eWnqgk4hGzPHIS//YoeGx6M8R67b/r98+0ZADOFuQkaBseRVRCA4f1e+IohSGRH4p4JDr
 9/OPm7CmTykYoar0qYYCuIUgzzzYJx9kkCq86J+p6n4eLnumqDC88JCGQJ3rYSVnmkuxrzxvS
 siQ1NGXoTYArAfYInDORlc9I3eQqan45lexf5AL47+GWju7t4zipG/xoFKzgNInzR23/jaYda
 kDxwXLx6PDj5EE+65eGXm8+V8yD5G+Qatut2PKKI4ED06WRVc468CVGr/AshfDfT6zBfboaTs
 gj2ySC++1UdUS/rBk
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Don't initialize the ret variable as it is set a few lines later.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 276210a7284e..10d1f2cbb3d9 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -352,7 +352,7 @@ int vnt_set_antenna_mode(struct vnt_private *priv, u8 antenna_mode)

 int vnt_vt3184_init(struct vnt_private *priv)
 {
-	int ret = 0;
+	int ret;
 	u16 length;
 	u8 *addr;
 	u8 data;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
