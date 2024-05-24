Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CADE8CEBC9
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2024 23:26:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EA02408D0;
	Fri, 24 May 2024 21:26:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 00GKOijdABNH; Fri, 24 May 2024 21:26:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3583F409A7
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3583F409A7;
	Fri, 24 May 2024 21:26:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D8E11CFA92
 for <devel@linuxdriverproject.org>; Fri, 24 May 2024 21:26:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 137044018A
 for <devel@linuxdriverproject.org>; Fri, 24 May 2024 21:26:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EbWqP4ooRdYl for <devel@linuxdriverproject.org>;
 Fri, 24 May 2024 21:26:32 +0000 (UTC)
X-Greylist: delayed 605 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 24 May 2024 21:26:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 643BF40146
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 643BF40146
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=137.220.233.9;
 helo=mail0.qaazq.com; envelope-from=no-reply@qaazq.com; receiver=<UNKNOWN> 
Received: from mail0.qaazq.com (unknown [137.220.233.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 643BF40146
 for <devel@linuxdriverproject.org>; Fri, 24 May 2024 21:26:30 +0000 (UTC)
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCa55+l?= <no-reply@qaazq.com>
To: =?utf-8?B?ZGV2ZWw=?= <devel@linuxdriverproject.org>
Subject: =?utf-8?B?44CQ5LiJ5LqV5L2P5Y+L44Kr44O844OJ44CR5rG65riI5a6M?=
 =?utf-8?B?5LqG44Gu44GK55+l44KJ44Gb?=
Date: Sat, 25 May 2024 05:16:21 +0800
Message-ID: <BAGDBOPDEIFPGCCHDEPOLDPNGBHP.no-reply@qaazq.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=qaazq.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@qaazq.com;
 bh=D3TS1RVKSbxXZ6K0vfRIvxp68Np+1iKZ5VEA42ZVin8=;
 b=CDdDcbJbR/H+IbBMViJ7NOaXRX4JDZwE+SDmDPBu6j+4zO9XX7nuKPqOjph9A1XYRTZR7JVsyBwk
 dm0kQt2W3GVz+WYBLXkqT6A8FyU5t0/dUMtj0/aoZ9IJ2grpmTBMBkrD1Q6sXhP2sfS3PbMQ1BiW
 cq3EsXo/N0bvnvQaBp4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=qaazq.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=qaazq.com header.i=no-reply@qaazq.com
 header.a=rsa-sha256 header.s=default header.b=CDdDcbJb
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

5LiJ5LqV5L2P5Y+L44Kr44O844OJ44Kv44Op44K344OD44Kv4oC75Lya5ZOhICAgZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZw0KDQrjgZPjga7jgZ/jgbPjga/kuInkupXkvY/lj4vjgqvjg7zj
g4njgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgIHoqqDjgavjgYLjgorjgYzjgajjgYbjgZTjgZbj
gYTjgb7jgZnjgIINCuaYqOaXpeOAgeOBiuWuouanmOOBruOCr+ODrOOCuOODg+ODiOOCq+ODvOOD
ieOBp+a2iOiyu+aUr+WHuuOBjOeZuueUn+OBl+OBn+OBk+OBqOOCkuOBiuefpeOCieOBm+OBhOOB
n+OBl+OBvuOBmeOAgg0K44Gd44Gu5pSv5omV44GE44Gu6Kmz57Sw44Gv5qyh44Gu44Go44GK44KK
44Gn44GZ44CCDQogIOOBlCDliKkg55SoIOaXpSDmmYIg77yaIDIwMjTlubQ15pyIMjTml6UgMjM6
NDkNCiAg44GUIOWIqSDnlKgg5aC0IOaJgCDvvJog5Y2D5Luj55Sw5LiA44OE5qmLIDMg5LiB55uu
5bqXICgg44K7IOODliDjg7Mg44KkIOODrCDjg5Yg44OzICkNCiAg44GUIOWIqSDnlKgg6YeRIOmh
jSDvvJogMTc1MzAg5YaGDQoNCuOCq+ODvOODieOCkuS9v+eUqOOBl+OBn+immuOBiOOBjOOBquOB
hOWgtOWQiOOBr+OAgeS7peS4i+OBruODquODs+OCr+OCkuOCr+ODquODg+OCr+OBl+OBpuOCr+OD
rOOCuOODg+ODiCDjgqvjg7zjg4nmlK/miZXjgYTjga7mib/oqo3jgpLjgq3jg6Pjg7Pjgrvjg6vj
gZfjgabjgY/jgaDjgZXjgYTjgIINCmh0dHBzOi8vaGF1dGVuaGVyZS5jb20NCg0K5LiJIOS6lSDk
vY8g5Y+LIE5FVOOBq+OBlOeZu+mMsuOBhOOBn+OBoOOBhOOBpuOBhOOCi+ODoeODvOODq+OCouOD
ieODrOOCueOBuOOBiuefpeOCieOBm+OBmeOCi+OCteODvOODk+OCueOBp+OBmeOAgg0KLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCuKWoCDnmbog6KGMIOiAhSDilqANCuS4ieS6
leS9j+WPi+OCq+ODvOODieagqiDlvI8g5LyaIOekvg0K44CSMTM1LTAwNjEg5p2x5Lqs6YO95rGf
5p2x5Yy66LGK5rSyMuS4geebrjLnlaozMeWPtw0KQ29weXJpZ2h0IEAgU3VtaXRvbW8gTWl0c3Vp
IENhcmQgQ29ycG9yYXRpb24uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
