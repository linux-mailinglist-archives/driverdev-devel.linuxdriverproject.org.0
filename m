Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C31856BD123
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Mar 2023 14:45:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AEB141996;
	Thu, 16 Mar 2023 13:45:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AEB141996
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cp_4D23eBDUZ; Thu, 16 Mar 2023 13:45:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE95B419A1;
	Thu, 16 Mar 2023 13:45:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE95B419A1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D87A51BF32B
 for <devel@linuxdriverproject.org>; Thu, 16 Mar 2023 13:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B1FF981F49
 for <devel@linuxdriverproject.org>; Thu, 16 Mar 2023 13:45:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1FF981F49
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MhWKdcBAxnh4 for <devel@linuxdriverproject.org>;
 Thu, 16 Mar 2023 13:45:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A23C81ECA
Received: from mail.belitungtimurkab.go.id (unknown [103.205.56.27])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A23C81ECA
 for <devel@driverdev.osuosl.org>; Thu, 16 Mar 2023 13:45:02 +0000 (UTC)
Received: from mail.belitungtimurkab.go.id (localhost.localdomain [127.0.0.1])
 by mail.belitungtimurkab.go.id (Postfix) with ESMTPS id AA38F8A5444; 
 Thu, 16 Mar 2023 18:11:45 +0700 (WIB)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.belitungtimurkab.go.id (Postfix) with ESMTP id 945338A5650;
 Thu, 16 Mar 2023 17:07:07 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.belitungtimurkab.go.id 945338A5650
