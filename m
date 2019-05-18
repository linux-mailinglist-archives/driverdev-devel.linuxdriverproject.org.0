Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DE42241E
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 18:46:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE52D86773;
	Sat, 18 May 2019 16:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CeuZQ-beMkW6; Sat, 18 May 2019 16:46:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B86984C20;
	Sat, 18 May 2019 16:46:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F3051BF3E3
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 16:46:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8C4BD87ACB
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 16:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R-Gmx2whYG+S for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 16:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m131-177.yeah.net (m131-177.yeah.net [123.58.177.131])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7ADA387A5F
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 16:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
 s=s110527; h=From:Subject:Date:Message-Id; bh=h0bcitUtMNulDSDnjM
 +7M98/VzWyqxzDuOcthkUzHOY=; b=j2EqZ8Tc4EtBPtAMpOBzugHO0qYUD7nYcu
 0j5uTlmKTsSnZye6EVGwotPCp7g+f7vqyxYjl0qRh+uoz+YwPylb9U8kHQqsLzRr
 3aD7chjQ/gQ4iF2RK7RnbbExTxt3yyKL3uJmPSiqbaUEWrLjs+/Au0eOzqRjqzmS
 Mkkwqmn78=
Received: from woshigwl (unknown [115.230.8.52])
 by smtp1 (Coremail) with SMTP id ClUQrAAHPj3aNuBc+fR6BQ--.53254S3;
 Sun, 19 May 2019 00:46:18 +0800 (CST)
From: "fKax" <woshigwl@yeah.net>
Subject: =?UTF-8?B?6ZaL5Y+R6ZWW?=
To: devel@linuxdriverproject.org
Date: Sun, 19 May 2019 00:46:17 +0800
X-CM-TRANSID: ClUQrAAHPj3aNuBc+fR6BQ--.53254S3
Message-Id: <5CE036DB.365B84.02452@m131-177.yeah.net>
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUVo7tDUUUU
X-Originating-IP: [115.230.8.52]
X-CM-SenderInfo: xzrvxxxjzoq5hhdkh0dhw/1tbiBRu4b1sU8KqVEgAAsb
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

MTg35Y+jMjE2MuWPozE1NjTltrYNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
