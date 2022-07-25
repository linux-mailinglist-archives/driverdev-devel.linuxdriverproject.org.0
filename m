Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B98580816
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jul 2022 01:21:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E12B760E41;
	Mon, 25 Jul 2022 23:21:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E12B760E41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8EVsSxwjD3nD; Mon, 25 Jul 2022 23:21:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 998C860C0D;
	Mon, 25 Jul 2022 23:21:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 998C860C0D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53DEF1BF361
 for <devel@linuxdriverproject.org>; Mon, 25 Jul 2022 23:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B48A60E60
 for <devel@linuxdriverproject.org>; Mon, 25 Jul 2022 23:21:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B48A60E60
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IIJ-K3fBoNNf for <devel@linuxdriverproject.org>;
 Mon, 25 Jul 2022 23:21:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7952E60E41
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7952E60E41
 for <devel@driverdev.osuosl.org>; Mon, 25 Jul 2022 23:21:25 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id z25so20339579lfr.2
 for <devel@driverdev.osuosl.org>; Mon, 25 Jul 2022 16:21:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=mf8qdYIguDr6ZOeuR5ZZROdkEjUPj+xiGs/w6pW552o=;
 b=paapmZgx2vGmuJnBdss6s8XzDPIOhmjL11fy8cZPpxzr+2h3gtctoWvwKOIRMXiPGB
 JsRFTQzOLAsz7yhT86an8JGyhj7fgiCs+fXveGYQAtfqCaGcLhbjlVsvgqR5/s2AUzIv
 fK/vM0gWmGyQyzi9BER6Bs+owJaMg4N8G/Ux479QbzSGitvfr3PAVA9d33pDYAvJmKAw
 KTETYlOYzfQ3NxwhMwUsLha3dvUjrE/Z5tU+gfewm7riOLTn0IzRj3nF8Ak12RZCBABp
 JNzOJ231mz0J6BvXSbJoAW3KLMxvXAwB5F7jTaaKXq7HcorSlORTKbpkOiG0W/HTWxi9
 IFJQ==
X-Gm-Message-State: AJIora8ZzXhoBVbH/GM4UYGHXGF7jC4zG2lsY10IgS6X55ZoC9P4HSdX
 olnJWcTSWeVrFhmJJhPOLmRKGWr7dOm8inX9br4=
X-Google-Smtp-Source: AGRyM1uvoWbkoxtV7T64vA3q0sol4j/Ai9oHnu1IyTiijbXKoKtKM4pKqVFGgERdTIfkNjnr1PIW4Ah0fLjA4k7eLKc=
X-Received: by 2002:a05:6512:930:b0:48a:a0b9:8dfc with SMTP id
 f16-20020a056512093000b0048aa0b98dfcmr90318lft.45.1658791283328; Mon, 25 Jul
 2022 16:21:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6520:2ac3:b0:1f9:c5de:684a with HTTP; Mon, 25 Jul 2022
 16:21:22 -0700 (PDT)
