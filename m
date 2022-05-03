Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBEA517FC2
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 May 2022 10:30:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B01FB82C33;
	Tue,  3 May 2022 08:30:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Fpu1T5UrVEV; Tue,  3 May 2022 08:30:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F36381902;
	Tue,  3 May 2022 08:30:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 634771BF2B8
 for <devel@linuxdriverproject.org>; Tue,  3 May 2022 08:30:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51C8E41622
 for <devel@linuxdriverproject.org>; Tue,  3 May 2022 08:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DsYr36uPDX2X for <devel@linuxdriverproject.org>;
 Tue,  3 May 2022 08:30:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com
 [IPv6:2607:f8b0:4864:20::1134])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E63941620
 for <devel@linuxdriverproject.org>; Tue,  3 May 2022 08:30:17 +0000 (UTC)
Received: by mail-yw1-x1134.google.com with SMTP id
 00721157ae682-2f83983782fso172217447b3.6
 for <devel@linuxdriverproject.org>; Tue, 03 May 2022 01:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=imkzOOm11fZfVhhu7YTad+xkt2EA3V5dXbkEnDE5CzQ=;
 b=XGlJNs/0ypag8YHNdEdalDP6uD9Wh2eTHym9WKCmoT40XSjW8gpIVb68sJJHUMSpdq
 FnVq//OsEjWWCO9RV0RBxegyFjVREE07HtUqFgaey+N39ViMRrmCArzHcK6foQS2n72L
 70YEOc1CWeYg3y3jhCgdgDlInq3ZkWk0fp38YW4V8Q58qd46VopfhDJiDakQUwcfoIp2
 xi1XuL2LRATKfLnf1AqCQABzHsJoUan+JyJI3UTsRu3by4RF3wa3zG+Atk8ZOv3OD1R0
 1uxtOyD8mc/Xq4WuezIWD2aDa4ZL76zOmrXJV8uRtvxqC1WjNt2flW55mqHDQbxVo69A
 RsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=imkzOOm11fZfVhhu7YTad+xkt2EA3V5dXbkEnDE5CzQ=;
 b=QDEyzX2Cz2YdNDiHb/wgQMKxJq/CmvNTTZ4FGoQg7BI3WLecXz+nQ/rnbX6GECnru0
 EGcWQdsxJb8DcVBHs6ic3b+yWppD0TPQmyGFZcSsAc/lK8/i4L3rWPOworLI2h/xjDyR
 HdfD5oFtbL3tm8S5R7cnBnfPHkMVt84gz4sa0cdm1BQ7WCK7Vu43dBPX3nY9QdvZu+AV
 W/wD3apuIEH54z7jR1DEHEjZOVZ1GS5j/Hou8ppxkVsjg+3ymeBWczv95bAc7SxXlNJ+
 sPGh5BW4I2C+j3gQaqeu1LExRWrxSuMGyhaR+O/Ezk+705WG/JzrcdUo3rQx6+F5ewvT
 OC7w==
X-Gm-Message-State: AOAM532SgBc71eZP1aflDVzmhiVHpZPbisdCWV2wejPhouDB3qAMP950
 hpodlQtMA3QihiMDPwAKTHfFGCxn/RjTNM2p8xg=
X-Google-Smtp-Source: ABdhPJzzsI9mGhgmDJOLHu1fCqbtvua5UCpn98yo3VO58C8uPEjHvPX053Aftfv0CCe3xY7EIQc56m5dXz4SpbNQeG8=
X-Received: by 2002:a81:5ad6:0:b0:2f8:f7d5:dc6c with SMTP id
 o205-20020a815ad6000000b002f8f7d5dc6cmr11211467ywb.396.1651566616520; Tue, 03
 May 2022 01:30:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7110:7019:b0:173:e2d7:681d with HTTP; Tue, 3 May 2022
 01:30:16 -0700 (PDT)
From: kate lord <katelordloancompany90@gmail.com>
Date: Tue, 3 May 2022 01:30:16 -0700
Message-ID: <CAG1K+31hkJOKZZQmd2rs-xHVvJsCm_wJGX+rz48KddxX9tZFbA@mail.gmail.com>
Subject: =?UTF-8?B?0J7RhNC10YDRgtCwINC30LAg0LfQsNC10Lw=?=
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
Reply-To: katelordloancompany90@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

