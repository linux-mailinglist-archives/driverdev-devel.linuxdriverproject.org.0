Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E80E4C3783
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 22:23:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60AA483E82;
	Thu, 24 Feb 2022 21:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uzy2BCTeRMKo; Thu, 24 Feb 2022 21:23:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F46783E6F;
	Thu, 24 Feb 2022 21:23:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA38E1BF31E
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:23:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BEB7682A4F
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:23:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cBfQJUtZ4qSI for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:23:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com
 [IPv6:2607:f8b0:4864:20::1135])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90CC583E80
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:23:10 +0000 (UTC)
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-2d66f95f1d1so13212457b3.0
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 13:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=NtYIqLGpNWcTG+r+fzvbmwhu1Ix9Fyq7bxutY2yo5vrLWsFqWFyEV9E476A3mucPyH
 JA6VP+OL+T0Ke0zbP6H0wktvEMIb8x7SAeWv0OmUedPgyLr3W7r2HOraPqEk5mgeNFH7
 o/z4JPPduHb33ZQ/N7ztIlP8hjUMu+xhmFz+MbTeIWHVB8N7ci+Hb9i+kZhtX1PObfs1
 RrvnZllScaPpV4B4RWzr1B0qB+RkuitpCqi3fll1hXO6c17nhT3f8XusY6tnmY9eFNZ2
 e3ZbAr+Qw0EcDgEUKbN/mm9pLnoN/1wmnttdwhY74TzEOCGy89jRtFBL7lT6zvfaCUdQ
 NmoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=HWbZ4Qbz6UCoiCvU9+9AaSSb/SI9Ass7tdSl29mR2EnbY2KY2A7JxFxyupGunDjZ9J
 Jl9Q9QetcGFofrs61bZEC0hgxH+8ehdNBdfPrlFxdDF8bE9B2xQokueEEOpnOTUoC5c6
 2klJ0MZ0QHvhJ+FGlZPVZzSo8fjZv/7FU9e5kJigwwcgCq+OW3UShYNZqbowSb9X13MK
 bppeyd+8EfcaV36raE1JgKnP/inIZEKiWs9WhmmH6JF6qvnesS8EIPZn764G/w1DKkG7
 BxVkGG3+YljvjCRmZOPC3WTqqoSfDXMb23bMxunukrG8aYvmtfq01Un/TQKOUsh5wDdF
 ZWwg==
X-Gm-Message-State: AOAM530Slv4dxY62zEuWOQRA3iXkBYpVW4xv9Uiq1F1/Ayp9qFL9yz/f
 fqQ5iGe5tfpJqJH2zCtqJtw52NQiHna8oHZzJSs=
X-Google-Smtp-Source: ABdhPJyZpLv4VbEj2rNkjvq2DsKfXAit0+p79V927Dp9GsdvmMm0Djh5RIP4XoC6VF0QZTAWyZFLJnQsSIakxMx+Y3c=
X-Received: by 2002:a0d:f603:0:b0:2d1:57e5:234 with SMTP id
 g3-20020a0df603000000b002d157e50234mr4618724ywf.469.1645737789198; Thu, 24
 Feb 2022 13:23:09 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7108:7616:0:0:0:0 with HTTP; Thu, 24 Feb 2022 13:23:08
 -0800 (PST)
From: MR DAVID MORRIS <mrjohnwegener35@gmail.com>
Date: Thu, 24 Feb 2022 13:23:08 -0800
Message-ID: <CA+Kwxe-Df83BdScKEkDz3fp-1p4nqzGmNO4hkjzth2V1Jq3BMg@mail.gmail.com>
Subject: Dear Beneficiary
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
Reply-To: mrdavidmorris1718@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I am MR DAVID MORRIS, Inspection Unit Manager United Nations,
Inspection Agency in Hartsfield Jackson International Airport Atlanta,
Georgia.During our investigation, I discovered An abandoned shipment through a
Diplomat from United Kingdom which was transferred from JF Kennedy
Airport to our facility here in Atlanta,

The ATM debit card is worth $8million,And I  Ascertain you
that the consignment is in your name,you are advised to provide all
detail for claim.

Sincerely,

MR MORRIS

CONTACT.......... mrdavidmorris1718@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
