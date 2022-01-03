Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D62E482FEC
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jan 2022 11:34:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4154381AEF;
	Mon,  3 Jan 2022 10:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oW7hu0F1fvMh; Mon,  3 Jan 2022 10:34:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8AB581AD7;
	Mon,  3 Jan 2022 10:34:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 887451BF95E
 for <devel@linuxdriverproject.org>; Mon,  3 Jan 2022 10:34:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83FA981AD7
 for <devel@linuxdriverproject.org>; Mon,  3 Jan 2022 10:34:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LF4cdFsLBIwp for <devel@linuxdriverproject.org>;
 Mon,  3 Jan 2022 10:34:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com
 [IPv6:2607:f8b0:4864:20::c33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F1D5381A92
 for <devel@driverdev.osuosl.org>; Mon,  3 Jan 2022 10:34:31 +0000 (UTC)
Received: by mail-oo1-xc33.google.com with SMTP id
 v30-20020a4a315e000000b002c52d555875so10604763oog.12
 for <devel@driverdev.osuosl.org>; Mon, 03 Jan 2022 02:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=o3D1ossyij/ab8MFWq1seI/hJqCrmxj6LVgRLn3c+14=;
 b=bACXr0i6Qv10yN4YgqYqOkLR7KxsgqN0KC0gqy9fsE2INryq34JUAj06GQOQWLPAoY
 sm8L973aXI+wDvHcskr1Es4Q8yos4phGsNu1QoT99i3rdNDRSDs5W0wUp+Kyd8G7tQtY
 xGXPc4yoke9kUprqz3Iod7EDCXgmTUovkNyrVBn5+0TXj2PPwcOt3/8RpFd6cBYJZtcc
 DegF4SefecN3wpEkd1mrkHoYjyWxpW3eRNXsdlpX3mcgPggWaTGoLW7dKthDfOU3phIR
 M016SUc1gX2a3kYgisI8HQq9sEDnkhfisxcdjw0L2JthqAZtY5i63u+gSFtKW2zP8Had
 96NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=o3D1ossyij/ab8MFWq1seI/hJqCrmxj6LVgRLn3c+14=;
 b=JSp2N+iTB5WPTA6E7IfOQbsM9I0BIBnQXBNkWFeDb42oIZYsb2xn7R1GEPA90be05W
 kQHXO/qJCNe5b5/UzIfqZ4YLCiVFaFyzYDySHWU7JMHo+RseGsy9wSyG6GT0WXmlR81V
 IHGatoNDEJF2EUP02O3H0eKJiWAF72uwzbV72ygdO5VDCDzo+k2pnaAFayCwLpcXa+GH
 Q3fV9IT7rLcZ6yBq51ufNJNf2MA8la4SAwdlpmYJ0HHrQbadng2cb+RJXit3e7e5tDEo
 yGI8geMBuftgTuQX+Il4XP/JwnU7bs0pIhgVFZztKK3yZs9hhKIWEui9vbCi1WZNUv3z
 D42g==
X-Gm-Message-State: AOAM531igesJFD2TlHHFMMtSrChdzFys2cCgyBoqKTdAm8XR/YVeb3Vv
 +jNZm3145zpFz3p1ugih5RzgqXgyxaqMYaozKN8=
X-Google-Smtp-Source: ABdhPJyRKb8P4cwHDjo6/zpb5Ox/8we9C6nV6YASt7ZfuwiZkHK2/FbMfs93nRuvzhTL+1HY/+OXO/kFi+v9SiEIris=
X-Received: by 2002:a4a:bf06:: with SMTP id r6mr28349726oop.62.1641206071024; 
 Mon, 03 Jan 2022 02:34:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:c60e:0:0:0:0:0 with HTTP;
 Mon, 3 Jan 2022 02:34:30 -0800 (PST)
From: orlando moris <barristermusa960@gmail.com>
Date: Mon, 3 Jan 2022 10:34:30 +0000
Message-ID: <CAOdoC_cakKJoWUs48dstO7xrHtHWDruikDQGa3e-jdmBehDBnA@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
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
Reply-To: orlandomoris56@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

0J/RgNGL0LLRltGC0LDQvdC90LUhINCf0LDQstC10LTQsNC80LvRj9C10LwsINGI0YLQviDQs9GN
0YLRiyDQu9GW0YHRgiwg0Y/QutGWINC/0YDRi9C50YjQvtGeINC90LAg0LLQsNGI0YMg0L/QsNGI
0YLQvtCy0YPRjg0K0YHQutGA0YvQvdGOLCDQvdC1INC3J9GP0Z7Qu9GP0LXRhtGG0LAg0L/QsNC8
0YvQu9C60LDQuSwg0LAg0LHRi9GeINGB0L/QtdGG0YvRj9C70YzQvdCwINCw0LTRgNCw0YHQsNCy
0LDQvdGLINCy0LDQvCDQtNC70Y8NCtGA0LDQt9Cz0LvRj9C00YMuINCjINC80Y/QvdC1INGR0YHR
htGMINC/0YDQsNC/0LDQvdC+0LLQsCDRniDQv9Cw0LzQtdGA0YsgKCQ3LjUwMC4wMDAuMDApINCw
0LQg0LzQsNC50LPQvg0K0L3Rj9Cx0L7QttGH0YvQutCwINC60LvRltC10L3RgtCwINGW0L3QttGL
0L3QtdGA0LAg0JrQsNGA0LvQsNGB0LAsINGP0LrRliDQvdC+0YHRltGG0Ywg0LDQtNC90L7Qu9GM
0LrQsNCy0LDQtSDRltC80Y8g0Lcg0LLQsNC80ZYsDQrRj9C60ZYg0L/RgNCw0YbQsNCy0LDRniDR
liDQttGL0Z4g0YLRg9GCLCDRgyDQm9C+0LzQtSDQotCw0LPQvi4g0JzQvtC5INC90Y/QsdC+0LbR
h9GL0Log0ZYg0YHRj9C8J9GPINC/0LDRgtGA0LDQv9GW0LvRliDRng0K0LDRntGC0LDQvNCw0LHR
ltC70YzQvdGD0Y4g0LDQstCw0YDRi9GOLCDRj9C60LDRjyDQt9Cw0LHRgNCw0LvQsCDRltGFINC2
0YvRhtGG0ZEgLiDQryDQt9Cy0Y/RgNGC0LDRjtGB0Y8g0LTQsCDQstCw0YEg0Y/QuiDQtNCwDQrQ
vdCw0LnQsdC70ZbQttGN0LnRiNCw0LPQsCDRgdCy0LDRj9C60LAg0L/QsNC80LXRgNC70LDQs9Cw
LCDQutCw0LEg0LLRiyDQvNCw0LPQu9GWINCw0YLRgNGL0LzQsNGG0Ywg0YHRgNC+0LTQutGWINC/
0LANCtC/0YDRjdGC0Y3QvdC30ZbRj9GFLiDQn9Cw0YHQu9GPINCy0LDRiNCw0LPQsCDRhdGD0YLQ
utCw0LPQsCDQsNC00LrQsNC30YMg0Y8g0L/QsNCy0LXQtNCw0LzQu9GOINCy0LDQvCDRgNGN0LbR
i9C80YsNCtCy0YvQutCw0L3QsNC90L3QtSDQs9GN0YLQsNCz0LAg0L/QsNCz0LDQtNC90LXQvdC9
0Y8uLCDQt9Cy0Y/QttGL0YbQtdGB0Y8g0YHQsCDQvNC90L7QuSDQv9CwINCz0Y3RgtCw0Lkg0Y3Q
u9C10LrRgtGA0L7QvdC90LDQuSDQv9C+0YjRhtC1DQoob3JsYW5kb21vcmlzNTZAZ21haWwuY29t
KQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