From: "Mr. Paul Donofrio" <brandon.jason00457@gmail.com>
Date: Tue, 26 Jul 2022 00:21:22 +0100
Message-ID: <CAP2X3vwLnohBKH_HffdpziSY7eiEPHx6bqR2S1Q1sX+q+9ZqPA@mail.gmail.com>
Subject: Re: Bank Of America New York-Service Support,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=mf8qdYIguDr6ZOeuR5ZZROdkEjUPj+xiGs/w6pW552o=;
 b=kiQXfi7jV4UpAOy4H/52SGgWO0wc9EImHio514RRZYo3UAgCVOoGskFzmxrgbaurJD
 nUPtoe+GHzGoZuqpGwf2y4J7brpPX10M7jXHVDzpzomdZso3yE0EkkCiRdVJznLAcrfY
 Clb6JBK6ZkeT2T0jJJAklSAqMiVZ9HIiIm6LGO6KL2oI8pvTBmyaIGPBDsEU/htQga2J
 XM3txwGpf+U+GMzGVFqA53BKaMFprrdxAcjrT3hpiij8KrxJXrEIIjuxVcVAS6dYvNlH
 OSxmwo86rkNFOcbzMZL2liTUvHgYW8YUtJ40A2hHpegmgBlqbOl3/4e7pftYdOamblnB
 If7g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=kiQXfi7j
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
Reply-To: bao.credit0135536@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0tLS1CQU5LIE9GIEFNRVJJQ0EgTkVXIFlPUksgSEVBRCBPRkZJQ0UsCgpUSElTIElTIFRPIExF
VCBZT1UgS05PVyBUSEFUIFdPUkxEIEJBTksgR1JPVVDigJlTIEJPQVJEIE9GIEVYRUNVVElWRQpE
SVJFQ1RPUlMgSEFTIFJFT1BFTkVEIE9VUiBTRVJWSUNFUyBUTyBCRU5FRklDSUFSSUVTIE9OIEEg
UFJPSkVDVCBUTwpQUk9WSURFIENBU0ggU1VQUE9SVCBUTyAyNzAsMDAwIFZVTE5FUkFCTEUgSE9V
U0VIT0xEUyBVTklUIElOQ0xVRElORwpUSE9TRSBXSE8gUkVDRU5UTFkgTE9TVCBUSEVJUiBTT1VS
Q0UgT0YgSU5DT01FIEFTIEEgUkVTVUxUIE9GIFRIRQpQQU5ERU1JQy4KCkdJVkVOIFRISVMgREVW
RUxPUE1FTlQsIFdFIEFSRSBGVUxMWSBBV0FSRSBUSEFUIE1BTlkgQkVORUZJQ0lBUklFUyBNQVkK
SEFWRSBESUVEIEFTIEEgUkVTVUxUIE9GIFRIRSBQQU5ERU1JQyBBTkQgVEhFUkVGT1JFIENPVUxE
IE5PVCBDTEFJTQpUSEVJUiBQRU5ESU5HIEZVTkRTLgoKQkFOSyBPRiBBTUVSSUNBIFdBUyBBUFBP
SU5URUQgQlkgVEhFIE9GRklDRSBPRiBXT1JMRCBCQU5LIEFVRElUT1JTIFRPCk1BS0UgU1VDSCBQ
QVlNRU5UUyBUTyBUSEUgQ09OQ0VSTkVEIEJFTkVGSUNJQVJJRVMuIEFORCBUSEUgU1VNIE9GIFVT
RAo1LDQwMCwwMDAuMDAgSEFTIEJFRU4gQVBQUk9WRUQgQlkgV09STEQgQkFOSyBBVURJVE9SUyBU
TyBCRSBQQUlEIFRPCkVBQ0ggQkVORUZJQ0lBUlkgQ09OQ0VSTkVEIE9VVCBPRiBISVMvSEVSIFRP
VEFMIEZVTkQgQVMgUEFSVCBQQVlNRU5ULgoKV0UsIFRIRVJFRk9SRSwgV0FOVCBZT1UgVE8gR0VU
IEJBQ0sgVE8gVVMgSUYgWU9VIEFSRSBTVElMTCBBTElWRSBCWQpGT1JXQVJESU5HIFlPVVIgRlVM
TCBERVRBSUxTIFNVQ0ggQVMKCllPVVIgRlVMTCBOQU1FUwpBRERSRVNTLApQSE9ORSBOVU1CRVIK
ClRIRSBPTkxZIFRISU5HIFdFIFdJTEwgRE8gSVMgVE8gUkUtVkFMSURBVEUgWU9VUiBGSUxFIFNP
IFRIQVQgSVQgV0lMTApCRUNPTUUgTU9SRSBBVVRIRU5USUMgQU5EIEJFIEFNT05HIFRIRSBMSVNU
IE9GIEZJTEVTIFRIQVQgV0lMTCBCRSBPTgpPVVIgUEFZIExJU1QuCgpUSElTIElTIEEgR09MREVO
IE9QUE9SVFVOSVRZIEZPUiBZT1UgVE8gUkVDRUlWRSBZT1VSIEZVTkQuIFRIQU5LUyBGT1IKWU9V
UiBBTlRJQ0lQQVRFRCBDT09QRVJBVElPTi4KWU9VUiBJTU1FRElBVEUgUkVTUE9OU0UgSVMgSElH
SExZIE5FRURFRCBUTyBFTkFCTEUgVVMgVE8gQ09NTUVOQ0UgVEhFIFRSQU5TRkVSLgoKTVIuUEFV
TCBNIERPTk9GUklPCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
