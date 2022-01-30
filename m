Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AA34A3A9C
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jan 2022 22:52:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83286607B0;
	Sun, 30 Jan 2022 21:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xRt8h4X0JK6F; Sun, 30 Jan 2022 21:51:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E13860E8A;
	Sun, 30 Jan 2022 21:51:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECDBF1BF3E3
 for <devel@linuxdriverproject.org>; Sun, 30 Jan 2022 21:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAD40410AF
 for <devel@linuxdriverproject.org>; Sun, 30 Jan 2022 21:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J85pohgSuAwY for <devel@linuxdriverproject.org>;
 Sun, 30 Jan 2022 21:51:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com
 [IPv6:2607:f8b0:4864:20::b2a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE4D6409B6
 for <devel@driverdev.osuosl.org>; Sun, 30 Jan 2022 21:51:51 +0000 (UTC)
Received: by mail-yb1-xb2a.google.com with SMTP id p5so34739971ybd.13
 for <devel@driverdev.osuosl.org>; Sun, 30 Jan 2022 13:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=JCuPgYmf59EyBeh8RufoYHn21IoQWKpsI9LWJnnrufE=;
 b=mjSFYPmHZdafpJuOlTMKMhBcvOgaA8IZKGxxQu0pquoedz2wMkPQdbBtQgOb++4BBT
 6IEil5bRjKOJ4QclmI9nBrYtS43muge9FqFMIc8ggh7o2BLMWLLkTopPAVQyP5B9OYBv
 xSP2B+qktJcFTfwlMUsv8iH7PwA027X8YByUgNnAgtpTPn6xBqwtCSVAZED5jNILl8Ci
 bxmp3VZjovLcb+PGLQ1mD3HlkMMtm1eBmGST/mOAzcaFfcHiQAJnISqioS8yLjI3NJZj
 KIht8BTohvrTdrbT/KzQ5QXYekdvGn27MEGKeTuhlz2OwOfe/1vTac0NCfqho4nej86q
 L5tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=JCuPgYmf59EyBeh8RufoYHn21IoQWKpsI9LWJnnrufE=;
 b=F2QszS9FjIrO3SGC0wEGj+9YNwbCZwNbC4whPBJ6nWQFEPQWP+jZciLOXXwWOF04md
 /tloodyequRoxW0V8QL/k6P/82gGt8kDSFsaF6/OCdQ6tJye/gu3zcB1vTNKwQFn+gPb
 VM1L3h/zbNoZg0NdtDCqTecvLqXFxiwyohTnk/q+ZEoyAtcUiwpYjDQrVYgaG4cWhp/g
 DA1D+Cepp6LTAsNhT8PRHSi4VDKJXnJ9CPJycr+9/qAfit/tLr6f0f/ZHJpfRx1NiJqP
 f4zKT+/kD2lL8ZvDim4NXPE8iMq+uVWtOhCL/P5npQuPW6xrPP9FYZdt0LoAH2Z80xjq
 f7ig==
X-Gm-Message-State: AOAM533NZIwx1F9DwbZ7pmVtG1RPEsUu8+eRJyChIPpEnDK7hoV1sluI
 v0kaUX91qFPvS+yRpaNCrOXvz8iqYwY4hJd5OOc=
X-Google-Smtp-Source: ABdhPJz2EbkM9W5AY5qSKj10no4lHh19yqzXJ6tpjhVTMcVDdkiFIu2fID8WZZkb9LyADQX4CZezv1lsthpw99zaOLk=
X-Received: by 2002:a25:30c4:: with SMTP id
 w187mr27419424ybw.139.1643579510926; 
 Sun, 30 Jan 2022 13:51:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:ab4e:b0:202:ec22:6a7d with HTTP; Sun, 30 Jan 2022
 13:51:50 -0800 (PST)
From: Hannah vlastuin <adjegankoudjo@gmail.com>
Date: Sun, 30 Jan 2022 21:51:50 +0000
Message-ID: <CAP5ejOknGrPjRGD8uT1VDV2umbCGb6CCAXSzjkbpYXPXbT+pyA@mail.gmail.com>
Subject: =?UTF-8?B?0J/QoNCY0JLQldCi?=
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
Reply-To: Hannahvlastui@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gDQrQotGLINC/0L7Qu9GD0YfQuNC7INC80L7QtSDQv9C40YHRjNC80L4gPw0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
