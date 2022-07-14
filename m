Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC5E57507E
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Jul 2022 16:13:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55DEE41736;
	Thu, 14 Jul 2022 14:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55DEE41736
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZJ7HBEGRT0H1; Thu, 14 Jul 2022 14:13:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CD2940585;
	Thu, 14 Jul 2022 14:13:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CD2940585
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F7C81BF354
 for <devel@linuxdriverproject.org>; Thu, 14 Jul 2022 14:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 46B12414C7
 for <devel@linuxdriverproject.org>; Thu, 14 Jul 2022 14:12:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46B12414C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wOFqVmfd1JDs for <devel@linuxdriverproject.org>;
 Thu, 14 Jul 2022 14:12:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 700024148A
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 700024148A
 for <devel@driverdev.osuosl.org>; Thu, 14 Jul 2022 14:12:57 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id 64so3364795ybt.12
 for <devel@driverdev.osuosl.org>; Thu, 14 Jul 2022 07:12:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Qfx8XFtHLfz2oQJyIE27i6chKcdfMPfYrXAwXfi+jbU=;
 b=spwqGdJP31NjHqvMwO4rJzDZJJO0rNhyGClT3G0MKXSKWBjA6WUjpmIVrUf+B9maeJ
 cUtbRVmSXMELjCt/0TuV0qPMjVU2H5Gj6h0QepgfNuLGCMsQ1yWkMdV85b4OmOvH3V3X
 MHhhPOoDNgfmtjQy0b+3dGFTrOHetmjB61NQky/djvmwBhRI3oIeYDyyxMU6VQTeT8Eo
 e9jY/5TuSGJOTvJqOaEy5Wl8FiTZ+YFsG6WaGWVHt5+cjwYccOH06+p4AS4WLq+lQUfT
 6nRxYB84h3cxTmXsc6ur4EB8aKkSEgNYbVt6V71jUDxhUxW27cih9Yph+07DyG+/GonG
 2K4Q==
X-Gm-Message-State: AJIora8VKQrkhuaSEV1POp7zGL283PzaM7kpnzz0fKfiu4l6o7XpX6Nz
 Oh9BEK3W244Dl9W6+rtymuQLkP4TWrVkJsqyLYfiPw==
X-Google-Smtp-Source: AGRyM1v6fRifIGAm45GXN1QmOKBP7bbV2rEZCyRdLT45GtpNzFZRUH2wkusGyOpSQBTzubC8OtI2576oGmJPTfKtuvE=
X-Received: by 2002:a25:4210:0:b0:66e:bb10:1cb7 with SMTP id
 p16-20020a254210000000b0066ebb101cb7mr9212618yba.534.1657807975975; Thu, 14
 Jul 2022 07:12:55 -0700 (PDT)
MIME-Version: 1.0
From: Brittany Jones <brittany@firstdatalist.com>
Date: Thu, 14 Jul 2022 19:42:45 +0530
Message-ID: <CAAzZnEkVymUmqiTLPoS-2P31VOG3dF=MjUthW5d+gg5MazhF9A@mail.gmail.com>
Subject: RE: IMTS+ Attendees Email List- 2022
To: Brittany Jones <brittany@firstdatalist.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=firstdatalist.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=Qfx8XFtHLfz2oQJyIE27i6chKcdfMPfYrXAwXfi+jbU=;
 b=Kr0Us5tjNzoWN7InD79G+t/26/gdhF4wSBoGiSc3f+SmUxcXldzOGikPBxkAv7Jh23
 1/bp2SOAfGW1K9f9Q/8j9CFychAvSz7pV8AgQgbhtsy+oYHuxbjf13SW5PNulVEGDwYC
 pm6dMqRx/Hbmfv7GQe8QxFNIXVeFJVpgWN/l97tz3bDQMIcP/kLANefp2a2uTGkA2Ml6
 BWftQeuGD8nZNILn2QkPAbSfWfRUUiKczpJRLDOQjqySriFSSex++eNaRNBY3JsP331/
 Q6hRnUDxoouKjquRCNUt9xx6MS1NdJs36kNi4RiZuzk6bKjo7ajiSG7hDgRMVHAc/5QK
 qB0g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=firstdatalist.com
 header.i=@firstdatalist.com header.a=rsa-sha256 header.s=google
 header.b=Kr0Us5tj
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

I hope you're doing great and staying healthy!

Would you be interested in acquiring International Manufacturing
Technology Show Attendees Data List 2022?

List contains: Company Name, Contact Name, First Name, Middle Name,
Last Name, Title, Address, Street, City, Zip code, State, Country,
Telephone, Email address and more,

No of Contacts:- 44,957
Cost: $ 1,826

Looking forward for your response,

Kind Regards,
Brittany Jones
Marketing Coordinator
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
