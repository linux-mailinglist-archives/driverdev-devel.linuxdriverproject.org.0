Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8514C37E3
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 22:34:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CF5241640;
	Thu, 24 Feb 2022 21:34:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jJPQGBVo8bPj; Thu, 24 Feb 2022 21:34:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD21C41610;
	Thu, 24 Feb 2022 21:34:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3AF511BF31E
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:33:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 34ACD41621
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:33:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9P9fHny95ubx for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:33:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAA8741605
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 21:33:58 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id j12so2093935ybh.8
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 13:33:58 -0800 (PST)
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
 b=iGP0OTuy1icm+qr70PvLcEmPcyRMCxIlPFmQ1HQaXX1vFbptmaK8M649RYXW1zFq8Y
 qABLEJrzkCK83YEEbZmv4TmJQ+UpLO1F4HnUq+sbhx//1xUwmVPHxIG4FeyxDzST3fpd
 JCVAFdFW2QZxeb4keCwXjUDoDiUKWPne9AYibCS9gU2Awon1Euf497uCmK9HlMqv7nv/
 qZrIQ+BpkL/7UmnuntsuuxXKKGXXdX7FhvKv2bIAk+q7wzmeQxyssM9RVGrbC7FHm7Qd
 kA4kEeIqytl81PB487lGC8jaEfusJlPx0DcD2SBsVEfjCeYpUFa3sgc7DO1VLANI8jCz
 9FyA==
X-Gm-Message-State: AOAM533YbxuMhykZBmjimKdyxfU9HoOFMZV2Q6GFTl4NOKZKK+qqUJtG
 OvWnmklHVC0sgKvgimjnytT+mF9IkYGWg22qy9I=
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
