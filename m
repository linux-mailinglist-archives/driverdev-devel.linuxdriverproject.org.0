Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C001222C5FA
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 15:14:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B84286FD8;
	Fri, 24 Jul 2020 13:13:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id shGw08H281cN; Fri, 24 Jul 2020 13:13:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAB628665E;
	Fri, 24 Jul 2020 13:13:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E5B11BF40B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A5EF20368
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pa-JZReRBQAr for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 13:13:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 0E759203C8
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 13:13:54 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id m9so5078212pfh.0
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 06:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=z3pjaW36cogKEyknKNckTQL/q8Z1xXLJ/5WkBR5tYmQ=;
 b=S0uP5apuijcyF3rIenzN46xRP/z0k17iE4rT7zBDGMSbEcSLZZs5ccO6yPSfU+9PZF
 Z6COOoC6omjF0P32mwDCNv2UXWo2aHq+5MjIQzmvtG2uoGXbgCVM+lH7Vym/yyOvNBLo
 QeCRAgzB4clEUdpjDhVML8pXWeQYnbboEWmgHvfUOiVKv5anaPNnPaMpN2hce+f3wWPf
 vj1rS+n17gdPxFXru7RJ1BKjSuSaF79cvwBQzq2nilKiOZzSqTal0jxGXsIY1WCWlzb+
 4nEpqrCEsvfJA7pO80onwZZq/aRSyVxYN7Wo/wryyTJwqQVRlbTQxAs1waaWmQullcZE
 eRhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=z3pjaW36cogKEyknKNckTQL/q8Z1xXLJ/5WkBR5tYmQ=;
 b=TQlZjY/U0sv1X6TBMe6bMmB4lfPWMlE3dDzE7VgMMGBOBExX0qQEpLKVfcUU3EvPlQ
 zoOBBvfLIvnyvs6e3wUluTTXX28zlO4nB0xi/yAhGIGzOeN74VLdBdE52PzTeC+eUSOS
 01Ncd5rMAw3pMIklhb0cDaMo+FwMkXrGjCWcm3om7tmjmS4FQxUtdyV/HXPfLrjImyuD
 TNxN3WarNyufkpcU24KPUJJ0DRwZn4v2ksMZOaO1evz2l/xA4/QR/i7UTKiYawSq7E9x
 dDcn9vWrf0IQrnQDN47RQD9nmQHxsWFWkOFl/Uc/CkooJ8YXrrFrIwYbeVg79WyVbEHp
 E7Ww==
X-Gm-Message-State: AOAM531yBnTI6sW7zXV5tJuqqZnjh1v5c93Kkr/Cku+RiPJuOy7gn+h2
 EBPFLwsUz+ODT3gX8mYIXgo=
X-Google-Smtp-Source: ABdhPJxLo0fWK9a2kLjDqdHBvoEZWi9RA5vpybQeN9mmD/SMiu1TNkUytgTA2bW0TukSbmOyOFwgow==
X-Received: by 2002:a63:5d1:: with SMTP id 200mr8675939pgf.59.1595596433510;
 Fri, 24 Jul 2020 06:13:53 -0700 (PDT)
Received: from localhost ([1.22.41.181])
 by smtp.gmail.com with ESMTPSA id az13sm5737837pjb.34.2020.07.24.06.13.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jul 2020 06:13:52 -0700 (PDT)
Date: Fri, 24 Jul 2020 18:43:48 +0530
From: Mrinal Pandey <mrinalmni@gmail.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 mrinalmni@gmail.com
Subject: [PATCH 2/6] drivers: android: Remove the use of else after return
Message-ID: <20200724131348.haz4ocxcferdcsgn@mrinalpandey>
MIME-Version: 1.0
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
Content-Type: multipart/mixed; boundary="===============1325403131525790228=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1325403131525790228==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fojb7p5fnf3uaodi"
Content-Disposition: inline


--fojb7p5fnf3uaodi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Remove the unnecessary else branch after return statement as suggested by
checkpatch.

Signed-off-by: Mrinal Pandey <mrinalmni@gmail.com>
---
 drivers/android/binder.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index f50c5f182bb5..5fdf982ec83b 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -1969,9 +1969,8 @@ static void binder_send_failed_reply(struct binder_tr=
ansaction *t,
 			binder_thread_dec_tmpref(target_thread);
 			binder_free_transaction(t);
 			return;
-		} else {
-			__release(&target_thread->proc->inner_lock);
 		}
+		__release(&target_thread->proc->inner_lock);
 		next =3D t->from_parent;
=20
 		binder_debug(BINDER_DEBUG_FAILED_TRANSACTION,
--=20
2.25.1


--fojb7p5fnf3uaodi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE8DwCG1PwaC2uTI99xIwpEWwxhGQFAl8a3owACgkQxIwpEWwx
hGSLjRAAiX9TAAqD7YLFOyEuodwxQdHbmyAiQINV+t1cXXm0pXOCnpcZqxf9do9F
7lm6siMyDHoPQNG4xlV0NU8Xbabhk6pFs7QUykq456MgaLm1tQ8Ks+GylPHaQNNz
HQKRHhUhAwjC5U+iY7JZkdKcA9/xBpt35jVOpOAJ7zgsmq0J71pJwN36AFsHtUiH
GIKFS1R6kmNcKyUFGLo+J5lZAS4xQwpDrF0QlwUbK141Z5K15ewNX+JSb/Litek9
O9f8qk3kBEtdug1BuLiG62GQMyf1KRlvPau0of8qM+WhcXbnZqeJNkqwEDrK3ep/
oL0VNYNh310z5n6JGKQ5GtTOgN9wcgO4HCw99b7+DfAYO2u1tc3EhcWkHr9PU2fC
g2gqrvzCkhNcCsHdzZ40NnVnIliiukrHbANv1w+juAGr+gGaLxr/YB519IedoiHY
Q5KTNraQaNAvT9y6XjLkYwAJggFxB/vsbnpgpkVQOHQdOlpdzkK6zDXr7ybffX60
FH0pThGfyjJZGg0lxWBPScJDpJast3PndtqekFANh9VfZc9TRMswEgMImifH45M6
BY2BtdX5DMcV2xUN8dW8ZbzFy67wzJKbzk1FmWU3mt3/fh6oacyDS/FIVNPBtYPq
YodppEXlLmOe760wK30x84ccv+1RpKzJNyHK5h8+TFn9JpVl60o=
=KV2L
-----END PGP SIGNATURE-----

--fojb7p5fnf3uaodi--

--===============1325403131525790228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1325403131525790228==--
