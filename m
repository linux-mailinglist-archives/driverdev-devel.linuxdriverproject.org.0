Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E83F118DC
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 May 2019 14:19:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C17E687860;
	Thu,  2 May 2019 12:19:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZHzG8xcIsPvp; Thu,  2 May 2019 12:19:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8ED6987822;
	Thu,  2 May 2019 12:19:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F0ABA1BF968
 for <devel@linuxdriverproject.org>; Thu,  2 May 2019 12:19:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E0C9430B80
 for <devel@linuxdriverproject.org>; Thu,  2 May 2019 12:19:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UnbJu-ZL-aQB for <devel@linuxdriverproject.org>;
 Thu,  2 May 2019 12:19:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 93AF920198
 for <devel@driverdev.osuosl.org>; Thu,  2 May 2019 12:19:00 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id k18so1689922lfj.13
 for <devel@driverdev.osuosl.org>; Thu, 02 May 2019 05:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0SNjztPUemVLTeTX5HL2waYiBQR8r75OELo66BjFUoA=;
 b=oiDRIhl0M87K/VSE0Ct9z19hQCpC4/o1p66nxiEjTv/kpmc8TXBzJA5owidDNCjuMr
 u5F+/ts9R5v23ut9eDl0wHZXimM6oRQIz05ppD2so8mqCbnzwGUdLSju10zdJ7R+lRe6
 c6Zz8Afqd6jNaJyGj2Ps6y8PDEjuwVgRoiro4GZUaXbloUwq5U24n/A2PEangNaFLEcn
 b6TPLpI14zMd8rjSsIQA9vgIWDvz87xWEpa139vsCTgpjkztsOfu6z51m6Xulp/I8wYM
 GNrosPjosbYz/G8bHdR5Ftpvczty3b9M2UFa1cJsGSl1/GKkQbUZ5oDuIexXlBbPFVSj
 9JlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0SNjztPUemVLTeTX5HL2waYiBQR8r75OELo66BjFUoA=;
 b=prwgjACaDlCXqs3kRCRC9b1uXX8g5234NOeKECFhzuILD1jPswo1Z/AmkyVIV7Utvh
 GTq4p7fNjSlAt6kAsja8k9R1NLqayB6JSvP0rvqp/XIdAnzJIsN9V/Q6DplOsMIynZ4P
 g/hfgvx+8F/wD8dZJdhJKA2NQOfChKAE2vF27heYFlwz7jDv0aF0XQer1IsaWMDg0VzS
 ERZrRs78aT6X2VOz9EcvWXwVTutA2M6NhUA58bO5OR3Rdd0009XXlk8388DbxmVAUPxA
 099d1vnRTm4CDy93wu5KFax3DEDuY3t6N1bkLh2f3h3FBOJPX7xT6FSDWan6RIk+jLw3
 0M4Q==
X-Gm-Message-State: APjAAAXm3Fgg39NYFKRFY/CrQbcEeCHK5s9TCUkppyC33DLqzbia4Qjs
 ek7OVYnBsEstzR4psUEg+P2/oWThtfQ9LjfpNco=
X-Google-Smtp-Source: APXvYqy02pW1NewSWNKwYPVNlOHLum5fvjbinr4+d8kNGzsHODOOdARBrF355zx4tKnUCTxgYsy9IcBORZup7cw15tM=
X-Received: by 2002:a19:c7c3:: with SMTP id x186mr2010164lff.107.1556799538649; 
 Thu, 02 May 2019 05:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190430074911.8361-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190430074911.8361-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 2 May 2019 09:18:53 -0300
Message-ID: <CAOMZO5DbzRYYzhd=W=YvKuYdXyCc3q08=yTG6-3U2rxAeFApZg@mail.gmail.com>
Subject: Re: [PATCH 2/2] media: imx7-media-csi: add i.MX6UL support
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgU8OpYmFzdGllbiwKCk9uIFR1ZSwgQXByIDMwLCAyMDE5IGF0IDQ6NDkgQU0gU8OpYmFzdGll
biBTenltYW5za2kKPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPiB3cm90ZToKCj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteDdfY3NpX29mX21hdGNoW10gPSB7
Cj4gKyAgICAgICB7IC5jb21wYXRpYmxlID0gImZzbCxpbXg3LWNzaSIsIC5kYXRhID0gKHZvaWQg
KilJTVg3IH0sCj4gKyAgICAgICB7IC5jb21wYXRpYmxlID0gImZzbCxpbXg2dWwtY3NpIiwgLmRh
dGEgPSAodm9pZCAqKUlNWDZVTCB9LAoKUGxlYXNlIGFkZCB0aGUgbmV3ICJmc2wsaW14NnVsLWNz
aSIgZW50cnkgdG8KRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL2lteDct
Y3NpLnR4dCBpbiBhIHNlcGFyYXRlCnBhdGNoLgoKVGhhbmtzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
