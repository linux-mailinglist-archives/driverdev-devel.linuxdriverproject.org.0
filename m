Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C823F264630
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Sep 2020 14:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 560AE875B9;
	Thu, 10 Sep 2020 12:39:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HC5KY4xUi+-v; Thu, 10 Sep 2020 12:39:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A9058759C;
	Thu, 10 Sep 2020 12:39:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21E071BF32D
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 12:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 18D7A2045B
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 12:39:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NpWQBUfHVIr1 for <devel@linuxdriverproject.org>;
 Thu, 10 Sep 2020 12:39:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic312-20.consmr.mail.bf2.yahoo.com
 (sonic312-20.consmr.mail.bf2.yahoo.com [74.6.128.82])
 by silver.osuosl.org (Postfix) with ESMTPS id 7140C2043A
 for <devel@driverdev.osuosl.org>; Thu, 10 Sep 2020 12:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1599741570; bh=Ew1DJHOsk7BZt20DqCb4/iIE3OrqFz5pbNT3ZO6573E=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=t6ocEUVNE9c8gEm80BCM8h0v52dzDZTdoMxYVe9K21lFFJ2cB22mjzXWDrcsMYk1Dz5mgB4B55BNuBI275oXBRZ+QmFGarUeW/eL3I1pWz0CYb8v+QFEM40XNwB+VQ4OzZ1//lOBlte71SwB6vLkRU3aFKA1Yi05mgJrw9tR4gz2QehzPip0nFnvYKLIgwEyFvxR4nMc/tRKg1tE0UkcAZBE4Plgs5+VYEFr/mas3NgYs5gcHDqfNQXEfrY/i2rv0BpH4AthldXGGNCGV5QjHeaBxcVSiGYSfsBBQ2OnGXPWgDpt5FapiiPTikZSMrSrJgtIfwkJWwlMu5KJVljHgA==
X-YMail-OSG: 6XewLcQVM1l9fisXoNPlaKzVxNXTMgm5pQ31Xo7lj1mJ3bX2O5EA2BK_xjQH8QB
 v0Y4R1k6rnc54_LhCjoOo4zstvt3oMuSoieFHKadTC0Xv4GCX.rJ8ZU7cf94pP.Dlg3a2.7s8xV7
 ZEWRSKKZwjhoqecUhE.QVrQEbE4u32g_3HR2jZaY8NmW1s.39yHcaC.4NsXwE0Jk9wYeAadNPiil
 B5k4Yg26t.7HkwGO7R0KPUrpRSpMmymDyLB1zGtA.VkFRxDx76P1fQcIVy1rklNJd3VmrdkrYaHc
 kE60hmUeUttUHlP2n3YNFMlXs7EFGKyLyf8hPCIsS_8Cko7kUHlAKAqUDxUK9t2SdiM6WTg7Xw.M
 8I.VjwpoU.EJejIhx3nEEClxdCYCc3zuWUJfsSciNXngIA.VBfXVzhnT3Nkzj8U0Ffmnjs8cZlpQ
 5tt4t9EBo1iIPP9NyX1f1bo4qTWWKmx7JLO9YSBFbl3D30KAR0ir97mY6SzMw0lumUV5MW4yD9ca
 jwEEZl1r2HyjQNspbnI5RQUKYB4tcls.fxVzQ5PAWAdsJZJNjEhgU_fLFqOJ7LL6YP.j8mB16bSq
 c6XkiLTJSHZvbjBlhJKjyULR3_HulboOoCJdAMwMwfo6DDVqjOvbS.8w9M_wDZdNNU7tk7GAuXg2
 bLBQTW39J1Hx5_s3BhNAu6xqs5aFsvOAEw7RqL.O9cqsUAi8op3YiffuTvBy9KVawzr.3oEL1rfY
 2vZhopuVCty9X_mZ9uVswvN5pPXtgrH_URSFwcFTefQRJd0am9keEGz4EdPtWXt8VDEw1kfGnefx
 FXqzLhNEx7sKy5sFPVgmoDPhsXfAswGwySRPf9.IHattahgD8TnLL2PDrB58sm67tGzFZZiboHe8
 Em3KBkD6QfWJ70LCj_QS65ij7MSg.._L8Nb4ASo6NPr04vOBrc8CAoZ0IAlrTuUKl9RoZNSnJQjj
 E9814pfBUzrLihWfKraOODyOcVYuWnWoW7xNc1Ba25xjb5Otw8xypO1emHKSr6.t3wVfqSliXkgb
 8b4hXFpGOmdCZl8wn0W_nfXGM8h4AQYRjSmj2t5tqoW8g5fZSwyaFtg09RsICaY0Vb171Nckg3PH
 TlhHCN3t5QHOQIgLptu0RN6gR1627dZ.1sZw_b04eovNdOPhJQ74awdz1oVD9D.t9wiK0FfEeKsr
 uQ8g_ZFRth0gmxjzsx_Iu_sBn_E8R8VOFL8LCrzjS63tbFQXlbU3xz5gdUwt67Ey5vB.imi4V0HM
 WdHuOn4reWjO6lrMmdTaW3WHR.3KcwlkmtusSs_65CkrZJx0wGMEzelx35a71055exILfgAWuFjN
 sVU..dbAYtWVNAA5VT9fUmKxpIfcp6xp4LSN.Nnq2i7iueMEtIgWM5CMmqVDnenmiNT0qE3lpq4F
 BXqmWF_890BWZZVFGdtmRWt3Hh6sr0kCq_f7gyxQLC2Ct2tJspO0-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.bf2.yahoo.com with HTTP; Thu, 10 Sep 2020 12:39:30 +0000
Date: Thu, 10 Sep 2020 12:39:29 +0000 (UTC)
From: Crystal Gloria  <haapyjoy0@yahoo.com>
Message-ID: <1687907446.631210.1599741569655@mail.yahoo.com>
Subject: Hi,
MIME-Version: 1.0
References: <1687907446.631210.1599741569655.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16583 YMailNodin Mozilla/5.0 (Windows NT 6.1)
 AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36
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
Reply-To: crystalgloria3@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpIaSwKCkhvd8KgYXJlwqB5b3XCoGRvaW5nwqBEaWTCoHlvdcKgcmVjZWl2ZcKgdGhlwqBtZXNz
YWdlwqBpwqBzZW50CnlvdS5mcm9twqBDcnlzdGFsIEdsb3JpYQp0aGFua3MsCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
