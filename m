Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DA722D561
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 08:12:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A8A5D2530B;
	Sat, 25 Jul 2020 06:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mtNI-0T7hfKw; Sat, 25 Jul 2020 06:12:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5C79A20656;
	Sat, 25 Jul 2020 06:12:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5247F1BF82F
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 06:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4542B20656
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 06:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z9xP5OdU+Uul for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 06:12:10 +0000 (UTC)
X-Greylist: delayed 00:20:02 by SQLgrey-1.7.6
Received: from sonic308-4.consmr.mail.ne1.yahoo.com
 (sonic308-4.consmr.mail.ne1.yahoo.com [66.163.187.123])
 by silver.osuosl.org (Postfix) with ESMTPS id B919F20554
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 06:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1595657530; bh=AEu8nK9QzTA2tbqo2l5BVwPShMs+2VsmLoZOZv6b3Lc=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=UiA4KoKzUtfBS3Ybm6YakDxRkjf22IbUD6UnyaKD75WwOSEF6+YPsdSp9sG4UXDDwU6iig8qyCVmrY8U2RrLnQ/6/akBXJ+eoxfxUBhhc70M3FxwDmB9BlhFCtFFT5R6vpah4pFtTc+LyXM/fWALreulQyfBpjZ8W57A+LNA9nxbtDRVOWy/sXNLycVtKELr0KYV2tzLr4k20doPhXUN8BHrrQltax7ykRaVltbGEosAu/9vnN/SiyIIvrqThNv/UvXXNNcMU6DZBxS7fA6g8s9ynGA4DTQ9/NtQiz3I0z6FXSTe9kL71xWDPNhL93kPujNHUBVivIh7BvBu1/8GZA==
X-YMail-OSG: RcxFYi4VM1ng8Gzy6gNXbhAgUYcoLMc5fleCN3MgsPPCLvSqN_lDEMIb3OOLorx
 ttIwY43EEwBL.1giWDp1GzIVecOQQPGs_5rUMnRUeLvsgCKgnVQDc7K4OEB8wv7B_f.yqFc4aZM7
 1rrs8WJpfKcCTVE2EP5LeiTug0JyUqpgcGacSMPhZNQqaAtODv..fk7AmJCee07Ekj2q05Ac3jm3
 BRLc2houNPv9IvFLlU9z3JMyctahRgOmLMMUh9fSV1Cw2IWXWDOj99DnHAafSaD7SUvxEzS7UdC.
 3eT6ihaSvMDGH2CcMDgzpFaz7H0ZAq1kd.y7C4Y3R4k9HNj5rHWph3FbD8rGytygFM0YmS3RSGg9
 0JH_ZfTak539HZBK3CDld3NJClTCTD5OacYhivQWBUQEe783kCkwSqYXhgI19clShoXmCnDng3gi
 ujXsk8UfwHlbe0C6ku90RMV93F59tr72IMoWliZheQbclnsAW9KQXkiQWx8h8wubqhPhqF.AZlbu
 ti3WqFiJMQt4wQDGjp1aR0odEjT8wYurMQOD2Skk3vjxa5NI.CiuNRdi7hLO6B_XNT1gQDshJiK5
 4zLKSvpgOHFKwOrPz8h2mW3bvDwvEwgwIU12d2HCT_St9tQ6kFKLJrEnWQNUuIbhN3m1bwfNItwj
 KLus2Eql44MaYQIZIwxnNcnFV.WelqkD5CWWUmJ2YeWGGErHVpcJt0kmJvDNqK0QtRkgbMXowb2d
 Xdlvy4OaiJE5jYejdGOSAE05ETJVU8H37oO.31Y4ShQNAHumqi8MOts4iFdvH6YWfmeUcQrbNXYW
 dL44VKRPPumRuYXtvYWjw0ekbJ_DPKnOSYjn0s5HVQR1TSSbidEPW8RoIJLxs3GLjGLYL8OjDX7w
 KeH0CNLAz5utq0Tr9pqHIQkD0FtacAUBK7y3WGVlc37c00DnbQHeyS_nAUKacB1g6oW_msQ0m_71
 RtjGYWMA5K4sbhov6l4DPToUE79ua0Oaa8pBs.v7Cfz3R7ltP4tPon3bqdvz6_JiZg9NURRTgztv
 9FmAe47f37s0.JLeitAh5NMoFNP.3Z3osRvafI71d0JeYDToKqX23udokhxIfKZBxPHFljHv6fd3
 Khv5gGTb5yd31cU7dGVf4JECNQXVW9a8Dpvl63n4Yrz.XEyNKt9RE3P8X7uz_R8ubbZjEKGVyBIQ
 d38WX.K0OQHTu7lKjP4psmkJW6YcpVwtivDZCw47t2CG2qPiyb1uJH0l9qLRLhoyhQ5vwzq3CS0g
 MbumApruyP5Q0ZwtYXdgOzq75YVi0yaLhkD8dtDQIw2Aupt_OGt5mKSji5xh51ddXzxGAJG6fvZY
 f3EiLWuDKexg9EJQ0LGbuIPxh.Q--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ne1.yahoo.com with HTTP; Sat, 25 Jul 2020 06:12:10 +0000
Date: Sat, 25 Jul 2020 05:50:07 +0000 (UTC)
From: "Mrs. Maureen Hinckley" <mau9@nuedsend.online>
Message-ID: <1663200520.6955800.1595656207688@mail.yahoo.com>
Subject: RE
MIME-Version: 1.0
References: <1663200520.6955800.1595656207688.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16271 YMailNodin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116
 Safari/537.36
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
Reply-To: maurhinck8@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpJIGFtIE1hdXJlZW4gSGluY2tsZXkgYW5kIG15IGZvdW5kYXRpb24gaXMgZG9uYXRpbmcgKEZp
dmUgaHVuZHJlZCBhbmQgZmlmdHkgdGhvdXNhbmQgVVNEKSB0byB5b3UuIENvbnRhY3QgdXMgdmlh
IG15IGVtYWlsIGF0IChtYXVyaGluY2s4QGdtYWlsLmNvbSkgZm9yIGZ1cnRoZXIgZGV0YWlscy4K
CkJlc3QgUmVnYXJkcywKTXJzLiBNYXVyZWVuIEhpbmNrbGV5LApDb3B5cmlnaHQgwqkyMDIwIFRo
ZSBNYXVyZWVuIEhpbmNrbGV5IEZvdW5kYXRpb24gQWxsIFJpZ2h0cyBSZXNlcnZlZC4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
