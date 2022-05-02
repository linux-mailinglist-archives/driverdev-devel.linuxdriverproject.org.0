Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5AB516E52
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 May 2022 12:45:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D935A41477;
	Mon,  2 May 2022 10:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BrU42F1h6YLh; Mon,  2 May 2022 10:45:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 413C0410E9;
	Mon,  2 May 2022 10:45:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 446CF1BF957
 for <devel@linuxdriverproject.org>; Mon,  2 May 2022 10:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40B9741477
 for <devel@linuxdriverproject.org>; Mon,  2 May 2022 10:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BVPOqHeFmhjh for <devel@linuxdriverproject.org>;
 Mon,  2 May 2022 10:45:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1648410E9
 for <devel@linuxdriverproject.org>; Mon,  2 May 2022 10:45:24 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id n10so9574169ejk.5
 for <devel@linuxdriverproject.org>; Mon, 02 May 2022 03:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=QRCVia859CvI1FcacIK/vRlTfJd+SbxpysHOvI3snNU=;
 b=iP0XKDCcoeI+UaBmeg543idc8DMbNnRVk+e8RduqTn1uFjI7MdKP8k8cb/INdrY4Pw
 u5q6qgNimi+4s6KPhG/5rnIeU50fZvyPbZAzdOihT35wiSwPrtB5iOafYm0g5ZCWWOfW
 ynuKQ/tGi0SAGtul5CFTDHQyxNSpssiiqTDZ4yogvozRD7qtm4Cih1n4qp5GfhFYk/37
 yUAXLIht0t4lpY08ao+nemss2MH+jaoUY+Fkw0kEM2xxZGR3uNtz2ktFRUC2rEh0+WZD
 u9lglp3L9L8bi4Kes5Tq7CAEJ2Ys/0+pQoozV3AV8l5FW1oLRlfh5mD7bl8rWzkAtMjI
 Gzzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=QRCVia859CvI1FcacIK/vRlTfJd+SbxpysHOvI3snNU=;
 b=K5fVV7RaSasAzOhUmyDHaJZEh47qh9HiufXm6/aOM/ccKtImWyNxPHdyZ2Hv4SoGRq
 7KSIhbtylGCfdb+sV/b3OjTDYl06mnwelilFinVcsUZ5jNkJQieMIPMUwU9bosaj18fj
 FtT1NqVnh+NT44MYbgfmml65n2Fouy93nAJXuSBX0rJvzBtTMMsVSiiAZJZEbm3/lBtB
 84RR8Zy5iPGZjlGKoI98tMcYGC2EtYgZ5urQwukdZO0qVQb0Vp2CUBpSx/Jlq+BIkaiu
 fwimfYutAjAO+haF2Ul/EROOeQcaF7qAC9nwJTcPG1Y6HnC8vlqjHnaWHBNJrMW91yXL
 I7uQ==
X-Gm-Message-State: AOAM532QGDtHaGJq+L9GdmU8Kc7E2YE2KO50RQGbN4xc7a6pyBwTa1uX
 N7YNl52md9vaEUW8XbufZeZsBmsfLl7S+9eNGxE=
X-Google-Smtp-Source: ABdhPJyfLEUGpvTOJam9J0U35qOc3Dx0YlvwvFXDCTrrK01vA+9TvLQW59WpvINq8TpqIaH09ITP6F+sTbMMmoZRPZc=
X-Received: by 2002:a17:906:38d9:b0:6e8:3f85:4da3 with SMTP id
 r25-20020a17090638d900b006e83f854da3mr10830573ejd.196.1651488322855; Mon, 02
 May 2022 03:45:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3147:0:0:0:0:0 with HTTP;
 Mon, 2 May 2022 03:45:22 -0700 (PDT)
From: Frank David <frankdavidloanfirm3@gmail.com>
Date: Mon, 2 May 2022 03:45:22 -0700
Message-ID: <CACPaKzmJc8cqv6jGEPu1y715L5P+BeVJi8BQSavV5O-5favbJw@mail.gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

