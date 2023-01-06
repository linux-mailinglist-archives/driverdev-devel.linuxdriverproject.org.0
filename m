Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C5265FA9F
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Jan 2023 05:17:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31ED482204;
	Fri,  6 Jan 2023 04:17:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31ED482204
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M_7VBRFxMYTU; Fri,  6 Jan 2023 04:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0CDF82209;
	Fri,  6 Jan 2023 04:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0CDF82209
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74D761BF348
 for <devel@linuxdriverproject.org>; Fri,  6 Jan 2023 04:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5003260B2A
 for <devel@linuxdriverproject.org>; Fri,  6 Jan 2023 04:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5003260B2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rEQLllKq-e6j for <devel@linuxdriverproject.org>;
 Fri,  6 Jan 2023 04:17:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1DD160B10
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1DD160B10
 for <devel@linuxdriverproject.org>; Fri,  6 Jan 2023 04:17:12 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id 124so312888pfy.0
 for <devel@linuxdriverproject.org>; Thu, 05 Jan 2023 20:17:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HcpM41K3Tg/Gq2Sy2fOw39ukTQf5X/VzmfsS+yU67xU=;
 b=pG1uLerRWcc4Er0QHOXVZKc9cJieJzeBIhINTyse1pVmFVL6n1JBixVcffNJxNcvMK
 a2eI6Ay4A3XpMWIH4dkOAz0PWe1/0cWCErh9Cro+TbOI6u8OdyRKG60XnFG5DcL8uS1/
 s11YqxL+FlBRylHO57w8SDs3WH7dEQSy8o+HpHblZU+dDlSh+vU7gedzl5uqD8BWxK6o
 ExoAIX6lv3e3KiuC9IOBkM0jZyJgV69xgp55yN9OMtlVnFhnlqA8bpIMVOUKw/tFL4/j
 J+EKg32Yv3Lh1Jmy/gdya1XPSbCaNXXRszzehSy43LKu3fSFqW/9ttxFUWP5hUS8GhGN
 PsKQ==
X-Gm-Message-State: AFqh2kr0FxHMgZNmb6rg5kIyefXTWA77InSS/Zaouys++DZzxWVaMERJ
 cIEvbWujbYpOd/ZijU6DugHacvX9KvGcB2MT954=
X-Google-Smtp-Source: AMrXdXslluTCA+GVEg7Mqep/HjnknhONCjt9yKa0qZ91DyXMN/9D9gxc76AviXlO7kdXHyhEqTojxDM4GX3XZSvyR6E=
X-Received: by 2002:a63:7f1b:0:b0:479:5dda:ae2c with SMTP id
 a27-20020a637f1b000000b004795ddaae2cmr2419305pgd.622.1672978632230; Thu, 05
 Jan 2023 20:17:12 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7300:5793:b0:89:87c7:e475 with HTTP; Thu, 5 Jan 2023
 20:17:11 -0800 (PST)
From: muhammad <colinnnanna@gmail.com>
Date: Thu, 5 Jan 2023 20:17:11 -0800
Message-ID: <CAOORgdfOpKntKNMoAqTUiW+vu8AspGjPmS+aF36f-61TziBRLA@mail.gmail.com>
Subject: Re:Re:Inquiry about your products.!!
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HcpM41K3Tg/Gq2Sy2fOw39ukTQf5X/VzmfsS+yU67xU=;
 b=T/+2RgDA4EDzTwuLw+qZu1VrCXFf+M4s7G/dRW0GdJvf3hzGBJ2kWQmF575pvcAHKw
 f1XsVlr2r3Kr0CKc3PeGrUU3FdLmZL1cQ6zkYUB9pk8gElD31LSana8SAR2iKch54bqH
 yijaJ8ZCuR97WreWgRzPNRX8y5a69u8rBUWiegCRU0Z+gae8p/b8BrgNAWd0HJjtGWUW
 b+B1oclTU8SC38yMSNPlWSs/5ZtggPepNdMc6eqt7lUFmNcNjInoR0D/uzuthkBFqINX
 WiC3vBwN4KvW3G1BcHB0CY8MLt9WEN0EJttL3qPq1d/9Hkd+xuq9uXn21u+YdLVrvT+Q
 H6Rg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=T/+2RgDA
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
Reply-To: muhammadabdulrahma999@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Sir/Madam,

An open Tender for the supply of your company products to (Doha,
Qatar). Urgently furnish us in full details about the standard of your
product. We will appreciate it more if you give us with Details:
Specification and Catalogs or Price list via Email.To avoid making a
wrong choice of products before placing an order for it.

Terms of payment:An upfront payment of 80% (T/T) will be made to your
account for production,While 20% will be paid before shipment.

Thanks and Regards
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
