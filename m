Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFA42863C1
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Oct 2020 18:23:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3777F85910;
	Wed,  7 Oct 2020 16:23:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dNT6OouxnbDJ; Wed,  7 Oct 2020 16:23:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B31C985ADC;
	Wed,  7 Oct 2020 16:23:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DEAB1BF35C
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 16:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 543F7230FB
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 16:23:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 33FkrmVz9OOC for <devel@linuxdriverproject.org>;
 Wed,  7 Oct 2020 16:23:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic310-14.consmr.mail.bf2.yahoo.com
 (sonic310-14.consmr.mail.bf2.yahoo.com [74.6.135.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 7E8AE20334
 for <devel@driverdev.osuosl.org>; Wed,  7 Oct 2020 16:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1602087817; bh=PxMwWzXvs+dqOoH0/FHvFmQpYH2JguaCUHYAVLLmaiw=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=iyHh32KfjAJRkDgtWEMYdZbzDRdPmJsHWjQYnzBgGUHQRmwMzuSi1lWoZERqqt/Xr7gtws2c4dT2b6OzhNlyq71Fm+wFnP5k0sDI8gb3d3yILXHzBmCCYc3cXN5d9DADigBIqK3k8rQE4YgB5DyXYCFT1LgPc6EeRTk2E52fkySrRbm3rwtrGaTizVTm6TkZwDWgfxJWhghKTEH8RFPvzdWry4FAHuah59qstVJoF5DuNZ8YhCfsV4w8VIyHye1SRocUH7QW3ZMBgugTOwIOxZ63Jh+YtsCovQ8E8Incbv6F9272sWHDVHq0IgYtTVuCIABEpD/mMNmNjg1WG+pE7Q==
X-YMail-OSG: oGBTPJIVM1nXME4J1qBs7NEu4WNVukER48JrZ44T7RYxvkXivqDuzDQRkYFtCk_
 mtsZ60XDwOJ7weApr2sf6RZRfbegYKS6MuNt2X63kNUvVXjN0nYTbXY8wqCFJu5Rfe0nTqncZurU
 TtBHrv4MOgmf6_MKqVyiPfwO8aGuphnRSFBzdrtft53Ygk8eMP.ikXSGbW541WzzdVnJymHA8tSQ
 06nTtmAZN4U1n9yKyTUv7Z.BFx2zg7.JrJ5DsWOUhD7aHL27qeDIhvnO3jICrJ15kWfOMJZT18jm
 6tN00LK3cP.1hgK_uvHT6WbxOvNpj.K2120sEpvwWkvBvC.LFT7eluWTYOK3P8jAgOv9qd1Ssbmx
 p1j2c785OYQ5MRjxm3PCmidg6NcrfmQVorxWe9f0JLb8WCaTooRHA4cXiS14mJAKEoP_LtN04PNj
 _MbH9wrvgqaiTnnPHE.xeEUxLJwJ7PSo_dEdr0veSEPTD2W8nT31VAxh8N2q7yeUn_WnJBINz6su
 0S3CkbBpBQmyCCDBF5k4XWfH6WX9eefekUvpmOjFu1MLlTz5aD.eG2VFX5aespZeTtDvZ9NMBUX8
 v.bWd2HghSoVAc5XDO5H6ms2rHr5XUqVt.r5N7iM.C.L3AgOtPlfDZlxcStutp6WXBpo4kj0aRfG
 NSAdVjz5incojksqfe2xZcCOitJcOCrCRMZ52CE17C6iYEsT.vwU16lw_Bv8D.TKVnyI6PHW8fjt
 EXtdkFWWkjUEEnvvaFFi7VbdZQoTk3MjQtj1KQRBGzbA8vdOteuYv6.T1igzmlp7zGMnrQed.nhv
 .RLdYBf4cFHuBGJJKW95OXJbYDQrRd_lqkO.NytW66X_JZkLxdi76RZUY5XxnXtDH4dIPWBRsl1p
 Z8v2Y9TGvcAVySXYPYrwIlPz39oa68AHlthzlgDIDUinxJyx8_ywqSsbJ9lNjZ9tUJvmO9.3BVCD
 xhOatjXtH0Ix77J.Jgaa.oglBRfmBR6JmWH5CV5vWaagsqZXbyq0IV8kxxeiPkywYvMf5TN_JieN
 i9zSE.bPPwFsrroqIRBPX.tx4z9ThaxGXFAaZgQ3_fGxwnwH4hF9MSy7HUuD1ZvrgbAZouhj9rbo
 lpMM4.U2i62OGBfwB9g658mnqQY0E2u1Sbd3_b5RAZuSOlpqoAUmmwu8WecGNDUxlSX3FaH0Abqe
 xR.9R2rigya0.DDkKKDvyVfXb7T3GP9OB.YNjacUiN51xGZ4LrsRLZ4WICpQWh3w6WoFFy4MYhlb
 nFzj3kBZmY1zoV9c2dr2EmuYIlfNuzU5xg3xRqxu.2DKwpngjYJtPEzkq3FxnYoaphUvyIwfp2td
 u5XMLAtPsXbMvXwMxH7SSzrVrqOQAV60CPxRqzc4xZ32Y0d4B0Cg6F5v246UiBj_ChQj67tIsLwl
 YSJsisitdL_8foP8mSoP69G.sAdc2AAO5tVK8tHe6z8jNIw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic310.consmr.mail.bf2.yahoo.com with HTTP; Wed, 7 Oct 2020 16:23:37 +0000
Date: Wed, 7 Oct 2020 16:23:36 +0000 (UTC)
From: Marilyn Robert <fredodinga22@gmail.com>
Message-ID: <430277861.150035.1602087816871@mail.yahoo.com>
Subject: =?UTF-8?B?0J3QsNGY0LzQuNC70LAg0LrQsNGYINCz0L7RgdC/0L7QtNCw0YDQvtGC?=
MIME-Version: 1.0
References: <430277861.150035.1602087816871.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16795 YMailNodin Mozilla/5.0 (Windows NT 6.1)
 AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36
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
Reply-To: marilyobert@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

DQoNCtCd0LDRmNC80LjQu9CwINC60LDRmCDQs9C+0YHQv9C+0LTQsNGA0L7Rgg0KDQrQiNCw0YEg
0YHRg9C8IDY4LdCz0L7QtNC40YjQvdCwINC20LXQvdCwLCDQutC+0ZjQsCDRgdGC0YDQsNC00LAg
0L7QtCDQv9GA0L7QtNC+0LvQttC10L0g0LrQsNGA0YbQuNC90L7QvCDQvdCwINC00L7RmNC60LAs
INC+0LQg0YHQuNGC0LUg0LzQtdC00LjRhtC40L3RgdC60Lgg0LjQvdC00LjQutCw0YbQuNC4LCDQ
vNC+0ZjQsNGC0LAg0YHQvtGB0YLQvtGY0LHQsCDQvdCw0LLQuNGB0YLQuNC90LAg0YHQtSDQstC7
0L7RiNC4INC4INC+0YfQuNCz0LvQtdC00L3QviDQtSDQtNC10LrQsCDQvNC+0LbQtdCx0Lgg0L3Q
tdC80LAg0LTQsCDQttC40LLQtdCw0Lwg0L/QvtCy0LXRnNC1INC+0LQg0YjQtdGB0YIg0LzQtdGB
0LXRhtC4INC60LDQutC+INGA0LXQt9GD0LvRgtCw0YIg0L3QsCDQsdGA0LfQuNC+0YIg0YDQsNGB
0YIg0Lgg0LHQvtC70LrQsNGC0LAg0YjRgtC+INGB0LUg0ZjQsNCy0YPQstCwINC60LDRmCDQvdC1
0LAuINCc0L7RmNC+0YIg0YHQvtC/0YDRg9CzINC/0L7Rh9C40L3QsCDQvdC10LrQvtC70LrRgyDQ
s9C+0LTQuNC90Lgg0L3QsNC90LDQt9Cw0LQg0Lgg0L3QsNGI0LjRgtC1INC00L7Qu9Cz0Lgg0LPQ
vtC00LjQvdC4INCx0YDQsNC6INC90LUg0LHQtdCwINCx0LvQsNCz0L7RgdC70L7QstC10L3QuCDR
gdC+INC90LjRgtGDINC10LTQvdC+INC00LXRgtC1LCDQv9C+INC90LXQs9C+0LLQsNGC0LAg0YHQ
vNGA0YIg0LPQviDQvdCw0YHQu9C10LTQuNCyINGG0LXQu9C+0YLQviDQvdC10LPQvtCy0L4g0LHQ
vtCz0LDRgtGB0YLQstC+Lg0KDQrQlNC+0LDRk9Cw0Lwg0LrQsNGYINCy0LDRgSDQvtGC0LrQsNC6
0L4g0YHQtSDQv9C+0LzQvtC70LjQsiDQt9CwINGC0L7QsCwg0L/QvtC00LPQvtGC0LLQtdC9INGB
0YPQvCDQtNCwINC00L7QvdC40YDQsNC8INGB0YPQvNCwINC+0LQgMiwgMzAwLCAwMDAg0LXQstGA
0LAg0LfQsCDQv9C+0LzQvtGIINC90LAg0YHQuNGA0L7QvNCw0YjQvdC40YLQtSwg0YHQuNGA0L7Q
vNCw0YjQvdC40YLQtSDQuCDQv9C+0LzQsNC70LrRgyDQv9GA0LjQstC40LvQtdCz0LjRgNCw0L3Q
uNGC0LUg0LzQtdGT0YMg0LLQsNGI0LjRgtC1INGB0L7QsdGA0LDQvdC40ZjQsCAvINC+0L/RiNGC
0LXRgdGC0LLQvi4g0JfQsNCx0LXQu9C10LbQtdGC0LUg0LTQtdC60LAg0L7QstC+0Zgg0YTQvtC9
0LQg0LUg0LTQtdC/0L7QvdC40YDQsNC9INCy0L4g0LHQsNC90LrQsCDQutCw0LTQtSDRiNGC0L4g
0YDQsNCx0L7RgtC10YjQtSDQvNC+0ZjQvtGCINGB0L7Qv9GA0YPQsy4gQXBwcmVjaWF0ZdC1INGG
0LXQvdCw0Lwg0LDQutC+INC+0LHRgNC90LXRgtC1INCy0L3QuNC80LDQvdC40LUg0L3QsCDQvNC+
0LXRgtC+INCx0LDRgNCw0ZrQtSDQt9CwINC/0YDQvtC/0LDQs9C40YDQsNGa0LUg0L3QsCDQvNCw
0YHQsNC20LDRgtCwINC90LAg0LrRgNCw0LvRgdGC0LLQvtGC0L4sINGc0LUg0LLQuCDQtNCw0LTQ
sNC8INC/0L7QstC10ZzQtSDQtNC10YLQsNC70Lgg0LfQsCDRgtC+0LAg0LrQsNC60L4g0LTQsCDQ
v9C+0YHRgtCw0L/QuNGC0LUuDQoNCtCR0LvQsNCz0L7QtNCw0YDQsNC8DQrQky3Rk9CwINCc0LXR
gNC40LvQuNC9INCg0L7QsdC10YDRggpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
