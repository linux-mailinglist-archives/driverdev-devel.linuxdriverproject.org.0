Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C169320B88
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 17:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B06C5312D1;
	Thu, 16 May 2019 15:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7Zo+CIbCxU6; Thu, 16 May 2019 15:51:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C1FDD312CF;
	Thu, 16 May 2019 15:51:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 25A621BF33F
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 15:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 224A78817A
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 15:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e16BGJJZo0d8 for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 15:51:38 +0000 (UTC)
X-Greylist: delayed 00:31:34 by SQLgrey-1.7.6
Received: from m131-177.yeah.net (m131-177.yeah.net [123.58.177.131])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7AE178813E
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 15:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
 s=s110527; h=From:Subject:Date:Message-Id; bh=ISbm6i1AJKup6SBhYg
 NOf12TB42gc9VfyZTutX58umo=; b=jfBvgMXY9JPhP5ou8kveNvPn6XwTzkeNcX
 OqFd16Q8bhsFyiss2NV5FKwvrqKDtjhAA2SuPLmB+jeWpZyzE/WHWhDcqPqRt9mC
 kVc4ZbVGmEKtI1gKAWpi1F+IvPa/xxaEMxYso3n11L7CsffnHYlYJBY3JGLlfrAO
 X4XUvcoRI=
Received: from zm2wan3333 (unknown [106.87.96.147])
 by smtp1 (Coremail) with SMTP id ClUQrAAnJi6af91csWCGBA--.290S3;
 Thu, 16 May 2019 23:19:56 +0800 (CST)
From: "yRb1" <zm2wan3333@yeah.net>
Subject: =?UTF-8?B?5LujIOmQpiDphqU=?=
To: devel@linuxdriverproject.org
Date: Thu, 16 May 2019 23:19:53 +0800
X-CM-TRANSID: ClUQrAAnJi6af91csWCGBA--.290S3
Message-Id: <5CDD7F9C.033E57.02452@m131-177.yeah.net>
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUyrcTUUUUU
X-Originating-IP: [106.87.96.147]
X-CM-SenderInfo: 12ps4tzqttjjo61htxgoqh3/1tbiDRy2TFszRCfKAwAAsp
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTg35Y+jMjE25Y+jMjE1NjTolocNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