Received: from mail.belitungtimurkab.go.id ([127.0.0.1])
 by localhost (mail.belitungtimurkab.go.id [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id UCEJsqzrjWSu; Thu, 16 Mar 2023 17:07:07 +0700 (WIB)
Received: from mail.belitungtimurkab.go.id (mail.belitungtimurkab.go.id
 [103.205.56.27])
 by mail.belitungtimurkab.go.id (Postfix) with ESMTP id BCBC38A50A9;
 Thu, 16 Mar 2023 17:07:05 +0700 (WIB)
Date: Thu, 16 Mar 2023 17:07:05 +0700 (WIB)
From: =?utf-8?B?0KHQuNGB0YLQtdC80L3Ri9C5INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA?=
 <dinkes@belitungtimurkab.go.id>
Message-ID: <788417171.71262.1678961225721.JavaMail.zimbra@belitungtimurkab.go.id>
Subject: 
MIME-Version: 1.0
X-Originating-IP: [103.205.56.27]
X-Mailer: Zimbra 8.7.11_GA_3789 (zclient/8.7.11_GA_3789)
Thread-Index: j0dLg/te1U4bs5zdyOEfCLya5/x+jA==
Thread-Topic: 
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=belitungtimurkab.go.id; s=mail; t=1678961228;
 bh=LjBXUFVAwYLFBDK7H9dfJR2LVch/buu352HP+VChywc=;
 h=Date:From:Message-ID:MIME-Version;
 b=CsIe3Snvi8Xuo4Jao1pgbfjQMp7g8zYdZ8dny/tmZn2xmo4LBlmjgn+v1icS+rff/
 2WnNyFkon1LViaYLe3CljOatyCOGd0WVaV4r3dXzsnZkTNVlwen2Kosu4PHPpyQ+1n
 Bt5HDv8ozW0NCuvyatKZoGWhifDlYeHvbzlzPH1p39VfCr26hrkc5g87Y9qLA8ED2d
 KhErQ7ebrVIbyxGHicwDOqGnAnFyMuKwOKCDptQ9MBat1Non9yUAefK9ukTnV57UeK
 73xbljsDHys8RZ4CtkfusRzV8kElPP5B1sZ5DJKMm20fUTTZDJgMTBx+JfHnZONOnC
 4ezkYrbKtiunQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=belitungtimurkab.go.id
 header.i=@belitungtimurkab.go.id header.a=rsa-sha256 header.s=mail
 header.b=CsIe3Snv
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
Reply-To: sistemassadmins@mail2engineer.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CtCS0J3QmNCc0JDQndCY0JU7CgrQktCw0Ygg0L/QvtGH0YLQvtCy0YvQuSDRj9GJ0LjQuiDQv9GA
0LXQstGL0YHQuNC7INC+0LPRgNCw0L3QuNGH0LXQvdC40LUg0YXRgNCw0L3QuNC70LjRidCwLCDQ
utC+0YLQvtGA0L7QtSDRgdC+0YHRgtCw0LLQu9GP0LXRgiA1INCT0JEsINC60LDQuiDQvtC/0YDQ
tdC00LXQu9C10L3QviDQsNC00LzQuNC90LjRgdGC0YDQsNGC0L7RgNC+0LwsINC60L7RgtC+0YDR
i9C5INCyINC90LDRgdGC0L7Rj9GJ0LXQtSDQstGA0LXQvNGPINGA0LDQsdC+0YLQsNC10YIg0L3Q
sCAxMCw5INCT0JEsINCy0Ysg0L3QtSDRgdC80L7QttC10YLQtSDQvtGC0L/RgNCw0LLQu9GP0YLR
jCDQuNC70Lgg0L/QvtC70YPRh9Cw0YLRjCDQvdC+0LLRg9GOINC/0L7Rh9GC0YMg0LTQviDRgtC1
0YUg0L/QvtGALCDQv9C+0LrQsCDQvdC1INC/0YDQvtCy0LXRgNC40YLQtSDQv9C+0YfRgtGDINC/
0L7Rh9GC0L7QstC+0LPQviDRj9GJ0LjQutCwINC/0L7QstGC0L7RgNC90L4uINCn0YLQvtCx0Ysg
0L/QvtCy0YLQvtGA0L3QviDQv9GA0L7QstC10YDQuNGC0Ywg0YHQstC+0Lkg0L/QvtGH0YLQvtCy
0YvQuSDRj9GJ0LjQuiwg0L7RgtC/0YDQsNCy0YzRgtC1INGB0LvQtdC00YPRjtGJ0YPRjiDQuNC9
0YTQvtGA0LzQsNGG0LjRjiDQvdC40LbQtToKCtC40LzRjzoK0JjQvNGPINC/0L7Qu9GM0LfQvtCy
0LDRgtC10LvRjzoK0L/QsNGA0L7Qu9GMOgrQn9C+0LTRgtCy0LXRgNC00LjRgtC1INC/0LDRgNC+
0LvRjDoK0K3Qu9C10LrRgtGA0L7QvdC90LDRjyDQv9C+0YfRgtCwOgrQotC10LvQtdGE0L7QvToK
CtCV0YHQu9C4INCy0Ysg0L3QtSDQvNC+0LbQtdGC0LUg0L/QvtCy0YLQvtGA0L3QviDQv9GA0L7Q
stC10YDQuNGC0Ywg0YHQstC+0Lkg0L/QvtGH0YLQvtCy0YvQuSDRj9GJ0LjQuiwg0LLQsNGIINC/
0L7Rh9GC0L7QstGL0Lkg0Y/RidC40Log0LHRg9C00LXRgiDQvtGC0LrQu9GO0YfQtdC9IQoK0J/R
gNC40L3QvtGB0LjQvCDQuNC30LLQuNC90LXQvdC40Y8g0LfQsCDQvdC10YPQtNC+0LHRgdGC0LLQ
sC4K0J/RgNC+0LLQtdGA0L7Rh9C90YvQuSDQutC+0LQ6IGVuOiBXRUIuINCQ0JTQnNCY0J3QmNCh
0KLQoNCQ0KLQntCg0JAuIFJVMDA2LDUyNDc2NSBAMjAyMwrQn9C+0YfRgtC+0LLQsNGPINGC0LXR
hdC90LjRh9C10YHQutCw0Y8g0L/QvtC00LTQtdGA0LbQutCwIEAyMDIzCgrQodC/0LDRgdC40LHQ
vgrQodC40YHRgtC10LzQvdGL0Lkg0LDQtNC80LjQvdC40YHRgtGA0LDRgtC+0YAuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
