Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D797DFDF
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Aug 2019 18:14:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C9BD884E9;
	Thu,  1 Aug 2019 16:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2QkmnMmitSyb; Thu,  1 Aug 2019 16:14:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B4FDB86190;
	Thu,  1 Aug 2019 16:14:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA57F1BF39C
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 16:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D532C85495
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 16:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mnXYq3C7cVzi for <devel@linuxdriverproject.org>;
 Thu,  1 Aug 2019 16:14:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E3CE849BE
 for <devel@driverdev.osuosl.org>; Thu,  1 Aug 2019 16:14:43 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id x25so70053975ljh.2
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 09:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=t+mJh2gE4B8ztRCbGNmN1VpOh+YJUGLCZLfK7th1+30=;
 b=vG6nYzlkY+HZk89od2/NnrIZ/ItJC5M8rfwtN6ZI+z+NDAaOTtGaanj9TXbkn7DvKd
 ByLDHmtnGeZPzOMcd5poXPRViPJFD7lqD4EYN9Czd/AGzGJcnZhHEyZ4YWxe+R6RNHD5
 /9+JHqSEtQYJ+qdBan4xsQFm+QmqVikLcf2NvsNxDO0Zcjw7pb4UeTAd6ooFEzE/7oVO
 ZShZWs+hnK/gflB7EdVxglG72CC9uluARqftDa4xHrVxAThpNCBj5+9ZO5MdS2KlMZIK
 16X7eRIOsR+xF8oq66DPpDKLRLFGsmXlJP2lLfhTOP/jBxG2plhGtFdxTZJdh1J2gZpy
 Pqmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=t+mJh2gE4B8ztRCbGNmN1VpOh+YJUGLCZLfK7th1+30=;
 b=ujAA/iMsTsMGw4knYrnTibvUcKKveSJU7iTfKTF/moN6D64tDMoW5YB7WZwZCDU+E/
 Q3Zx8+Lge1IUxEQJfUI142xxjK7Cqu18ZxiJItsxFZD+XMETtYlUJtteiYeFM/59pL75
 GzRiKbFQFx2OlHHZMuJsPnT2s5t93QK8gzPEsoZzJv61L86udLUATF0S68Fr8bhvHy+y
 oW6THJOwulEUTChJJyXITtDnS+jgTO402lVzspbyhNY1TKocxG2Cz5oDR/QGENo025ZX
 4nY6ZgMLQjUi7t+z/8p/rJ27QLNFgLRdlxXLbceAf3vfVIa+cNMEiaqBtt9eZlsDqIqY
 DR/Q==
X-Gm-Message-State: APjAAAWMzthCnT2tPd839y6g/xc6TFbAJkBCNB5kGNZ/OSXIQIeO25df
 v+9zmxtdMtGMh8tvdv1s5TO0absvmj39vHxaeZI=
X-Google-Smtp-Source: APXvYqxBlptLyw+p5zzhagnNEAZ0fiBRoYdvUVlpzRecUG6TqeZwuXCeDc3ihPyjkJ3URQkHMXE+c0YKixFeb6gBAIY=
X-Received: by 2002:a2e:970a:: with SMTP id r10mr64728348lji.115.1564676081171; 
 Thu, 01 Aug 2019 09:14:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190731163330.32532-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190731163330.32532-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 1 Aug 2019 13:14:52 -0300
Message-ID: <CAOMZO5Aq5WEGZ0uR5VS0A+UO_3LpGMxp9Y_agQSx1dTshATVEQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] media: imx7-media-csi: add i.MX6UL support
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMTozMyBQTSBTw6liYXN0aWVuIFN6eW1hbnNraQo8c2Vi
YXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+IHdyb3RlOgo+Cj4gaS5NWDcgYW5kIGkuTVg2
VUwvTCBoYXZlIHRoZSBzYW1lIENTSSBjb250cm9sbGVyLiBTbyBhZGQgaS5NWDZVTC9MIHN1cHBv
cnQKPiB0byBpbXg3LW1lZGlhLWNzaSBkcml2ZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTw6liYXN0
aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+CgpSZXZpZXdl
ZC1ieTogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
