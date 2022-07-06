Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D44568F28
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jul 2022 18:29:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EA9560BFC;
	Wed,  6 Jul 2022 16:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EA9560BFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z9pn7bj-ogC6; Wed,  6 Jul 2022 16:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 434C1600CA;
	Wed,  6 Jul 2022 16:29:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 434C1600CA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 078A51BF2E4
 for <devel@linuxdriverproject.org>; Wed,  6 Jul 2022 16:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CECD8833CD
 for <devel@linuxdriverproject.org>; Wed,  6 Jul 2022 16:29:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CECD8833CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0UKTXgPzIZ0A for <devel@linuxdriverproject.org>;
 Wed,  6 Jul 2022 16:29:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 624FA833CA
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 624FA833CA
 for <devel@driverdev.osuosl.org>; Wed,  6 Jul 2022 16:29:18 +0000 (UTC)
Received: by mail-oi1-x231.google.com with SMTP id s188so20267044oib.6
 for <devel@driverdev.osuosl.org>; Wed, 06 Jul 2022 09:29:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=Uk0kx353H+gGEfDDNFmV1k9XciWZTV5g6S3ovbgNaYc=;
 b=sYBWKCDGVay4ExSPxSSEUqq8tzVEA44L6+ufMSTlPdm3kLT3VHP+AqjnFXwehgzd8X
 N1flUWb3qcff3pgCmao7NDint/Fx0y7YUTPmyOVkA99DYm2mU8F2KFCwQHgrJ6NARN/+
 /qTNzU0KNdAPAb5bwhyhbyy6W3xSHecMaytLpkm2/DCAeh4CYo7HmmGv5w8DfafThDHH
 12F9LXG09v+N+i4TytXK5H5eaUErJrJBd26xwGL+T+xntrGOj43qk9prhWo/T0v5zlJI
 7lcu7wLlKANT1HqY6SECZO4OPNtAKU3uncGipcgOalzXVs2wvhfwqveBLz8TMuIo2y7v
 9Oow==
X-Gm-Message-State: AJIora81lg5dtKrOMXiVD6rqBxb9AjuHrT7JchRSiQ26cr9reehUKcta
 7r0Uh7va6VApgWZO2O89mETsB14gdm/pJ3CvTyo=
X-Google-Smtp-Source: AGRyM1snGvGIlIST09vmCTZs7edOWS2Yh4wQfFdx9h4AV1wVLC16KW3jLcRMC+5wNKv9KKxAsx9F0eMUhGwhqD0KVu4=
X-Received: by 2002:aca:1c10:0:b0:337:adbb:5d00 with SMTP id
 c16-20020aca1c10000000b00337adbb5d00mr12003977oic.232.1657124957435; Wed, 06
 Jul 2022 09:29:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:4545:0:0:0:0:0 with HTTP;
 Wed, 6 Jul 2022 09:29:16 -0700 (PDT)
From: Kayla Manthey <avrielharry73@gmail.com>
Date: Wed, 6 Jul 2022 16:29:16 +0000
Message-ID: <CAFSKFDZw23aNOi-cH8PFvYJd_r+Wxw2SMcEo5mjLc1auuPKc_g@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Uk0kx353H+gGEfDDNFmV1k9XciWZTV5g6S3ovbgNaYc=;
 b=oC0nJto95Dho0TxqhO4+W3M/rxaAXhxQyIvMJm6GftECIiYMLnFg7bqSSePV8lkw5E
 7juP+oS8l0+MfpFqOAunVBm4e59OEQsaSd1B4UT+sVk5t2Nhz141yTWVE+Ure3UIsOfX
 TOb6yUcOO0rnk2w1FgwfaoPs0rOM33a8hYicOGntVb/SSmaC2V9z9bZFkFs99vGCQQ8B
 VDtWvYcfXNW1VeTXRkGNMRRLBMeD5Rm5gyiE708cmMSvVUuFT1oY+6n5adetWyHmhDhb
 M0iYZjdaKHEYeQ1SKXrccPvwUjW+fIFwQxoelH/ZwuDbTSGvaqlqtdZaD+8M4a+rqK2T
 48pw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=oC0nJto9
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
Reply-To: sgtkaylla202@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gDQrQl9C00YDQsNCy0L4g0LTRgNCw0LPQsA0K0JLQtSDQvNC+0LvQsNC8LCDQtNCw0LvQuCDR
mNCwINC00L7QsdC40LLRgtC1INC80L7RmNCw0YLQsCDQv9GA0LXRgtGF0L7QtNC90LAg0L/QvtGA
0LDQutCwLCDQstC4INCx0LvQsNCz0L7QtNCw0YDQsNC8Lg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
