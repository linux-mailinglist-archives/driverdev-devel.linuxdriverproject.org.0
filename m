Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DD820CD29
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 10:09:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0CCE888808;
	Mon, 29 Jun 2020 08:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nL9iXyQtjYQb; Mon, 29 Jun 2020 08:09:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96A18887EB;
	Mon, 29 Jun 2020 08:09:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 87CB11BF2C0
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8417A89389
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r8TDjiVcKrQ5 for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 08:09:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DBF1D8937B
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 08:09:33 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id g17so6786959plq.12
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 01:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=f7mzmYEZ90niD9lpV23xIyu8jzdfLFeCZQFxCAagons=;
 b=d7RGwmjsilF1uieXeXCwjyX46zkjF0CPwMH+1SXCeq1TYFvl7vveSIbI/M2deJlujm
 r2tKT65aSxJH6tQsCoSGCtWShjlQg6+gl6YUzTwBPgRb8aFlT80tmQ7tHVQYNBRi/cqm
 VEfjiENxZdDLbUzBZvFeMEHmhSycGNiPOuvxKxM1tgxFx8446PVfCutaA3nAhlndlPIe
 kCmw/f769wdc3bvigI76pEe2/7GMbvXHUX21bG+vvgc1YLsr4OvtNvj/1j+zrNwn+ZAF
 myYXasWD35If0kzz4vYddPksBJcGabQlptcPZxuJ46TFGP6MOpotFGjFaTQtUhFMmhaR
 m2vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=f7mzmYEZ90niD9lpV23xIyu8jzdfLFeCZQFxCAagons=;
 b=WtD7aTWNZ4WTfNnU/SWA8e4GvgjrNLdVjlS20JMIkMKdOu4N6BH6trDVvZfQyzMQk7
 P2Sqval3CUCUSmpi2rJtNwQlE76o2e6t4EpNlVeAE5e78ABy6f1211qPH4VcyFM17NIb
 iWM5uxkqaN6eodMppRqJKSgRWgxlLbuO7u+nUFY5MNr90NfwKej5tnGB8sE7Uw9YrnRM
 tNyNuIn3NEyMhtXdv5eeb3pgRaCbSmvqzNXdGM+jvb2xdwqt5ST0kNBljz0o1zPStunw
 /zF3MpiYquP+AyDtxMu28BkPm3GPcodjAffII7JLE9AiOc1f3C2HK0Q/gQbJTMqpBwqM
 qHaA==
X-Gm-Message-State: AOAM533rnx5GVUGNx4KTBz7h4HD39eObx5MQDQf8+u5WkR1VXE3CqVNH
 ShC+wqVDlLrRyDHGrCkg23DXZg==
X-Google-Smtp-Source: ABdhPJzeqeWulbzG+1u84D/dmk/gQ0Cad1akAqYZj+mABVhiBf5N0Idkigo9ffle7lMT+GTOJakKng==
X-Received: by 2002:a17:90a:4bc7:: with SMTP id
 u7mr2294632pjl.217.1593418173517; 
 Mon, 29 Jun 2020 01:09:33 -0700 (PDT)
