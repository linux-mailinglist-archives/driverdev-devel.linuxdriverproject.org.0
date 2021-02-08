Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A4D313532
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 15:31:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4583385B4A;
	Mon,  8 Feb 2021 14:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TVLJu42ZgXUL; Mon,  8 Feb 2021 14:31:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C94E085B25;
	Mon,  8 Feb 2021 14:31:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A660F1BF27E
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 14:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A30E185B4A
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 14:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gHBH75E44rSq for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 14:31:52 +0000 (UTC)
X-Greylist: delayed 01:41:04 by SQLgrey-1.7.6
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B29AE85B25
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 14:31:51 +0000 (UTC)
X-Originating-IP: 92.110.45.68
Received: from bagend.localnet (92-110-45-68.cable.dynamic.v4.ziggo.nl
 [92.110.45.68]) (Authenticated sender: didi.debian@cknow.org)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 57B451BF203;
 Mon,  8 Feb 2021 14:31:44 +0000 (UTC)
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rpi-kernel@lists.infradead.org,
 Ryutaroh Matsumoto <ryutaroh@ict.e.titech.ac.jp>
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
Date: Mon, 08 Feb 2021 15:31:33 +0100
Message-ID: <11050166.C9VMV9BJkW@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20210208.230026.1706784668119437570.ryutaroh@ict.e.titech.ac.jp>
References: <3165951.nLcn7dHqa8@bagend>
 <20210208.230026.1706784668119437570.ryutaroh@ict.e.titech.ac.jp>
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/mixed; boundary="===============1109754593098704149=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============1109754593098704149==
Content-Type: multipart/signed; boundary="nextPart16294483.5jiejsfhWG"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart16294483.5jiejsfhWG
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rpi-kernel@lists.infradead.org, Ryutaroh Matsumoto <ryutaroh@ict.e.titech.ac.jp>
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
Date: Mon, 08 Feb 2021 15:31:33 +0100
Message-ID: <11050166.C9VMV9BJkW@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20210208.230026.1706784668119437570.ryutaroh@ict.e.titech.ac.jp>
References: <3165951.nLcn7dHqa8@bagend> <20210208.230026.1706784668119437570.ryutaroh@ict.e.titech.ac.jp>

On maandag 8 februari 2021 15:00:26 CET Ryutaroh Matsumoto wrote:
> > With kernel version 5.10.9 (linux-image-5.10.0-2-arm64) it all seemed
> > fixed, but returned with 5.10.12 (linux-image-5.10.0-3-arm64) and is also
> > present with 5.10.13.
> 
> The difference in Debian kernel 5.10.9 was that vc4.ko was disabled by
> mistake. I guess that module_blacklist=vc4 in kernel command line
> suppresses the symptom.
> All other Debian kernel 5.10.x have vc4.ko enabled in arm64.

Indeed, you're correct! Thanks.
I haven't tried blacklisting it, but IIUC that means it doesn't work in 5.10 
with vc4 at all (on arm64 at least).

I've now setup another RPi3B+ ~ the same as my rpi-mpd, but / moved to a 
PiDrive and created 52Gi swap partition to build the upstream kernel (+config) 
and subsequently one with the requested patches.

diederik@rpi-mpd:~$ git diff /boot/config-5.10.0-2-arm64 /boot/config-5.10.0-3-
arm64
diff --git a/boot/config-5.10.0-2-arm64 b/boot/config-5.10.0-3-arm64
index 35d6f98..e8eafc9 100644
--- a/boot/config-5.10.0-2-arm64
+++ b/boot/config-5.10.0-3-arm64
@@ -1,6 +1,6 @@
 #
 # Automatically generated file; DO NOT EDIT.
-# Linux/arm64 5.10.9 Kernel Configuration
+# Linux/arm64 5.10.13 Kernel Configuration
 #
 CONFIG_CC_VERSION_TEXT="gcc-10 (Debian 10.2.1-6) 10.2.1 20210110"
 CONFIG_CC_IS_GCC=y
@@ -23,7 +23,7 @@ CONFIG_INIT_ENV_ARG_LIMIT=32
 # CONFIG_COMPILE_TEST is not set
 CONFIG_LOCALVERSION=""
 # CONFIG_LOCALVERSION_AUTO is not set
-CONFIG_BUILD_SALT="5.10.0-2-arm64"
+CONFIG_BUILD_SALT="5.10.0-3-arm64"
 CONFIG_DEFAULT_INIT=""
 CONFIG_DEFAULT_HOSTNAME="(none)"
 CONFIG_SWAP=y
@@ -737,7 +737,7 @@ CONFIG_CRYPTO_AES_ARM64_CE_BLK=m
 CONFIG_CRYPTO_AES_ARM64_NEON_BLK=m
 CONFIG_CRYPTO_CHACHA20_NEON=m
 CONFIG_CRYPTO_POLY1305_NEON=m
-# CONFIG_CRYPTO_NHPOLY1305_NEON is not set
+CONFIG_CRYPTO_NHPOLY1305_NEON=m
 CONFIG_CRYPTO_AES_ARM64_BS=m
 
 #
@@ -3339,7 +3339,7 @@ CONFIG_USB_IPHETH=m
 CONFIG_USB_SIERRA_NET=m
 CONFIG_USB_VL600=m
 CONFIG_USB_NET_CH9200=m
