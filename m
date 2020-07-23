Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB0D22ABAC
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 11:22:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 91AE527D26;
	Thu, 23 Jul 2020 09:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ePpN7XRZDHIe; Thu, 23 Jul 2020 09:22:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 97F6B27D1F;
	Thu, 23 Jul 2020 09:22:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6E491BF3D0
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 09:22:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BE787279F0
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 09:22:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 33FiCYvBHehm for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 09:22:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id E0BAF2754D
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 09:22:01 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id x8so2291868plm.10
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 02:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=1tevanNxDhJg1GvBFwQNHjGBshZF989STYuUI5BEaVI=;
 b=nTv6M9U+LkckfUlUptFWmwigPk3hlwkgJ86Fdgu91lRmSbIaxAac9z3380eh+r+nzZ
 iginwYt4BOTehF47opYv46hs6wJuymOXkoEQXNLF4zwmeFeSndUn8OSXY/URZp/v263U
 bn1w6XXxf8SFO//uo00a/6IOz8s7i5r8mNkJc2/T4jVaWMHGURKk8MK47x0TDqOSOc/I
 XvyiEVYqULOAxW9Ppj8U3OAwr2GIj1MZDWbW2mzbDvgDP8VA1ysZs4i3N7qyDVxcIMIf
 vEDnj/MHGkJGNvl4e29bp0qqTl7hvtO4zhJaGHLEYJwa9radBaJaozTkPeMs2q23o+r6
 k7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=1tevanNxDhJg1GvBFwQNHjGBshZF989STYuUI5BEaVI=;
 b=IpkTIJBwrxXym8Pzwizh6a5NDZeA5IZPVB7kAA2b74RNmfHcpfTSmjcLLu+QaYoBmh
 tJmisKj6etQF4tyv8tdv6hhsy1Xgk1VEc1Gsp4UigI/Bop6twp8ns5oYUXdntVtPjYg3
 UpLdcMFXib9+7Tu1Ehym9QyJxHt2YKeQd3M/PJQ3+qBEPxlgt/6ETXHCFOAK3ewsT1eD
 xBVQFu3EHs23LM8FJKOHk8cxFNvWKCSabX5GgR/U5rlm5c2l3ZJqcqdihyn4cHsRBtSK
 xKMqi+5NAIFjs/761+6inAReKovfB5KxKBZgQjlTXNJZ9VwverjyHk9KwHA3t7VPg2JG
 x6PA==
X-Gm-Message-State: AOAM530SH90e8KXvkyd/cOAJV3rS2RWg0QYjoF5VBOj0jG1QaYcXA1MZ
 TWy2DF0xSxi/rP1Yo5Cx3f8=
X-Google-Smtp-Source: ABdhPJyD3MhVcD+iw3xvkNHJUhXqKC5CDL2Gd1e0iT+UgXq2QFhhTFKGBYDvqEIHzSl7+PblSR1QZw==
X-Received: by 2002:a17:90a:ac06:: with SMTP id
 o6mr211990pjq.219.1595496121268; 
 Thu, 23 Jul 2020 02:22:01 -0700 (PDT)
Received: from localhost ([117.211.62.241])
 by smtp.gmail.com with ESMTPSA id i7sm2295464pgh.58.2020.07.23.02.21.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 Jul 2020 02:22:00 -0700 (PDT)
Date: Thu, 23 Jul 2020 14:51:55 +0530
From: Priti Chattopadhyay <pritias81@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, pritias81@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: rtl8188eu: Fix a constant comparison coding style
 issue
Message-ID: <20200723092150.y34bentngeeci2oc@pritichattopadhyay>
MIME-Version: 1.0
User-Agent: NeoMutt/20171215
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
Content-Type: multipart/mixed; boundary="===============5820410695470356403=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5820410695470356403==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="djjjinv2dvv7gkgs"
Content-Disposition: inline


--djjjinv2dvv7gkgs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Modify equality comparison involving constants by shifting the constant
operand to the right side of the comparison as suggested by=20
scripts/checkpatch.pl

Signed-off-by: Priti Chattopadhyay <pritias81@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/stagi=
ng/rtl8188eu/core/rtw_wlan_util.c
index 6df873e..be843fd 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -967,7 +967,7 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pf=
rame, u32 packet_len)
 		pbuf =3D rtw_get_wpa_ie(&bssid->ies[12], &wpa_ielen,
 				      bssid->ie_length - 12);
 		if (pbuf && (wpa_ielen > 0)) {
-			if (_SUCCESS =3D=3D rtw_parse_wpa_ie(pbuf, wpa_ielen + 2, &group_cipher=
, &pairwise_cipher, &is_8021x)) {
+			if (rtw_parse_wpa_ie(pbuf, wpa_ielen + 2, &group_cipher, &pairwise_ciph=
er, &is_8021x) =3D=3D _SUCCESS) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
 					 ("%s pnetwork->pairwise_cipher: %d, group_cipher is %d, is_8021x is =
%d\n", __func__,
 					 pairwise_cipher, group_cipher, is_8021x));
@@ -977,7 +977,7 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pf=
rame, u32 packet_len)
 					       bssid->ie_length - 12);
=20
 			if (pbuf && (wpa_ielen > 0)) {
-				if (_SUCCESS =3D=3D rtw_parse_wpa2_ie(pbuf, wpa_ielen + 2, &group_ciph=
er, &pairwise_cipher, &is_8021x)) {
+				if (rtw_parse_wpa2_ie(pbuf, wpa_ielen + 2, &group_cipher, &pairwise_ci=
pher, &is_8021x) =3D=3D _SUCCESS) {
 					RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
 						 ("%s pnetwork->pairwise_cipher: %d, pnetwork->group_cipher is %d, i=
s_802x is %d\n",
 						  __func__, pairwise_cipher, group_cipher, is_8021x));
--=20
2.7.4


--djjjinv2dvv7gkgs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEQsRqLLgZkq19UkrvgZtUbyBrZHkFAl8ZVq4ACgkQgZtUbyBr
ZHlbQAwAncf5AU8htX12PiCw7iQPZqB83seI/7foHEiVzY4NuwluLez7dUpmMMFz
NIhvmV4GU+084SDJsVhIO9/X/WlsX01iYZXwX/TBe8MYKPErG38P6pZvsI6v5CDe
3RC03k2Br8Dv83eYsWCKKtQq3znAQjfqnX9NkiOpprJomf9cwVOb2OYznZjjLCx0
1Op1CArZZhHpWjs5k5YEo3IigAROGCI8r/HigKjAtNm1ET4nYDR4qzJSMxpAIVCp
TfoKi8OXEwZJ5au+47xS0VdPvTI3EG5ScITt6Qycdvfsm7YUq1oriqTL9P9tw98j
r3CNqDiGemjpfXjCtcm+X9cXAqFUixlNOoeY/ff9XdVyJtDoVfFtP9sJFIbtk692
iar61Vi97ejPA3XU4nqnAAeQ9fEU5FhvKBowNSOnzN8/Zc/T2QhO5cEv4yfAo5GA
51epeQ2k6hAB4UVgl7CcdH5niCxP/5dikqwexl8sx77xiDCpjX8nb3+7viR1MUf8
TUSz6sm4
=YL6g
-----END PGP SIGNATURE-----

--djjjinv2dvv7gkgs--

--===============5820410695470356403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5820410695470356403==--
