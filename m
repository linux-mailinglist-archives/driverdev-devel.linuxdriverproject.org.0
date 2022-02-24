Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D39B4C37E5
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 22:34:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCB92400B8;
	Thu, 24 Feb 2022 21:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ceTe1hAvjBsR; Thu, 24 Feb 2022 21:34:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DC6B40017;
	Thu, 24 Feb 2022 21:34:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 543CC1BF31E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:34:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E5C641605
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:33:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id keUhw7EjWs-I
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:33:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B29F841610
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:33:58 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id b35so2048224ybi.13
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 13:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=KorNpmvRUfjYfDwHc9N9B7jWrp2mBTP/wok4jSGcUKu5bvaLaMPdsV5+O4j0cNC3gL
 c+FtFcU5CZmbB51E7FcP0MyUimz8arWGjiJvhr/km5jA+iwaOpOm25pKDq3j92SYeD73
 RLR6sLEKF8t4Tbkn6qDxyL28RHIor34lGxEYmMERoLav2jbLuibIq/NQWGKmG0LpvhbD
 Xq/uPvX3PP9ocayYPlfTIjzrOaPfzqS7/+25oySn3wNOb7S0C89kpawr6XIiou3jFidx
 jc7iHPB3NX+A0e3AsuexCM2z4oQ/wa2K6lQjaUVRyseGAAekbV+DdkouSgs4+/Xlik2Z
 p53w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=q/fccuavmO+xSRnmKrOqecsfjFm0pXB2kqsV8Tks10M/17QT2X5Dp/+jg4CSmUEaAt
 NmfL8zO3+SXHP8ZzRvKgSQ+zgs+xnk1rNktm3eja2ZpI8mqHavRjKOR7HOQSw6MIZh2o
 /g8jBPRmIJwbEAaCwvSCsC2hat+z+cSajXMhAvZ24kTn82KY4sYJ2VmgjjevmGG86bDd
 giF2TLitnzX1oJjZ5QrDO/X4fxNzdsKT++k0Q61lF6/ZjyHsHq+GJuewIJPeHfozFvOQ
 VpNIJJEJsIhvROGoEwTVV0E/27CRPQmF+QsilfuI02u5C6P1z2tDqqBKqAFqyPToRWT4
 FEjg==
X-Gm-Message-State: AOAM532HqPujnOtFTKR5d/W3dZyxOmcpoKM1BmNFuvHl+phaVp9RrueR
 gXCA3450+apO53ufHzlMXYSyyfRmW6jKeo9sKqE=
X-Google-Smtp-Source: ABdhPJx9UekhLlIma3pQbK2iuDvfx2RdVqNvfU+9Hb3HVGy8ssgRPGJk3FdjT4uH9eR0cpTArftMAwkIIR0AnBh6zjM=
X-Received: by 2002:a25:3d87:0:b0:61e:170c:aa9 with SMTP id
 k129-20020a253d87000000b0061e170c0aa9mr4269718yba.89.1645738437537; Thu, 24
 Feb 2022 13:33:57 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7108:7616:0:0:0:0 with HTTP; Thu, 24 Feb 2022 13:33:57
 -0800 (PST)
From: MR DAVID MORRIS <mrjohnwegener35@gmail.com>
Date: Thu, 24 Feb 2022 13:33:57 -0800
Message-ID: <CA+Kwxe9cJdH=vQcF3F5wK7RhvfNxVz-jnYOHDH=Eh1kDFwj1cg@mail.gmail.com>
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