-# CONFIG_USB_NET_AQC111 is not set
+CONFIG_USB_NET_AQC111=m
 CONFIG_WLAN=y
 # CONFIG_WIRELESS_WDS is not set
 CONFIG_WLAN_VENDOR_ADMTEK=y
@@ -5937,7 +5937,6 @@ CONFIG_DRM_AMDGPU_USERPTR=y
 # Display Engine Configuration
 #
 CONFIG_DRM_AMD_DC=y
-CONFIG_DRM_AMD_DC_DCN=y
 CONFIG_DRM_AMD_DC_HDCP=y
 CONFIG_DRM_AMD_DC_SI=y
 # end of Display Engine Configuration
@@ -6097,7 +6096,8 @@ CONFIG_DRM_DW_HDMI_I2S_AUDIO=m
 CONFIG_DRM_DW_MIPI_DSI=m
 # end of Display Interface Bridges
 
-# CONFIG_DRM_VC4 is not set
+CONFIG_DRM_VC4=m
+CONFIG_DRM_VC4_HDMI_CEC=y
 # CONFIG_DRM_ETNAVIV is not set
 # CONFIG_DRM_ARCPGU is not set
 CONFIG_DRM_HISI_HIBMC=m
@@ -9531,8 +9531,6 @@ CONFIG_CRYPTO_WP512=m
 #
 CONFIG_CRYPTO_AES=m
 CONFIG_CRYPTO_AES_TI=m
-CONFIG_CRYPTO_ANUBIS=m
-CONFIG_CRYPTO_ARC4=m
 CONFIG_CRYPTO_BLOWFISH=m
 CONFIG_CRYPTO_BLOWFISH_COMMON=m
 CONFIG_CRYPTO_CAMELLIA=m
@@ -9541,13 +9539,10 @@ CONFIG_CRYPTO_CAST5=m
 CONFIG_CRYPTO_CAST6=m
 CONFIG_CRYPTO_DES=m
 CONFIG_CRYPTO_FCRYPT=m
-CONFIG_CRYPTO_KHAZAD=m
 CONFIG_CRYPTO_SALSA20=m
 CONFIG_CRYPTO_CHACHA20=m
-CONFIG_CRYPTO_SEED=m
 CONFIG_CRYPTO_SERPENT=m
 # CONFIG_CRYPTO_SM4 is not set
-CONFIG_CRYPTO_TEA=m
 CONFIG_CRYPTO_TWOFISH=m
 CONFIG_CRYPTO_TWOFISH_COMMON=m
 
@@ -9577,7 +9572,7 @@ CONFIG_CRYPTO_USER_API_SKCIPHER=m
 CONFIG_CRYPTO_USER_API_RNG=m
 # CONFIG_CRYPTO_USER_API_RNG_CAVP is not set
 CONFIG_CRYPTO_USER_API_AEAD=m
-CONFIG_CRYPTO_USER_API_ENABLE_OBSOLETE=y
+# CONFIG_CRYPTO_USER_API_ENABLE_OBSOLETE is not set
 # CONFIG_CRYPTO_STATS is not set
 CONFIG_CRYPTO_HASH_INFO=y


--nextPart16294483.5jiejsfhWG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEf+PJh5LtCd6LDwjYE45BkVx+/tYFAmAhS0UACgkQE45BkVx+
/tZ7IQ//bfEnoKyWAJTqFSSveNyLOAMwiCQv7i0DOhjgDm43fYZmxn9kFmhRmL5Q
daIfZyBlXbRBg/DTYwBC9kZJKPs3gSyPM9oGBl6lOnd7QfWQeEUverNwUus8ci+F
rdA0XJzFDydv0PHxn141Fk809zq+oXhXYRMEzgLQkD9Gl8lr+5iJvgVGvlS5c+hf
JnFkJI06a9pkD1EHmvfg3ezXAhfOi/STrh2prxJWC24+hNEfi54T2gFZ/0mAQnQJ
o0t7r5U24Sx2LbL+3SnBJE4L4dFUs30qH89TLj3T1B1qzRROMMKwSMv2AGP8LsCZ
fpFCcZrJtlsG1TrLtHjXbBvSg+//COa6/3i0hBUJfvkDKYPMBkf/hqx5AW8Wof4n
K45hi9Dx6ZoIIwjVm+DfYZKHOzV4NOU9ubjsx2YYpltNnnjQGa7jmCIgZwPa85gw
igbdS1IQK9zi8ooPEsP/fXplsn6p2C4VoIu/ite1pnFW2PUGUfr4iQhNYw+Jfzt+
LDlbVTgMCfJ1AMQivO0Sh5PFr2sHE/rQA75Rl11rKZg/ZckCWaqUMuxMWn0/GD/O
6OmDqEqyGE+8hmZ3LdOPU+cg4qmV/5OhsHWfijp9QI+rJzSblikGYHHlfOBVX6eW
yyESZBeMZ2p/Il6jDxgdL4QFqVlng7VlRCl5J+Vw4A5/1lgTbjk=
=Q4nN
-----END PGP SIGNATURE-----

--nextPart16294483.5jiejsfhWG--




--===============1109754593098704149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1109754593098704149==--