0JfQtNGA0LDQstC10LnRgtC1Lg0KDQrQotC+0LLQsCDQuNC80LAg0LfQsCDRhtC10Lsg0LTQsCDQ
uNC90YTQvtGA0LzQuNGA0LAg0YjQuNGA0L7QutCw0YLQsCDQvtCx0YnQtdGB0YLQstC10L3QvtGB
0YIsINGH0LUg0LMt0L0g0KTRgNCw0L3Qug0K0JTQtdC50LLQuNC0LCDRh9Cw0YHRgtC10L0g0LfQ
sNC10Lwg0L7RgiDQt9Cw0LXQvNC+0LTQsNGC0LXQuywg0L7RgtCy0L7RgNC4INC40LrQvtC90L7Q
vNC40YfQtdGB0LrQsCDQstGK0LfQvNC+0LbQvdC+0YHRgiDQt9CwDQrRgtC10LfQuCwg0LrQvtC4
0YLQviDRgdC1INC90YPQttC00LDRj9GCINC+0YIg0YTQuNC90LDQvdGB0L7QstCwINC/0L7QvNC+
0YkuINCd0LjQtSDQvtGC0L/Rg9GB0LrQsNC80LUg0LfQsNC10LzQuCDQvdCwDQrRhNC40LfQuNGH
0LXRgdC60Lgg0LvQuNGG0LAsINGE0LjRgNC80Lgg0Lgg0YTQuNGA0LzQuCDQv9GA0Lgg0Y/RgdC9
0Lgg0Lgg0YDQsNC30LHQuNGA0LDQtdC80Lgg0YPRgdC70L7QstC40Y8g0YEg0LvQuNGF0LLQsCDQ
vtGCDQrRgdCw0LzQviAzJS4g0YHQstGK0YDQttC10YLQtSDRgdC1INGBINC90LDRgSDQtNC90LXR
gSDRh9GA0LXQtyDQuNC80LXQudC7OiAoDQpmcmFua2RhdmlkbG9hbmZpcm0zQGdtYWlsLmNvbSks
INC30LAg0LTQsCDQvNC+0LbQtdC8INC00LAg0LLQuCDQv9GA0LXQtNC+0YHRgtCw0LLQuNC8INC9
0LDRiNC40YLQtQ0K0YPRgdC70L7QstC40Y8g0LfQsCDQt9Cw0LXQvC4NCg0K0JjQndCk0J7QoNCc
0JDQptCY0K8g0LrRitC8INC60YDQtdC00LjRgtC+0L/QvtC70YPRh9Cw0YLQtdC70Y8NCg0KMSkg
0JjQvNC1OiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4g
Li4uLg0KDQoyKSDQlNGK0YDQttCw0LLQsDogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLiAuDQoNCjMpINCQ0LTRgNC10YE6IC4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gLg0KDQo0KSDQn9C+0Ls6IC4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiAuLi4uLg0KDQo1KSDQodC10LzQtdC5
0L3QviDQv9C+0LvQvtC20LXQvdC40LU6IC4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4NCg0KNikg0J/RgNC+0YTQtdGB0LjRjzogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLg0KDQo3KSDQotC10LvQtdGE0L7QvTogLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uDQoNCjgpINCa0LDQvdC00LjQ
tNCw0YLRgdGC0LLQsNC70Lgg0LvQuCDRgdGC0LUg0L/RgNC10LTQuCAuLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4NCg0KOSkg0JzQtdGB0LXRh9C10L0g0LTQvtGF0L7QtDogLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLg0KDQoxMCkg0J3QtdC+0LHRhdC+0LTQ
uNC80LAg0YHRg9C80LAg0L3QsCDQt9Cw0LXQvNCwOiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLg0KDQoxMSkg0J/RgNC+0LTRitC70LbQuNGC0LXQu9C90L7RgdGCINC90LAg0LfQ
sNC10LzQsDogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLg0K
DQoxMikg0KbQtdC7INC90LAg0LfQsNC10LzQsDogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uDQoNCjEzKSDQoNC10LvQuNCz0LjRjzogLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uIC4NCg0KDQrQl9CwINCy0YDRitC3
0LrQsDogKCBmcmFua2RhdmlkbG9hbmZpcm0zQGdtYWlsLmNvbSApIHdoYXRzYXBwOyArMjM0NzAz
MjkwOTcyOA0KDQoNCtCR0LvQsNCz0L7QtNCw0YDRjywNCtCTLdC9INCk0YDQsNC90Log0JTQtdC5
0LLQuNC0DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
