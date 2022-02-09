Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED6F4AF867
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Feb 2022 18:28:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF7E260AB2;
	Wed,  9 Feb 2022 17:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ahBH-xSMb8c4; Wed,  9 Feb 2022 17:28:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD9906059B;
	Wed,  9 Feb 2022 17:28:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E7A61BF3F9
 for <devel@linuxdriverproject.org>; Wed,  9 Feb 2022 17:28:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D08E60AE7
 for <devel@linuxdriverproject.org>; Wed,  9 Feb 2022 17:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXqQD8CvbNwr for <devel@linuxdriverproject.org>;
 Wed,  9 Feb 2022 17:28:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vk1-xa2d.google.com (mail-vk1-xa2d.google.com
 [IPv6:2607:f8b0:4864:20::a2d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9058A60AB2
 for <devel@driverdev.osuosl.org>; Wed,  9 Feb 2022 17:28:21 +0000 (UTC)
Received: by mail-vk1-xa2d.google.com with SMTP id z15so1556034vkp.13
 for <devel@driverdev.osuosl.org>; Wed, 09 Feb 2022 09:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/QhIhDoArxohnthko9E25EzdM1VnFk9yIV0xDfGXawQ=;
 b=Cyd7uWpzM49PXZBfuKtWz47wHIXtQ4MK95z0QaHkdG9UMnoSH7CErbqfYpjk4Tvm9e
 NqlFl7NiurIkKTYg1MWkF5+bZnKYBMrVzHYvYG61bRWC2hdS3uPSJuNXuu9gB4MlV0MH
 1Pgn5VW77VYK0xQbSkRwViI+CqsogMbxrMroheks7JMWNibENa7l8XjwALzGGX36lMne
 f3b+JoxQ2zTuir3DlsYUfzfZLavGoLMQEn3PQ1SqGQBPTzZ3Iv2YPxXllPqetLbW6pYD
 bOvA2RZINvSj7O3awJISxEp4ed7lTann1SJfX0YZXAt0LydGDXRr5zeUpHfIRHFy/72z
 //rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=/QhIhDoArxohnthko9E25EzdM1VnFk9yIV0xDfGXawQ=;
 b=wY9hln5cY3KxruI5+bG3p3xFRPrx0DTD9mKJOSI3f/5xAkkojQw14bkNszVzEVZ/t+
 sprxCvcnT1FoT6fP8G+DAVSqS5sae/jGOlxVMZ16FoQ9CWu//IDoPZCjLXQseX2KIDCO
 8oO2PThp37BOnWyMrdFzwXRJ8V/bWex+nYJJToQSTUfHWbJCI4xhEvh/dbFT1OJrdgZi
 SKgb9TEyveWLMgMdaIDFeOZDtrN/ezb93XmOdWRSMAZ2XM/dEErKt5kLblKcSaANYKW+
 9jLqD6bnG/2n6K+SDZe68EYQj34dKn7tK1T3UCRXxriul5n3fqEizYUPd/u4b1KmdNUp
 bi7Q==
X-Gm-Message-State: AOAM530zeekTP+ZEm2Q7+PmiSvCEKVGjbqWtpL/oAOxyYSshANJIdRW+
 SrI3HfLRfUvYOPqbwhJeiXRffkocdrUeyCc7aEc=
X-Google-Smtp-Source: ABdhPJyWkOK6h7GjTQuuhXIHPoaPQ0lKHADdQKCkEikoXZP/S+2VEGeET/VvqJLQaCCH9qiz70Gt8FWWv/A8gKLC8Wg=
X-Received: by 2002:a05:6122:983:: with SMTP id g3mr602609vkd.23.1644427700212; 
 Wed, 09 Feb 2022 09:28:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:8fc5:0:b0:282:56bb:311c with HTTP; Wed, 9 Feb 2022
 09:28:19 -0800 (PST)
From: orlando moris <barristermusa32@gmail.com>
Date: Wed, 9 Feb 2022 17:28:19 +0000
Message-ID: <CA+gLmc8MKWJcLe_Cs2ZaOYu1j0P55jEhG68VL_j_a-5ULN0dcg@mail.gmail.com>
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

0KHTmdC70LXQvNC10YLRgdGW0Lcg0LHQtSwg0YHRltC30LTRltKjINC/0L7RiNGC0LAg0LbTmdGI
0ZbQs9GW0qPRltC30LPQtSDQutC10LvQs9C10L0g0LHSsdC7INGN0LvQtdC60YLRgNC+0L3QtNGL
0psg0YXQsNGCDQrSm9Cw0YLQtSDQtdC80LXRgSwg0LHRltGA0LDSmyDRgdGW0LfQtNGW0qMg0pvQ
sNGA0LDRg9GL0qPRi9C3INKv0YjRltC9INCw0YDQvdCw0LnRiyDRgdGW0LfQs9C1INC20ZbQsdC1
0YDRltC70LPQtdC90ZbQvQ0K0YXQsNCx0LDRgNC70LDQudC80YvQty4g0JzQtdC90LTQtSAoJDcu
NTAwLjAwMC4wMCkg0rHRgdGL0L3Ri9GB0YvQvCDQsdCw0YAsINGB0ZbQt9Cx0LXQvSDQsNGC0YLQ
sNGBLCDQsdKx0YDRi9C9DQrQvtGB0YvQvdC00LAg0JvQvtC80LUg0KLQvtCz0L7QtNCwINC20rHQ
vNGL0YEg0ZbRgdGC0LXQs9C10L0g0LbTmdC90LUg0YLSsdGA0LDRgtGL0L0g0LzQsNGA0pvSsdC8
INC60LvQuNC10L3RgtGW0Lwg0LjQvdC20LXQvdC10YANCtCa0LDRgNC70L7RgSDSm9Cw0LvQtNGL
0YDQtNGLLiDQnNC10L3RltKjINC80LDRgNKb0rHQvCDQutC70LjQtdC90YLRltC8INC80LXQvSDQ
vtGC0LHQsNGB0YvQvCDQttC+0Lsg0LDQv9Cw0YLRi9C90LAg0rHRiNGL0YDQsNC/LA0K0L7Qu9Cw
0YDQtNGL0qMg06nQvNGW0YDRltC9INKb0LjQtNGLLiAuINCc0LXQvSDRgdGW0LfQsdC10L0g0LzQ
sNGA0pvSsdC80L3Ri9KjINC20LDSm9GL0L0g0YLRg9GL0YHRgtCw0YDRiyDRgNC10YLRltC90LTQ
tQ0K0YXQsNCx0LDRgNC70LDRgdGL0L8g0LbQsNGC0YvRgNC80YvQvSwg0YHQvtC90LTRi9Kb0YLQ
sNC9INGB0ZbQtyDQsNKb0YjQsNC90Ysg0YjQsNKT0YvQvNC00LDRgNGL0qPRi9C3INCx0L7QudGL
0L3RiNCwINCw0LvQsA0K0LDQu9Cw0YHRi9C3LiDQotC10Lcg0LbQsNGD0LDQvyDQsdC10YDQs9C1
0L3QvdC10L0g0LrQtdC50ZbQvSDQvNC10L0g0YHRltC30LPQtSDRgNC10LbQuNC80LTQtdGAINGC
0YPRgNCw0LvRiw0K0YXQsNCx0LDRgNC70LDQudC80YvQvQ0K0L7RgdGLINC60LXQu9GW0YHRltC8
0L3RltKjINC+0YDRi9C90LTQsNC70YPRiy4sINC+0YHRiyDRjdC70LXQutGC0YDQvtC90LTRi9Kb
INC/0L7RiNGC0LAg0LDRgNKb0YvQu9GLINC80LDSk9Cw0L0g0YXQsNCx0LDRgNC70LDRgdGL0qPR
i9C3DQoob3JsYW5kb21vcmlzNTZAZ21haWwuY29tICkNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
