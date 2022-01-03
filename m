Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E868482FF6
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jan 2022 11:37:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 538A140297;
	Mon,  3 Jan 2022 10:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8MWOJaOrvl58; Mon,  3 Jan 2022 10:37:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFB1E4028D;
	Mon,  3 Jan 2022 10:37:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 787741BF95E
 for <devel@linuxdriverproject.org>; Mon,  3 Jan 2022 10:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 66F3F817FF
 for <devel@linuxdriverproject.org>; Mon,  3 Jan 2022 10:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6HD9GBkw8_GF for <devel@linuxdriverproject.org>;
 Mon,  3 Jan 2022 10:37:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com
 [IPv6:2607:f8b0:4864:20::c32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E09C3813C4
 for <devel@driverdev.osuosl.org>; Mon,  3 Jan 2022 10:37:28 +0000 (UTC)
Received: by mail-oo1-xc32.google.com with SMTP id
 y13-20020a4a9c0d000000b002da7c495563so10595241ooj.10
 for <devel@driverdev.osuosl.org>; Mon, 03 Jan 2022 02:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=rfhOYuWGFPy5GQe6nWsDtjlBFI5XE7OxdQg1E1gg4P8=;
 b=JFAHB8wc7J1FCn85OuMomIOM6AwtvfNi81JF36DZj0hsowRHq9JinyRx0geHgBVqSH
 wLbwwo5JcNXaFucTRltheITyu+XSLbCOk7Hunekpjd8JR2FtZFbjTFb8cJ5O1fF4wlQA
 vloHSGnrSUQ7hHfi5c0N68G55cBmqxiVUzz2rKesS89CRItHC0ESHKLiWKBJykmfALNY
 yQqDFjou76LQNsFn6ZDcUbAUpq55m2mJoox3asp0yqO8E7MdErHY2HLmUwEdG3W0WWtu
 j8hxqUZV6KPePea1wWtTrepOpXoluD+KMSuGn16bw7jLQt1RsvddqYrzhOY55iLWNPaO
 CFXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=rfhOYuWGFPy5GQe6nWsDtjlBFI5XE7OxdQg1E1gg4P8=;
 b=ivv6mLNBbxfR6RZIzylozYbGwbLFbVo36DWRnivtL/4haXJKqtKcU03dbmLxpxI0FX
 hDMmUTGbR/nNoyyaWvkuzSjC6pg+VSP/GnktdLFC5g9TG1EDUL7SmdT/I86xS7UlzNFb
 VZ13kdz0vODxVBJ2NaZ7NJSfYixlprfuVI6LMZbQiwQdFHY/cCO2jYIo41qzCk1UGdZ4
 LzfkChc8tLI+AHeBt0lQw1fffU+dGPNmCJV64XxDdm1PnyTscGCF9PwrUnpt/nVdiTEp
 Eg3dU+bmd7jCsLvZA6LbnBAAmEu/vDoiiN38fZclf7OR6bA2mJxh2UI1d/sM+0B1gln0
 w+6Q==
X-Gm-Message-State: AOAM533tZRiC3au3gAxHBI5cdfthhNnf42T8EPT363DpdrRI4+iwH4q7
 zaHzoSoJi8Yze+gII6HqkdbfYDORPscxI5R2nOQ=
X-Google-Smtp-Source: ABdhPJwyhcRQmbvoQiE+y/0OX0Ak+BJ7hIp3/fBZqkzqs2swEWw3yjwZdfxthcqJ3xegduZ2hWggVcrD/fWc0sygW/E=
X-Received: by 2002:a4a:bf06:: with SMTP id r6mr28355770oop.62.1641206247822; 
 Mon, 03 Jan 2022 02:37:27 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:c60e:0:0:0:0:0 with HTTP;
 Mon, 3 Jan 2022 02:37:27 -0800 (PST)
From: orlando moris <barristermusa960@gmail.com>
Date: Mon, 3 Jan 2022 10:37:27 +0000
Message-ID: <CAOdoC_fLEOP2bNpAOJtHd2UC+ds=MVgumy4RjsXGR4TaqXT=WQ@mail.gmail.com>
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

LS0gDQrQn9GA0YvQstGW0YLQsNC90L3QtSEg0J/QsNCy0LXQtNCw0LzQu9GP0LXQvCwg0YjRgtC+
INCz0Y3RgtGLINC70ZbRgdGCLCDRj9C60ZYg0L/RgNGL0LnRiNC+0Z4g0L3QsCDQstCw0YjRgyDQ
v9Cw0YjRgtC+0LLRg9GODQrRgdC60YDRi9C90Y4sINC90LUg0Lcn0Y/RntC70Y/QtdGG0YbQsCDQ
v9Cw0LzRi9C70LrQsNC5LCDQsCDQsdGL0Z4g0YHQv9C10YbRi9GP0LvRjNC90LAg0LDQtNGA0LDR
gdCw0LLQsNC90Ysg0LLQsNC8INC00LvRjw0K0YDQsNC30LPQu9GP0LTRgy4g0KMg0LzRj9C90LUg
0ZHRgdGG0Ywg0L/RgNCw0L/QsNC90L7QstCwINGeINC/0LDQvNC10YDRiyAoJDcuNTAwLjAwMC4w
MCkg0LDQtCDQvNCw0LnQs9C+DQrQvdGP0LHQvtC20YfRi9C60LAg0LrQu9GW0LXQvdGC0LAg0ZbQ
vdC20YvQvdC10YDQsCDQmtCw0YDQu9Cw0YHQsCwg0Y/QutGWINC90L7RgdGW0YbRjCDQsNC00L3Q
vtC70YzQutCw0LLQsNC1INGW0LzRjyDQtyDQstCw0LzRliwNCtGP0LrRliDQv9GA0LDRhtCw0LLQ
sNGeINGWINC20YvRniDRgtGD0YIsINGDINCb0L7QvNC1INCi0LDQs9C+LiDQnNC+0Lkg0L3Rj9Cx
0L7QttGH0YvQuiDRliDRgdGP0Lwn0Y8g0L/QsNGC0YDQsNC/0ZbQu9GWINGeDQrQsNGe0YLQsNC8
0LDQsdGW0LvRjNC90YPRjiDQsNCy0LDRgNGL0Y4sINGP0LrQsNGPINC30LDQsdGA0LDQu9CwINGW
0YUg0LbRi9GG0YbRkSAuINCvINC30LLRj9GA0YLQsNGO0YHRjyDQtNCwINCy0LDRgSDRj9C6INC0
0LANCtC90LDQudCx0LvRltC20Y3QudGI0LDQs9CwINGB0LLQsNGP0LrQsCDQv9Cw0LzQtdGA0LvQ
sNCz0LAsINC60LDQsSDQstGLINC80LDQs9C70ZYg0LDRgtGA0YvQvNCw0YbRjCDRgdGA0L7QtNC6
0ZYg0L/QsA0K0L/RgNGN0YLRjdC90LfRltGP0YUuINCf0LDRgdC70Y8g0LLQsNGI0LDQs9CwINGF
0YPRgtC60LDQs9CwINCw0LTQutCw0LfRgyDRjyDQv9Cw0LLQtdC00LDQvNC70Y4g0LLQsNC8INGA
0Y3QttGL0LzRiw0K0LLRi9C60LDQvdCw0L3QvdC1INCz0Y3RgtCw0LPQsCDQv9Cw0LPQsNC00L3Q
tdC90L3Rjy4sINC30LLRj9C20YvRhtC10YHRjyDRgdCwINC80L3QvtC5INC/0LAg0LPRjdGC0LDQ
uSDRjdC70LXQutGC0YDQvtC90L3QsNC5INC/0L7RiNGG0LUNCihvcmxhbmRvbW9yaXM1NkBnbWFp
bC5jb20pDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
