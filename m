Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 521FC4C3784
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 22:23:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B994D82A4F;
	Thu, 24 Feb 2022 21:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UANQoMl7Sgul; Thu, 24 Feb 2022 21:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85AEA83E80;
	Thu, 24 Feb 2022 21:23:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC9431C1135
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:23:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B189440216
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:23:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id niCmGTVKY3ng
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:23:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com
 [IPv6:2607:f8b0:4864:20::1129])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78F6A40188
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:23:10 +0000 (UTC)
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-2d641c31776so12491897b3.12
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 13:23:10 -0800 (PST)
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
 b=FTqzJOd1uJkVa2slzijnN2TtVWSu0z0aS+M4Su3Yv/dxOc3UQ2sHCPFH9u3eVVxfaL
 UURdTEppbWZaAvv3A+p5ppGewfR0RjAySftyLchlzOFDa+2FVPFqJDCDzUZ6z9GX5AXO
 cGbdaRpfnq+2y4novoE/cEILPbgbCJ3a/e+UEoIsYnqXxFhjtOVWIllHE9ZIIPWXeZkl
 YpBIfq4mMx5l8JyEFC2kXDUNnBQbdj1Bw55ZkGF1NdkSjWp3waOi+eW4aa9zmkg9pdg8
 aGzZ6adopvMuZgOP3N3RRz196GaHSe3nCWQ3pSWisYhpCkQrn+SqhoeYCMnEMgNARFBH
 Z2fw==
X-Gm-Message-State: AOAM532OvHr5X37XRz2Se3ysMbFmNRgS+ZnrQL4QjFgAA2pwinPpHola
 P88A+u5PWrSib2ZaWnJjuQ77fOcLy5sb5yS1neY=
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