0JfQtNGA0LDQstC10LnRgtC1Lg0KDQrQotC+0LLQsCDQuNC80LAg0LfQsCDRhtC10Lsg0LTQsCDQ
uNC90YTQvtGA0LzQuNGA0LAg0YjQuNGA0L7QutCw0YLQsCDQvtCx0YnQtdGB0YLQstC10L3QvtGB
0YIsINGH0LUgTXJzLkthdGUgTG9yZCwNCtGH0LDRgdGC0LXQvSDQt9Cw0LXQvCDQvtGCINC60YDQ
tdC00LjRgtC+0YAsINC+0YLQstC+0YDQuCDQuNC60L7QvdC+0LzQuNGH0LXRgdC60LAg0LLRitC3
0LzQvtC20L3QvtGB0YIg0LfQsCDRgtC10LfQuCwg0LrQvtC40YLQvg0K0YHQtSDQvdGD0LbQtNCw
0Y/RgiDQvtGCINGE0LjQvdCw0L3RgdC+0LLQsCDQv9C+0LzQvtGJLiDQndC40LUg0L7RgtC/0YPR
gdC60LDQvNC1INC30LDQtdC80Lgg0L3QsCDRhNC40LfQuNGH0LXRgdC60Lgg0LvQuNGG0LAsDQrR
hNC40YDQvNC4INC4INGE0LjRgNC80Lgg0L/RgNC4INGP0YHQvdC4INC4INGA0LDQt9Cx0LjRgNCw
0LXQvNC4INGD0YHQu9C+0LLQuNGPINGBINC70LjRhdCy0LAg0L7RgiDRgdCw0LzQviAzJS4NCtGB
0LLRitGA0LbQtdGC0LUg0YHQtSDRgSDQvdCw0YEg0LTQvdC10YEg0YfRgNC10Lcg0LjQvNC10LnQ
uzogKCBrYXRlbG9yZGxvYW5jb21wYW55OTBAZ21haWwuY29tKSwNCtC30LAg0LTQsCDQvNC+0LbQ
tdC8INC00LAg0LLQuCDQv9GA0LXQtNC+0YHRgtCw0LLQuNC8INC90LDRiNC40YLQtSDRg9GB0LvQ
vtCy0LjRjyDQt9CwINC30LDQtdC8Lg0KDQrQmNCd0KTQntCg0JzQkNCm0JjQryDQutGK0Lwg0LrR
gNC10LTQuNGC0L7Qv9C+0LvRg9GH0LDRgtC10LvRjw0KDQoxKSDQmNC80LU6IC4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiAuLi4uDQoNCjIpINCU0YrRgNC2
0LDQstCwOiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uIC4N
Cg0KMykg0JDQtNGA0LXRgTogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLiAuDQoNCjQpINCf0L7QuzogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uIC4uLi4uDQoNCjUpINCh0LXQvNC10LnQvdC+INC/0L7Qu9C+0LbQtdC9
0LjQtTogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLg0KDQo2KSDQn9GA
0L7RhNC10YHQuNGPOiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uDQoNCjcpINCi0LXQu9C10YTQvtC9OiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4NCg0KOCkg0JrQsNC90LTQuNC00LDRgtGB0YLQstCw0LvQuCDQ
u9C4INGB0YLQtSDQv9GA0LXQtNC4IC4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLg0K
DQo5KSDQnNC10YHQtdGH0LXQvSDQtNC+0YXQvtC0OiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uDQoNCjEwKSDQndC10L7QsdGF0L7QtNC40LzQsCDRgdGD
0LzQsCDQvdCwINC30LDQtdC80LA6IC4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
DQoNCjExKSDQn9GA0L7QtNGK0LvQttC40YLQtdC70L3QvtGB0YIg0L3QsCDQt9Cw0LXQvNCwOiAu
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uDQoNCjEyKSDQptC1
0Lsg0L3QsCDQt9Cw0LXQvNCwOiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4NCg0KMTMpINCg0LXQu9C40LPQuNGPOiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uIC4NCg0K0JfQsCDQstGA0YrQt9C60LA6ICgga2F0ZWxv
cmRsb2FuY29tcGFueTkwQGdtYWlsLmNvbSApIHdoYXRzYXBwOyArMjM0NzAzMjkwOTcyOA0KDQoN
CtCR0LvQsNCz0L7QtNCw0YDRjywNCtCTLdC20LAg0JrQtdC50YIg0JvQvtGA0LQNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
