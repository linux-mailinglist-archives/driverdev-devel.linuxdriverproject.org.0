Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EF874F569
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jul 2023 18:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4F2D610EF;
	Tue, 11 Jul 2023 16:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4F2D610EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oy0GPFjGdRAJ; Tue, 11 Jul 2023 16:33:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8225D60FA5;
	Tue, 11 Jul 2023 16:33:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8225D60FA5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4735F1BF426
 for <devel@linuxdriverproject.org>; Tue, 11 Jul 2023 16:33:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2DE6341481
 for <devel@linuxdriverproject.org>; Tue, 11 Jul 2023 16:33:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DE6341481
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bTGqZkzjo0nl for <devel@linuxdriverproject.org>;
 Tue, 11 Jul 2023 16:33:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6908740144
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6908740144
 for <devel@driverdev.osuosl.org>; Tue, 11 Jul 2023 16:33:12 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-9936b3d0286so761707066b.0
 for <devel@driverdev.osuosl.org>; Tue, 11 Jul 2023 09:33:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689093190; x=1691685190;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VWtpptzPuOCoLkyZBw7yYHV5FeI36rJVjotbONsdA94=;
 b=G2Ogr7Z1iMBiqCwzQU0P/WezFhU1dG0Y40LDecftMtbOJ5z/XEoRaRR56xl2zz6IJ0
 88Z9xhxhniwPQUDid10nYuznd9NzxSrBBwp27Q5Dew62rSblzrcx/h0ZGikTcaGYrabO
 +6xyCCnNS+beGZO/3a01Q8kdcxFl6PRM1yoMpskYoEXv3nbvN3U6t41PwNbL7yZHPZU9
 2mB3QOVVcMwDvKR7v9BbzO7JB3euyyZXZh+1uxxHJTwOBcCYFbix31r97XBOjHNtO7RD
 9Ayu+tAhlIwLEYPnfdypgYQQVb2QxUuRRXRTa1hKbLd+TEES3oeqikO4DlPnQAhxKaEi
 q0mQ==
X-Gm-Message-State: ABy/qLY/RaCXKfABtBuP8ltsJbNUCK/pInCYRca/ZuILi8uCi90H4vzt
 SoAF9iXDgiTITO9Di0/12orwUvoen9GwaLUZ130=
X-Google-Smtp-Source: APBJJlFEu3Ow4Oy8VJG1p8brIJmDDdnPvd1L3PSO/1zY7vq58x6pAANMJ9QDsB9miB8sOCAt3mK+ajsdoena6+/0jco=
X-Received: by 2002:a17:906:3f5c:b0:992:1bb2:61d9 with SMTP id
 f28-20020a1709063f5c00b009921bb261d9mr14976418ejj.54.1689093190306; Tue, 11
 Jul 2023 09:33:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:1c16:b0:986:7a95:9cc0 with HTTP; Tue, 11 Jul 2023
 09:33:09 -0700 (PDT)
From: Veronica Lee <nd4846496@gmail.com>
Date: Tue, 11 Jul 2023 18:33:09 +0200
Message-ID: <CAPadVRwOeoDAOjtdnw=-fNtkaK=vrjXOxD_AoS1_+SVii+tHAg@mail.gmail.com>
Subject: re
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689093190; x=1691685190;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=VWtpptzPuOCoLkyZBw7yYHV5FeI36rJVjotbONsdA94=;
 b=lMATd9L22A2NVmahSp4RUJ/2uOeAu4/98BxFtg4FlcCVAKYoHGCdRDmL5lbe83SJe0
 hIgRtCC/HS+QdPyDgSJlXENWeVaopLBub1IgPQJsac7QXhIGanJyjbJwTVTW30YOXOcR
 ELMBmHmdP6KhmygNRFlfu0WU1p1o2CjpyK1kvatnrlyvfV6ZLoVdqv2JsZY9HhLbBSZv
 Hner+z+INzrBbX64O1XfrrkyfR96YERCp0CrmEXRE9nhplVcuvxyZO7cb/aT6aIGpI+0
 e/7uEDOUsHTi9nMU6cdx0mVaRwDq64k+a5OoBU5u/Of/SemLgIknKj1EZ1Brr+87oVQ/
 UO/A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=lMATd9L2
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
Reply-To: mrsvl06@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

16nXnNeV150g15nXp9eZ16jXqteZINep157Xl9eUINec15TXkteZ16Ig15DXnNeZ15og16nXldeR
INeZ16kg15zXmSDXnteZ15nXnCDXkdei15HXqCDXnNec15Ag16rXkteV15HXlCDXkNeg15kg157X
lteb15nXqA0K15zXkteR15kg15fXldeW15Qg16nXkNeg15kg16jXldem15Qg15zXqdeq16Mg15DX
ldeq15og15fXlteV16gg15DXnNeZ15kg15zXpNeo15jXmdedINeg15XXodek15nXnSDXkNeg15kg
157Xl9eb15QNCteQ16DXkA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
