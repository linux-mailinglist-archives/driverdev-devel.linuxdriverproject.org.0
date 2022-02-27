Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC134C5B03
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Feb 2022 13:20:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EE7B60B75;
	Sun, 27 Feb 2022 12:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XBlO98QfY2IL; Sun, 27 Feb 2022 12:20:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2072A605A2;
	Sun, 27 Feb 2022 12:20:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DFBA1BF3E0
 for <devel@linuxdriverproject.org>; Sun, 27 Feb 2022 12:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C56C408E9
 for <devel@linuxdriverproject.org>; Sun, 27 Feb 2022 12:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z1qaPF2jI3jc for <devel@linuxdriverproject.org>;
 Sun, 27 Feb 2022 12:20:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B41B408E7
 for <devel@driverdev.osuosl.org>; Sun, 27 Feb 2022 12:20:08 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id u16so8629859pfg.12
 for <devel@driverdev.osuosl.org>; Sun, 27 Feb 2022 04:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xTgAasr8nuHiPtaiXNMKVVr/gUfCYB0P3npiEwHC+xM=;
 b=LTItZjN8SOwc+4p203mMwi8ztv2m+vQuog3EwJqtyGpgiI0/IA6QEj4NWf9VI2n21+
 gKgNl9G19OM0y+dBI7MOc2VraKMxbDieNuf6+0fPl5sNR8MZlbnYyi5qOZG2drIsj4p3
 6x8xqyNENmb3wzs89G9+IG83f8IhO3b0me+FimDKNDDo2HATK0z9MomuMndvTeAhL2Vr
 U6lX1v4r+/PIAxQbCBTtNAc5+IcDAQ57BCZBSC0AYqtSeqvDvScBKYxd3LTS5Ge8zhsC
 uyBrR2JXxm5pCrm6FxrLAbAILo3BPIIOAcFuE+1eb+G3jkM2EM9Zv7rkLfZa7QsZXezO
 Ae7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xTgAasr8nuHiPtaiXNMKVVr/gUfCYB0P3npiEwHC+xM=;
 b=gUDa+iCvFFsrEmkzoz/FUVtM3D8FX/EhdvLroE6pkp3ZSMlj76kESTjZ5pXK/WTPkF
 wTgg+OZlEKTw8yJO89oXpmhFL+5ikTWYuwesIs1A0Ma6kGNtEzUWWl7EFtlgDClT43yo
 7ZoglwYBgaaUQwP5sJiAWa3XjHYwYn3dYpWCaFecCG7fDJmFgrwugkyu3HN868JAXeAA
 RhCdMEGtY+iMdUi5Pe332S3Pjvv2tz9ykVTrqlPSvH6BwxL+9NWwBlGVFbUnbMb58u0u
 1Gbr98hJJfFRUzVeGcl/4Gaj/f/N3cPsSDhDdUC2bCdxidNXhK2Aemykdz4j2xmYYjn8
 kaMw==
X-Gm-Message-State: AOAM530NcA9pg6PMrIZ1r364DE7MIUYi31tIB7dmY7VhMQvwJCMW/wyE
 zFyA5kkZ6ZrE+ZYWSkuVvYxJYxSzY+vPqWZmqA==
X-Google-Smtp-Source: ABdhPJxpB3KRwx+oAIhevvaQU0lmEQn5JDBxvzUEW1ivDpygEadlMEHKAaZWT1Ivm5uWI50M/ictXt09aJkozd+Ylrs=
X-Received: by 2002:a05:6a00:1706:b0:4df:7fe0:841a with SMTP id
 h6-20020a056a00170600b004df7fe0841amr16596179pfc.64.1645964407601; Sun, 27
 Feb 2022 04:20:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a20:781a:b0:76:62df:2d2e with HTTP; Sun, 27 Feb 2022
 04:20:07 -0800 (PST)
From: MRS BILL Chantal Lawrence <osaruwanseovenseri@gmail.com>
Date: Sun, 27 Feb 2022 13:20:07 +0100
Message-ID: <CAENio1rOfn6AMi480dP1AL6q9YuUbjpWcb+p=ym++SfvssvkJQ@mail.gmail.com>
Subject: Attention
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
Reply-To: mrsbillchantal2022@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend

You have been compensated with the sum of $5.4 million dollars in this
united nation,The payment will be Issue into ATM visa card and send to
you from the bank,We need your Address, Passport and your WhatsApp
Number.

Thanks

Mrs.Bill Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
