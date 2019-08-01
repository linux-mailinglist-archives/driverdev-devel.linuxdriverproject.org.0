Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B180B7DFE4
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Aug 2019 18:15:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E30CB864E6;
	Thu,  1 Aug 2019 16:15:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g8g1L5RqwY00; Thu,  1 Aug 2019 16:15:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C238D8629C;
	Thu,  1 Aug 2019 16:15:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 966931BF39C
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 16:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9382186308
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 16:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1jHhSqGlUodA for <devel@linuxdriverproject.org>;
 Thu,  1 Aug 2019 16:15:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D2A068629C
 for <devel@driverdev.osuosl.org>; Thu,  1 Aug 2019 16:15:15 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id r15so33690980lfm.11
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 09:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fzTcCU8DmiEfu3KOpz+zNVDtmEzQUG6MLn72PQe0yd0=;
 b=lR7SLV8tBosSuoZxn7SAB6sPGvH+WPf1E4MioS1ezN+r9IS3K3xjze4bze9tzXQFOe
 3CcP65yrQ4fBmXSJjNX0b91v5eQ+/I+/3GzeKru0jF79p9wLmvsFZUgsTRTXq9YEHECX
 nRmguLIWQSJLQmPLcyIgu+TgbBNts8/1TpeK5mDK8FcUnJKh1ltOVzUmVjSI/lRj+V2j
 kKDel2o4k4Gxy5XRmPUW0JdEfQX0NsVcdYQ89xV9+OZUe7oO72lCHNC/CRS/BuM0sGd9
 QkcSgfVKf6FZeJD1R/NrB01plBIYwGg+tPi6j6cScGTBGOQm7zqkhZj5+VLa9aTaXGsN
 zHbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fzTcCU8DmiEfu3KOpz+zNVDtmEzQUG6MLn72PQe0yd0=;
 b=X5WfAoPLvHy5vVXSP0qajmZBWUnBYAC/4j87/cWhRFXIF+UI6H0MBuNBDGdICdKHZP
 zFeg8DHGzhWMku+dASguNzBgv9m7BdsQEaEvQGPJDLT0er1laAWGT6luczgomPEJulI9
 S0NkBRwUyQJAnrZBlvEeNU+0Uz++SRulxi5yV8WBozicgYpXE64QodK+dtUpcd9RQOrj
 RuigXvXCHI9NTtKyQSfA0mkZCOyEicLEzrNbxEjLFzyHvOXjvkgocFGMAob+oxx9CXxu
 EWu314gfB/l2mW0/qe3uKHxU5bwoQEfKe9JBJ+EPukTngNDNVYwjZBpu7m769/u8k1LJ
 iA2w==
X-Gm-Message-State: APjAAAWvBqy1L2t8wCC0erXRCFRoBjHAfqgCr78vNB4Ceva0RZxxkqxV
 U1JBYQgFtodDvySGJnIWk4tgomznRUwwgbd1ul0=
X-Google-Smtp-Source: APXvYqwNJxjcu2xuSyLo7PU4FvCCkXLvk9CQQaJBa+MRaFtEi3yjxNzKMFYskhzEERhc9bLgb9kY/z9FW7cowNHmpLw=
X-Received: by 2002:a19:6e41:: with SMTP id q1mr52031933lfk.20.1564676113934; 
 Thu, 01 Aug 2019 09:15:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190731163358.32622-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190731163358.32622-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 1 Aug 2019 13:15:26 -0300
Message-ID: <CAOMZO5Ct1r_3HLzdEPGyk3pDZsVWhmiRgB436bb-NwGuLnzYKg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] media: dt-bindings: imx7-csi: add i.MX6UL/L support
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
 Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>,
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

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMTozNCBQTSBTw6liYXN0aWVuIFN6eW1hbnNraQo8c2Vi
YXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+IHdyb3RlOgo+Cj4gRG9jdW1lbnQgImZzbCxp
bXg2dWwtY3NpIiBlbnRyeS4KPgo+IFJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gU3p5bWFuc2tpIDxzZWJhc3RpZW4u
c3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KClJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0
ZXZhbUBnbWFpbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
