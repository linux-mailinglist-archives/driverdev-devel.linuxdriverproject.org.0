Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 256232E284E
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Dec 2020 18:16:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63D7B234AA;
	Thu, 24 Dec 2020 17:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JrHtFPDlGi-G; Thu, 24 Dec 2020 17:16:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1291920467;
	Thu, 24 Dec 2020 17:16:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FD1C1BF976
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 17:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0AC8020492
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 17:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pqO5S7Sru8CU for <devel@linuxdriverproject.org>;
 Thu, 24 Dec 2020 17:16:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0136.hostedemail.com
 [216.40.44.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 5224920399
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 17:16:03 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 2FDCE18014D09
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 17:16:02 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 8589B837F27B;
 Thu, 24 Dec 2020 17:15:59 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3871:3872:3873:3874:4321:5007:7652:7903:8957:9036:9592:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12297:12438:12555:12740:12895:13439:13894:13972:14659:14721:21080:21324:21451:21627:21990:30003:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: space81_481839827473
X-Filterd-Recvd-Size: 3587
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Thu, 24 Dec 2020 17:15:58 +0000 (UTC)
Message-ID: <62a06f2c17df6ecac4a64a0c0d3af67fc1f54461.camel@perches.com>
Subject: Re: [PATCH] staging: rtl8723bs: clean up brace coding style issues
From: Joe Perches <joe@perches.com>
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
Date: Thu, 24 Dec 2020 09:15:56 -0800
In-Reply-To: <20201222141707.31972-1-straube.linux@gmail.com>
References: <20201222141707.31972-1-straube.linux@gmail.com>
User-Agent: Evolution 3.38.1-1 
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-12-22 at 15:17 +0100, Michael Straube wrote:
> Add missing braces around else arm of if else statement to clear
> style issues reported by checkpatch.
> =

> CHECK: braces {} should be used on all arms of this statement
> CHECK: Unbalanced braces around else statement
[]
> diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging=
/rtl8723bs/core/rtw_efuse.c
[]
> @@ -245,8 +245,9 @@ u16 	Address)
> =A0				break;
> =A0		}
> =A0		return rtw_read8(Adapter, EFUSE_CTRL);
> -	} else
> +	} else {
> =A0		return 0xFF;
> +	}

Instead, when you see a pattern like this it's generally
better to reverse whatever test is above this, return early
and unindent the block above the else.

Here that would be:
---
diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/r=
tl8723bs/core/rtw_efuse.c
index 32ca10f01413..e5c3dba5c8ae 100644
--- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
@@ -222,31 +222,31 @@ u16 	Address)
 =

 	EFUSE_GetEfuseDefinition(Adapter, EFUSE_WIFI, TYPE_EFUSE_REAL_CONTENT_LEN=
, (void *)&contentLen, false);
 =

-	if (Address < contentLen) {/* E-fuse 512Byte */
-		/* Write E-fuse Register address bit0~7 */
-		temp =3D Address & 0xFF;
-		rtw_write8(Adapter, EFUSE_CTRL+1, temp);
-		Bytetemp =3D rtw_read8(Adapter, EFUSE_CTRL+2);
-		/* Write E-fuse Register address bit8~9 */
-		temp =3D ((Address >> 8) & 0x03) | (Bytetemp & 0xFC);
-		rtw_write8(Adapter, EFUSE_CTRL+2, temp);
-
-		/* Write 0x30[31]=3D 0 */
-		Bytetemp =3D rtw_read8(Adapter, EFUSE_CTRL+3);
-		temp =3D Bytetemp & 0x7F;
-		rtw_write8(Adapter, EFUSE_CTRL+3, temp);
+	if (Address >=3D contentLen)	/* E-fuse 512Byte */
+		return 0xFF;
 =

-		/* Wait Write-ready (0x30[31]=3D 1) */
+	/* Write E-fuse Register address bit0~7 */
+	temp =3D Address & 0xFF;
+	rtw_write8(Adapter, EFUSE_CTRL+1, temp);
+	Bytetemp =3D rtw_read8(Adapter, EFUSE_CTRL+2);
+	/* Write E-fuse Register address bit8~9 */
+	temp =3D ((Address >> 8) & 0x03) | (Bytetemp & 0xFC);
+	rtw_write8(Adapter, EFUSE_CTRL+2, temp);
+
+	/* Write 0x30[31]=3D 0 */
+	Bytetemp =3D rtw_read8(Adapter, EFUSE_CTRL+3);
+	temp =3D Bytetemp & 0x7F;
+	rtw_write8(Adapter, EFUSE_CTRL+3, temp);
+
+	/* Wait Write-ready (0x30[31]=3D 1) */
+	Bytetemp =3D rtw_read8(Adapter, EFUSE_CTRL+3);
+	while (!(Bytetemp & 0x80)) {
 		Bytetemp =3D rtw_read8(Adapter, EFUSE_CTRL+3);
-		while (!(Bytetemp & 0x80)) {
-			Bytetemp =3D rtw_read8(Adapter, EFUSE_CTRL+3);
-			k++;
-			if (k =3D=3D 1000)
-				break;
-		}
-		return rtw_read8(Adapter, EFUSE_CTRL);
-	} else
-		return 0xFF;
+		k++;
+		if (k =3D=3D 1000)
+			break;
+	}
+	return rtw_read8(Adapter, EFUSE_CTRL);
 =

 } /* EFUSE_Read1Byte */
 =


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