Received: from localhost ([2406:7400:73:703c:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id a8sm7457402pfi.29.2020.06.29.01.09.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 01:09:32 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Mon, 29 Jun 2020 04:09:27 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: include: ieee80211.h: fixed multiple
 blank line coding style issues.
Message-ID: <20200629080927.ivzvczusduxtrc2g@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============1759735421922375940=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1759735421922375940==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p3svisjutkhbdlvx"
Content-Disposition: inline


--p3svisjutkhbdlvx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

removed multiple blank lines to improve code readability.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8188eu/include/ieee80211.h | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index 75f0ebe0faf5..93fd0e9c49dc 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -90,7 +90,6 @@ enum {
 #define IEEE_CRYPT_ERR_TX_KEY_SET_FAILED		6
 #define IEEE_CRYPT_ERR_CARD_CONF_FAILED		7

-
 #define	IEEE_CRYPT_ALG_NAME_LEN			16

 #define WPA_CIPHER_NONE		BIT(0)
@@ -99,8 +98,6 @@ enum {
 #define WPA_CIPHER_TKIP		BIT(3)
 #define WPA_CIPHER_CCMP		BIT(4)

-
-
 #define WPA_SELECTOR_LEN 4
 extern u8 RTW_WPA_OUI_TYPE[];
 extern u8 WPA_AUTH_KEY_MGMT_NONE[];
@@ -113,7 +110,6 @@ extern u8 WPA_CIPHER_SUITE_WRAP[];
 extern u8 WPA_CIPHER_SUITE_CCMP[];
 extern u8 WPA_CIPHER_SUITE_WEP104[];

-
 #define RSN_HEADER_LEN 4
 #define RSN_SELECTOR_LEN 4

@@ -192,7 +188,6 @@ enum NETWORK_TYPE {
 #define IsSupportedTxMCS(NetType)				\
 	((NetType) & (WIRELESS_11_24N | WIRELESS_11_5N) ? true : false)

-
 struct ieee_param {
 	u32 cmd;
 	u8 sta_addr[ETH_ALEN];
@@ -270,11 +265,9 @@ struct sta_data {
  * WEP IV and ICV. (this interpretation suggested by Ramiro Barreiro)
  */

-
 #define IEEE80211_HLEN			30
 #define IEEE80211_FRAME_LEN		(IEEE80211_DATA_LEN + IEEE80211_HLEN)

-
 /* this is stolen from ipw2200 driver */
 #define IEEE_IBSS_MAC_HASH_SIZE 31

@@ -297,7 +290,6 @@ enum eap_type {
 #define RTW_IEEE80211_SCTL_FRAG	0x000F
 #define RTW_IEEE80211_SCTL_SEQ	0xFFF0

-
 #define RTW_ERP_INFO_NON_ERP_PRESENT BIT(0)
 #define RTW_ERP_INFO_USE_PROTECTION BIT(1)
 #define RTW_ERP_INFO_BARKER_PREAMBLE_MODE BIT(2)
@@ -354,7 +346,6 @@ struct ieee80211_snap_hdr {
 #define IEEE80211_CCK_RATE_LEN			4
 #define IEEE80211_NUM_OFDM_RATESLEN	8

-
 #define IEEE80211_CCK_RATE_1MB			0x02
 #define IEEE80211_CCK_RATE_2MB			0x04
 #define IEEE80211_CCK_RATE_5MB			0x0B
--
2.20.1


--p3svisjutkhbdlvx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl75obcACgkQ471Q5AHe
Z2qjswv/aC80O/zH6WxMngmgZjQPQG9ROeE506BjzkkAUtP90pFLQIJKDY/0dwt0
Q3SmIJyFEuv6tkAIfYQEAbDFuWDC0iK6B+pIq6+FZ4y91d20NcUZ1bGjEuYWtKV2
Ue5P+MoMvNoycsHDktLlz/EoM8veJXUkoc9UNOes5sgTptlOR6AGbbOVQu/86Qqi
RhmOz8/zpPp2MI0Rta1CEIJtYUGmRwnLq8omQu3kSv51GDjTI2uvO+nJGSvelSu3
6ck0lgblyH2uwlUBy3A1qwLgt76qn/mFsVb1Yg5Qrc3JUl5BITP0d+3NBAXkFHKL
ly8Z8+lFvA/OJFGQACcsMYekM3bnMgt6t15Rt7tbrCh3luVXRP9FZT8RNYW4eDij
0mHeKgiTCZJEWxhIkG29FbP8obki6XFZLzeDGaolgtfNEP3BI4vpzJGU9Tm63MNE
BeYxhvAnwZ+HPNsdvT71gYv/WkymMBYNayLAt7KpWdfQfoUDtgIWDAJii1H9MiFz
mynQ/tUZ
=1zZ0
-----END PGP SIGNATURE-----

--p3svisjutkhbdlvx--

--===============1759735421922375940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1759735421922375940==--
