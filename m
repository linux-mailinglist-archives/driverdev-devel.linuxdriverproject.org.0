Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 108EA479801
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Dec 2021 02:21:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 500F5611AD;
	Sat, 18 Dec 2021 01:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 11w93gy4t_Pb; Sat, 18 Dec 2021 01:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D508860ED4;
	Sat, 18 Dec 2021 01:21:00 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 676A91BF2FD
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Dec 2021 01:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6405160ED4
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Dec 2021 01:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hs3tx3Bkz2lO
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Dec 2021 01:20:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC50D60D52
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Dec 2021 01:20:49 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id m1so2528376pfk.8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 Dec 2021 17:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=hufqHACV6F1/RQhW2VEfsrAUWRL0zxf7+HKWkqIEMjc=;
 b=A1SK9OtOMFntDgk/u7zGTAo7PZamUrIyBZ0nKu/+ppf5LllsKQe7/l5somOkqeQOmM
 DGXWprzVaNvm4PerYDLodHLJj8+0ts8fKxB6sr0PPbP2UdoV2R/P3I052jey3hbwAnAv
 hdLDz262bOiysQ1HIOnAFPeReHI1WlS3z4Ts4kLSAUIS6WjNICHWWf2H+py9J1zUCTuv
 5q9oKfCCK6SBCin1RvG/Rf5VPM66xZO21MAjrdiliDgyVod4+T8kJSNldu3Fija6KPel
 1D6t5q9i0Y9hTZJRqn/wNhsS6nJ4fqbeV6IzIpDvmLaIVAAd17p2BBeRpt1GPzNX4dO6
 rY/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=hufqHACV6F1/RQhW2VEfsrAUWRL0zxf7+HKWkqIEMjc=;
 b=Vjceo5sMifwzqDwAzL1Og1lcKZ8aMnYjAnAc0/BJk0lB+Fvx946qTVrSta2Ml5hkFs
 yGUo8De1rA1S38pK9+GUvlgsOXEB3Y8SbmD+eKqTNMWkiUJaklo6qKIlrMP3lRx3okbm
 wYBwhFI+MBZvrR4THalh3JTgLIlkCCenQjiVpeRWDnWErk+KGpDeMtkYRtlApvsLfjKw
 FB8aRQuFtDPwiov2ZkW9vGPY/KJwZmJY2OGhbq2GPdCorRD34cdKKgOXMq50QEUbTRhg
 W9bIIgGVdaoeoMk7+RU0a5kL6H+cHe+Cc5ltjo5GVExOm7HqBeX5kr8sKveOliTwc7IN
 Il2A==
X-Gm-Message-State: AOAM532fGQLKcX3M8cmDLWg2oz1BrCPFnE7juJ2s1OntNGZAfb7O1hq1
 ciweKvo6ZpV5WHWwuV0y5FkgJ4+LlQ5YRGq+FNM=
X-Google-Smtp-Source: ABdhPJyupT4TXX01b2yzmiG5XVJ9yZHwoLLonVsI29NACARV2hIuDluqVWrRjWMSW7Zbi91v895yOzM2ygRZhHatYik=
X-Received: by 2002:a63:154e:: with SMTP id 14mr5136499pgv.302.1639790449017; 
 Fri, 17 Dec 2021 17:20:49 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:903:2348:b0:148:d0bf:8ef0 with HTTP; Fri, 17 Dec 2021
 17:20:48 -0800 (PST)
From: Inoussa LABAN <labaninoussa@gmail.com>
Date: Fri, 17 Dec 2021 17:20:48 -0800
Message-ID: <CAC0Kga3Bj3GKp8Gg5VQMKOZvyG=9K3F-ooK5WX3YJcR45jZ_+g@mail.gmail.com>
Subject: =?UTF-8?B?T2zDoSwgbWV1IGFtaWdvLA==?=
To: labaninoussa@gmail.com
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

T2zDoSwgbWV1IGFtaWdvLApNZXUgbm9tZSDDqSBBTlRPTkkgRkVMSUtTLCB0ZW5obyB1bWEgYm9h
IG5vdMOtY2lhIHBhcmEgdm9jw6osIGNvbnRhdGUtbWUKbmVzdGUgZS1tYWlsOiBpbmdob21lYmFu
a3BsQGdtYWlsLmNvbSBwYXJhIGJvYXMgbm90w61jaWFzIHBhcmEgdm9jw6oKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
