Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BD66C676A
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Mar 2023 12:59:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95B3A41D0E;
	Thu, 23 Mar 2023 11:59:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95B3A41D0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8-0CpJYtmyBp; Thu, 23 Mar 2023 11:59:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71C20402F3;
	Thu, 23 Mar 2023 11:59:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71C20402F3
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBC9D1BF21A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Mar 2023 11:59:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 95E6641D02
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Mar 2023 11:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95E6641D02
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iKhI5hlBNBxw
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Mar 2023 11:59:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E2A0408D3
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com
 [IPv6:2607:f8b0:4864:20::82c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E2A0408D3
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Mar 2023 11:59:10 +0000 (UTC)
Received: by mail-qt1-x82c.google.com with SMTP id t9so26132876qtx.8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Mar 2023 04:59:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679572749;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IE0Q22t9nDUcBAUVsmYKmeg+5EtHh5OHc8AXl8b80GM=;
 b=7eIU/JOuNKC4+biXDnlIQf8SsXuEYKHMlXSult8oBwKHGhf/XbsGWVnioYVk2F3sLv
 Mak95m/gyuYNJhnpOjJxtYO7wceRDjglmuwNvJP9enbErXSETh3rNQ/wuQK/7vWlC94S
 fejejwse0QDSCVRuW1l4J73RjpDw8WJKMeNXhHfFH2cVsbxeAc+UvKw733rFXM0tm/ne
 uD0Gd4bv/8mYKaAXOD968ADbCqnlapJi29UM8WUWoVR2cxn1HSSlDWbbX0hBMOSljd/c
 EIjns0z5r40OpEFTgMfwCIWasKqAQjvu6IkoBvCP11/xRgvJWhtFL4CVHRySy0spOX28
 8JMg==
X-Gm-Message-State: AO0yUKUYUUWHc31oS9LkMwedx9tn5fgCg3ihiSS2faBpKV6L3FnzWOFA
 Wz+8Nmy9nh3x/q2UEA6lsgKH9VoFQYARmAnODPI=
X-Google-Smtp-Source: AK7set+HvGlGlFLSRaeRx27jyLh/jzzynKAR9u9uhMvUe2dZ0oM3+3UjeU1/qZ1wCEPrzW2L3Bnv4cav8OeuTBr7K6M=
X-Received: by 2002:a05:622a:83:b0:3d7:9d03:75a4 with SMTP id
 o3-20020a05622a008300b003d79d0375a4mr2585915qtw.13.1679572749318; Thu, 23 Mar
 2023 04:59:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:622a:3cc:b0:3b0:621a:2f66 with HTTP; Thu, 23 Mar 2023
 04:59:08 -0700 (PDT)
From: "Leszczynska Anna Malgorzata." <madamstewartpriisca@gmail.com>
Date: Thu, 23 Mar 2023 04:59:08 -0700
Message-ID: <CAHesxDxDgaG_8cv4f3qCBtLGvtOgooNXjCYH3025=WxJj0Dkvg@mail.gmail.com>
Subject: Mrs. Leszczynska Anna Malgorzata.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679572749;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IE0Q22t9nDUcBAUVsmYKmeg+5EtHh5OHc8AXl8b80GM=;
 b=NuluGt5MqhV1EegcfuOgJSFshf4eNFVheviA5+v85Q8vIHGsosOLmC+q2zhT26UJr2
 IPBVkUMvsf5WAaK8tffCpbWr0IA8QPtIsmDJ4/JBJz3BKwCvlr3bGHFRZFEaJhz1/QXl
 ZRcn+tHG2OvO2FHDw2yhqC4+JIrSISSaWFNKeJzu0TLm5IsJsDmaA0/WBtnoZQC3rB/K
 gdCFknz8lRmyB8Gv/m3UDa3GfEv97LPghSLPOsSSgxFXHlNRbjl5NfsK4jGQ6yNnLsg2
 yYAiYG4r5WiPB0AFeK/KcAYKOhLuLa8X5xeUv8+NIeaPqNhDDDy9L+q4lVEbPZz8/98i
 Eb5w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=NuluGt5M
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
Reply-To: annamalgorzata587@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I am Mrs. Leszczynska Anna Malgorzatafrom  from Germany Presently
admitted  in one of the hospitals here in Ivory Coast.

I and my late husband do not have any child that is why I am donating
this money to you having known my condition that I will join my late
husband soonest.

I wish to donate towards education and the less privileged I ask for
your assistance. I am suffering from colon cancer I have some few
weeks to live according to my doctor.

The money should be used for this purpose.
Motherless babies
Children orphaned by aids.
Destitute children
Widows and Widowers.
Children who cannot afford education.

My husband stressed the importance of education and the less
privileged I feel that this is what he would have wanted me to do with
the money that he left for charity.

These services bring so much joy to the kids. Together we are
transforming lives and building brighter futures - but without you, it
just would not be possible.

Sincerely,

Mrs. Leszczynska Anna Malgorzata.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
